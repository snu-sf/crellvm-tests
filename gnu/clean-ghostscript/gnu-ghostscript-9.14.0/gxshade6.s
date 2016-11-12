	.text
	.file	"gxshade6.bc"
	.globl	reserve_colors
	.align	16, 0x90
	.type	reserve_colors,@function
reserve_colors:                         # @reserve_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	688(%rdi), %rax
	testl	%edx, %edx
	movq	%rax, %rcx
	jle	.LBB0_8
# BB#1:                                 # %for.body.lr.ph.i
	movslq	680(%rdi), %r8
	leal	-1(%rdx), %r9d
	xorl	%r11d, %r11d
	testb	$3, %dl
	movq	%rax, %rcx
	je	.LBB0_4
# BB#2:                                 # %for.body.i.prol.preheader
	movl	%edx, %r10d
	andl	$3, %r10d
	xorl	%r11d, %r11d
	movq	%rax, %rcx
	.align	16, 0x90
.LBB0_3:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%rsi,%r11,8)
	incq	%r11
	addq	%r8, %rcx
	cmpl	%r11d, %r10d
	jne	.LBB0_3
.LBB0_4:                                # %for.body.lr.ph.i.split
	leaq	1(%r9), %r10
	cmpl	$3, %r9d
	jb	.LBB0_7
# BB#5:                                 # %for.body.lr.ph.i.split.split
	subl	%r11d, %edx
	leaq	24(%rsi,%r11,8), %r9
	.align	16, 0x90
.LBB0_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, -24(%r9)
	addq	%r8, %rcx
	movq	%rcx, -16(%r9)
	addq	%r8, %rcx
	movq	%rcx, -8(%r9)
	addq	%r8, %rcx
	movq	%rcx, (%r9)
	addq	$32, %r9
	addq	%r8, %rcx
	addl	$-4, %edx
	jne	.LBB0_6
.LBB0_7:                                # %for.cond.for.end_crit_edge.i
	imulq	%r10, %r8
	leaq	(%r8,%rax), %rcx
.LBB0_8:                                # %for.end.i
	cmpq	704(%rdi), %rcx
	jbe	.LBB0_10
# BB#9:                                 # %if.then.i
	movq	$0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB0_10:                               # %if.end.i
	movq	%rcx, 688(%rdi)
	retq
.Lfunc_end0:
	.size	reserve_colors, .Lfunc_end0-reserve_colors
	.cfi_endproc

	.globl	release_colors
	.align	16, 0x90
	.type	release_colors,@function
release_colors:                         # @release_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 688(%rdi)
	retq
.Lfunc_end1:
	.size	release_colors, .Lfunc_end1-release_colors
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_0:
	.long	3379831808              # float -1.000000e+06
	.long	3379831808              # float -1.000000e+06
	.long	3379831808              # float -1.000000e+06
	.long	3379831808              # float -1.000000e+06
.LCPI2_1:
	.long	1232348160              # float 1.000000e+06
	.long	1232348160              # float 1.000000e+06
	.long	1232348160              # float 1.000000e+06
	.long	1232348160              # float 1.000000e+06
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1065353216              # float 1
.LCPI2_3:
	.long	1132462080              # float 256
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_4:
	.quad	4571171282956062736     # double 0.0039215686274509803
	.text
	.globl	init_patch_fill_state
	.align	16, 0x90
	.type	init_patch_fill_state,@function
init_patch_fill_state:                  # @init_patch_fill_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$536, %rsp              # imm = 0x218
.Ltmp2:
	.cfi_def_cfa_offset 560
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	16(%rbx), %r14
	movslq	24(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB2_11
# BB#1:                                 # %for.body.lr.ph
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB2_10
# BB#2:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB2_9
# BB#3:                                 # %vector.body.preheader
	leaq	-8(%rax), %rsi
	movq	%rsi, %rdx
	shrq	$3, %rdx
	xorl	%edi, %edi
	btq	$3, %rsi
	jb	.LBB2_5
# BB#4:                                 # %vector.body.prol
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [-1.000000e+06,-1.000000e+06,-1.000000e+06,-1.000000e+06]
	movups	%xmm0, 280(%rsp)
	movups	%xmm0, 296(%rsp)
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, 32(%rsp)
	movl	$8, %edi
.LBB2_5:                                # %vector.body.preheader.split
	testq	%rdx, %rdx
	je	.LBB2_8
# BB#6:                                 # %vector.body.preheader.split.split
	movq	%rax, %rdx
	andq	$-8, %rdx
	subq	%rdi, %rdx
	leaq	328(%rsp,%rdi,4), %rsi
	leaq	64(%rsp,%rdi,4), %rdi
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [-1.000000e+06,-1.000000e+06,-1.000000e+06,-1.000000e+06]
	movaps	.LCPI2_1(%rip), %xmm1   # xmm1 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	.align	16, 0x90
.LBB2_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -48(%rsi)
	movups	%xmm0, -32(%rsi)
	movups	%xmm1, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	movups	%xmm1, -16(%rdi)
	movups	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-16, %rdx
	jne	.LBB2_7
.LBB2_8:
	movq	%rcx, %rdx
.LBB2_9:                                # %middle.block
	cmpq	%rdx, %rax
	je	.LBB2_11
	.align	16, 0x90
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-915135488, 280(%rsp,%rdx,4) # imm = 0xFFFFFFFFC9742400
	movl	$1232348160, 16(%rsp,%rdx,4) # imm = 0x49742400
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB2_10
.LBB2_11:                               # %for.end
	movq	(%r14), %rax
	leaq	272(%rsp), %rdi
	movq	%r14, %rsi
	callq	*40(%rax)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	*40(%rax)
	cmpl	$0, 24(%rbx)
	jle	.LBB2_14
# BB#12:                                # %for.body.10.preheader
	xorl	%eax, %eax
	movss	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB2_13:                               # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movss	16(%rsp,%rax,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	subss	280(%rsp,%rax,4), %xmm1
	maxss	%xmm0, %xmm1
	movss	%xmm1, 384(%rbx,%rax,4)
	incq	%rax
	movslq	24(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB2_13
.LBB2_14:                               # %for.end.35
	movl	$1, 656(%rbx)
	cmpq	$0, 328(%rbx)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 660(%rbx)
	movq	$0, 336(%rbx)
	movl	$0, 664(%rbx)
	movl	$0, 672(%rbx)
	movl	$1, 344(%rbx)
	movl	$256, 640(%rbx)         # imm = 0x100
	movq	8(%rbx), %rdi
	movss	296(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI2_3(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 644(%rbx)
	movss	320(%rdi), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	maxsd	.LCPI2_4(%rip), %xmm0
	movsd	%xmm0, 648(%rbx)
	movl	$0, 676(%rbx)
	movl	$0, 680(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 688(%rbx)
	movq	$0, 704(%rbx)
	movq	(%rbx), %rsi
	movb	$1, %al
	cmpl	$1, 136(%rsi)
	jne	.LBB2_16
# BB#15:                                # %if.end.i
	callq	gx_get_cmap_procs
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	setne	%al
	movq	8(%rbx), %rdi
.LBB2_16:                               # %is_linear_color_applicable.exit
	movzbl	%al, %eax
	movl	%eax, 668(%rbx)
	movq	8(%rdi), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	alloc_patch_fill_memory
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	init_patch_fill_state, .Lfunc_end2-init_patch_fill_state
	.cfi_endproc

	.align	16, 0x90
	.type	alloc_patch_fill_memory,@function
alloc_patch_fill_memory:                # @alloc_patch_fill_memory
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
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 48
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	%rbp, 712(%rbx)
	movl	$9216, 372(%rbx)        # imm = 0x2400
	movl	$294912, %esi           # imm = 0x48000
	movl	$.L.str.1, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, 352(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB3_9
# BB#1:                                 # %if.end
	movq	$0, 360(%rbx)
	movl	$0, 368(%rbx)
	movl	$2097152, 348(%rbx)     # imm = 0x200000
	cmpq	$0, 696(%rbx)
	jne	.LBB3_4
# BB#2:                                 # %if.end.i
	movl	24(%rbx), %eax
	leal	23(,%rax,4), %eax
	andl	$-8, %eax
	movl	%eax, 680(%rbx)
	imull	$200, %eax, %esi
	movl	%esi, 676(%rbx)
	movl	$.L.str.5, %edx
	movq	%rbp, %rdi
	callq	*64(%rbp)
	movq	%rax, 696(%rbx)
	testq	%rax, %rax
	je	.LBB3_9
# BB#3:                                 # %if.end.13.i
	movslq	676(%rbx), %rcx
	addq	%rax, %rcx
	movq	%rcx, 704(%rbx)
	movq	%rax, 688(%rbx)
	movq	%rbp, 712(%rbx)
.LBB3_4:                                # %if.end.5
	testq	%r14, %r14
	je	.LBB3_6
# BB#5:                                 # %if.end.5
	movl	668(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB3_6
# BB#7:                                 # %if.else
	movq	(%rbx), %rdx
	movq	8(%rbx), %rcx
	movq	288(%rbx), %r9
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_color_index_cache_create
	movq	%rax, 720(%rbx)
	testq	%rax, %rax
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_6:                                # %if.then.7
	movq	$0, 720(%rbx)
.LBB3_8:                                # %if.end.14
	xorl	%r15d, %r15d
.LBB3_9:                                # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	alloc_patch_fill_memory, .Lfunc_end3-alloc_patch_fill_memory
	.cfi_endproc

	.globl	term_patch_fill_state
	.align	16, 0x90
	.type	term_patch_fill_state,@function
term_patch_fill_state:                  # @term_patch_fill_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 32
.Ltmp17:
	.cfi_offset %rbx, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	352(%rbx), %rsi
	movq	688(%rbx), %rax
	cmpq	696(%rbx), %rax
	setne	%bpl
	movq	712(%rbx), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 352(%rbx)
	movq	696(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	712(%rbx), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB4_2:                                # %if.end
	movzbl	%bpl, %ebp
	movq	720(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_4
# BB#3:                                 # %if.then.6
	callq	gs_color_index_cache_destroy
.LBB4_4:                                # %if.end.8
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	term_patch_fill_state, .Lfunc_end4-term_patch_fill_state
	.cfi_endproc

	.globl	wedge_vertex_list_elem_buffer_free
	.align	16, 0x90
	.type	wedge_vertex_list_elem_buffer_free,@function
wedge_vertex_list_elem_buffer_free:     # @wedge_vertex_list_elem_buffer_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	352(%rbx), %rsi
	movq	712(%rbx), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 352(%rbx)
	popq	%rbx
	retq
.Lfunc_end5:
	.size	wedge_vertex_list_elem_buffer_free, .Lfunc_end5-wedge_vertex_list_elem_buffer_free
	.cfi_endproc

	.globl	patch_resolve_color
	.align	16, 0x90
	.type	patch_resolve_color,@function
patch_resolve_color:                    # @patch_resolve_color
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
	movq	%rdi, %rax
	movq	328(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB6_1
# BB#2:                                 # %if.then.i
	movq	16(%rsi), %rbx
	leaq	8(%rax), %r14
	leaq	16(%rax), %rdx
	movq	%rax, %rsi
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	40(%rax), %rax
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.LBB6_1:                                # %patch_resolve_color_inline.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	patch_resolve_color, .Lfunc_end6-patch_resolve_color
	.cfi_endproc

	.globl	gs_shading_Cp_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_Cp_fill_rectangle,@function
gs_shading_Cp_fill_rectangle:           # @gs_shading_Cp_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 48
	subq	$2288, %rsp             # imm = 0x8F0
.Ltmp31:
	.cfi_def_cfa_offset 2336
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rdi, %r15
	leaq	1560(%rsp), %rdi
	movq	%r15, %rsi
	callq	mesh_init_fill_state
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_1
# BB#3:                                 # %if.end.4
	movq	136(%r15), %rax
	movq	%rax, 1888(%rsp)
	leaq	1560(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB7_4
# BB#6:                                 # %if.end.14
	addq	$16, %r15
	movl	$0, 1132(%rsp)
	movl	$0, 848(%rsp)
	movl	$0, 564(%rsp)
	movl	$0, 280(%rsp)
	leaq	1136(%rsp), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	shade_next_init
	leaq	(%rsp), %rbx
	leaq	1560(%rsp), %r12
	.align	16, 0x90
.LBB7_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	128(%r15), %esi
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	shade_next_patch
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB7_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB7_7 Depth=1
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	patch_fill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB7_7
.LBB7_9:                                # %while.end
	movq	1912(%rsp), %rsi
	movq	2248(%rsp), %r15
	movq	2256(%rsp), %rbx
	movq	2272(%rsp), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1912(%rsp)
	movq	2256(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB7_11
# BB#10:                                # %if.then.i
	movq	2272(%rsp), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB7_11:                               # %if.end.i
	movq	2280(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_13
# BB#12:                                # %if.then.6.i
	callq	gs_color_index_cache_destroy
.LBB7_13:                               # %term_patch_fill_state.exit
	movl	$-28, %r14d
	cmpq	%rbx, %r15
	jne	.LBB7_17
# BB#14:                                # %if.end.30
	movq	1856(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_16
# BB#15:                                # %if.then.33
	callq	gsicc_release_link
.LBB7_16:                               # %if.end.35
	movl	%ebp, %r14d
	sarl	$31, %r14d
	andl	%ebp, %r14d
	jmp	.LBB7_17
.LBB7_1:                                # %if.then
	movq	1856(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_17
# BB#2:                                 # %if.then.2
	callq	gsicc_release_link
	jmp	.LBB7_17
.LBB7_4:                                # %if.then.8
	movq	1856(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_17
# BB#5:                                 # %if.then.11
	callq	gsicc_release_link
.LBB7_17:                               # %cleanup
	movl	%r14d, %eax
	addq	$2288, %rsp             # imm = 0x8F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_shading_Cp_fill_rectangle, .Lfunc_end7-gs_shading_Cp_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	shade_next_patch,@function
shade_next_patch:                       # @shade_next_patch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 48
.Ltmp42:
	.cfi_offset %rbx, -40
.Ltmp43:
	.cfi_offset %r12, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rdi, %r12
	callq	shade_next_flag
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB8_1
# BB#2:                                 # %if.end.3
	andl	$3, %ecx
	movl	$-15, %eax
	cmpl	$3, %ecx
	ja	.LBB8_23
# BB#3:                                 # %if.end.3
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_4:                                # %sw.bb
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#5:                                 # %shade_next_curve.exit
	leaq	264(%r14), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#6:                                 # %lor.lhs.false
	leaq	284(%r14), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	movl	$4, %ebx
	testl	%eax, %eax
	jns	.LBB8_11
	jmp	.LBB8_23
.LBB8_1:                                # %if.then
	movq	%r12, %rdi
	callq	*416(%r12)
	testl	%eax, %eax
	movl	$-15, %ecx
	movl	$1, %eax
	cmovel	%ecx, %eax
	jmp	.LBB8_23
.LBB8_7:                                # %sw.bb.11
	leaq	284(%r14), %rbx
	movl	$284, %edx              # imm = 0x11C
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	leaq	568(%r14), %rsi
	movl	$264, %edx              # imm = 0x108
	movq	%rbx, %rdi
	jmp	.LBB8_10
.LBB8_8:                                # %sw.bb.18
	leaq	568(%r14), %rsi
	movl	$284, %edx              # imm = 0x11C
	movq	%r14, %rdi
	callq	memcpy
	leaq	284(%r14), %rdi
	leaq	852(%r14), %rsi
	movl	$264, %edx              # imm = 0x108
	jmp	.LBB8_10
.LBB8_9:                                # %sw.bb.25
	leaq	284(%r14), %rdi
	movl	$264, %edx              # imm = 0x108
	movq	%r14, %rsi
	callq	memcpy
	leaq	852(%r14), %rsi
	movl	$284, %edx              # imm = 0x11C
	movq	%r14, %rdi
.LBB8_10:                               # %vx
	callq	memcpy
	movl	$2, %ebx
.LBB8_11:                               # %vx
	leaq	548(%r14), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#12:                                # %lor.lhs.false.35
	leaq	568(%r14), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#13:                                # %shade_next_curve.exit43
	leaq	832(%r14), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#14:                                # %lor.lhs.false.39
	leaq	852(%r14), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#15:                                # %shade_next_curve.exit51
	leaq	1116(%r14), %rsi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
# BB#16:                                # %lor.lhs.false.43
	testq	%r15, %r15
	je	.LBB8_18
# BB#17:                                # %land.lhs.true
	movl	$4, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	shade_next_coords
	testl	%eax, %eax
	js	.LBB8_23
.LBB8_18:                               # %lor.lhs.false.47
	movl	$4, %eax
	subl	%ebx, %eax
	movl	%ebx, %r15d
	cltq
	imulq	$284, %rax, %rax        # imm = 0x11C
	leaq	8(%r14,%rax), %rbx
	movl	$1, %r14d
	.align	16, 0x90
.LBB8_19:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 4(%rbx)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	shade_next_color
	cmpq	%r15, %r14
	jge	.LBB8_21
# BB#20:                                # %for.body.i
                                        #   in Loop: Header=BB8_19 Depth=1
	incq	%r14
	addq	$284, %rbx              # imm = 0x11C
	testl	%eax, %eax
	jns	.LBB8_19
.LBB8_21:                               # %shade_next_colors.exit
	testl	%eax, %eax
	js	.LBB8_23
# BB#22:                                # %if.end.52
	movl	$8, %esi
	movq	%r12, %rdi
	callq	*408(%r12)
	xorl	%eax, %eax
.LBB8_23:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	shade_next_patch, .Lfunc_end8-shade_next_patch
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_9

	.text
	.globl	patch_fill
	.align	16, 0x90
	.type	patch_fill,@function
patch_fill:                             # @patch_fill
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
	subq	$408, %rsp              # imm = 0x198
.Ltmp52:
	.cfi_def_cfa_offset 464
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
	movq	688(%rdi), %rbx
	movslq	680(%rdi), %rbp
	leaq	(%rbx,%rbp), %rax
	leaq	(%rax,%rbp), %rcx
	leaq	(%rcx,%rbp), %r8
	leaq	(%rbx,%rbp,4), %rbp
	xorl	%r9d, %r9d
	cmpq	704(%rdi), %rbp
	ja	.LBB9_2
# BB#1:                                 # %if.end.i
	movq	%rbp, 688(%rdi)
	movq	%rbx, %r9
.LBB9_2:                                # %reserve_colors_inline.exit
	movq	%r9, 368(%rsp)
	movq	%rax, 376(%rsp)
	movq	%rcx, 384(%rsp)
	movq	%r8, 392(%rsp)
	movq	16(%rdi), %rax
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	(%rsi), %r8
	movq	%r8, 240(%rsp)
	movq	264(%rsi), %r15
	movq	%r15, 272(%rsp)
	movq	272(%rsi), %r10
	movq	%r10, 304(%rsp)
	movq	284(%rsi), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 336(%rsp)
	movq	548(%rsi), %r11
	movq	%r11, 344(%rsp)
	movq	556(%rsi), %rbp
	movq	%rbp, 352(%rsp)
	movq	568(%rsi), %r13
	movq	%r13, 360(%rsp)
	movq	832(%rsi), %rdi
	movq	%rdi, 328(%rsp)
	movq	840(%rsi), %r12
	movq	%r12, 296(%rsp)
	movq	852(%rsi), %rbx
	movq	%rbx, 264(%rsp)
	movq	1116(%rsi), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 256(%rsp)
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	1124(%rsi), %r14
	movq	%r14, 248(%rsp)
	testq	%rdx, %rdx
	je	.LBB9_4
# BB#3:                                 # %if.then.i.143
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movups	(%rdx), %xmm0
	movups	%xmm0, 280(%rsp)
	movq	16(%rdx), %rax
	movq	%rax, 320(%rsp)
	movq	24(%rdx), %rax
	movq	%rax, 312(%rsp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else.i
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r9, 80(%rsp)           # 8-byte Spill
	leal	(%r11,%r14,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	movq	%r12, 48(%rsp)          # 8-byte Spill
	leal	(%r12,%r15,2), %edi
	movq	%r12, %r9
	movslq	%edi, %rdi
	movq	%rbp, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	imulq	$1431655766, %rdi, %rbp # imm = 0x55555556
	movq	%rbp, %rdi
	shrq	$63, %rdi
	shrq	$32, %rbp
	addl	%edi, %ebp
	addl	%edx, %ebp
	leal	(%rbx,%r8,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	movq	64(%rsp), %r12          # 8-byte Reload
	leal	(%r13,%r12,2), %edi
	movslq	%edi, %rdi
	imulq	$1431655766, %rdi, %rdi # imm = 0x55555556
	movq	%rdi, %rax
	shrq	$63, %rax
	shrq	$32, %rdi
	addl	%eax, %edi
	leal	(%rdi,%rdx,2), %eax
	cltq
	imulq	$1431655765, %rax, %rcx # imm = 0x55555555
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	%ecx
	addl	%eax, %ecx
	addl	%ebp, %ecx
	movl	%ecx, 280(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rsi,%rax,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%r15,%r9,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %r9  # imm = 0x55555556
	movq	%r9, %rcx
	shrq	$63, %rcx
	shrq	$32, %r9
	addl	%ecx, %r9d
	addl	%eax, %r9d
	leal	(%r8,%rbx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rbp # imm = 0x55555556
	movq	%rbp, %rax
	shrq	$63, %rax
	shrq	$32, %rbp
	addl	%eax, %ebp
	leal	(%r12,%r13,2), %eax
	cltq
	movq	%r8, 32(%rsp)           # 8-byte Spill
	imulq	$1431655766, %rax, %r8  # imm = 0x55555556
	movq	%r8, %rax
	shrq	$63, %rax
	shrq	$32, %r8
	addl	%eax, %r8d
	leal	(%r8,%rbp,2), %eax
	cltq
	imulq	$1431655765, %rax, %rcx # imm = 0x55555555
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	%ecx
	addl	%eax, %ecx
	addl	%r9d, %ecx
	movl	%ecx, 288(%rsp)
	leal	(%r14,%r11,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movq	56(%rsp), %r9           # 8-byte Reload
	leal	(%r9,%r10,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rcx
	addl	%esi, %ecx
	addl	%eax, %ecx
	leal	(%rdx,%rdi,2), %eax
	cltq
	imulq	$1431655765, %rax, %rdx # imm = 0x55555555
	shrq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	%edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, 312(%rsp)
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	cltq
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	32(%rsp), %rax          # 8-byte Reload
	shrq	$32, %rax
	movq	%rax, %rdi
	movq	%r13, %rax
	shrq	$32, %rax
	shrq	$32, %rbx
	movq	48(%rsp), %r13          # 8-byte Reload
	shrq	$32, %r13
	shrq	$32, %r11
	leal	(%r10,%r9,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	addl	%ecx, %edx
	leal	(%rbp,%r8,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655765, %rcx, %rsi # imm = 0x55555555
	shrq	$32, %rsi
	subl	%ecx, %esi
	movl	%esi, %ecx
	shrl	$31, %ecx
	sarl	%esi
	addl	%ecx, %esi
	addl	%edx, %esi
	movl	%esi, 320(%rsp)
	shrq	$31, %r14
	andl	$-2, %r14d
	addl	%r11d, %r14d
	movslq	%r14d, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	shrq	$31, %r15
	andl	$-2, %r15d
	addl	%r13d, %r15d
	movslq	%r15d, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	addl	%ecx, %edx
	movq	%rdi, %rcx
	movq	%rdi, %r10
	addq	%rcx, %rcx
	leal	(%rbx,%rcx), %esi
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	addl	%edi, %esi
	shrq	$31, %r12
	andl	$-2, %r12d
	addl	%eax, %r12d
	movslq	%r12d, %rdi
	imulq	$1431655766, %rdi, %rdi # imm = 0x55555556
	movq	%rdi, %rbp
	shrq	$63, %rbp
	shrq	$32, %rdi
	addl	%ebp, %edi
	leal	(%rdi,%rsi,2), %esi
	movslq	%esi, %rsi
	imulq	$1431655765, %rsi, %rdi # imm = 0x55555555
	shrq	$32, %rdi
	subl	%esi, %edi
	movl	%edi, %esi
	shrl	$31, %esi
	sarl	%edi
	addl	%esi, %edi
	addl	%edx, %edi
	movl	%edi, 284(%rsp)
	movl	356(%rsp), %r8d
	movl	260(%rsp), %r9d
	movl	268(%rsp), %r11d
	leal	(%r8,%r9,2), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rsi # imm = 0x55555556
	movq	%rsi, %rdx
	shrq	$63, %rdx
	shrq	$32, %rsi
	addl	%edx, %esi
	movl	300(%rsp), %edx
	addl	%edx, %edx
	addl	276(%rsp), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	addl	%esi, %edx
	leal	(%r10,%r11,2), %eax
	cltq
	imulq	$1431655766, %rax, %rsi # imm = 0x55555556
	movq	%rsi, %rax
	shrq	$63, %rax
	shrq	$32, %rsi
	addl	%eax, %esi
	movl	340(%rsp), %r10d
	movl	364(%rsp), %r14d
	leal	(%r10,%r14,2), %edi
	movslq	%edi, %rdi
	imulq	$1431655766, %rdi, %rdi # imm = 0x55555556
	movq	%rdi, %rbx
	shrq	$63, %rbx
	shrq	$32, %rdi
	addl	%ebx, %edi
	leal	(%rdi,%rsi,2), %ebx
	movslq	%ebx, %rbx
	imulq	$1431655765, %rbx, %rbp # imm = 0x55555555
	shrq	$32, %rbp
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	shrl	$31, %ebx
	sarl	%ebp
	addl	%ebx, %ebp
	addl	%edx, %ebp
	movl	%ebp, 292(%rsp)
	movl	348(%rsp), %edx
	addl	%edx, %edx
	addl	252(%rsp), %edx
	movslq	%edx, %rdx
	imulq	$1431655766, %rdx, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	308(%rsp), %r15d
	movl	332(%rsp), %ebp
	leal	(%rbp,%r15,2), %ebx
	movslq	%ebx, %rbx
	imulq	$1431655766, %rbx, %rdx # imm = 0x55555556
	movq	%rdx, %rbx
	shrq	$63, %rbx
	shrq	$32, %rdx
	addl	%ebx, %edx
	addl	%eax, %edx
	addl	%r11d, %ecx
	movslq	%ecx, %rax
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%r14,%r10,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rbx
	shrq	$63, %rbx
	shrq	$32, %rcx
	addl	%ebx, %ecx
	leal	(%rax,%rcx,2), %eax
	cltq
	imulq	$1431655765, %rax, %rcx # imm = 0x55555555
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	%ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	movl	%ecx, 316(%rsp)
	leal	(%r9,%r8,2), %eax
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	leal	(%r15,%rbp,2), %ecx
	movslq	%ecx, %rcx
	imulq	$1431655766, %rcx, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	addl	%eax, %ecx
	leal	(%rsi,%rdi,2), %eax
	cltq
	imulq	$1431655765, %rax, %rdx # imm = 0x55555555
	shrq	$32, %rdx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	%edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, 324(%rsp)
.LBB9_5:                                # %if.end.i.145
	movq	368(%rsp), %rbx
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	movq	96(%rsp), %rbp          # 8-byte Reload
	je	.LBB9_7
# BB#6:                                 # %patch_set_color.exit255.thread.i
	movl	8(%rbp), %eax
	movl	%eax, (%rbx)
	movl	12(%rbp), %eax
	movl	%eax, 4(%rbx)
	leaq	384(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	384(%rsp), %rax
	leaq	292(%rbp), %rsi
	jmp	.LBB9_8
.LBB9_7:                                # %patch_set_color.exit255.i
	leaq	8(%rbp), %rsi
	leaq	16(%rbx), %rdi
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	328(%r15), %rdi
	leaq	384(%rsp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	384(%rsp), %rax
	leaq	292(%rbp), %rsi
	testq	%rdi, %rdi
	je	.LBB9_9
.LBB9_8:                                # %patch_set_color.exit240.thread.i
	movl	(%rsi), %ecx
	movl	%ecx, (%rax)
	movl	296(%rbp), %ecx
	movl	%ecx, 4(%rax)
	movq	392(%rsp), %r13
	leaq	576(%rbp), %rsi
.LBB9_10:                               # %patch_set_color.exit225.thread.i
	movl	(%rsi), %eax
	movl	%eax, (%r13)
	movl	580(%rbp), %eax
	movl	%eax, 4(%r13)
	movq	376(%rsp), %r12
	leaq	860(%rbp), %rsi
.LBB9_12:                               # %patch_set_color.exit.thread.i
	movl	(%rsi), %eax
	movl	%eax, (%r12)
	movl	864(%rbp), %eax
	movl	%eax, 4(%r12)
	movq	368(%rsp), %rbx
.LBB9_14:                               # %patch_resolve_color_inline.exit199.i
	movq	%r15, %rbp
	movq	16(%rbp), %r15
	leaq	8(%rbx), %r14
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movq	(%r15), %rax
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbp, %r15
	callq	*40(%rax)
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB9_18
# BB#15:                                # %patch_resolve_color_inline.exit181.i
	movq	16(%r15), %rbp
	leaq	8(%r12), %r14
	leaq	16(%r12), %rdx
	movq	%r12, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB9_18
# BB#16:                                # %patch_resolve_color_inline.exit163.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	16(%r15), %rbp
	leaq	8(%rsi), %r14
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB9_18
# BB#17:                                # %patch_resolve_color_inline.exit.i
	movq	16(%r15), %rbp
	leaq	8(%r13), %r14
	leaq	16(%r13), %rdx
	movq	%r13, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	cmpq	$0, 328(%r15)
	jne	.LBB9_19
	jmp	.LBB9_18
.LBB9_9:                                # %patch_set_color.exit240.i
	addq	$16, %rax
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	328(%r15), %rdi
	movq	392(%rsp), %r13
	leaq	576(%rbp), %rsi
	testq	%rdi, %rdi
	jne	.LBB9_10
# BB#11:                                # %patch_set_color.exit225.i
	leaq	16(%r13), %rdi
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	328(%r15), %rdi
	movq	376(%rsp), %r12
	leaq	860(%rbp), %rsi
	testq	%rdi, %rdi
	jne	.LBB9_12
# BB#13:                                # %patch_set_color.exit.i
	leaq	16(%r12), %rdi
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	jne	.LBB9_14
.LBB9_18:                               # %if.then.461.i
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	(%rbp), %rax
	addq	$8, %rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	(%rbp), %rax
	addq	$8, %r12
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	(%rbp), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rdi
	addq	$8, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	(%rbp), %rax
	addq	$8, %r13
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
.LBB9_19:                               # %make_tensor_patch.exit
	movq	(%r15), %rbp
	movb	$1, %al
	cmpl	$1, 136(%rbp)
	jne	.LBB9_21
# BB#20:                                # %if.end.i.149
	movq	8(%r15), %rdi
	movq	%rbp, %rsi
	callq	gx_get_cmap_procs
	movq	(%r15), %rsi
	movq	8(%r15), %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	setne	%al
	movq	(%r15), %rbp
.LBB9_21:                               # %is_linear_color_applicable.exit
	movzbl	%al, %eax
	movl	%eax, 668(%r15)
	movl	$0, 664(%r15)
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbp, %rdi
	callq	*1664(%rbp)
	testl	%eax, %eax
	movq	96(%rsp), %rax          # 8-byte Reload
	jle	.LBB9_49
# BB#22:                                # %if.then
	movq	(%r15), %r11
	movq	%r11, 88(%rsp)          # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	284(%rax), %edx
	movl	(%rax), %r10d
	movl	4(%rax), %ecx
	movl	568(%rax), %r9d
	movl	%r9d, %edi
	subl	%edx, %edi
	subl	%r10d, %edx
	sarl	%edx
	movl	288(%rax), %ebp
	movl	572(%rax), %r8d
	movl	%r8d, %ebx
	subl	%ebp, %ebx
	subl	%ecx, %ebp
	sarl	%ebp
	sarl	%edi
	sarl	%ebx
	movl	852(%rax), %esi
	subl	%esi, %r10d
	subl	%r9d, %esi
	sarl	%esi
	movl	856(%rax), %eax
	subl	%eax, %ecx
	subl	%r8d, %eax
	sarl	%eax
	sarl	%r10d
	sarl	%ecx
	movslq	%edx, %rdx
	movslq	%ebx, %r14
	imulq	%rdx, %r14
	movslq	%ebp, %rdx
	movslq	%edi, %rdi
	imulq	%rdx, %rdi
	movslq	%esi, %rdx
	movslq	%ecx, %rcx
	imulq	%rdx, %rcx
	cltq
	movslq	%r10d, %rdx
	imulq	%rax, %rdx
	subq	%rdi, %r14
	subq	%rdx, %r14
	addq	%rcx, %r14
	testq	%r14, %r14
	setg	%al
	setle	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movzbl	%al, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	24(%r11), %rdx
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_init_local_shared
	leaq	240(%rsp), %rdi
	callq	is_x_bended
	testl	%eax, %eax
	jne	.LBB9_47
# BB#23:                                # %lor.lhs.false
	movq	272(%rsp), %rcx
	movq	%rcx, %rsi
	shrq	$32, %rsi
	movq	304(%rsp), %r13
	movl	%r13d, %edx
	subl	%ecx, %edx
	movq	%r13, %r15
	shrq	$32, %r15
	movl	%r15d, %edi
	subl	%esi, %edi
	movq	280(%rsp), %r12
	movl	%r12d, %ebp
	subl	%ecx, %ebp
	movq	%r12, %r11
	shrq	$32, %r11
	movl	%r11d, %ebx
	subl	%esi, %ebx
	movslq	%edx, %rax
	movslq	%ebx, %rdx
	imulq	%rax, %rdx
	movslq	%edi, %rax
	movslq	%ebp, %rdi
	imulq	%rax, %rdi
	movq	%rdx, %rbp
	subq	%rdi, %rbp
	sarq	$63, %rbp
	cmpq	%rdi, %rdx
	movq	240(%rsp), %rax
	movq	248(%rsp), %rdi
	movl	$1, %r9d
	cmovgl	%r9d, %ebp
	subl	%eax, %ecx
	movl	%edi, %edx
	subl	%eax, %edx
	shrq	$32, %rax
	subl	%eax, %esi
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	shlq	$32, %rax
	subq	%rax, %rdi
	sarq	$32, %rdi
	imulq	%rcx, %rdi
	imulq	%rsi, %rdx
	movq	%rdi, %rcx
	subq	%rdx, %rcx
	sarq	$63, %rcx
	cmpq	%rdx, %rdi
	cmovgl	%r9d, %ecx
	movl	%ebp, %eax
	imull	%ecx, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#24:                                # %if.end.i.424.i
	movq	312(%rsp), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	336(%rsp), %r8
	movl	%r8d, %eax
	subl	%r13d, %eax
	movq	%r8, %rsi
	shrq	$32, %rsi
	movl	%esi, %edx
	subl	%r15d, %edx
	movl	%edi, %ebx
	subl	%r13d, %ebx
	shrq	$32, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%edi, %r10d
	subl	%r15d, %r10d
	cltq
	movslq	%r10d, %rdi
	imulq	%rax, %rdi
	movslq	%edx, %rax
	movslq	%ebx, %rdx
	imulq	%rax, %rdx
	movq	%rdi, %rbx
	subq	%rdx, %rbx
	sarq	$63, %rbx
	cmpq	%rdx, %rdi
	cmovgl	%r9d, %ebx
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebp
	movl	%ebx, %eax
	imull	%ebp, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#25:                                # %if.end.i.397.i
	subl	%r8d, %r13d
	subl	%esi, %r15d
	movq	344(%rsp), %r10
	movl	%r10d, %eax
	subl	%r8d, %eax
	movq	%r10, %r9
	shrq	$32, %r9
	movl	%r9d, %edx
	subl	%esi, %edx
	movslq	%r13d, %rsi
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	movslq	%r15d, %rsi
	cltq
	imulq	%rsi, %rax
	movq	%rdx, %rsi
	subq	%rax, %rsi
	sarq	$63, %rsi
	negl	%esi
	cmpq	%rax, %rdx
	movl	$-1, %edi
	cmovlel	%esi, %edi
	testl	%ebp, %ebp
	cmovnel	%ebp, %ebx
	movl	%edi, %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#26:                                # %if.end.i.370.i
	movq	56(%rsp), %rax          # 8-byte Reload
	subl	%r12d, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %edx
	subl	%r11d, %edx
	movq	288(%rsp), %rcx
	movl	%ecx, %ebp
	subl	%r12d, %ebp
	movq	%rcx, %r12
	movq	%r12, %r15
	shrq	$32, %r15
	movl	%r15d, %esi
	subl	%r11d, %esi
	cltq
	movslq	%esi, %rcx
	imulq	%rax, %rcx
	movslq	%edx, %rax
	movslq	%ebp, %rdx
	imulq	%rax, %rdx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	sarq	$63, %rsi
	cmpq	%rdx, %rcx
	movl	$1, %eax
	cmovlel	%esi, %eax
	testl	%ebx, %ebx
	cmovnel	%ebx, %edi
	movl	%eax, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#27:                                # %if.end.i.343.i
	testl	%edi, %edi
	cmovel	%eax, %edi
	movl	%edi, %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#28:                                # %if.end.i.316.i
	movl	%r10d, %ecx
	movq	56(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %ecx
	movl	%r9d, %edx
	movq	48(%rsp), %r13          # 8-byte Reload
	subl	%r13d, %edx
	movq	320(%rsp), %r11
	movq	%r11, 40(%rsp)          # 8-byte Spill
	movl	%r11d, %esi
	subl	%ebx, %esi
	movq	%rbx, %r8
	shrq	$32, %r11
	movl	%r11d, %ebx
	subl	%r13d, %ebx
	movslq	%ecx, %rcx
	movslq	%ebx, %rbx
	imulq	%rcx, %rbx
	movslq	%edx, %rcx
	movslq	%esi, %rdx
	imulq	%rcx, %rdx
	movq	%rbx, %rcx
	subq	%rdx, %rcx
	sarq	$63, %rcx
	cmpq	%rdx, %rbx
	movl	$1, %edx
	cmovlel	%ecx, %edx
	testl	%edi, %edi
	cmovnel	%edi, %eax
	movl	%edx, %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#29:                                # %if.end.i.289.i
	subl	%r10d, %r8d
	subl	%r9d, %r13d
	movq	352(%rsp), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	%ecx, %esi
	subl	%r10d, %esi
	movq	%rcx, %r10
	shrq	$32, %r10
	movl	%r10d, %edi
	subl	%r9d, %edi
	movslq	%r8d, %rbx
	movslq	%edi, %rcx
	imulq	%rbx, %rcx
	movslq	%r13d, %rbx
	movslq	%esi, %rsi
	imulq	%rbx, %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	sarq	$63, %rdi
	negl	%edi
	cmpq	%rsi, %rcx
	movl	$-1, %ebx
	cmovlel	%edi, %ebx
	testl	%eax, %eax
	cmovnel	%eax, %edx
	movl	%ebx, %eax
	imull	%edx, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#30:                                # %if.end.i.262.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	subl	%r12d, %ecx
	movl	%r11d, %esi
	subl	%r15d, %esi
	movq	296(%rsp), %r9
	movl	%r9d, %eax
	subl	%r12d, %eax
	movq	%r9, %rbp
	shrq	$32, %rbp
	movl	%ebp, %edi
	subl	%r15d, %edi
	movslq	%ecx, %rcx
	movslq	%edi, %rdi
	imulq	%rcx, %rdi
	movslq	%esi, %rcx
	cltq
	imulq	%rcx, %rax
	movq	%rdi, %rcx
	subq	%rax, %rcx
	sarq	$63, %rcx
	cmpq	%rax, %rdi
	movl	$1, %r8d
	cmovlel	%ecx, %r8d
	testl	%edx, %edx
	cmovnel	%edx, %ebx
	movl	%r8d, %eax
	imull	%ebx, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#31:                                # %if.end.i.235.i
	testl	%ebx, %ebx
	cmovel	%r8d, %ebx
	movl	%ebx, %eax
	imull	%r8d, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#32:                                # %if.end.i.208.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %r13          # 8-byte Reload
	subl	%r13d, %eax
	movl	%r10d, %ecx
	subl	%r11d, %ecx
	movq	328(%rsp), %rsi
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	%esi, %edx
	subl	%r13d, %edx
	shrq	$32, %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	subl	%r11d, %esi
	cltq
	movslq	%esi, %rsi
	imulq	%rax, %rsi
	movslq	%ecx, %rax
	movslq	%edx, %rcx
	imulq	%rax, %rcx
	movq	%rsi, %rax
	subq	%rcx, %rax
	sarq	$63, %rax
	cmpq	%rcx, %rsi
	movl	$1, %edx
	cmovlel	%eax, %edx
	testl	%ebx, %ebx
	cmovnel	%ebx, %r8d
	movl	%edx, %eax
	imull	%r8d, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#33:                                # %if.end.i.181.i
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	subl	%edi, %eax
	movl	%r11d, %ecx
	subl	%r10d, %ecx
	movq	360(%rsp), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	%ebx, %esi
	subl	%edi, %esi
	shrq	$32, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	subl	%r10d, %edi
	cltq
	movslq	%edi, %rdi
	imulq	%rax, %rdi
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	imulq	%rax, %rcx
	movq	%rdi, %r13
	subq	%rcx, %r13
	sarq	$63, %r13
	negl	%r13d
	cmpq	%rcx, %rdi
	movl	$-1, %ebx
	cmovgl	%ebx, %r13d
	testl	%r8d, %r8d
	cmovnel	%r8d, %edx
	movl	%r13d, %eax
	imull	%edx, %eax
	testl	%eax, %eax
	js	.LBB9_47
# BB#34:                                # %if.end.i.154.i
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%r9d, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	subl	%ebp, %ecx
	subl	%r9d, %r12d
	subl	%ebp, %r15d
	cltq
	movslq	%r15d, %rsi
	imulq	%rax, %rsi
	movslq	%ecx, %rax
	movslq	%r12d, %rcx
	imulq	%rax, %rcx
	movq	%rsi, %rax
	subq	%rcx, %rax
	sarq	$63, %rax
	negl	%eax
	cmpq	%rcx, %rsi
	cmovgl	%ebx, %eax
	testl	%edx, %edx
	cmovnel	%edx, %r13d
	movl	%r13d, %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#35:                                # %if.end.i.127.i
	testl	%r13d, %r13d
	cmovel	%eax, %r13d
	movl	%r13d, %ecx
	imull	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#36:                                # %if.end.i.100.i
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	32(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	subl	%esi, %edi
	movq	%rsi, %rbp
	subl	%ebx, %r11d
	movslq	%ecx, %rcx
	movslq	%r11d, %rsi
	imulq	%rcx, %rsi
	movslq	%edx, %rcx
	movslq	%edi, %rdx
	imulq	%rcx, %rdx
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	sarq	$63, %rcx
	negl	%ecx
	cmpq	%rdx, %rsi
	movl	$-1, %edx
	cmovlel	%ecx, %edx
	testl	%r13d, %r13d
	cmovnel	%r13d, %eax
	movl	%eax, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	js	.LBB9_47
# BB#37:                                # %is_y_bended.exit
	movq	24(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %ebp
	movq	16(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %ebx
	movq	56(%rsp), %rdi          # 8-byte Reload
	subl	%ecx, %edi
	subl	%esi, %r10d
	movslq	%ebp, %rcx
	movslq	%r10d, %rsi
	imulq	%rcx, %rsi
	movslq	%ebx, %rcx
	movslq	%edi, %rdi
	imulq	%rcx, %rdi
	movq	%rsi, %rcx
	subq	%rdi, %rcx
	sarq	$63, %rcx
	cmpq	%rdi, %rsi
	movl	$1, %r13d
	cmovgl	%r13d, %ecx
	testl	%eax, %eax
	cmovnel	%eax, %edx
	imull	%ecx, %edx
	testl	%edx, %edx
	js	.LBB9_47
# BB#38:                                # %if.else
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movq	%rax, %rbp
	leaq	112(%rsp), %rdi
	callq	gx_path_add_point
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_48
# BB#39:
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	1(%rax,%rax), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rax
	xorq	$1, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB9_40:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %r15d
	movl	%r15d, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rcx,%r15), %ecx
	andl	$-4, %ecx
	subl	%ecx, %r15d
	testq	%r14, %r14
	cmovlel	%r15d, %eax
	cltq
	imulq	$284, %rax, %rax        # imm = 0x11C
	cmpl	$0, 280(%rbp,%rax)
	je	.LBB9_42
# BB#41:                                # %if.then.137
                                        #   in Loop: Header=BB9_40 Depth=1
	movslq	%r15d, %rax
	imulq	$284, %rax, %rax        # imm = 0x11C
	movl	(%rbp,%rax), %esi
	movl	4(%rbp,%rax), %edx
	xorl	%ecx, %ecx
	leaq	112(%rsp), %rdi
	callq	gx_path_add_line_notes
	jmp	.LBB9_43
.LBB9_42:                               # %if.else.149
                                        #   in Loop: Header=BB9_40 Depth=1
	leaq	(%rax,%rbp), %rax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	264(%rax,%rcx,8), %esi
	movl	268(%rax,%rcx,8), %edx
	movl	264(%rax,%r12,8), %ecx
	movl	268(%rax,%r12,8), %r8d
	movslq	%r15d, %rax
	imulq	$284, %rax, %rax        # imm = 0x11C
	movl	(%rbp,%rax), %r9d
	movl	4(%rbp,%rax), %eax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	leaq	112(%rsp), %rdi
	callq	gx_path_add_curve_notes
.LBB9_43:                               # %for.inc
                                        #   in Loop: Header=BB9_40 Depth=1
	movl	%eax, %ebx
	cmpl	$3, %r13d
	jg	.LBB9_45
# BB#44:                                # %for.inc
                                        #   in Loop: Header=BB9_40 Depth=1
	incl	%r13d
	testl	%ebx, %ebx
	jns	.LBB9_40
.LBB9_45:                               # %for.end
	testl	%ebx, %ebx
	js	.LBB9_48
# BB#46:                                # %if.end.192
	leaq	112(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_48
.LBB9_47:                               # %if.then.195
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	leaq	112(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	*1336(%rax)
	movl	%eax, %ebx
.LBB9_48:                               # %if.end.199
	leaq	112(%rsp), %rdi
	movl	$.L.str.4, %esi
	callq	gx_path_free
	testl	%ebx, %ebx
	movq	104(%rsp), %r15         # 8-byte Reload
	js	.LBB9_68
.LBB9_49:                               # %if.end.221
	movl	644(%r15), %ecx
	movq	272(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	304(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	336(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	240(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	240(%rsp), %rax
	movq	272(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	304(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	336(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_51
# BB#50:                                # %if.end.221
	movb	%al, %bl
.LBB9_51:                               # %if.end.221
	movl	$1, %r14d
	movb	%bl, %cl
	shll	%cl, %r14d
	movl	644(%r15), %ecx
	movq	280(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	312(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	344(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	248(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	248(%rsp), %rax
	movq	280(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	312(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	344(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_53
# BB#52:                                # %if.end.221
	movb	%al, %bl
.LBB9_53:                               # %if.end.221
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	644(%r15), %ecx
	movq	288(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	320(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	352(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	256(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	256(%rsp), %rax
	movq	288(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	320(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	352(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_55
# BB#54:                                # %if.end.221
	movb	%al, %bl
.LBB9_55:                               # %if.end.221
	movl	$1, %r12d
	movb	%bl, %cl
	shll	%cl, %r12d
	movl	644(%r15), %ecx
	movq	296(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	328(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	360(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	264(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	264(%rsp), %rax
	movq	296(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	328(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	360(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_57
# BB#56:                                # %if.end.221
	movb	%al, %bl
.LBB9_57:                               # %if.end.221
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	%ebp, %r14d
	cmovgel	%r14d, %ebp
	movl	%ebp, 88(%rsp)          # 4-byte Spill
	movl	%r14d, 96(%rsp)         # 4-byte Spill
	cmpl	%eax, %r12d
	cmovll	%eax, %r12d
	movl	644(%r15), %ecx
	movq	248(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	256(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	264(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	240(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %r15d
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	256(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	264(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %r15d
	jg	.LBB9_59
# BB#58:                                # %if.end.221
	movb	%al, %r15b
.LBB9_59:                               # %if.end.221
	movl	$1, %r14d
	movb	%r15b, %cl
	shll	%cl, %r14d
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	644(%rax), %ecx
	movq	280(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	288(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	296(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	272(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebp
	movq	272(%rsp), %rax
	movq	280(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	288(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	296(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebp
	jg	.LBB9_61
# BB#60:                                # %if.end.221
	movb	%al, %bpl
.LBB9_61:                               # %if.end.221
	movl	$1, %r15d
	movb	%bpl, %cl
	shll	%cl, %r15d
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	644(%rax), %ecx
	movq	312(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	320(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	328(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	304(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	304(%rsp), %rax
	movq	312(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	320(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	328(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_63
# BB#62:                                # %if.end.221
	movb	%al, %bl
.LBB9_63:                               # %if.end.221
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	644(%rax), %ecx
	movq	344(%rsp), %rax
	movl	%eax, 140(%rsp)
	shrq	$32, %rax
	movl	%eax, 144(%rsp)
	movq	352(%rsp), %rax
	movl	%eax, 148(%rsp)
	shrq	$32, %rax
	movl	%eax, 152(%rsp)
	movq	360(%rsp), %rax
	movl	%eax, 132(%rsp)
	shrq	$32, %rax
	movl	%eax, 136(%rsp)
	movq	336(%rsp), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	leaq	112(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %ebx
	movq	336(%rsp), %rax
	movq	344(%rsp), %rcx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shrq	$32, %rax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	addl	%esi, %eax
	movq	352(%rsp), %rsi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	subl	%edx, %edi
	movl	%edi, %edx
	negl	%edx
	cmovll	%edi, %edx
	addl	%ecx, %edx
	movq	360(%rsp), %rcx
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	addl	%edx, %esi
	shrq	$32, %rcx
	subl	%eax, %ecx
	movl	%ecx, %eax
	negl	%eax
	cmovll	%ecx, %eax
	addl	%esi, %eax
	cltq
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %ebx
	jg	.LBB9_65
# BB#64:                                # %if.end.221
	movb	%al, %bl
.LBB9_65:                               # %if.end.221
	movb	%bl, %cl
	movl	$1, %r13d
	shll	%cl, %r13d
	cmpl	%r15d, %r14d
	cmovgel	%r14d, %r15d
	cmpl	%r13d, %ebp
	cmovll	%r13d, %ebp
	cmpl	%ebp, %r15d
	cmovgel	%r15d, %ebp
	movq	368(%rsp), %r8
	movq	376(%rsp), %r9
	cmpl	%ebp, %r14d
	movl	%ebp, %eax
	cmovgel	%r14d, %eax
	cmovgl	%ebp, %r14d
	movaps	240(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	256(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	cltd
	idivl	%r14d
	movl	$3, (%rsp)
	leaq	112(%rsp), %rcx
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%eax, %edx
	callq	fill_wedges_aux
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_68
# BB#66:                                # %if.end.377
	movl	88(%rsp), %eax          # 4-byte Reload
	cmpl	%r12d, %eax
	cmovgel	%eax, %r12d
	leaq	240(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r12d, %edx
	movl	96(%rsp), %ecx          # 4-byte Reload
	movl	72(%rsp), %r8d          # 4-byte Reload
	callq	fill_patch
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB9_68
# BB#67:                                # %if.then.380
	movq	384(%rsp), %r8
	movq	392(%rsp), %r9
	cmpl	%ebp, %r13d
	movl	%ebp, %eax
	cmovgel	%r13d, %eax
	cmovgl	%ebp, %r13d
	movaps	336(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	352(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	cltd
	idivl	%r13d
	movl	$3, (%rsp)
	leaq	112(%rsp), %rcx
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	%eax, %edx
	callq	fill_wedges_aux
	movl	%eax, %ebx
.LBB9_68:                               # %out
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 688(%r15)
	movl	%ebx, %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	patch_fill, .Lfunc_end9-patch_fill
	.cfi_endproc

	.globl	gs_shading_Tpp_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_Tpp_fill_rectangle,@function
gs_shading_Tpp_fill_rectangle:          # @gs_shading_Tpp_fill_rectangle
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
	pushq	%r13
.Ltmp62:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp63:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 56
	subq	$2360, %rsp             # imm = 0x938
.Ltmp65:
	.cfi_def_cfa_offset 2416
.Ltmp66:
	.cfi_offset %rbx, -56
.Ltmp67:
	.cfi_offset %r12, -48
.Ltmp68:
	.cfi_offset %r13, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rdi, %r15
	leaq	1632(%rsp), %rdi
	movq	%r15, %rsi
	callq	mesh_init_fill_state
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB10_1
# BB#3:                                 # %if.end.4
	movq	136(%r15), %rax
	movq	%rax, 1960(%rsp)
	leaq	1632(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB10_15
# BB#4:                                 # %if.end.9
	addq	$16, %r15
	movl	$0, 1196(%rsp)
	movl	$0, 912(%rsp)
	movl	$0, 628(%rsp)
	movl	$0, 344(%rsp)
	leaq	1208(%rsp), %r13
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	shade_next_init
	leaq	64(%rsp), %rbx
	leaq	32(%rsp), %r12
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB10_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	128(%r15), %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	shade_next_patch
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB10_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	1632(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	patch_fill
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB10_5
.LBB10_7:                               # %while.end
	movq	1984(%rsp), %rsi
	movq	2320(%rsp), %r14
	movq	2328(%rsp), %r15
	movq	2344(%rsp), %rdi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1984(%rsp)
	movq	2328(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB10_9
# BB#8:                                 # %if.then.i
	movq	2344(%rsp), %rdi
	movl	$.L.str, %edx
	callq	*24(%rdi)
.LBB10_9:                               # %if.end.i
	movq	2352(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_11
# BB#10:                                # %if.then.6.i
	callq	gs_color_index_cache_destroy
.LBB10_11:                              # %term_patch_fill_state.exit
	movl	$-28, %ebx
	cmpq	%r15, %r14
	jne	.LBB10_15
# BB#12:                                # %if.end.37
	movq	1928(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_14
# BB#13:                                # %if.then.40
	callq	gsicc_release_link
.LBB10_14:                              # %if.end.42
	movl	%ebp, %ebx
	sarl	$31, %ebx
	andl	%ebp, %ebx
	jmp	.LBB10_15
.LBB10_1:                               # %if.then
	movq	1928(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_15
# BB#2:                                 # %if.then.2
	callq	gsicc_release_link
.LBB10_15:                              # %cleanup.44
	movl	%ebx, %eax
	addq	$2360, %rsp             # imm = 0x938
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gs_shading_Tpp_fill_rectangle, .Lfunc_end10-gs_shading_Tpp_fill_rectangle
	.cfi_endproc

	.globl	wedge_vertex_list_elem_buffer_alloc
	.align	16, 0x90
	.type	wedge_vertex_list_elem_buffer_alloc,@function
wedge_vertex_list_elem_buffer_alloc:    # @wedge_vertex_list_elem_buffer_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	712(%rbx), %rdi
	movl	$9216, 372(%rbx)        # imm = 0x2400
	movl	$294912, %esi           # imm = 0x48000
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 352(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB11_2
# BB#1:                                 # %if.end
	movq	$0, 360(%rbx)
	movl	$0, 368(%rbx)
	xorl	%eax, %eax
.LBB11_2:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end11:
	.size	wedge_vertex_list_elem_buffer_alloc, .Lfunc_end11-wedge_vertex_list_elem_buffer_alloc
	.cfi_endproc

	.globl	patch_color_to_device_color
	.align	16, 0x90
	.type	patch_color_to_device_color,@function
patch_color_to_device_color:            # @patch_color_to_device_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 48
	subq	$928, %rsp              # imm = 0x3A0
.Ltmp79:
	.cfi_def_cfa_offset 976
.Ltmp80:
	.cfi_offset %rbx, -48
.Ltmp81:
	.cfi_offset %r12, -40
.Ltmp82:
	.cfi_offset %r13, -32
.Ltmp83:
	.cfi_offset %r14, -24
.Ltmp84:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	720(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB12_3
# BB#1:                                 # %if.then.3.i
	leaq	16(%rbx), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	callq	gs_cached_color_index
	testl	%eax, %eax
	js	.LBB12_18
# BB#2:                                 # %if.end.8.i
	cmpq	$0, 720(%r15)
	movl	$0, %eax
	jne	.LBB12_18
.LBB12_3:                               # %if.then.11.i
	movq	16(%r15), %r12
	testq	%r12, %r12
	je	.LBB12_5
# BB#4:                                 # %if.then.13.i
	testq	%r14, %r14
	leaq	272(%rsp), %r13
	cmovneq	%r14, %r13
	leaq	16(%rsp), %rdi
	addq	$16, %rbx
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	movq	%rbx, %rsi
	callq	memcpy
	movq	(%r12), %rax
	movq	(%r15), %r8
	movq	8(%r15), %rcx
	leaq	8(%rsp), %rdi
	xorl	%r9d, %r9d
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	*72(%rax)
	testl	%eax, %eax
	jns	.LBB12_17
	jmp	.LBB12_18
.LBB12_5:                               # %if.else.i
	movq	(%r15), %rax
	movslq	100(%rax), %rax
	testq	%rax, %rax
	jle	.LBB12_16
# BB#6:                                 # %for.body.i.preheader
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB12_15
# BB#7:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB12_14
# BB#8:                                 # %vector.body.preheader
	leaq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB12_10
# BB#9:                                 # %vector.body.prol
	movups	32(%rbx), %xmm0
	cvttps2dq	%xmm0, %xmm0
	movaps	%xmm0, 16
	movl	$8, %edx
.LBB12_10:                              # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB12_13
# BB#11:                                # %vector.body.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	.align	16, 0x90
.LBB12_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	16(%rbx,%rdx,4), %xmm0
	movups	32(%rbx,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, (,%rdx,4)
	movaps	%xmm1, 16(,%rdx,4)
	movups	48(%rbx,%rdx,4), %xmm0
	movups	64(%rbx,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, 32(,%rdx,4)
	movaps	%xmm1, 48(,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB12_12
.LBB12_13:
	movq	%rcx, %rdx
.LBB12_14:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB12_16
	.align	16, 0x90
.LBB12_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	16(%rbx,%rdx,4), %ecx
	movl	%ecx, (,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB12_15
.LBB12_16:                              # %for.end.i
	movq	$gx_dc_type_data_pure, (%r14)
.LBB12_17:                              # %cleanup.thread.i
	xorl	%eax, %eax
.LBB12_18:                              # %patch_color_to_device_color_inline.exit
	addq	$928, %rsp              # imm = 0x3A0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end12:
	.size	patch_color_to_device_color, .Lfunc_end12-patch_color_to_device_color
	.cfi_endproc

	.align	16, 0x90
	.type	patch_color_to_device_color_inline,@function
patch_color_to_device_color_inline:     # @patch_color_to_device_color_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp88:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp89:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 56
	subq	$920, %rsp              # imm = 0x398
.Ltmp91:
	.cfi_def_cfa_offset 976
.Ltmp92:
	.cfi_offset %rbx, -56
.Ltmp93:
	.cfi_offset %r12, -48
.Ltmp94:
	.cfi_offset %r13, -40
.Ltmp95:
	.cfi_offset %r14, -32
.Ltmp96:
	.cfi_offset %r15, -24
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	720(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB13_3
# BB#1:                                 # %if.then.3
	leaq	16(%rbx), %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	gs_cached_color_index
	testl	%eax, %eax
	js	.LBB13_20
# BB#2:                                 # %if.end.8
	xorl	%eax, %eax
	cmpq	$0, 720(%r12)
	jne	.LBB13_20
.LBB13_3:                               # %if.then.11
	movq	16(%r12), %rbp
	testq	%rbp, %rbp
	je	.LBB13_15
# BB#4:                                 # %if.then.13
	testq	%r13, %r13
	leaq	264(%rsp), %r14
	cmovneq	%r13, %r14
	leaq	8(%rsp), %rdi
	addq	$16, %rbx
	movslq	24(%r12), %rdx
	shlq	$2, %rdx
	movq	%rbx, %rsi
	callq	memcpy
	movq	(%rbp), %rax
	movq	(%r12), %r8
	movq	8(%r12), %rcx
	leaq	(%rsp), %rdi
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB13_20
# BB#5:                                 # %if.end.30
	testq	%r15, %r15
	je	.LBB13_19
# BB#6:                                 # %if.then.33
	movq	(%r14), %rcx
	movl	$gx_dc_type_data_devn, %eax
	cmpq	%rax, %rcx
	je	.LBB13_8
# BB#7:                                 # %if.then.33
	movl	$2, %eax
	movl	$gx_dc_type_data_pure, %edx
	cmpq	%rdx, %rcx
	jne	.LBB13_20
.LBB13_8:                               # %if.end.41
	movl	$gx_dc_type_data_pure, %eax
	cmpq	%rax, %rcx
	movq	288(%r12), %rdx
	movl	100(%rdx), %eax
	je	.LBB13_12
# BB#9:                                 # %for.cond.12.preheader.i
	testl	%eax, %eax
	jle	.LBB13_19
# BB#10:                                # %for.body.16.lr.ph.i
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_11:                              # %for.body.16.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	8(%r14,%rax,2), %ecx
	movl	%ecx, %esi
	shrl	%esi
	shrl	$13, %ecx
	subl	%ecx, %esi
	movswl	%si, %ecx
	movl	%ecx, (%r15,%rax,4)
	incq	%rax
	movslq	100(%rdx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB13_11
	jmp	.LBB13_19
.LBB13_15:                              # %if.else
	movq	(%r12), %rax
	cmpl	$0, 100(%rax)
	jle	.LBB13_18
# BB#16:                                # %for.body.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB13_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	16(%rbx,%rcx,4), %edx
	movl	%edx, (%r15,%rcx,4)
	incq	%rcx
	movslq	100(%rax), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB13_17
.LBB13_18:                              # %for.end
	movq	$gx_dc_type_data_pure, (%r13)
.LBB13_19:                              # %cleanup.thread
	xorl	%eax, %eax
.LBB13_20:                              # %cleanup.57
	addq	$920, %rsp              # imm = 0x398
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_12:                              # %for.cond.preheader.i
	testl	%eax, %eax
	jle	.LBB13_19
# BB#13:                                # %for.body.lr.ph.i
	movq	8(%r14), %rbp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB13_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movb	140(%rdx,%rdi), %cl
	movzbl	204(%rdx,%rdi), %eax
	movq	%rbp, %rsi
	shrq	%cl, %rsi
	movl	$1, %ebx
	movb	%al, %cl
	shll	%cl, %ebx
	decl	%ebx
	movslq	%ebx, %rbx
	andq	%rsi, %rbx
	movl	$31, %ecx
	subl	%eax, %ecx
	shlq	%cl, %rbx
	movl	%ebx, (%r15,%rdi,4)
	incq	%rdi
	movslq	100(%rdx), %rax
	cmpq	%rax, %rdi
	jl	.LBB13_14
	jmp	.LBB13_19
.Lfunc_end13:
	.size	patch_color_to_device_color_inline, .Lfunc_end13-patch_color_to_device_color_inline
	.cfi_endproc

	.globl	mesh_padding
	.align	16, 0x90
	.type	mesh_padding,@function
mesh_padding:                           # @mesh_padding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp99:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp100:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp101:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp102:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 112
.Ltmp105:
	.cfi_offset %rbx, -56
.Ltmp106:
	.cfi_offset %r12, -48
.Ltmp107:
	.cfi_offset %r13, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
.Ltmp110:
	.cfi_offset %rbp, -16
	movl	(%rdx), %ebx
	movl	4(%rdx), %ebp
	movl	(%rsi), %r15d
	movl	4(%rsi), %r13d
	movl	%ebx, %eax
	subl	%r15d, %eax
	movl	%eax, %r10d
	negl	%r10d
	cmovll	%eax, %r10d
	movl	%ebp, %eax
	subl	%r13d, %eax
	movl	%eax, %r11d
	negl	%r11d
	cmovll	%eax, %r11d
	cmpl	%r11d, %r10d
	setg	%r9b
	jle	.LBB14_2
# BB#1:                                 # %if.then
	addq	$4, %rdx
	addq	$4, %rsi
	cmpl	%r15d, %ebx
	movq	%r8, %r14
	cmovgq	%rcx, %r14
	cmovgq	%r8, %rcx
	movq	%rsi, %r12
	cmovgq	%rdx, %r12
	movl	%r15d, %r8d
	cmovgel	%ebx, %r8d
	cmovleq	%rdx, %rsi
	cmovgl	%r15d, %ebx
	jmp	.LBB14_3
.LBB14_2:                               # %if.else.33
	cmpl	%r13d, %ebp
	movq	%r8, %r14
	cmovgq	%rcx, %r14
	cmovgq	%r8, %rcx
	movq	%rsi, %r12
	cmovgq	%rdx, %r12
	movl	%r13d, %r8d
	cmovgel	%ebp, %r8d
	cmovleq	%rdx, %rsi
	cmovgl	%r13d, %ebp
	movl	%ebp, %ebx
.LBB14_3:                               # %if.end.41
	movzbl	%r9b, %r9d
	movl	(%rsi), %esi
	movl	(%r12), %edx
	leal	-128(%rsi), %eax
	movl	%eax, 40(%rsp)
	movl	%esi, %eax
	subl	$-128, %eax
	movl	%eax, 24(%rsp)
	addl	$-128, %ebx
	movl	%ebx, 28(%rsp)
	movl	%ebx, 44(%rsp)
	leal	-128(%rdx), %eax
	movl	%eax, 48(%rsp)
	movl	%edx, %eax
	subl	$-128, %eax
	movl	%eax, 32(%rsp)
	subl	$-128, %r8d
	movl	%r8d, 36(%rsp)
	movl	%r8d, 52(%rsp)
	cmpl	%r11d, %r10d
	jle	.LBB14_5
# BB#4:                                 # %if.then.i.54
	addl	$129, %esi
	movl	%esi, 24(%rsp)
	addl	$129, %edx
	movl	%edx, 32(%rsp)
.LBB14_5:                               # %adjust_swapped_boundary.exit55
	movq	%rcx, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	40(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movl	%ebx, %ecx
	callq	decompose_linear_color
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mesh_padding, .Lfunc_end14-mesh_padding
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
.LCPI15_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	decompose_linear_color,@function
decompose_linear_color:                 # @decompose_linear_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 56
	subq	$1288, %rsp             # imm = 0x508
.Ltmp117:
	.cfi_def_cfa_offset 1344
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movl	672(%r14), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jne	.LBB15_8
# BB#1:                                 # %if.then
	movl	8(%rsi), %eax
	movl	(%rsi), %ecx
	movl	4(%rsi), %edi
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	12(%rsi), %ecx
	cmpl	%ecx, %edi
	cmovlel	%edi, %ecx
	movl	8(%rdx), %ebx
	movl	(%rdx), %ebp
	movl	4(%rdx), %edi
	cmpl	%ebx, %ebp
	cmovgel	%ebp, %ebx
	movl	12(%rdx), %ebp
	cmpl	%ebp, %edi
	cmovgel	%edi, %ebp
	testl	%r9d, %r9d
	movl	%ecx, %r8d
	cmovel	%eax, %r8d
	cmovnel	%eax, %ecx
	movl	%ebp, %r15d
	cmovel	%ebx, %r15d
	cmovnel	%ebx, %ebp
	movl	312(%r14), %r10d
	movl	316(%r14), %r11d
	cmpl	%r8d, %r10d
	cmovll	%r8d, %r10d
	movl	320(%r14), %ebx
	cmpl	%r15d, %ebx
	cmovgl	%r15d, %ebx
	cmpl	%ecx, %r11d
	cmovll	%ecx, %r11d
	movl	324(%r14), %edi
	cmpl	%ebp, %edi
	cmovgl	%ebp, %edi
	xorl	%eax, %eax
	cmpl	%r10d, %ebx
	jle	.LBB15_92
# BB#2:                                 # %if.then
	cmpl	%r11d, %edi
	jle	.LBB15_92
# BB#3:                                 # %if.end.175
	cmpl	%edi, %ebp
	jne	.LBB15_8
# BB#4:                                 # %if.end.175
	cmpl	%ebx, %r15d
	jne	.LBB15_8
# BB#5:                                 # %if.end.175
	cmpl	%r10d, %r8d
	jne	.LBB15_8
# BB#6:                                 # %if.end.175
	cmpl	%r11d, %ecx
	jne	.LBB15_8
# BB#7:                                 # %if.then.198
	movl	$1, 672(%r14)
.LBB15_8:                               # %if.end.202
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	688(%r14), %r15
	movslq	680(%r14), %rax
	leaq	(%rax,%r15), %rcx
	movl	$-28, %eax
	cmpq	704(%r14), %rcx
	ja	.LBB15_92
# BB#9:                                 # %reserve_colors_inline.exit
	movq	%rcx, 688(%r14)
	testq	%r15, %r15
	je	.LBB15_92
# BB#10:                                # %if.end.205
	movl	%r9d, 68(%rsp)          # 4-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	1352(%rsp), %r11
	movq	1344(%rsp), %rbx
	movq	328(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB15_12
# BB#11:                                # %if.then.i.164
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r11), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r15)
	movss	4(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r11), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r15)
	movq	16(%r14), %rbp
	leaq	8(%r15), %r13
	leaq	16(%r15), %rdx
	movq	%r15, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	jmp	.LBB15_23
.LBB15_12:                              # %if.else.i
	movslq	24(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB15_23
# BB#13:                                # %for.body.lr.ph.i
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %rax
	cmpq	$-2, %rax
	je	.LBB15_21
# BB#14:                                # %overflow.checked
	movq	%rbx, %r13
	addq	$2, %rax
	xorl	%esi, %esi
	movq	%rax, %r8
	andq	$-4, %r8
	je	.LBB15_20
# BB#15:                                # %vector.memcheck
	leaq	12(%r15,%rcx,4), %r9
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r13, %rdi
	subq	%rsi, %rdi
	movq	%r11, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%r15,%rsi), %rsi
	leaq	12(%r13,%rcx,4), %r10
	addq	$8, %rdi
	leaq	12(%r11,%rcx,4), %rdx
	addq	$8, %rbp
	cmpq	%rdi, %r9
	setbe	%dil
	cmpq	%rsi, %r10
	setbe	%r10b
	cmpq	%rbp, %r9
	setbe	%bl
	cmpq	%rsi, %rdx
	setbe	%dl
	xorl	%esi, %esi
	testb	%r10b, %dil
	jne	.LBB15_20
# BB#16:                                # %vector.memcheck
	andb	%dl, %bl
	jne	.LBB15_20
# BB#17:                                # %vector.body.preheader
	movq	%rcx, %r9
	subq	%r8, %r9
	leaq	8(%r13,%rcx,4), %rdi
	leaq	8(%r11,%rcx,4), %rbp
	leaq	8(%r15,%rcx,4), %rbx
	movq	%rcx, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rsi
	cmovgq	%rdx, %rsi
	leaq	2(%rsi,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI15_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB15_18:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbx)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rbx
	addq	$-4, %rcx
	jne	.LBB15_18
# BB#19:
	movq	%r9, %rcx
	movq	%r8, %rsi
.LBB15_20:                              # %middle.block
	cmpq	%rsi, %rax
	movq	%r13, %rbx
	je	.LBB15_23
.LBB15_21:                              # %for.body.i.160.preheader
	incq	%rcx
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB15_22:                              # %for.body.i.160
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rbx,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r11,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r15,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB15_22
.LBB15_23:                              # %patch_interpolate_color.exit
	movl	%r12d, %eax
	movq	88(%rsp), %rbp          # 8-byte Reload
	subl	%ebp, %eax
	cmpl	640(%r14), %eax
	jge	.LBB15_42
# BB#24:                                # %if.then.207
	leaq	752(%rsp), %rdi
	movl	$272, %edx              # imm = 0x110
	movq	%r15, %rsi
	callq	memcpy
	movq	720(%r14), %rdi
	testq	%rdi, %rdi
	movl	84(%rsp), %r13d         # 4-byte Reload
	je	.LBB15_27
# BB#25:                                # %if.then.3.i
	leaq	768(%rsp), %rsi
	leaq	96(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_cached_color_index
	testl	%eax, %eax
	js	.LBB15_91
# BB#26:                                # %if.end.8.i
	cmpq	$0, 720(%r14)
	jne	.LBB15_41
.LBB15_27:                              # %if.then.11.i
	movq	%rbp, %rbx
	movq	16(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_29
# BB#28:                                # %if.then.13.i
	leaq	1032(%rsp), %rdi
	leaq	768(%rsp), %rsi
	movslq	24(%r14), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	(%rbp), %rax
	movq	(%r14), %r8
	movq	8(%r14), %rcx
	leaq	1024(%rsp), %rdi
	leaq	96(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	callq	*72(%rax)
	testl	%eax, %eax
	movq	%rbx, %rbp
	jns	.LBB15_41
	jmp	.LBB15_91
.LBB15_42:                              # %if.else.209
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	660(%r14), %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	664(%r14), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	68(%rsp), %r10d         # 4-byte Reload
	movl	84(%rsp), %r13d         # 4-byte Reload
	jne	.LBB15_48
# BB#43:                                # %if.then.212
	movq	328(%r14), %rdi
	leaq	96(%rsp), %rcx
	movq	%rbx, %rsi
	movq	%rbx, %r12
	movq	1352(%rsp), %rdx
	movl	%r10d, %ebx
	callq	*16(%rdi)
	movl	%ebx, %r10d
	testl	%eax, %eax
	cmovnsl	96(%rsp), %eax
	testl	%eax, %eax
	js	.LBB15_91
# BB#44:                                # %if.end.216
	je	.LBB15_45
# BB#46:                                # %if.end.221
	cmpl	$0, 660(%r14)
	jne	.LBB15_47
	jmp	.LBB15_54
.LBB15_29:                              # %if.else.i.209
	movq	(%r14), %rax
	movslq	100(%rax), %rax
	testq	%rax, %rax
	movq	%rbx, %rbp
	jle	.LBB15_40
# BB#30:                                # %for.body.i.213.preheader
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB15_39
# BB#31:                                # %overflow.checked351
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB15_38
# BB#32:                                # %vector.body347.preheader
	leaq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB15_34
# BB#33:                                # %vector.body347.prol
	movups	784(%rsp), %xmm0
	cvttps2dq	%xmm0, %xmm0
	movaps	%xmm0, 16
	movl	$8, %edx
.LBB15_34:                              # %vector.body347.preheader.split
	testq	%rsi, %rsi
	je	.LBB15_37
# BB#35:                                # %vector.body347.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
.LBB15_36:                              # %vector.body347
                                        # =>This Inner Loop Header: Depth=1
	movups	768(%rsp,%rdx,4), %xmm0
	movups	784(%rsp,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, (,%rdx,4)
	movaps	%xmm1, 16(,%rdx,4)
	movups	800(%rsp,%rdx,4), %xmm0
	movups	816(%rsp,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, 32(,%rdx,4)
	movapd	%xmm1, 48(,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB15_36
.LBB15_37:
	movq	%rcx, %rdx
.LBB15_38:                              # %middle.block348
	cmpq	%rdx, %rax
	je	.LBB15_40
	.align	16, 0x90
.LBB15_39:                              # %for.body.i.213
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	768(%rsp,%rdx,4), %ecx
	movl	%ecx, (,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB15_39
.LBB15_40:                              # %for.end.i
	movq	$gx_dc_type_data_pure, 96(%rsp)
.LBB15_41:                              # %if.end.i.168
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movl	%ebp, %ecx
	movl	%r12d, %r8d
	movl	68(%rsp), %r9d          # 4-byte Reload
	callq	*1360(%rdi)
	jmp	.LBB15_91
.LBB15_45:                              # %if.then.218
	movl	$1, 660(%r14)
.LBB15_47:                              # %land.lhs.true.224thread-pre-split
	movl	664(%r14), %eax
	movq	%r12, %rbx
.LBB15_48:                              # %land.lhs.true.224
	movq	%rbx, %r12
	testl	%eax, %eax
	jne	.LBB15_54
# BB#49:                                # %if.then.227
	cmpl	$0, 668(%r14)
	jne	.LBB15_53
# BB#50:                                # %if.else.i.181
	movq	16(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	1352(%rsp), %rdx
	movl	%r10d, %ebx
	callq	function_linearity
	movl	%ebx, %r10d
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%r14), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB15_54
# BB#51:                                # %if.end.i.186
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rax
	movq	8(%r14), %rsi
	movq	288(%r14), %rdx
	leaq	8(%r12), %rcx
	movq	1352(%rsp), %rdi
	leaq	8(%rdi), %r8
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%r14), %rdi
	movq	%rdi, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movl	%r10d, %ebx
	callq	*120(%rax)
	movl	%ebx, %r10d
	testl	%eax, %eax
	jle	.LBB15_52
.LBB15_53:                              # %if.then.233
	movl	$1, 664(%r14)
.LBB15_54:                              # %if.end.236
	movl	664(%r14), %eax
	cmpl	$0, 668(%r14)
	je	.LBB15_55
# BB#65:                                # %lor.lhs.false.335
	testl	%eax, %eax
	movq	%r12, %r8
	je	.LBB15_70
# BB#66:                                # %lor.lhs.false.338
	movl	24(%r14), %eax
	movq	1352(%rsp), %rsi
	movss	16(%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	16(%r8), %xmm1
	movaps	.LCPI15_2(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	movaps	%xmm1, %xmm3
	cmpltss	%xmm0, %xmm3
	movaps	%xmm3, %xmm4
	andnps	%xmm1, %xmm4
	andps	%xmm2, %xmm3
	orps	%xmm4, %xmm3
	divss	384(%r14), %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	cmpl	$2, %eax
	jl	.LBB15_69
# BB#67:                                # %for.body.i.197.preheader
	decl	%eax
	leaq	388(%r14), %rcx
	leaq	20(%r8), %rdx
	leaq	20(%rsi), %rsi
	movaps	.LCPI15_2(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	.align	16, 0x90
.LBB15_68:                              # %for.body.i.197
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm3           # xmm3 = mem[0],zero,zero,zero
	subss	(%rdx), %xmm3
	movaps	%xmm3, %xmm4
	cmpltss	%xmm0, %xmm4
	movaps	%xmm4, %xmm5
	andnps	%xmm3, %xmm5
	xorps	%xmm2, %xmm3
	andps	%xmm3, %xmm4
	orps	%xmm5, %xmm4
	divss	(%rcx), %xmm4
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm4, %xmm3
	maxsd	%xmm3, %xmm1
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%eax
	jne	.LBB15_68
.LBB15_69:                              # %color_span.exit
	ucomisd	648(%r14), %xmm1
	ja	.LBB15_70
# BB#72:                                # %if.else.348
	movl	%r10d, %ebx
	leaq	752(%rsp), %rdi
	movl	$272, %edx              # imm = 0x110
	movq	%r15, %rsi
	callq	memcpy
	movq	720(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB15_75
# BB#73:                                # %if.then.3.i.238
	leaq	768(%rsp), %rsi
	leaq	96(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_cached_color_index
	testl	%eax, %eax
	js	.LBB15_90
# BB#74:                                # %if.end.8.i.241
	cmpq	$0, 720(%r14)
	jne	.LBB15_89
.LBB15_75:                              # %if.then.11.i.244
	movq	16(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB15_77
# BB#76:                                # %if.then.13.i.256
	leaq	1032(%rsp), %rdi
	leaq	768(%rsp), %rsi
	movslq	24(%r14), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	(%rbp), %rax
	movq	(%r14), %r8
	movq	8(%r14), %rcx
	leaq	1024(%rsp), %rdi
	leaq	96(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbp, %rsi
	callq	*72(%rax)
	testl	%eax, %eax
	jns	.LBB15_89
	jmp	.LBB15_90
.LBB15_55:                              # %land.lhs.true.238
	testl	%eax, %eax
	movq	%r12, %r8
	je	.LBB15_70
# BB#56:                                # %if.then.241
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movups	312(%r14), %xmm0
	movaps	%xmm0, 1024(%rsp)
	testl	%r10d, %r10d
	je	.LBB15_57
# BB#58:                                # %if.then.244
	movl	1024(%rsp), %eax
	movl	1028(%rsp), %ecx
	movl	%ecx, 1024(%rsp)
	movl	%eax, 1028(%rsp)
	movl	1032(%rsp), %ecx
	movl	1036(%rsp), %edx
	movl	%edx, 1032(%rsp)
	movl	%ecx, 1036(%rsp)
	jmp	.LBB15_59
.LBB15_70:                              # %if.then.341
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	(%rbx,%rcx), %eax
	movl	%eax, %r13d
	shrl	$31, %r13d
	addl	%eax, %r13d
	sarl	%r13d
	movq	%r15, 8(%rsp)
	movq	%r8, (%rsp)
	movq	%r14, %rdi
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movl	%r13d, %r8d
	movl	%r10d, %r9d
	callq	decompose_linear_color
	testl	%eax, %eax
	js	.LBB15_90
# BB#71:                                # %if.then.345
	movq	1352(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	%r15, (%rsp)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movl	%r13d, %ecx
	movl	%ebx, %r8d
	movl	68(%rsp), %r9d          # 4-byte Reload
	callq	decompose_linear_color
	jmp	.LBB15_90
.LBB15_57:                              # %if.then.241.if.end.261_crit_edge
	movl	1028(%rsp), %eax
	movl	1036(%rsp), %ecx
.LBB15_59:                              # %if.end.261
	movq	88(%rsp), %rsi          # 8-byte Reload
	cmpl	%esi, %eax
	cmovll	%esi, %eax
	movl	%eax, 1028(%rsp)
	movq	48(%rsp), %rdx          # 8-byte Reload
	cmpl	%edx, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, 1036(%rsp)
	leaq	1024(%rsp), %rax
	movq	%rax, 752(%rsp)
	movq	$0, 768(%rsp)
	movl	%r10d, 760(%rsp)
	movl	$0, 776(%rsp)
	movl	%esi, 780(%rsp)
	movl	%edx, 784(%rsp)
	leaq	96(%rsp), %r12
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r8, %rsi
	movq	%r12, %rcx
	callq	patch_color_to_device_color_inline
	testl	%eax, %eax
	js	.LBB15_91
# BB#60:                                # %if.end.289
	cmpl	$2, %eax
	movl	$-28, %eax
	je	.LBB15_91
# BB#61:                                # %if.end.292
	leaq	352(%rsp), %rbx
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	1352(%rsp), %rsi
	movq	%rbx, %rcx
	callq	patch_color_to_device_color_inline
	testl	%eax, %eax
	js	.LBB15_91
# BB#62:                                # %if.end.298
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx), %rcx
	leaq	8(%rbp), %r9
	movq	%rbx, 8(%rsp)
	movq	%r12, (%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 16(%rsp)
	leaq	752(%rsp), %rsi
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %r8
	callq	*1600(%rdi)
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_64
# BB#63:                                # %if.then.320
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 660(%r14)
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 664(%r14)
	xorl	%eax, %eax
	jmp	.LBB15_91
.LBB15_77:                              # %if.else.i.260
	movq	(%r14), %rax
	movslq	100(%rax), %rax
	testq	%rax, %rax
	jle	.LBB15_88
# BB#78:                                # %for.body.i.267.preheader
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB15_87
# BB#79:                                # %overflow.checked327
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB15_86
# BB#80:                                # %vector.body323.preheader
	leaq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB15_82
# BB#81:                                # %vector.body323.prol
	movups	784(%rsp), %xmm0
	cvttps2dq	%xmm0, %xmm0
	movaps	%xmm0, 16
	movl	$8, %edx
.LBB15_82:                              # %vector.body323.preheader.split
	testq	%rsi, %rsi
	je	.LBB15_85
# BB#83:                                # %vector.body323.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
.LBB15_84:                              # %vector.body323
                                        # =>This Inner Loop Header: Depth=1
	movups	768(%rsp,%rdx,4), %xmm0
	movups	784(%rsp,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, (,%rdx,4)
	movaps	%xmm1, 16(,%rdx,4)
	movups	800(%rsp,%rdx,4), %xmm0
	movups	816(%rsp,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, 32(,%rdx,4)
	movapd	%xmm1, 48(,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB15_84
.LBB15_85:
	movq	%rcx, %rdx
.LBB15_86:                              # %middle.block324
	cmpq	%rdx, %rax
	je	.LBB15_88
.LBB15_87:                              # %for.body.i.267
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	768(%rsp,%rdx,4), %ecx
	movl	%ecx, (,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB15_87
.LBB15_88:                              # %for.end.i.269
	movq	$gx_dc_type_data_pure, 96(%rsp)
.LBB15_89:                              # %if.end.i.225
	movq	(%r14), %rdi
	movq	8(%r14), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, (%rsp)
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movl	%ebx, %r9d
	callq	*1360(%rdi)
.LBB15_90:                              # %if.end.350
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 660(%r14)
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 664(%r14)
	movl	84(%rsp), %r13d         # 4-byte Reload
.LBB15_91:                              # %out
	movl	%r13d, 672(%r14)
	movq	%r15, 688(%r14)
.LBB15_92:                              # %cleanup.359
	addq	$1288, %rsp             # imm = 0x508
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_52:                              # %is_color_linear.exit
	jns	.LBB15_54
	jmp	.LBB15_91
.LBB15_64:                              # %if.end.323
	testl	%ecx, %ecx
	movl	$-28, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB15_91
.Lfunc_end15:
	.size	decompose_linear_color, .Lfunc_end15-decompose_linear_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.globl	constant_color_quadrangle
	.align	16, 0x90
	.type	constant_color_quadrangle,@function
constant_color_quadrangle:              # @constant_color_quadrangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$1048, %rsp             # imm = 0x418
.Ltmp130:
	.cfi_def_cfa_offset 1104
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	688(%r15), %r13
	movslq	680(%r15), %r12
	leaq	(%r12,%r12,2), %rax
	leaq	(%rax,%r13), %rcx
	movl	$-28, %eax
	cmpq	704(%r15), %rcx
	ja	.LBB16_161
# BB#1:                                 # %reserve_colors_inline.exit
	movq	%rcx, 688(%r15)
	testq	%r13, %r13
	je	.LBB16_161
# BB#2:                                 # %if.end
	leaq	(%r13,%r12), %rcx
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	movq	8(%rax), %r14
	movq	8(%rsi), %rax
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_4
# BB#3:                                 # %if.then.i.278.i
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rcx)
	movss	4(%r14), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rcx)
	movq	16(%r15), %rbp
	movq	%rcx, %rsi
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%r15, %r14
	leaq	8(%rsi), %r15
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r15, %rdi
	movq	%r14, %r15
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r15), %rdi
	jmp	.LBB16_16
.LBB16_4:                               # %if.else.i.i
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movslq	24(%r15), %rsi
	xorl	%edi, %edi
	testq	%rsi, %rsi
	jle	.LBB16_16
# BB#5:                                 # %for.body.lr.ph.i.i
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r9
	cmpq	$-2, %r9
	je	.LBB16_14
# BB#6:                                 # %overflow.checked
	addq	$2, %r9
	xorl	%ebp, %ebp
	movq	%r9, %rcx
	andq	$-4, %rcx
	je	.LBB16_13
# BB#7:                                 # %vector.memcheck
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r15, %rdx
	leaq	(%r12,%rsi,4), %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leaq	12(%r13,%rdi), %r8
	cmpq	$2, %rsi
	movl	$1, %ebx
	cmovlq	%rsi, %rbx
	notq	%rbx
	shlq	$2, %rbx
	movq	%r14, %rdi
	subq	%rbx, %rdi
	movq	%rax, %rbp
	subq	%rbx, %rbp
	negq	%rbx
	leaq	8(%r12,%rbx), %rbx
	leaq	(%rbx,%r13), %rbx
	leaq	12(%r14,%rsi,4), %r11
	addq	$8, %rdi
	leaq	12(%rax,%rsi,4), %r15
	addq	$8, %rbp
	cmpq	%rdi, %r8
	setbe	%r10b
	cmpq	%rbx, %r11
	setbe	%r11b
	cmpq	%rbp, %r8
	setbe	%dil
	cmpq	%rbx, %r15
	setbe	%r8b
	xorl	%ebp, %ebp
	testb	%r11b, %r10b
	jne	.LBB16_8
# BB#9:                                 # %vector.memcheck
	andb	%r8b, %dil
	movq	%rdx, %r15
	movq	%rcx, %rbx
	jne	.LBB16_13
# BB#10:                                # %vector.body.preheader
	movq	%rbx, %r11
	movq	%rsi, %r8
	movq	48(%rsp), %rcx          # 8-byte Reload
	subq	%rcx, %r8
	leaq	8(%r14,%rsi,4), %rbx
	leaq	8(%rax,%rsi,4), %rbp
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	8(%r13,%rdx), %rdi
	movq	%rsi, %r10
	notq	%r10
	cmpq	$-3, %r10
	movq	$-2, %rdx
	cmovgq	%r10, %rdx
	leaq	2(%rdx,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI16_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB16_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdi)
	addq	$-16, %rbx
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-4, %rsi
	jne	.LBB16_11
# BB#12:
	movq	%r8, %rsi
	movq	%rcx, %rbp
	movq	%r11, %rbx
	jmp	.LBB16_13
.LBB16_8:
	movq	%rdx, %r15
	movq	%rcx, %rbx
.LBB16_13:                              # %middle.block
	xorl	%edi, %edi
	cmpq	%rbp, %r9
	je	.LBB16_16
.LBB16_14:                              # %for.body.i.i.preheader
	incq	%rsi
	leaq	12(%r12,%r13), %rdx
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB16_15:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r14,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rax,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rdx,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB16_15
.LBB16_16:                              # %patch_interpolate_color.exit.i
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	16(%rbx), %rax
	movq	24(%rbx), %rdx
	movq	8(%rax), %rcx
	movq	8(%rdx), %rax
	testq	%rdi, %rdi
	je	.LBB16_17
# BB#31:                                # %patch_interpolate_color.exit317.i
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	64(%rsp), %r14          # 8-byte Reload
	leaq	(%r14,%r12), %rbp
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI16_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rbp)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rbp)
	movq	16(%r15), %rbx
	movq	%r15, %r13
	leaq	8(%rbp), %r15
	leaq	16(%rbp), %rdx
	movq	%rbp, %rsi
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%r15, %rdi
	movq	%r13, %r15
	movq	%rbx, %rsi
	callq	*40(%rax)
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_32
# BB#162:                               # %if.then.i.379.i
	movss	(%r14), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%rbp), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	80(%rsp), %r13          # 8-byte Reload
	movss	%xmm0, (%r13)
	movss	4(%r14), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rbp), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%r13)
	movq	16(%r15), %rbx
	leaq	8(%r13), %rbp
	leaq	16(%r13), %rdx
	movq	%r13, %rsi
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB16_36
.LBB16_17:                              # %if.else.i.302.i
	movslq	24(%r15), %r10
	testq	%r10, %r10
	jle	.LBB16_36
# BB#18:                                # %for.body.lr.ph.i.303.i
	cmpq	$2, %r10
	movl	$1, %edx
	cmovlq	%r10, %rdx
	notq	%rdx
	leaq	(%rdx,%r10), %r9
	cmpq	$-2, %r9
	jne	.LBB16_20
# BB#19:
	movq	%r10, %rdx
	jmp	.LBB16_29
.LBB16_32:                              # %patch_interpolate_color.exit317.i.if.else.i.353.i_crit_edge
	movl	24(%r15), %r10d
	movq	80(%rsp), %r13          # 8-byte Reload
	jmp	.LBB16_33
.LBB16_20:                              # %overflow.checked44
	addq	$2, %r9
	xorl	%edi, %edi
	movq	%r9, %r8
	andq	$-4, %r8
	je	.LBB16_21
# BB#22:                                # %vector.memcheck72
	movq	%r15, 64(%rsp)          # 8-byte Spill
	leaq	(%r12,%r12), %rdx
	leaq	(%rdx,%r10,4), %r11
	leaq	12(%r13,%r11), %rdx
	leaq	8(%r12,%r12), %rdi
	cmpq	$2, %r10
	movl	$1, %ebp
	cmovlq	%r10, %rbp
	notq	%rbp
	shlq	$2, %rbp
	subq	%rbp, %rdi
	leaq	(%rdi,%r13), %rdi
	leaq	12(%rcx,%r10,4), %r14
	movq	%rcx, %rsi
	subq	%rbp, %rsi
	addq	$8, %rsi
	leaq	12(%rax,%r10,4), %r15
	movq	%rax, %rbx
	subq	%rbp, %rbx
	addq	$8, %rbx
	cmpq	%rsi, %rdx
	setbe	%sil
	cmpq	%rdi, %r14
	setbe	%bpl
	cmpq	%rbx, %rdx
	setbe	%dl
	cmpq	%rdi, %r15
	setbe	%bl
	xorl	%edi, %edi
	testb	%bpl, %sil
	jne	.LBB16_23
# BB#24:                                # %vector.memcheck72
	andb	%bl, %dl
	movq	%r10, %rdx
	movq	64(%rsp), %r15          # 8-byte Reload
	jne	.LBB16_28
# BB#25:                                # %vector.body40.preheader
	movq	%r10, %rdx
	subq	%r8, %rdx
	leaq	8(%rcx,%r10,4), %rbx
	leaq	8(%rax,%r10,4), %rdi
	leaq	8(%r13,%r11), %rsi
	movq	%r10, %r11
	notq	%r11
	cmpq	$-3, %r11
	movq	$-2, %rbp
	cmovgq	%r11, %rbp
	leaq	2(%rbp,%r10), %rbp
	andq	$-4, %rbp
	movapd	.LCPI16_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB16_26:                              # %vector.body40
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rdi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rdi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rsi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rsi)
	addq	$-16, %rbx
	addq	$-16, %rdi
	addq	$-16, %rsi
	addq	$-4, %rbp
	jne	.LBB16_26
# BB#27:
	movq	%r8, %rdi
	jmp	.LBB16_28
.LBB16_21:
	movq	%r10, %rdx
	jmp	.LBB16_28
.LBB16_23:
	movq	%r10, %rdx
	movq	64(%rsp), %r15          # 8-byte Reload
.LBB16_28:                              # %middle.block41
	cmpq	%rdi, %r9
	je	.LBB16_33
.LBB16_29:                              # %for.body.i.316.i.preheader
	incq	%rdx
	leaq	12(%r13,%r12,2), %rsi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB16_30:                              # %for.body.i.316.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rdx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rax,%rdx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rsi,%rdx,4)
	decq	%rdx
	cmpq	$1, %rdx
	jg	.LBB16_30
.LBB16_33:                              # %if.else.i.353.i
	testl	%r10d, %r10d
	jle	.LBB16_36
# BB#34:                                # %for.body.lr.ph.i.354.i
	movslq	%r10d, %rax
	leaq	12(%r13), %rcx
	leaq	12(%r13,%r12,2), %rdx
	leaq	12(%r13,%r12), %rsi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB16_35:                              # %for.body.i.367.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	(%rdx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rcx,%rax,4)
	cmpq	$1, %rax
	leaq	-1(%rax), %rax
	jg	.LBB16_35
.LBB16_36:                              # %patch_interpolate_color.exit368.i
	movq	720(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB16_39
# BB#37:                                # %if.then.3.i.i
	leaq	16(%r13), %rsi
	movq	%r13, 80(%rsp)          # 8-byte Spill
	leaq	88(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_cached_color_index
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#38:                                # %if.end.8.i.i
	cmpq	$0, 720(%rbp)
	movq	%rbp, %r15
	movq	80(%rsp), %r13          # 8-byte Reload
	jne	.LBB16_54
.LBB16_39:                              # %if.then.11.i.i
	movq	16(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB16_42
# BB#40:                                # %if.then.13.i.i
	leaq	792(%rsp), %rdi
	leaq	16(%r13), %rsi
	movslq	24(%r15), %rdx
	shlq	$2, %rdx
	callq	memcpy
	movq	(%rbx), %rax
	movq	(%r15), %r8
	movq	8(%r15), %rcx
	leaq	784(%rsp), %rdi
	leaq	88(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	callq	*72(%rax)
	testl	%eax, %eax
	jns	.LBB16_54
# BB#41:                                # %cleanup.i.i
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	jmp	.LBB16_160
.LBB16_42:                              # %if.else.i.389.i
	movq	(%r15), %rax
	movslq	100(%rax), %rax
	testq	%rax, %rax
	jle	.LBB16_53
# BB#43:                                # %for.body.i.393.preheader.i
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB16_51
# BB#44:                                # %overflow.checked101
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB16_52
# BB#45:                                # %vector.body97.preheader
	leaq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB16_47
# BB#46:                                # %vector.body97.prol
	movups	32(%r13), %xmm0
	cvttps2dq	%xmm0, %xmm0
	movaps	%xmm0, 16
	movl	$8, %edx
.LBB16_47:                              # %vector.body97.preheader.split
	testq	%rsi, %rsi
	je	.LBB16_50
# BB#48:                                # %vector.body97.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	.align	16, 0x90
.LBB16_49:                              # %vector.body97
                                        # =>This Inner Loop Header: Depth=1
	movups	16(%r13,%rdx,4), %xmm0
	movups	32(%r13,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, (,%rdx,4)
	movaps	%xmm1, 16(,%rdx,4)
	movups	48(%r13,%rdx,4), %xmm0
	movups	64(%r13,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, 32(,%rdx,4)
	movapd	%xmm1, 48(,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB16_49
.LBB16_50:
	movq	%rcx, %rdx
	jmp	.LBB16_52
.LBB16_51:                              # %for.body.i.393.i
	cvttss2si	16(%r13,%rdx,4), %ecx
	movl	%ecx, (,%rdx,4)
	incq	%rdx
.LBB16_52:                              # %for.body.i.393.i
	cmpq	%rdx, %rax
	jne	.LBB16_51
.LBB16_53:                              # %for.end.i.i
	movq	$gx_dc_type_data_pure, 88(%rsp)
.LBB16_54:                              # %if.end.i.8
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	(%rsi), %rax
	movq	(%rax), %rax
	movq	%rax, 784(%rsp)
	movq	8(%rsi), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 792(%rsp)
	movq	24(%rsi), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, 800(%rsp)
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, 808(%rsp)
	shrq	$32, %rax
	shrq	$32, %rcx
	cmpl	%ecx, %eax
	setg	%bl
	cmovgl	%ecx, %eax
	movzbl	%bl, %ecx
	shrq	$32, %rdx
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	movl	$2, %edx
	cmovlel	%ecx, %edx
	shrq	$32, %rsi
	cmpl	%esi, %eax
	movl	$3, %eax
	cmovlel	%edx, %eax
	movl	%eax, %ecx
	movq	784(%rsp,%rcx,8), %rdi
	movq	%rdi, 752(%rsp)
	leal	1(%rax), %ecx
	andl	$3, %ecx
	movq	784(%rsp,%rcx,8), %r8
	movq	%r8, 760(%rsp)
	leal	2(%rax), %ecx
	andl	$3, %ecx
	movq	784(%rsp,%rcx,8), %r13
	movq	%r13, 768(%rsp)
	addl	$3, %eax
	andl	$3, %eax
	movq	784(%rsp,%rax,8), %r12
	movq	%r12, 72(%rsp)          # 8-byte Spill
	movq	%r12, 776(%rsp)
	movl	%r8d, %eax
	subl	%edi, %eax
	movq	%r8, %rcx
	shrq	$32, %rcx
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movl	%ecx, %edx
	subl	%esi, %edx
	movl	%r12d, %ebx
	subl	%edi, %ebx
	shrq	$32, %r12
	movl	%r12d, %ebp
	subl	%esi, %ebp
	movslq	%eax, %r9
	movslq	%ebp, %rbp
	movq	%rbp, %rax
	imulq	%r9, %rax
	movslq	%edx, %rdx
	movslq	%ebx, %r10
	movq	%r10, %rbx
	imulq	%rdx, %rbx
	movq	%r13, %r11
	shrq	$32, %r11
	cmpq	%rbx, %rax
	jne	.LBB16_77
# BB#55:                                # %if.then.47.i
	movq	%r15, %rbx
	subl	%edi, %r13d
	movl	%r11d, %eax
	subl	%esi, %eax
	movslq	%r13d, %r14
	imulq	%r14, %rbp
	movslq	%eax, %r15
	imulq	%r15, %r10
	xorl	%eax, %eax
	cmpl	%edi, %r8d
	jne	.LBB16_59
# BB#56:                                # %if.then.47.i
	cmpl	%esi, %ecx
	jne	.LBB16_59
# BB#57:                                # %if.then.47.i
	cmpq	%r10, %rbp
	jne	.LBB16_59
# BB#58:
	movq	%rbx, %rbp
	jmp	.LBB16_160
.LBB16_77:                              # %cleanup.cont.i
	setg	%al
	movzbl	%al, %r14d
	cmpl	%r11d, %ecx
	movq	%rcx, %r9
	jg	.LBB16_92
# BB#78:                                # %cleanup.cont.i
	cmpl	%r12d, %r11d
	jg	.LBB16_92
# BB#79:                                # %if.then.209.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_86
# BB#80:                                # %land.lhs.true.210.i
	leaq	744(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	748(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r13d, (%rsp)
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	movl	756(%rsp), %esi
	movl	764(%rsp), %r9d
	je	.LBB16_86
# BB#81:                                # %if.then.214.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#82:                                # %if.end.224.i
	movl	764(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#83:                                # %if.end.232.i
	movl	748(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#84:                                # %if.end.240.i
	movl	772(%rsp), %eax
.LBB16_85:                              # %constant_color_quadrangle_aux.exit
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	jmp	.LBB16_159
.LBB16_59:                              # %if.end.72.i
	cmpq	%r10, %rbp
	jne	.LBB16_60
# BB#68:                                # %if.else.117.i
	imulq	%r9, %r15
	imulq	%rdx, %r14
	movq	72(%rsp), %rdx          # 8-byte Reload
	cmpl	%edi, %edx
	movq	%rbx, %rbp
	jne	.LBB16_71
# BB#69:                                # %if.else.117.i
	cmpl	%esi, %r12d
	jne	.LBB16_71
# BB#70:                                # %if.else.117.i
	cmpq	%r14, %r15
	je	.LBB16_160
.LBB16_71:                              # %if.end.133.i
	cmpq	%r14, %r15
	setg	%al
	movzbl	%al, %ebx
	cmpl	%r11d, %ecx
	jle	.LBB16_72
# BB#75:                                # %if.else.159.i
	movl	%ebx, 24(%rsp)
	leaq	88(%rsp), %r14
	movq	%r14, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#76:                                # %if.end.169.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%ebx, 24(%rsp)
	movq	%r14, 16(%rsp)
	jmp	.LBB16_153
.LBB16_92:                              # %if.else.274.i
	cmpl	%r12d, %r9d
	jg	.LBB16_104
# BB#93:                                # %if.else.274.i
	cmpl	%r11d, %r12d
	jg	.LBB16_104
# BB#94:                                # %if.then.288.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_101
# BB#95:                                # %land.lhs.true.290.i
	leaq	744(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	748(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r13d, (%rsp)
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	movl	756(%rsp), %esi
	movl	764(%rsp), %r9d
	je	.LBB16_101
# BB#96:                                # %if.then.294.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#97:                                # %if.end.304.i
	movl	764(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#98:                                # %if.end.313.i
	movl	748(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#99:                                # %if.end.321.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
.LBB16_100:                             # %constant_color_quadrangle_aux.exit
	leaq	752(%rsp), %rsi
	movl	$3, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	jmp	.LBB16_159
.LBB16_86:                              # %if.else.247.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#87:                                # %if.end.257.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#88:                                # %if.end.267.i
	movl	772(%rsp), %eax
.LBB16_89:                              # %constant_color_quadrangle_aux.exit
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	jmp	.LBB16_90
.LBB16_60:                              # %if.then.75.i
	setg	%al
	movzbl	%al, %r14d
	cmpl	%r12d, %r11d
	jle	.LBB16_61
# BB#63:                                # %if.else.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %r15
	movq	%r15, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#64:                                # %if.end.110.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%r15, 16(%rsp)
	jmp	.LBB16_65
.LBB16_104:                             # %if.else.355.i
	cmpl	%r9d, %r11d
	jg	.LBB16_122
# BB#105:                               # %if.else.355.i
	cmpl	%r12d, %r9d
	jg	.LBB16_122
# BB#106:                               # %if.then.369.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_114
# BB#107:                               # %land.lhs.true.371.i
	leaq	744(%rsp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	748(%rsp), %rbp
	movq	%rbp, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r13d, %r8d
	movl	%r11d, %r9d
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	jne	.LBB16_108
# BB#112:                               # %land.lhs.true.408.i
	movq	752(%rsp), %rdi
	movq	760(%rsp), %r8
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movq	776(%rsp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	%r8, %r9
	shrq	$32, %r9
	movq	%rbp, %r10
	movq	%rbx, %rbp
	movq	768(%rsp), %rbx
	movq	%rbx, %rax
	shrq	$32, %rax
	movq	%rbp, 24(%rsp)
	movq	%r10, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	callq	gx_intersect_small_bars
	movl	756(%rsp), %esi
	testl	%eax, %eax
	je	.LBB16_113
# BB#117:                               # %if.then.412.i
	movl	744(%rsp), %eax
	addl	748(%rsp), %eax
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%esi, (%rsp)
	jmp	.LBB16_118
.LBB16_101:                             # %if.else.328.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#102:                               # %if.end.338.i
	movl	764(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#103:                               # %if.end.348.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
.LBB16_65:                              # %constant_color_quadrangle_aux.exit
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	jmp	.LBB16_66
.LBB16_61:                              # %if.then.84.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %r15
	movq	%r15, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#62:                                # %if.end.94.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%r15, 16(%rsp)
.LBB16_90:                              # %constant_color_quadrangle_aux.exit
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	jmp	.LBB16_159
.LBB16_122:                             # %if.else.470.i
	cmpl	%r12d, %r11d
	jg	.LBB16_131
# BB#123:                               # %if.else.470.i
	cmpl	%r9d, %r12d
	jg	.LBB16_131
# BB#124:                               # %if.then.484.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_128
# BB#125:                               # %land.lhs.true.486.i
	leaq	744(%rsp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	748(%rsp), %rbp
	movq	%rbp, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r13d, %r8d
	movl	%r11d, %r9d
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	je	.LBB16_126
.LBB16_108:                             # %if.then.375.i
	movl	756(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rbp
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#109:                               # %if.end.384.i
	movl	772(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#110:                               # %if.end.393.i
	movl	748(%rsp), %eax
	movl	764(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#111:                               # %if.end.401.i
	movl	748(%rsp), %eax
	jmp	.LBB16_89
.LBB16_72:                              # %if.then.142.i
	movl	%ebx, 24(%rsp)
	leaq	88(%rsp), %r14
	movq	%r14, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#73:                                # %if.end.152.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%ebx, 24(%rsp)
	movq	%r14, 16(%rsp)
.LBB16_74:                              # %constant_color_quadrangle_aux.exit
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
.LBB16_66:                              # %constant_color_quadrangle_aux.exit
	leaq	752(%rsp), %rsi
	movl	$1, %edx
	movl	$2, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	jmp	.LBB16_159
.LBB16_131:                             # %if.else.585.i
	cmpl	%r11d, %r9d
	jg	.LBB16_143
# BB#132:                               # %if.else.585.i
	cmpl	%r9d, %r12d
	jg	.LBB16_143
# BB#133:                               # %if.then.599.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_136
# BB#134:                               # %land.lhs.true.601.i
	leaq	744(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	748(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r13d, (%rsp)
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	%r12d, %r9d
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	je	.LBB16_135
# BB#139:                               # %if.then.605.i
	movl	756(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#140:                               # %if.end.615.i
	movl	780(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#141:                               # %if.end.624.i
	movl	748(%rsp), %eax
	movl	764(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$3, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#142:                               # %if.end.632.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	jmp	.LBB16_100
.LBB16_143:                             # %if.else.666.i
	cmpl	%r9d, %r11d
	movl	$-28, %eax
	jg	.LBB16_144
# BB#145:                               # %if.else.666.i
	cmpl	%r11d, %r12d
	movq	%r15, %rbp
	jg	.LBB16_160
# BB#146:                               # %if.then.680.i
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB16_149
# BB#147:                               # %land.lhs.true.682.i
	leaq	744(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	748(%rsp), %rax
	movq	%rax, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%r13d, %r8d
	movl	%r11d, %r9d
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	je	.LBB16_148
# BB#154:                               # %if.then.686.i
	movl	756(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#155:                               # %if.end.696.i
	movl	780(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#156:                               # %if.end.705.i
	movl	748(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$3, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#157:                               # %if.end.713.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB16_158
.LBB16_126:                             # %land.lhs.true.523.i
	movq	752(%rsp), %rdi
	movq	%rbx, %r10
	movq	760(%rsp), %rbx
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movq	776(%rsp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	768(%rsp), %r8
	movq	%r8, %r9
	shrq	$32, %r9
	movq	%rbx, %rax
	shrq	$32, %rax
	movq	%r10, 24(%rsp)
	movq	%rbp, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ebx, (%rsp)
	callq	gx_intersect_small_bars
	testl	%eax, %eax
	je	.LBB16_127
# BB#130:                               # %if.then.527.i
	movl	756(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
.LBB16_118:                             # %if.then.412.i
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rbp
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#119:                               # %if.end.421.i
	movl	772(%rsp), %eax
	movl	744(%rsp), %ecx
	addl	748(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#120:                               # %if.end.430.i
	movl	748(%rsp), %eax
	movl	764(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#121:                               # %if.end.438.i
	movl	748(%rsp), %eax
	jmp	.LBB16_85
.LBB16_113:                             # %land.lhs.true.408.if.else.443_crit_edge.i
	movl	764(%rsp), %r9d
.LBB16_114:                             # %if.else.443.i
	movq	%r15, %rbp
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#115:                               # %if.end.453.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$3, %ecx
	movl	$2, %r8d
	movl	$1, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#116:                               # %if.end.463.i
	movl	764(%rsp), %eax
	jmp	.LBB16_89
.LBB16_144:
	movq	%r15, %rbp
	jmp	.LBB16_160
.LBB16_135:                             # %land.lhs.true.601.if.else.639_crit_edge.i
	movl	756(%rsp), %esi
	movl	780(%rsp), %r12d
.LBB16_136:                             # %if.else.639.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%r15, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	movq	%r15, %rbp
	js	.LBB16_160
# BB#137:                               # %if.end.649.i
	movl	764(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#138:                               # %if.end.659.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	jmp	.LBB16_74
.LBB16_127:                             # %land.lhs.true.523.if.else.558_crit_edge.i
	movl	756(%rsp), %esi
	movl	772(%rsp), %r11d
.LBB16_128:                             # %if.else.558.i
	movq	%r15, %rbp
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#129:                               # %if.end.568.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	752(%rsp), %rsi
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	jmp	.LBB16_151
.LBB16_148:                             # %land.lhs.true.682.if.else.720_crit_edge.i
	movl	756(%rsp), %esi
	movl	780(%rsp), %r12d
.LBB16_149:                             # %if.else.720.i
	movl	%r14d, 24(%rsp)
	leaq	88(%rsp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%esi, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#150:                               # %if.end.730.i
	movl	772(%rsp), %eax
	movl	780(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$3, %r8d
	movl	$2, %r9d
.LBB16_151:                             # %if.end.730.i
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
	testl	%eax, %eax
	js	.LBB16_160
# BB#152:                               # %if.end.740.i
	movl	764(%rsp), %eax
	movl	772(%rsp), %ecx
	movl	%r14d, 24(%rsp)
	movq	%rbx, 16(%rsp)
.LBB16_153:                             # %constant_color_quadrangle_aux.exit
	movl	%eax, 8(%rsp)
	movl	%ecx, (%rsp)
	leaq	752(%rsp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
.LBB16_158:                             # %constant_color_quadrangle_aux.exit
	movl	$1, %r9d
.LBB16_159:                             # %constant_color_quadrangle_aux.exit
	movq	%rbp, %rdi
	callq	gx_shade_trapezoid
.LBB16_160:                             # %constant_color_quadrangle_aux.exit
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 688(%rbp)
.LBB16_161:                             # %cleanup
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	constant_color_quadrangle, .Lfunc_end16-constant_color_quadrangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
.LCPI17_1:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.text
	.globl	gx_init_patch_fill_state_for_clist
	.align	16, 0x90
	.type	gx_init_patch_fill_state_for_clist,@function
gx_init_patch_fill_state_for_clist:     # @gx_init_patch_fill_state_for_clist
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 32
.Ltmp140:
	.cfi_offset %rbx, -32
.Ltmp141:
	.cfi_offset %r14, -24
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movl	100(%rdi), %eax
	movl	%eax, 24(%rbx)
	movq	$0, 304(%rbx)
	movq	$0, 328(%rbx)
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [0,0,1,0]
	movups	%xmm0, 336(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 352(%rbx)
	movq	$0, 368(%rbx)
	testl	%eax, %eax
	jle	.LBB17_3
# BB#1:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB17_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1325400064, 384(%rbx,%rcx,4) # imm = 0x4F000000
	incq	%rcx
	movslq	24(%rbx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB17_2
.LBB17_3:                               # %for.end
	movl	$256, 640(%rbx)         # imm = 0x100
	movl	$0, 644(%rbx)
	movq	$0, 648(%rbx)
	movaps	.LCPI17_1(%rip), %xmm1  # xmm1 = [0,1,1,0]
	movups	%xmm1, 656(%rbx)
	movl	$0, 672(%rbx)
	movl	$0, 676(%rbx)
	movl	%eax, 680(%rbx)
	movups	%xmm0, 688(%rbx)
	movq	$0, 704(%rbx)
	movq	$0, 720(%rbx)
	movq	$0, 288(%rbx)
	movq	$0, 296(%rbx)
	movq	%r14, 712(%rbx)
	movl	$9216, 372(%rbx)        # imm = 0x2400
	movl	$294912, %esi           # imm = 0x48000
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 352(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB17_8
# BB#4:                                 # %if.end.i
	movq	$0, 360(%rbx)
	movl	$0, 368(%rbx)
	movl	$2097152, 348(%rbx)     # imm = 0x200000
	cmpq	$0, 696(%rbx)
	jne	.LBB17_7
# BB#5:                                 # %if.end.i.i
	movl	24(%rbx), %eax
	leal	23(,%rax,4), %eax
	andl	$-8, %eax
	movl	%eax, 680(%rbx)
	imull	$200, %eax, %esi
	movl	%esi, 676(%rbx)
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*64(%r14)
	movq	%rax, 696(%rbx)
	testq	%rax, %rax
	je	.LBB17_8
# BB#6:                                 # %if.end.13.i.i
	movslq	676(%rbx), %rcx
	addq	%rax, %rcx
	movq	%rcx, 704(%rbx)
	movq	%rax, 688(%rbx)
	movq	%r14, 712(%rbx)
.LBB17_7:                               # %if.end.5.i
	movq	$0, 720(%rbx)
	xorl	%ebp, %ebp
.LBB17_8:                               # %alloc_patch_fill_memory.exit
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_init_patch_fill_state_for_clist, .Lfunc_end17-gx_init_patch_fill_state_for_clist
	.cfi_endproc

	.globl	gx_fill_triangle_small
	.align	16, 0x90
	.type	gx_fill_triangle_small,@function
gx_fill_triangle_small:                 # @gx_fill_triangle_small
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$872, %rsp              # imm = 0x368
.Ltmp143:
	.cfi_def_cfa_offset 880
	movq	%rdi, %rax
	movq	40(%rsi), %rdi
	movq	(%rdx), %rdx
	movq	%rdx, (%rsp)
	leaq	16(%rsp), %rdx
	movq	(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	leaq	32(%rsp), %rcx
	movq	(%r8), %rsi
	movq	%rsi, 32(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rsi, 8(%rsp)
	leaq	320(%rsp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	592(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$0, 596(%rsp)
	movl	$0, 592(%rsp)
	movl	$0, 324(%rsp)
	movl	$0, 320(%rsp)
	movq	$0, 48(%rsp)
	movslq	100(%rax), %rax
	testq	%rax, %rax
	jle	.LBB18_3
# BB#1:                                 # %for.body.lr.ph
	movq	888(%rsp), %r8
	movq	880(%rsp), %r10
	xorl	%esi, %esi
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r9,%rsi,4), %xmm0
	movss	%xmm0, 64(%rsp,%rsi,4)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r10,%rsi,4), %xmm0
	movss	%xmm0, 336(%rsp,%rsi,4)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r8,%rsi,4), %xmm0
	movss	%xmm0, 608(%rsp,%rsi,4)
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB18_2
.LBB18_3:                               # %for.end
	leaq	(%rsp), %rsi
	callq	small_mesh_triangle
	addq	$872, %rsp              # imm = 0x368
	retq
.Lfunc_end18:
	.size	gx_fill_triangle_small, .Lfunc_end18-gx_fill_triangle_small
	.cfi_endproc

	.align	16, 0x90
	.type	small_mesh_triangle,@function
small_mesh_triangle:                    # @small_mesh_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp149:
	.cfi_def_cfa_offset 144
.Ltmp150:
	.cfi_offset %rbx, -48
.Ltmp151:
	.cfi_offset %r12, -40
.Ltmp152:
	.cfi_offset %r13, -32
.Ltmp153:
	.cfi_offset %r14, -24
.Ltmp154:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	leaq	16(%rsp), %rbx
	xorl	%esi, %esi
	movl	$72, %edx
	movq	%rbx, %rdi
	callq	memset
	leaq	40(%rsp), %r9
	leaq	64(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB19_29
# BB#1:                                 # %if.end
	movq	24(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB19_10
# BB#2:                                 # %if.then.i
	movq	8(%r13), %r9
	movq	8(%r12), %r8
	movq	32(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB19_29
# BB#3:                                 # %if.end.i
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB19_9
# BB#4:                                 # %if.then.i.i
	testq	%rcx, %rcx
	je	.LBB19_29
# BB#5:                                 # %if.end.i.i
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r15), %rax
	je	.LBB19_8
	.align	16, 0x90
.LBB19_6:                               # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB19_6
# BB#7:                                 # %for.end.loopexit.i.i.i
	movq	%rsi, 360(%r15)
	movq	%rsi, %rax
.LBB19_8:                               # %release_wedge_vertex_list_interval.exit.i.i
	movq	24(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsp)
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.i.i
	testq	%rcx, %rcx
	jne	.LBB19_29
.LBB19_10:                              # %if.end.8
	movq	48(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB19_19
# BB#11:                                # %if.then.i.25
	movq	8(%r14), %r9
	movq	8(%r13), %r8
	movq	56(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB19_29
# BB#12:                                # %if.end.i.29
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB19_18
# BB#13:                                # %if.then.i.i.30
	testq	%rcx, %rcx
	je	.LBB19_29
# BB#14:                                # %if.end.i.i.35
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r15), %rax
	je	.LBB19_17
	.align	16, 0x90
.LBB19_15:                              # %for.body.i.i.i.39
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB19_15
# BB#16:                                # %for.end.loopexit.i.i.i.40
	movq	%rsi, 360(%r15)
	movq	%rsi, %rax
.LBB19_17:                              # %release_wedge_vertex_list_interval.exit.i.i.44
	movq	48(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r15)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	jmp	.LBB19_19
.LBB19_18:                              # %if.else.i.i.45
	testq	%rcx, %rcx
	jne	.LBB19_29
.LBB19_19:                              # %if.end.15
	movq	72(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB19_29
# BB#20:                                # %if.then.i.58
	movq	8(%r12), %r9
	movq	8(%r14), %r8
	movq	80(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB19_29
# BB#21:                                # %if.end.i.62
	movq	72(%rsp), %rsi
	movq	80(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB19_27
# BB#22:                                # %if.then.i.i.63
	testq	%rcx, %rcx
	je	.LBB19_29
# BB#23:                                # %if.end.i.i.68
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r15), %rax
	je	.LBB19_26
	.align	16, 0x90
.LBB19_24:                              # %for.body.i.i.i.72
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB19_24
# BB#25:                                # %for.end.loopexit.i.i.i.73
	movq	%rsi, 360(%r15)
	movq	%rsi, %rax
.LBB19_26:                              # %release_wedge_vertex_list_interval.exit.i.i.77
	movq	72(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
	jmp	.LBB19_28
.LBB19_27:                              # %if.else.i.i.78
	testq	%rcx, %rcx
	jne	.LBB19_29
.LBB19_28:                              # %for.inc.critedge.i.i.79
	xorl	%eax, %eax
.LBB19_29:                              # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	small_mesh_triangle, .Lfunc_end19-small_mesh_triangle
	.cfi_endproc

	.globl	mesh_triangle
	.align	16, 0x90
	.type	mesh_triangle,@function
mesh_triangle:                          # @mesh_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp159:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp161:
	.cfi_def_cfa_offset 208
.Ltmp162:
	.cfi_offset %rbx, -56
.Ltmp163:
	.cfi_offset %r12, -48
.Ltmp164:
	.cfi_offset %r13, -40
.Ltmp165:
	.cfi_offset %r14, -32
.Ltmp166:
	.cfi_offset %r15, -24
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*1664(%rdi)
	testl	%eax, %eax
	jle	.LBB20_12
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movslq	(%r15), %rax
	movslq	(%r14), %rcx
	movslq	4(%r15), %r12
	movslq	4(%r14), %rdx
	movslq	(%r13), %rsi
	subq	%rax, %rsi
	subq	%rcx, %rax
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movslq	4(%r13), %r13
	subq	%r12, %r13
	subq	%rdx, %r12
	imulq	%rax, %r13
	imulq	%rsi, %r12
	movq	24(%rdi), %rdx
	leaq	24(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movl	(%r14), %esi
	movl	4(%r14), %edx
	movq	%rbp, %rdi
	callq	gx_path_add_point
	movl	%eax, %ebp
	subq	%r12, %r13
	js	.LBB20_4
# BB#2:                                 # %if.then
	testl	%ebp, %ebp
	js	.LBB20_4
# BB#3:                                 # %if.then.34
	movl	(%r15), %esi
	movl	4(%r15), %edx
	leaq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %ebp
.LBB20_4:                               # %if.end
	testl	%ebp, %ebp
	js	.LBB20_11
# BB#5:                                 # %if.end.48
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movl	4(%rax), %edx
	leaq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %ebp
	testq	%r13, %r13
	jns	.LBB20_8
# BB#6:                                 # %if.end.48
	testl	%ebp, %ebp
	js	.LBB20_8
# BB#7:                                 # %if.then.54
	movl	(%r15), %esi
	movl	4(%r15), %edx
	leaq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, %ebp
.LBB20_8:                               # %if.end.60
	testl	%ebp, %ebp
	js	.LBB20_11
# BB#9:                                 # %if.end.65
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB20_11
# BB#10:                                # %if.then.68
	movq	(%rbx), %rax
	leaq	24(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	*1336(%rax)
	movl	%eax, %ebp
.LBB20_11:                              # %if.end.72
	leaq	24(%rsp), %rdi
	movl	$.L.str.3, %esi
	callq	gx_path_free
	testl	%ebp, %ebp
	movq	16(%rsp), %r13          # 8-byte Reload
	js	.LBB20_13
.LBB20_12:                              # %if.end.84
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	mesh_triangle_rec
	movl	%eax, %ebp
.LBB20_13:                              # %return
	movl	%ebp, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	mesh_triangle, .Lfunc_end20-mesh_triangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	mesh_triangle_rec,@function
mesh_triangle_rec:                      # @mesh_triangle_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp171:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp172:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp174:
	.cfi_def_cfa_offset 160
.Ltmp175:
	.cfi_offset %rbx, -56
.Ltmp176:
	.cfi_offset %r12, -48
.Ltmp177:
	.cfi_offset %r13, -40
.Ltmp178:
	.cfi_offset %r14, -32
.Ltmp179:
	.cfi_offset %r15, -24
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	(%r12), %rsi
	movl	$1, %eax
	cmpl	$1, 136(%rsi)
	jne	.LBB21_2
# BB#1:                                 # %if.end.i
	movq	8(%r12), %rdi
	callq	gx_get_cmap_procs
	movq	(%r12), %rsi
	movq	8(%r12), %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
.LBB21_2:                               # %is_linear_color_applicable.exit
	movl	%eax, 668(%r12)
	movl	(%rbx), %r15d
	movl	4(%rbx), %r14d
	movq	%rbx, %rdx
	movl	(%rbp), %r9d
	movl	4(%rbp), %r8d
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	%r15d, %ebp
	subl	%r9d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	movl	%r14d, %ebx
	subl	%r8d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovll	%ebx, %ebp
	cmpl	%ebp, %eax
	cmovgel	%eax, %ebp
	movl	348(%r12), %eax
	cmpl	%eax, %ebp
	jge	.LBB21_5
# BB#3:                                 # %land.lhs.true
	movl	(%r13), %edi
	movl	4(%r13), %esi
	movl	%edi, %ecx
	subl	%r15d, %ecx
	movl	%ecx, %ebx
	negl	%ebx
	cmovll	%ecx, %ebx
	movl	%esi, %ebp
	subl	%r14d, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	cmpl	%ecx, %ebx
	cmovgel	%ebx, %ecx
	cmpl	%eax, %ecx
	jge	.LBB21_5
# BB#4:                                 # %land.lhs.true.10
	movl	%r9d, %ecx
	subl	%edi, %ecx
	movl	%ecx, %edi
	negl	%edi
	cmovll	%ecx, %edi
	movl	%r8d, %ecx
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovll	%ecx, %esi
	cmpl	%esi, %edi
	cmovgel	%edi, %esi
	cmpl	%eax, %esi
	jge	.LBB21_5
# BB#60:                                # %if.then
	movq	%r12, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rcx
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	small_mesh_triangle     # TAILCALL
.LBB21_5:                               # %if.else
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movq	688(%r12), %rsi
	movslq	680(%r12), %rcx
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rax,%rsi), %rbp
	movl	$-28, %eax
	cmpq	704(%r12), %rbp
	ja	.LBB21_59
# BB#6:                                 # %reserve_colors_inline.exit
	movq	%rbp, 688(%r12)
	testq	%rsi, %rsi
	je	.LBB21_59
# BB#7:                                 # %if.end
	leaq	(%rsi,%rcx), %rbx
	leaq	(%rbx,%rcx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 96(%rsp)
	movq	%rbx, 80(%rsp)
	movq	%rax, 64(%rsp)
	leal	(%r9,%r15), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 88(%rsp)
	leal	(%r8,%r14), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 92(%rsp)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r13
	movq	%rdx, %rbp
	movq	8(%rbp), %r11
	movq	328(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB21_9
# BB#8:                                 # %if.then.i.7.i
	movss	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r11), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rsi)
	movss	4(%r13), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r11), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r12), %r14
	leaq	8(%rsi), %r15
	leaq	16(%rsi), %rdx
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	callq	*8(%rdi)
	movq	(%r14), %rax
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*40(%rax)
	movl	(%rbp), %r15d
	movl	4(%rbp), %r14d
	movq	8(%rbp), %r11
	movq	328(%r12), %rdi
	jmp	.LBB21_22
.LBB21_9:                               # %if.else.i.i
	movq	%rbx, %r9
	movslq	24(%r12), %rbx
	xorl	%edi, %edi
	testq	%rbx, %rbx
	jle	.LBB21_21
# BB#10:                                # %for.body.lr.ph.i.i
	cmpq	$2, %rbx
	movl	$1, %eax
	cmovlq	%rbx, %rax
	notq	%rax
	leaq	(%rax,%rbx), %r10
	cmpq	$-2, %r10
	je	.LBB21_19
# BB#11:                                # %overflow.checked
	addq	$2, %r10
	xorl	%eax, %eax
	movq	%r10, %rcx
	andq	$-4, %rcx
	je	.LBB21_18
# BB#12:                                # %vector.memcheck
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	leaq	12(%rsi,%rbx,4), %r8
	cmpq	$2, %rbx
	movl	$1, %ecx
	cmovlq	%rbx, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%r13, %rdx
	subq	%rcx, %rdx
	movq	%r11, %rdi
	subq	%rcx, %rdi
	negq	%rcx
	leaq	8(%rsi,%rcx), %rcx
	leaq	12(%r13,%rbx,4), %rbp
	addq	$8, %rdx
	leaq	12(%r11,%rbx,4), %rax
	addq	$8, %rdi
	cmpq	%rdx, %r8
	setbe	%dl
	cmpq	%rcx, %rbp
	setbe	%bpl
	cmpq	%rdi, %r8
	setbe	%dil
	cmpq	%rcx, %rax
	setbe	%r8b
	xorl	%eax, %eax
	testb	%bpl, %dl
	jne	.LBB21_17
# BB#13:                                # %vector.memcheck
	andb	%r8b, %dil
	movq	8(%rsp), %rbp           # 8-byte Reload
	jne	.LBB21_18
# BB#14:                                # %vector.body.preheader
	movq	%rbx, %r8
	subq	(%rsp), %r8             # 8-byte Folded Reload
	leaq	8(%r13,%rbx,4), %rdi
	leaq	8(%r11,%rbx,4), %rbp
	leaq	8(%rsi,%rbx,4), %rax
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rbx), %rbx
	andq	$-4, %rbx
	movapd	.LCPI21_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB21_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rax)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rax)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rax
	addq	$-4, %rbx
	jne	.LBB21_15
# BB#16:
	movq	%r8, %rbx
	movq	(%rsp), %rax            # 8-byte Reload
.LBB21_17:                              # %middle.block
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB21_18:                              # %middle.block
	xorl	%edi, %edi
	cmpq	%rax, %r10
	je	.LBB21_21
.LBB21_19:                              # %for.body.i.i.preheader
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB21_20:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%r13,%rbx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	12(%r11,%rbx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 12(%rsi,%rbx,4)
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	jg	.LBB21_20
.LBB21_21:
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
.LBB21_22:                              # %divide_bar.exit
	movq	40(%rsp), %r13          # 8-byte Reload
	movl	(%r13), %r8d
	leal	(%r15,%r8), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 72(%rsp)
	movl	4(%r13), %edx
	leal	(%r14,%rdx), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 76(%rsp)
	movq	8(%r13), %rcx
	testq	%rdi, %rdi
	je	.LBB21_24
# BB#23:                                # %if.then.i.7.i.120
	movq	%rbp, %r14
	movss	(%r11), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rbx)
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rbx)
	movq	16(%r12), %rbp
	movq	%rbx, %rsi
	leaq	8(%rsi), %rbx
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movl	(%r13), %r8d
	movl	4(%r13), %edx
	movq	8(%r13), %rcx
	movq	328(%r12), %rdi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	jmp	.LBB21_38
.LBB21_24:                              # %if.else.i.i.123
	movslq	24(%r12), %rbx
	xorl	%edi, %edi
	testq	%rbx, %rbx
	movq	32(%rsp), %r13          # 8-byte Reload
	jle	.LBB21_25
# BB#26:                                # %for.body.lr.ph.i.i.124
	cmpq	$2, %rbx
	movl	$1, %eax
	cmovlq	%rbx, %rax
	notq	%rax
	leaq	(%rax,%rbx), %r10
	movq	%rbp, %r14
	cmpq	$-2, %r10
	je	.LBB21_35
# BB#27:                                # %overflow.checked240
	addq	$2, %r10
	xorl	%ebp, %ebp
	movq	%r10, %rax
	andq	$-4, %rax
	je	.LBB21_34
# BB#28:                                # %vector.memcheck268
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, %r9
	leaq	(%r9,%rbx,4), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%r13, %rsi
	leaq	12(%rsi,%rax), %r13
	cmpq	$2, %rbx
	movl	$1, %edi
	cmovlq	%rbx, %rdi
	notq	%rdi
	shlq	$2, %rdi
	movq	%r11, %rbp
	subq	%rdi, %rbp
	movq	%rcx, %rax
	subq	%rdi, %rax
	negq	%rdi
	leaq	8(%r9,%rdi), %rdi
	leaq	(%rdi,%rsi), %rdi
	leaq	12(%r11,%rbx,4), %r15
	addq	$8, %rbp
	leaq	12(%rcx,%rbx,4), %rsi
	addq	$8, %rax
	cmpq	%rbp, %r13
	setbe	%r9b
	cmpq	%rdi, %r15
	setbe	%r15b
	cmpq	%rax, %r13
	setbe	%al
	cmpq	%rdi, %rsi
	setbe	%dil
	xorl	%ebp, %ebp
	testb	%r15b, %r9b
	jne	.LBB21_29
# BB#30:                                # %vector.memcheck268
	andb	%dil, %al
	movq	32(%rsp), %r13          # 8-byte Reload
	jne	.LBB21_34
# BB#31:                                # %vector.body236.preheader
	movq	%rbx, %r15
	subq	8(%rsp), %r15           # 8-byte Folded Reload
	leaq	8(%r11,%rbx,4), %rdi
	leaq	8(%rcx,%rbx,4), %rbp
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	8(%r13,%rax), %rax
	movq	%rbx, %r9
	notq	%r9
	cmpq	$-3, %r9
	movq	$-2, %rsi
	cmovgq	%r9, %rsi
	leaq	2(%rsi,%rbx), %rbx
	andq	$-4, %rbx
	movapd	.LCPI21_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB21_32:                              # %vector.body236
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rax)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rax)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rax
	addq	$-4, %rbx
	jne	.LBB21_32
# BB#33:
	movq	%r15, %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB21_34
.LBB21_25:
	movq	%rbp, %r14
	jmp	.LBB21_37
.LBB21_29:
	movq	32(%rsp), %r13          # 8-byte Reload
.LBB21_34:                              # %middle.block237
	xorl	%edi, %edi
	cmpq	%rbp, %r10
	je	.LBB21_37
.LBB21_35:                              # %for.body.i.i.137.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	12(%rax,%r13), %rax
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB21_36:                              # %for.body.i.i.137
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%r11,%rbx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	12(%rcx,%rbx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rax,%rbx,4)
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	jg	.LBB21_36
.LBB21_37:
	movq	48(%rsp), %rbp          # 8-byte Reload
.LBB21_38:                              # %divide_bar.exit138
	addl	(%rbp), %r8d
	movl	%r8d, %eax
	shrl	$31, %eax
	addl	%r8d, %eax
	sarl	%eax
	movl	%eax, 56(%rsp)
	addl	4(%rbp), %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, 60(%rsp)
	movq	8(%rbp), %rax
	testq	%rdi, %rdi
	je	.LBB21_40
# BB#39:                                # %if.then.i.7.i.178
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movq	24(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r12), %rbx
	movq	%rbp, %r15
	leaq	8(%rsi), %rbp
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%r15, %rbp
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB21_51
.LBB21_40:                              # %if.else.i.i.181
	movslq	24(%r12), %rsi
	testq	%rsi, %rsi
	jle	.LBB21_51
# BB#41:                                # %for.body.lr.ph.i.i.182
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r9
	cmpq	$-2, %r9
	je	.LBB21_49
# BB#42:                                # %overflow.checked298
	movq	%r14, 8(%rsp)           # 8-byte Spill
	addq	$2, %r9
	xorl	%ebp, %ebp
	movq	%r9, %r10
	andq	$-4, %r10
	je	.LBB21_48
# BB#43:                                # %vector.memcheck326
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rbp,%rbp), %rdi
	leaq	(%rdi,%rsi,4), %rdx
	leaq	12(%r13,%rdx), %r8
	leaq	8(%rbp,%rbp), %rbx
	cmpq	$2, %rsi
	movl	$1, %edi
	cmovlq	%rsi, %rdi
	notq	%rdi
	shlq	$2, %rdi
	subq	%rdi, %rbx
	leaq	(%rbx,%r13), %r15
	leaq	12(%rcx,%rsi,4), %r11
	movq	%rcx, %rbx
	subq	%rdi, %rbx
	addq	$8, %rbx
	leaq	12(%rax,%rsi,4), %r14
	movq	%rax, %rbp
	subq	%rdi, %rbp
	addq	$8, %rbp
	cmpq	%rbx, %r8
	setbe	%dil
	cmpq	%r15, %r11
	setbe	%r11b
	cmpq	%rbp, %r8
	setbe	%bl
	cmpq	%r15, %r14
	setbe	%r8b
	xorl	%ebp, %ebp
	testb	%r11b, %dil
	jne	.LBB21_48
# BB#44:                                # %vector.memcheck326
	andb	%r8b, %bl
	jne	.LBB21_48
# BB#45:                                # %vector.body294.preheader
	movq	%rsi, %r8
	subq	%r10, %r8
	leaq	8(%rcx,%rsi,4), %rbx
	leaq	8(%rax,%rsi,4), %rbp
	leaq	8(%r13,%rdx), %rdi
	movq	%rsi, %r11
	notq	%r11
	cmpq	$-3, %r11
	movq	$-2, %rdx
	cmovgq	%r11, %rdx
	leaq	2(%rdx,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI21_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB21_46:                              # %vector.body294
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdi)
	addq	$-16, %rbx
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-4, %rsi
	jne	.LBB21_46
# BB#47:
	movq	%r8, %rsi
	movq	%r10, %rbp
.LBB21_48:                              # %middle.block295
	cmpq	%rbp, %r9
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	je	.LBB21_51
.LBB21_49:                              # %for.body.i.i.195.preheader
	incq	%rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	12(%r13,%rdx,2), %rdx
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB21_50:                              # %for.body.i.i.195
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rax,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rdx,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB21_50
.LBB21_51:                              # %divide_bar.exit196
	leaq	88(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	fill_triangle_wedge
	testl	%eax, %eax
	js	.LBB21_58
# BB#52:                                # %if.end.33
	leaq	72(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	fill_triangle_wedge
	testl	%eax, %eax
	js	.LBB21_58
# BB#53:                                # %if.end.37
	leaq	56(%rsp), %rcx
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	callq	fill_triangle_wedge
	testl	%eax, %eax
	js	.LBB21_58
# BB#54:                                # %if.end.41
	leaq	88(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	mesh_triangle_rec
	testl	%eax, %eax
	js	.LBB21_58
# BB#55:                                # %if.end.45
	leaq	72(%rsp), %rdx
	leaq	88(%rsp), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	mesh_triangle_rec
	testl	%eax, %eax
	js	.LBB21_58
# BB#56:                                # %if.end.49
	leaq	56(%rsp), %rdx
	leaq	72(%rsp), %rcx
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	mesh_triangle_rec
	testl	%eax, %eax
	js	.LBB21_58
# BB#57:                                # %if.then.51
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	%r12, %rdi
	callq	mesh_triangle_rec
.LBB21_58:                              # %if.end.53
	movq	%r13, 688(%r12)
.LBB21_59:                              # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	mesh_triangle_rec, .Lfunc_end21-mesh_triangle_rec
	.cfi_endproc

	.globl	gx_shade_background
	.align	16, 0x90
	.type	gx_shade_background,@function
gx_shade_background:                    # @gx_shade_background
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 64
	movl	(%rsi), %eax
	addl	$-128, %eax
	movl	%eax, 40(%rsp)
	movl	4(%rsi), %r10d
	addl	$-128, %r10d
	movl	%r10d, 44(%rsp)
	movl	%eax, 48(%rsp)
	movl	$128, %eax
	movl	12(%rsi), %r8d
	addl	%eax, %r8d
	movl	%r8d, 52(%rsp)
	addl	8(%rsi), %eax
	movl	%eax, 24(%rsp)
	movl	%r10d, 28(%rsp)
	movl	%eax, 32(%rsp)
	movl	%r8d, 36(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rdx, (%rsp)
	leaq	40(%rsp), %rsi
	leaq	24(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r10d, %ecx
	callq	*1360(%rdi)
	addq	$56, %rsp
	retq
.Lfunc_end22:
	.size	gx_shade_background, .Lfunc_end22-gx_shade_background
	.cfi_endproc

	.align	16, 0x90
	.type	is_x_bended,@function
is_x_bended:                            # @is_x_bended
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp183:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp184:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp185:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp186:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 56
.Ltmp188:
	.cfi_offset %rbx, -56
.Ltmp189:
	.cfi_offset %r12, -48
.Ltmp190:
	.cfi_offset %r13, -40
.Ltmp191:
	.cfi_offset %r14, -32
.Ltmp192:
	.cfi_offset %r15, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movl	8(%rdi), %r8d
	movl	12(%rdi), %ebp
	movl	16(%rdi), %r13d
	movl	%r13d, %eax
	subl	%r8d, %eax
	movl	20(%rdi), %r12d
	movl	%r12d, %ecx
	subl	%ebp, %ecx
	movl	40(%rdi), %r10d
	movl	%r10d, %esi
	subl	%r8d, %esi
	movl	44(%rdi), %r11d
	movl	%r11d, %ebx
	subl	%ebp, %ebx
	cltq
	movslq	%ebx, %rdx
	imulq	%rax, %rdx
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	imulq	%rax, %rcx
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	sarq	$63, %rbx
	cmpq	%rcx, %rdx
	movslq	(%rdi), %r9
	movslq	4(%rdi), %rdx
	movl	$1, %eax
	cmovgl	%eax, %ebx
	subl	%r9d, %r8d
	subl	%edx, %ebp
	movslq	32(%rdi), %rsi
	movslq	36(%rdi), %rcx
	movslq	%r8d, %r8
	movslq	%ebp, %rbp
	subq	%r9, %rsi
	subq	%rdx, %rcx
	imulq	%r8, %rcx
	imulq	%rbp, %rsi
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	sarq	$63, %rdx
	cmpq	%rsi, %rcx
	cmovgl	%eax, %edx
	movl	%ebx, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#1:                                 # %if.end.i.424
	movl	24(%rdi), %r15d
	movl	28(%rdi), %r14d
	movl	%r15d, %eax
	subl	%r13d, %eax
	movl	%r14d, %r8d
	subl	%r12d, %r8d
	movl	48(%rdi), %esi
	movl	%esi, -4(%rsp)          # 4-byte Spill
	subl	%r13d, %esi
	movl	52(%rdi), %r9d
	movl	%r9d, %ebp
	subl	%r12d, %ebp
	cltq
	movslq	%ebp, %rbp
	imulq	%rax, %rbp
	movslq	%r8d, %rax
	movslq	%esi, %rcx
	imulq	%rax, %rcx
	movq	%rbp, %r8
	subq	%rcx, %r8
	sarq	$63, %r8
	cmpq	%rcx, %rbp
	movl	$1, %eax
	cmovgl	%eax, %r8d
	testl	%edx, %edx
	cmovnel	%edx, %ebx
	movl	%r8d, %ecx
	imull	%ebx, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#2:                                 # %if.end.i.397
	subl	%r15d, %r13d
	subl	%r14d, %r12d
	movl	56(%rdi), %ecx
	movl	%ecx, -8(%rsp)          # 4-byte Spill
	movl	60(%rdi), %esi
	subl	%r15d, %ecx
	movl	%esi, %edx
	movl	%esi, %r15d
	subl	%r14d, %edx
	movslq	%r13d, %rsi
	movslq	%edx, %rbp
	imulq	%rsi, %rbp
	movslq	%r12d, %rsi
	movslq	%ecx, %rcx
	imulq	%rsi, %rcx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	sarq	$63, %rdx
	negl	%edx
	cmpq	%rcx, %rbp
	movl	$-1, %esi
	cmovlel	%edx, %esi
	testl	%ebx, %ebx
	cmovnel	%ebx, %r8d
	movl	%esi, %ecx
	imull	%r8d, %ecx
	testl	%ecx, %ecx
	movl	%r9d, %r12d
	movl	-4(%rsp), %r9d          # 4-byte Reload
	js	.LBB23_15
# BB#3:                                 # %if.end.i.370
	movl	%r9d, %eax
	subl	%r10d, %eax
	movl	%r12d, %ebx
	subl	%r11d, %ebx
	movl	72(%rdi), %r13d
	movl	76(%rdi), %r14d
	movl	%r13d, %edx
	subl	%r10d, %edx
	movl	%r14d, %ebp
	subl	%r11d, %ebp
	cltq
	movslq	%ebp, %rcx
	imulq	%rax, %rcx
	movslq	%ebx, %rax
	movslq	%edx, %rdx
	imulq	%rax, %rdx
	movq	%rcx, %rbx
	subq	%rdx, %rbx
	sarq	$63, %rbx
	cmpq	%rdx, %rcx
	movl	$1, %eax
	cmovgl	%eax, %ebx
	testl	%r8d, %r8d
	cmovnel	%r8d, %esi
	movl	%ebx, %ecx
	imull	%esi, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#4:                                 # %if.end.i.343
	testl	%esi, %esi
	cmovel	%ebx, %esi
	movl	%ebx, %ecx
	imull	%esi, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#5:                                 # %if.end.i.316
	movl	-8(%rsp), %r10d         # 4-byte Reload
	movl	%r10d, %eax
	subl	%r9d, %eax
	movl	%r15d, %r8d
	subl	%r12d, %r8d
	movl	80(%rdi), %ecx
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	movl	84(%rdi), %r11d
	subl	%r9d, %ecx
	movl	%r11d, %ebp
	subl	%r12d, %ebp
	cltq
	movslq	%ebp, %rdx
	imulq	%rax, %rdx
	movslq	%r8d, %rax
	movslq	%ecx, %rbp
	imulq	%rax, %rbp
	movq	%rdx, %rcx
	subq	%rbp, %rcx
	sarq	$63, %rcx
	cmpq	%rbp, %rdx
	movl	$1, %eax
	cmovgl	%eax, %ecx
	testl	%esi, %esi
	cmovnel	%esi, %ebx
	movl	%ecx, %edx
	imull	%ebx, %edx
	testl	%edx, %edx
	js	.LBB23_15
# BB#6:                                 # %if.end.i.289
	subl	%r10d, %r9d
	subl	%r15d, %r12d
	movl	88(%rdi), %esi
	movl	92(%rdi), %ebp
	movl	%ebp, -4(%rsp)          # 4-byte Spill
	movl	%esi, %edx
	movl	%r9d, %r8d
	movl	%r12d, %r9d
	movl	%esi, %r12d
	subl	%r10d, %edx
	movl	%ebp, %esi
	subl	%r15d, %esi
	movslq	%r8d, %r8
	movslq	%esi, %rbp
	imulq	%r8, %rbp
	movslq	%r9d, %rsi
	movslq	%edx, %rdx
	imulq	%rsi, %rdx
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	sarq	$63, %rsi
	negl	%esi
	cmpq	%rdx, %rbp
	movl	$-1, %ebp
	cmovlel	%esi, %ebp
	testl	%ebx, %ebx
	cmovnel	%ebx, %ecx
	movl	%ebp, %edx
	imull	%ecx, %edx
	testl	%edx, %edx
	movl	-12(%rsp), %r10d        # 4-byte Reload
	js	.LBB23_15
# BB#7:                                 # %if.end.i.262
	movl	%r10d, %eax
	subl	%r13d, %eax
	movl	%r11d, %edx
	subl	%r14d, %edx
	movl	104(%rdi), %r8d
	movl	108(%rdi), %r15d
	movl	%r8d, %esi
	subl	%r13d, %esi
	movl	%r15d, %ebx
	subl	%r14d, %ebx
	cltq
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	movslq	%edx, %rax
	movslq	%esi, %rdx
	imulq	%rax, %rdx
	movq	%rbx, %r9
	subq	%rdx, %r9
	sarq	$63, %r9
	cmpq	%rdx, %rbx
	movl	$1, %eax
	cmovgl	%eax, %r9d
	testl	%ecx, %ecx
	cmovnel	%ecx, %ebp
	movl	%r9d, %ecx
	imull	%ebp, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#8:                                 # %if.end.i.235
	testl	%ebp, %ebp
	cmovel	%r9d, %ebp
	movl	%r9d, %ecx
	imull	%ebp, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#9:                                 # %if.end.i.208
	movl	%r8d, -16(%rsp)         # 4-byte Spill
	movl	%r12d, %esi
	movl	%esi, %eax
	subl	%r10d, %eax
	movl	-4(%rsp), %ecx          # 4-byte Reload
	subl	%r11d, %ecx
	movl	112(%rdi), %edx
	movl	%edx, -8(%rsp)          # 4-byte Spill
	movl	116(%rdi), %r12d
	subl	%r10d, %edx
	movl	%r12d, %ebx
	subl	%r11d, %ebx
	cltq
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	movslq	%ecx, %rax
	movslq	%edx, %rcx
	imulq	%rax, %rcx
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	sarq	$63, %rdx
	cmpq	%rcx, %rbx
	movl	$1, %eax
	cmovgl	%eax, %edx
	testl	%ebp, %ebp
	cmovnel	%ebp, %r9d
	movl	%edx, %ecx
	imull	%r9d, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#10:                                # %if.end.i.181
	movl	%r12d, -20(%rsp)        # 4-byte Spill
	movl	%r10d, %ecx
	subl	%esi, %ecx
	movl	%r11d, %ebx
	movl	-4(%rsp), %r8d          # 4-byte Reload
	subl	%r8d, %ebx
	movl	%esi, %r12d
	movl	120(%rdi), %esi
	movl	%esi, -28(%rsp)         # 4-byte Spill
	movl	124(%rdi), %ebp
	movl	%ebp, -24(%rsp)         # 4-byte Spill
	movl	%esi, %edi
	subl	%r12d, %edi
	subl	%r8d, %ebp
	movslq	%ecx, %rcx
	movslq	%ebp, %rbp
	imulq	%rcx, %rbp
	movslq	%ebx, %rcx
	movslq	%edi, %rbx
	imulq	%rcx, %rbx
	movq	%rbp, %rdi
	subq	%rbx, %rdi
	sarq	$63, %rdi
	negl	%edi
	cmpq	%rbx, %rbp
	movl	$-1, %r8d
	cmovgl	%r8d, %edi
	testl	%r9d, %r9d
	cmovnel	%r9d, %edx
	movl	%edi, %ecx
	imull	%edx, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#11:                                # %if.end.i.154
	movl	%r12d, -32(%rsp)        # 4-byte Spill
	movl	-8(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %ecx
	movl	-16(%rsp), %ebp         # 4-byte Reload
	subl	%ebp, %ecx
	movl	-20(%rsp), %r9d         # 4-byte Reload
	movl	%r9d, %ebx
	subl	%r15d, %ebx
	subl	%ebp, %r13d
	subl	%r15d, %r14d
	movslq	%ecx, %rbp
	movslq	%r14d, %rcx
	imulq	%rbp, %rcx
	movslq	%ebx, %rbp
	movslq	%r13d, %rsi
	imulq	%rbp, %rsi
	movq	%rcx, %rbx
	subq	%rsi, %rbx
	sarq	$63, %rbx
	negl	%ebx
	cmpq	%rsi, %rcx
	cmovgl	%r8d, %ebx
	testl	%edx, %edx
	cmovnel	%edx, %edi
	movl	%ebx, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#12:                                # %if.end.i.127
	testl	%edi, %edi
	cmovel	%ebx, %edi
	movl	%ebx, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#13:                                # %if.end.i.100
	movl	-28(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %ecx
	subl	%r12d, %ecx
	movl	-24(%rsp), %r8d         # 4-byte Reload
	movl	%r8d, %edx
	movl	%r9d, %ebp
	subl	%ebp, %edx
	subl	%r12d, %r10d
	subl	%ebp, %r11d
	movslq	%ecx, %rcx
	movslq	%r11d, %rsi
	imulq	%rcx, %rsi
	movslq	%edx, %rcx
	movslq	%r10d, %rdx
	imulq	%rcx, %rdx
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	sarq	$63, %rcx
	negl	%ecx
	cmpq	%rdx, %rsi
	movl	$-1, %edx
	cmovlel	%ecx, %edx
	testl	%edi, %edi
	cmovnel	%edi, %ebx
	movl	%edx, %ecx
	imull	%ebx, %ecx
	testl	%ecx, %ecx
	js	.LBB23_15
# BB#14:                                # %if.end.i.73
	subl	%r14d, %r12d
	subl	%r8d, %ebp
	movl	-32(%rsp), %r9d         # 4-byte Reload
	subl	%r14d, %r9d
	movl	-4(%rsp), %ecx          # 4-byte Reload
	subl	%r8d, %ecx
	movslq	%r12d, %rax
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	movslq	%ebp, %rax
	movslq	%r9d, %rsi
	imulq	%rax, %rsi
	movq	%rcx, %rax
	subq	%rsi, %rax
	sarq	$63, %rax
	cmpq	%rsi, %rcx
	movl	$1, %ecx
	cmovlel	%eax, %ecx
	testl	%ebx, %ebx
	cmovnel	%ebx, %edx
	imull	%ecx, %edx
	shrl	$31, %edx
	movl	%edx, %eax
.LBB23_15:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	is_x_bended, .Lfunc_end23-is_x_bended
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI24_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	fill_patch,@function
fill_patch:                             # @fill_patch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp195:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp197:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp198:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp200:
	.cfi_def_cfa_offset 480
.Ltmp201:
	.cfi_offset %rbx, -56
.Ltmp202:
	.cfi_offset %r12, -48
.Ltmp203:
	.cfi_offset %r13, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movl	%ecx, %r14d
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r15
	cmpl	$1, %ebx
	jg	.LBB24_10
# BB#1:                                 # %if.then
	movl	(%r13), %eax
	movl	32(%r13), %ecx
	movl	64(%r13), %edx
	movl	96(%r13), %esi
	cmpl	%esi, %edx
	movl	%esi, %edi
	cmovlel	%edx, %edi
	cmovgel	%edx, %esi
	cmpl	%ecx, %eax
	movl	%ecx, %edx
	cmovlel	%eax, %edx
	cmovgel	%eax, %ecx
	cmpl	%edi, %edx
	cmovgl	%edi, %edx
	cmpl	%esi, %ecx
	cmovll	%esi, %ecx
	subl	%edx, %ecx
	movl	640(%r15), %eax
	cmpl	%eax, %ecx
	jg	.LBB24_9
# BB#2:                                 # %if.end.i
	movl	8(%r13), %ecx
	movl	40(%r13), %edx
	movl	72(%r13), %esi
	movl	104(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#3:                                 # %if.end.9.i
	movl	16(%r13), %ecx
	movl	48(%r13), %edx
	movl	80(%r13), %esi
	movl	112(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#4:                                 # %if.end.17.i
	movl	24(%r13), %ecx
	movl	56(%r13), %edx
	movl	88(%r13), %esi
	movl	120(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#5:                                 # %if.end.25.i
	movl	4(%r13), %ecx
	movl	36(%r13), %edx
	movl	68(%r13), %esi
	movl	100(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#6:                                 # %if.end.33.i
	movl	12(%r13), %ecx
	movl	44(%r13), %edx
	movl	76(%r13), %esi
	movl	108(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#7:                                 # %if.end.41.i
	movl	20(%r13), %ecx
	movl	52(%r13), %edx
	movl	84(%r13), %esi
	movl	116(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jg	.LBB24_9
# BB#8:                                 # %is_patch_narrow.exit
	movl	28(%r13), %ecx
	movl	60(%r13), %edx
	movl	92(%r13), %esi
	movl	124(%r13), %edi
	cmpl	%edi, %esi
	movl	%edi, %ebp
	cmovlel	%esi, %ebp
	cmovgel	%esi, %edi
	cmpl	%edx, %ecx
	movl	%edx, %esi
	cmovlel	%ecx, %esi
	cmovgel	%ecx, %edx
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	subl	%esi, %edx
	cmpl	%eax, %edx
	jle	.LBB24_66
.LBB24_9:                               # %if.end
	movq	%r13, %rdi
	callq	is_x_bended
	testl	%eax, %eax
	je	.LBB24_66
.LBB24_10:                              # %if.end.8
	movl	672(%r15), %r11d
	testl	%r11d, %r11d
	jne	.LBB24_21
# BB#11:                                # %if.then.11
	movl	%ebx, %r10d
	movl	(%r13), %ebp
	movl	4(%r13), %r8d
	xorl	%ebx, %ebx
	movl	%r8d, %edi
	movl	%ebp, %esi
	movl	%r8d, %ecx
	movl	%ebp, %edx
	jmp	.LBB24_12
	.align	16, 0x90
.LBB24_13:                              # %for.cond.12.preheader.i.for.cond.12.preheader.i_crit_edge
                                        #   in Loop: Header=BB24_12 Depth=1
	movl	32(%r13,%rbx), %ebp
	movl	36(%r13,%rbx), %r8d
	movq	%rax, %rbx
.LBB24_12:                              # %for.cond.12.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %edx
	cmovgl	%ebp, %edx
	cmpl	%r8d, %ecx
	cmovgl	%r8d, %ecx
	cmpl	%ebp, %esi
	cmovll	%ebp, %esi
	cmpl	%r8d, %edi
	cmovll	%r8d, %edi
	movl	8(%r13,%rbx), %eax
	movl	12(%r13,%rbx), %ebp
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	movl	16(%r13,%rbx), %eax
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	movl	20(%r13,%rbx), %ebp
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	movl	24(%r13,%rbx), %eax
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	movl	28(%r13,%rbx), %ebp
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	leaq	32(%rbx), %rax
	cmpq	$128, %rax
	jne	.LBB24_13
# BB#14:                                # %tensor_patch_bbox.exit
	addl	$-128, %edx
	addl	$-128, %ecx
	subl	$-128, %esi
	subl	$-128, %edi
	movl	312(%r15), %r9d
	movl	316(%r15), %r8d
	cmpl	%edx, %r9d
	cmovll	%edx, %r9d
	movl	320(%r15), %ebp
	cmpl	%esi, %ebp
	cmovgl	%esi, %ebp
	cmpl	%ecx, %r8d
	cmovll	%ecx, %r8d
	movl	324(%r15), %ebx
	cmpl	%edi, %ebx
	cmovgl	%edi, %ebx
	xorl	%eax, %eax
	cmpl	%r9d, %ebp
	jle	.LBB24_65
# BB#15:                                # %tensor_patch_bbox.exit
	cmpl	%r8d, %ebx
	jle	.LBB24_65
# BB#16:                                # %if.end.94
	cmpl	%ebx, %edi
	movl	%r10d, %ebx
	jne	.LBB24_21
# BB#17:                                # %if.end.94
	cmpl	%ebp, %esi
	jne	.LBB24_21
# BB#18:                                # %if.end.94
	cmpl	%r9d, %edx
	jne	.LBB24_21
# BB#19:                                # %if.end.94
	cmpl	%r8d, %ecx
	jne	.LBB24_21
# BB#20:                                # %if.then.121
	movl	$1, 672(%r15)
.LBB24_21:                              # %if.end.125
	movq	688(%r15), %rsi
	movslq	680(%r15), %rcx
	leaq	(%rsi,%rcx,2), %rdx
	movl	$-28, %eax
	cmpq	704(%r15), %rdx
	ja	.LBB24_65
# BB#22:                                # %reserve_colors_inline.exit
	movl	%ebx, 52(%rsp)          # 4-byte Spill
	movq	%rdx, 688(%r15)
	testq	%rsi, %rsi
	je	.LBB24_65
# BB#23:                                # %if.end.130
	movl	%r11d, 48(%rsp)         # 4-byte Spill
	movl	%r14d, 36(%rsp)         # 4-byte Spill
	leaq	(%rcx,%rsi), %rax
	movq	%rsi, 408(%rsp)
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rax, 416(%rsp)
	leaq	264(%rsp), %rsi
	leaq	104(%rsp), %rdx
	movl	$4, %ecx
	movq	%r13, %rdi
	callq	split_curve_s
	leaq	8(%r13), %rdi
	leaq	272(%rsp), %rsi
	leaq	112(%rsp), %rdx
	movl	$4, %ecx
	callq	split_curve_s
	leaq	16(%r13), %rdi
	leaq	280(%rsp), %rsi
	leaq	120(%rsp), %rdx
	movl	$4, %ecx
	callq	split_curve_s
	leaq	24(%r13), %rdi
	leaq	288(%rsp), %rsi
	leaq	128(%rsp), %rdx
	movl	$4, %ecx
	callq	split_curve_s
	movq	128(%r13), %rbp
	movq	%rbp, 392(%rsp)
	movq	136(%r13), %r11
	movq	%r11, 400(%rsp)
	movq	408(%rsp), %rsi
	movq	%rsi, 232(%rsp)
	movq	416(%rsp), %r14
	movq	%r14, 240(%rsp)
	movq	144(%r13), %rdx
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB24_24
# BB#40:                                # %patch_interpolate_color.exit.i
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI24_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	movss	4(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r15), %rbx
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	movq	328(%r15), %rdi
	movq	136(%r13), %r11
	movq	152(%r13), %rdx
	leaq	152(%r13), %r8
	testq	%rdi, %rdi
	je	.LBB24_41
# BB#67:                                # %if.then.i.84.i
	movss	(%r11), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI24_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%r14)
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%r14)
	movq	16(%r15), %rbx
	leaq	8(%r14), %r12
	leaq	16(%r14), %rdx
	movq	%r14, %rsi
	movq	%r8, %r14
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	movq	%r14, %r8
	movl	32(%rsp), %r12d         # 4-byte Reload
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB24_56
.LBB24_66:                              # %if.then.1
	movq	%r15, %rdi
	movq	%r13, %rsi
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	fill_stripe             # TAILCALL
.LBB24_24:                              # %if.else.i.i
	movslq	24(%r15), %r10
	testq	%r10, %r10
	jle	.LBB24_39
# BB#25:                                # %for.body.lr.ph.i.i
	cmpq	$2, %r10
	movl	$1, %eax
	cmovlq	%r10, %rax
	notq	%rax
	leaq	(%rax,%r10), %rdi
	cmpq	$-2, %rdi
	jne	.LBB24_27
# BB#26:
	movq	%r10, %rcx
	jmp	.LBB24_37
.LBB24_41:                              # %patch_interpolate_color.exit.i.if.else.i.58.i_crit_edge
	movl	24(%r15), %r10d
	movl	32(%rsp), %r12d         # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB24_42
.LBB24_27:                              # %overflow.checked
	addq	$2, %rdi
	xorl	%eax, %eax
	movq	%rdi, %rcx
	andq	$-4, %rcx
	je	.LBB24_28
# BB#29:                                # %vector.memcheck
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	leaq	12(%rsi,%r10,4), %rax
	cmpq	$2, %r10
	movl	$1, %ecx
	cmovlq	%r10, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%rsi, %r9
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	subq	%rcx, %r9
	addq	$8, %r9
	leaq	12(%rbp,%r10,4), %r12
	movq	%rbp, %rbx
	subq	%rcx, %rbx
	addq	$8, %rbx
	leaq	12(%rdx,%r10,4), %rdi
	movq	%rdx, %r8
	subq	%rcx, %r8
	addq	$8, %r8
	cmpq	%rbx, %rax
	setbe	%bl
	cmpq	%r9, %r12
	setbe	%r12b
	cmpq	%r8, %rax
	setbe	%cl
	cmpq	%r9, %rdi
	setbe	%sil
	xorl	%eax, %eax
	testb	%r12b, %bl
	jne	.LBB24_30
# BB#31:                                # %vector.memcheck
	andb	%sil, %cl
	movq	%r10, %rcx
	movl	32(%rsp), %r12d         # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	jne	.LBB24_36
# BB#32:                                # %vector.body.preheader
	movq	%r10, %rcx
	subq	8(%rsp), %rcx           # 8-byte Folded Reload
	leaq	8(%rbp,%r10,4), %rdi
	leaq	8(%rdx,%r10,4), %r9
	leaq	8(%rsi,%r10,4), %rbx
	movq	%r10, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rax
	cmovgq	%r8, %rax
	leaq	2(%rax,%r10), %rax
	andq	$-4, %rax
	movapd	.LCPI24_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB24_33:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%r9), %xmm3            # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%r9), %xmm4          # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbx)
	addq	$-16, %rdi
	addq	$-16, %r9
	addq	$-16, %rbx
	addq	$-4, %rax
	jne	.LBB24_33
# BB#34:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB24_35
.LBB24_28:
	movq	%r10, %rcx
	jmp	.LBB24_36
.LBB24_30:
	movq	%r10, %rcx
	movl	32(%rsp), %r12d         # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB24_35:                              # %middle.block
	movq	16(%rsp), %rdi          # 8-byte Reload
.LBB24_36:                              # %middle.block
	cmpq	%rax, %rdi
	je	.LBB24_39
.LBB24_37:                              # %for.body.i.i.preheader
	incq	%rcx
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB24_38:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rbp,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rdx,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%rsi,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB24_38
.LBB24_39:                              # %patch_interpolate_color.exit.thread.i
	leaq	152(%r13), %r8
	movq	152(%r13), %rdx
.LBB24_42:                              # %if.else.i.58.i
	testl	%r10d, %r10d
	jle	.LBB24_55
# BB#43:                                # %for.body.lr.ph.i.59.i
	movslq	%r10d, %r9
	cmpq	$2, %r9
	movl	$1, %eax
	cmovlq	%r9, %rax
	notq	%rax
	leaq	(%rax,%r9), %rcx
	cmpq	$-2, %rcx
	je	.LBB24_53
# BB#44:                                # %overflow.checked131
	addq	$2, %rcx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	andq	$-4, %rdi
	je	.LBB24_52
# BB#45:                                # %vector.memcheck162
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	leaq	12(%r14,%r9,4), %r12
	cmpq	$2, %r9
	movl	$1, %ecx
	cmovlq	%r9, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%r14, %rdi
	subq	%rcx, %rdi
	addq	$8, %rdi
	leaq	12(%r11,%r9,4), %r8
	movq	%r11, %rbx
	subq	%rcx, %rbx
	addq	$8, %rbx
	leaq	12(%rdx,%r9,4), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rdx, %rax
	subq	%rcx, %rax
	addq	$8, %rax
	cmpq	%rbx, %r12
	setbe	%bl
	cmpq	%rdi, %r8
	setbe	%r8b
	cmpq	%rax, %r12
	setbe	%cl
	cmpq	%rdi, (%rsp)            # 8-byte Folded Reload
	setbe	%dil
	xorl	%eax, %eax
	testb	%r8b, %bl
	jne	.LBB24_46
# BB#47:                                # %vector.memcheck162
	andb	%dil, %cl
	movl	32(%rsp), %r12d         # 4-byte Reload
	jne	.LBB24_51
# BB#48:                                # %vector.body127.preheader
	subq	8(%rsp), %r9            # 8-byte Folded Reload
	movslq	%r10d, %r10
	leaq	8(%r11,%r10,4), %rbx
	leaq	8(%rdx,%r10,4), %rcx
	leaq	8(%r14,%r10,4), %rdi
	movq	%r10, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rax
	cmovgq	%r8, %rax
	leaq	2(%rax,%r10), %rax
	andq	$-4, %rax
	movapd	.LCPI24_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB24_49:                              # %vector.body127
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rcx), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rcx), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdi)
	addq	$-16, %rbx
	addq	$-16, %rcx
	addq	$-16, %rdi
	addq	$-4, %rax
	jne	.LBB24_49
# BB#50:
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB24_51
.LBB24_46:
	movl	32(%rsp), %r12d         # 4-byte Reload
.LBB24_51:                              # %middle.block128
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB24_52:                              # %middle.block128
	cmpq	%rax, %rcx
	je	.LBB24_55
.LBB24_53:                              # %for.body.i.72.i.preheader
	incq	%r9
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB24_54:                              # %for.body.i.72.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r11,%r9,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rdx,%r9,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r14,%r9,4)
	decq	%r9
	cmpq	$1, %r9
	jg	.LBB24_54
.LBB24_55:
	movl	36(%rsp), %ebx          # 4-byte Reload
.LBB24_56:                              # %split_patch.exit
	movq	144(%r13), %rcx
	movq	%rcx, 248(%rsp)
	movq	(%r8), %rax
	movq	%rax, 256(%rsp)
	xorl	%eax, %eax
	cmpl	$1, %ebx
	jg	.LBB24_58
# BB#57:                                # %if.then.134
	movq	264(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	%rbp, 96(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	%rcx, 80(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%rsi, 64(%rsp)
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	%r15, %rdi
	callq	fill_triangle_wedge
.LBB24_58:                              # %if.end.158
	cmpl	$1, %r12d
	jg	.LBB24_61
# BB#59:                                # %if.end.158
	testl	%eax, %eax
	js	.LBB24_61
# BB#60:                                # %if.then.164
	movq	288(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	384(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	%r15, %rdi
	callq	fill_triangle_wedge
.LBB24_61:                              # %if.end.190
	testl	%eax, %eax
	js	.LBB24_64
# BB#62:                                # %if.end.197
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r14d
	shrl	$31, %r14d
	addl	%eax, %r14d
	sarl	%r14d
	movl	%ebx, %eax
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movl	%r12d, %ebp
	shrl	$31, %ebp
	addl	%r12d, %ebp
	sarl	%ebp
	leaq	264(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	fill_patch
	testl	%eax, %eax
	js	.LBB24_64
# BB#63:                                # %if.then.200
	leaq	104(%rsp), %rsi
	movq	%r15, %rdi
	movl	%r14d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	fill_patch
.LBB24_64:                              # %if.end.205
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 688(%r15)
	movl	48(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 672(%r15)
.LBB24_65:                              # %return
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	fill_patch, .Lfunc_end24-fill_patch
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_0:
	.long	1060320051              # float 0.699999988
.LCPI25_1:
	.long	1050253722              # float 0.300000012
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	function_linearity,@function
function_linearity:                     # @function_linearity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp209:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp210:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp211:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp213:
	.cfi_def_cfa_offset 352
.Ltmp214:
	.cfi_offset %rbx, -56
.Ltmp215:
	.cfi_offset %r12, -48
.Ltmp216:
	.cfi_offset %r13, -40
.Ltmp217:
	.cfi_offset %r14, -32
.Ltmp218:
	.cfi_offset %r15, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	328(%rbx), %rdi
	xorps	%xmm0, %xmm0
	testq	%rdi, %rdi
	je	.LBB25_13
# BB#1:                                 # %for.cond.24.preheader
	leaq	32(%rsp), %r12
	leaq	40(%rsp), %r13
	movss	.LCPI25_0(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	.LCPI25_1(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	movss	(%r14), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 24(%rsp)
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	movss	4(%r14), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, 28(%rsp)
	movq	16(%rbx), %rbp
	leaq	24(%rsp), %rsi
	movq	%r13, %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movss	.LCPI25_1(%rip), %xmm7  # xmm7 = mem[0],zero,zero,zero
	movss	.LCPI25_0(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	movslq	24(%rbx), %rax
	testq	%rax, %rax
	xorps	%xmm0, %xmm0
	jle	.LBB25_5
# BB#2:                                 # %for.body.26.lr.ph
	movsd	648(%rbx), %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm8, %xmm8
	xorl	%ecx, %ecx
	movaps	.LCPI25_2(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm3, %xmm3
	.align	16, 0x90
.LBB25_3:                               # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movss	16(%r15,%rcx,4), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm4
	movss	16(%r14,%rcx,4), %xmm5  # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm5
	addss	%xmm4, %xmm5
	subss	40(%rsp,%rcx,4), %xmm5
	movaps	%xmm5, %xmm0
	cmpltss	%xmm8, %xmm0
	movaps	%xmm0, %xmm4
	andnps	%xmm5, %xmm4
	xorps	%xmm2, %xmm5
	andps	%xmm5, %xmm0
	orps	%xmm4, %xmm0
	divss	384(%rbx,%rcx,4), %xmm0
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm0, %xmm4
	ucomisd	%xmm1, %xmm4
	ja	.LBB25_13
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	maxss	%xmm3, %xmm0
	incq	%rcx
	cmpq	%rax, %rcx
	movaps	%xmm0, %xmm3
	jl	.LBB25_3
.LBB25_5:                               # %for.inc.63
	movss	(%r15), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm2
	movss	(%r14), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 24(%rsp)
	movss	4(%r15), %xmm2          # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm2
	movss	4(%r14), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, 28(%rsp)
	movq	328(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB25_7
# BB#6:                                 # %if.then.i.1
	movq	16(%rbx), %rbp
	leaq	24(%rsp), %rsi
	movq	%r13, %rdx
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movl	24(%rbx), %eax
.LBB25_7:                               # %for.cond.24.preheader.1
	testl	%eax, %eax
	jle	.LBB25_8
# BB#9:                                 # %for.body.26.lr.ph.1
	movsd	648(%rbx), %xmm1        # xmm1 = mem[0],zero
	cltq
	xorl	%ecx, %ecx
	movaps	.LCPI25_2(%rip), %xmm8  # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm2
	movss	.LCPI25_0(%rip), %xmm6  # xmm6 = mem[0],zero,zero,zero
	movss	.LCPI25_1(%rip), %xmm7  # xmm7 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB25_10:                              # %for.body.26.1
                                        # =>This Inner Loop Header: Depth=1
	movss	16(%r15,%rcx,4), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm3
	movss	16(%r14,%rcx,4), %xmm4  # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm4
	addss	%xmm3, %xmm4
	subss	40(%rsp,%rcx,4), %xmm4
	movaps	%xmm4, %xmm3
	cmpltss	%xmm2, %xmm3
	movaps	%xmm3, %xmm5
	andnps	%xmm4, %xmm5
	xorps	%xmm8, %xmm4
	andps	%xmm4, %xmm3
	orps	%xmm5, %xmm3
	divss	384(%rbx,%rcx,4), %xmm3
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	ucomisd	%xmm1, %xmm4
	ja	.LBB25_12
# BB#11:                                # %for.inc.1
                                        #   in Loop: Header=BB25_10 Depth=1
	maxss	%xmm0, %xmm3
	incq	%rcx
	cmpq	%rax, %rcx
	movaps	%xmm3, %xmm0
	jl	.LBB25_10
	jmp	.LBB25_12
.LBB25_8:
	movaps	%xmm0, %xmm3
.LBB25_12:                              # %for.inc.63.1
	movaps	%xmm3, %xmm0
.LBB25_13:                              # %cleanup.72
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	function_linearity, .Lfunc_end25-function_linearity
	.cfi_endproc

	.align	16, 0x90
	.type	gx_shade_trapezoid,@function
gx_shade_trapezoid:                     # @gx_shade_trapezoid
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
	pushq	%r13
.Ltmp223:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp224:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp225:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp226:
	.cfi_def_cfa_offset 192
.Ltmp227:
	.cfi_offset %rbx, -56
.Ltmp228:
	.cfi_offset %r12, -48
.Ltmp229:
	.cfi_offset %r13, -40
.Ltmp230:
	.cfi_offset %r14, -32
.Ltmp231:
	.cfi_offset %r15, -24
.Ltmp232:
	.cfi_offset %rbp, -16
	movl	%ecx, %eax
	movq	%rdi, %rbx
	movl	200(%rsp), %edi
	movl	192(%rsp), %ebp
	movl	316(%rbx), %ecx
	cmpl	%ebp, %ecx
	cmovll	%ebp, %ecx
	movl	324(%rbx), %ebp
	cmpl	%edi, %ebp
	cmovgl	%edi, %ebp
	xorl	%r12d, %r12d
	cmpl	%ebp, %ecx
	jge	.LBB26_94
# BB#1:                                 # %if.end
	movl	216(%rsp), %edi
	movl	312(%rbx), %r11d
	movl	320(%rbx), %r10d
	testl	%edi, %edi
	je	.LBB26_2
# BB#3:                                 # %if.else.i
	movslq	%r8d, %rdi
	movq	(%rsi,%rdi,8), %r15
	movq	%r15, 120(%rsp)
	movslq	%r9d, %rdi
	movq	(%rsi,%rdi,8), %r13
	movq	%r13, 128(%rsp)
	movslq	%edx, %rdx
	movq	(%rsi,%rdx,8), %r8
	movq	%r8, 104(%rsp)
	cltq
	jmp	.LBB26_4
.LBB26_2:                               # %if.then.i
	movslq	%edx, %rdx
	movq	(%rsi,%rdx,8), %r15
	movq	%r15, 120(%rsp)
	cltq
	movq	(%rsi,%rax,8), %r13
	movq	%r13, 128(%rsp)
	movslq	%r8d, %rax
	movq	(%rsi,%rax,8), %r8
	movq	%r8, 104(%rsp)
	movslq	%r9d, %rax
.LBB26_4:                               # %make_trapezoid.exit
	movq	(%rsi,%rax,8), %r9
	movq	%r9, 112(%rsp)
	movq	208(%rsp), %rsi
	cmpl	$0, 672(%rbx)
	jne	.LBB26_19
# BB#5:                                 # %if.then.69
	cmpl	%r10d, %r15d
	jle	.LBB26_7
# BB#6:                                 # %if.then.72
	movl	$1, %edx
	cmpl	%r10d, %r13d
	jle	.LBB26_8
	jmp	.LBB26_94
.LBB26_7:                               # %if.else
	cmpl	%r10d, %r13d
	setg	%al
	movzbl	%al, %edx
.LBB26_8:                               # %if.end.82
	movq	%r13, %r14
	shrq	$32, %r14
	movq	%r15, %rdi
	shrq	$32, %rdi
	cmpl	%r11d, %r15d
	jge	.LBB26_11
# BB#9:                                 # %if.then.86
	movl	$1, %eax
	cmpl	%r11d, %r13d
	jge	.LBB26_13
# BB#10:                                # %if.then.90
	movl	%r11d, 120(%rsp)
	movl	%r11d, 128(%rsp)
	movl	%ecx, 124(%rsp)
	movl	%ebp, 132(%rsp)
	movl	%ecx, %edi
	movl	%ebp, %r14d
	movl	%r11d, %r15d
	movl	%r11d, %r13d
	jmp	.LBB26_12
.LBB26_11:                              # %if.else.101
	cmpl	%r11d, %r13d
	movl	$1, %eax
	cmovll	%eax, %edx
.LBB26_12:                              # %if.end.107
	movl	%edx, %eax
.LBB26_13:                              # %if.end.107
	cmpl	%r11d, %r8d
	jge	.LBB26_15
# BB#14:                                # %if.then.111
	movl	$1, %eax
	cmpl	%r11d, %r9d
	jge	.LBB26_16
	jmp	.LBB26_94
.LBB26_15:                              # %if.else.117
	cmpl	%r11d, %r9d
	movl	$1, %edx
	cmovll	%edx, %eax
.LBB26_16:                              # %if.end.123
	movq	%r9, %rdx
	shrq	$32, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%r8, %rdx
	shrq	$32, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	cmpl	%r10d, %r8d
	jle	.LBB26_20
# BB#17:                                # %if.then.127
	cmpl	%r10d, %r9d
	jle	.LBB26_22
# BB#18:                                # %if.then.131
	movl	%r10d, 104(%rsp)
	movl	%r10d, 112(%rsp)
	movl	%ecx, 108(%rsp)
	movl	%ebp, 116(%rsp)
	testl	%eax, %eax
	movl	%ecx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	jne	.LBB26_22
	jmp	.LBB26_19
.LBB26_20:                              # %if.else.142
	cmpl	%r10d, %r9d
	setle	%dl
	testl	%eax, %eax
	jne	.LBB26_22
# BB#21:                                # %if.else.142
	testb	%dl, %dl
	je	.LBB26_22
.LBB26_19:                              # %if.end.1055
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%rsi, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%ebp, %r8d
.LBB26_93:                              # %cleanup
	callq	*1360(%rdi)
	movl	%eax, %r12d
.LBB26_94:                              # %cleanup.1066
	movl	%r12d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_22:                              # %if.then.150
	movq	%rdi, %r12
	cmpl	%r10d, %r8d
	movl	%r10d, %eax
	cmovlel	%r8d, %eax
	cmpl	%r10d, %r9d
	cmovlel	%r9d, %r10d
	movl	%r9d, %edi
	subl	%r8d, %edi
	cmovll	%eax, %r10d
	cmpl	%r11d, %r13d
	movl	%r11d, %eax
	cmovgel	%r13d, %eax
	cmpl	%r11d, %r15d
	cmovgel	%r15d, %r11d
	movl	%r15d, %edx
	subl	%r13d, %edx
	cmovgl	%eax, %r11d
	movl	%r15d, %eax
	subl	%r10d, %eax
	jle	.LBB26_24
# BB#23:                                # %if.then.198
	movl	%r14d, %esi
	subl	%r12d, %esi
	movslq	%esi, %rsi
	cltq
	imulq	%rsi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	addl	%r12d, %eax
	movl	%eax, 124(%rsp)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%r10d, 120(%rsp)
	movl	%eax, %r12d
	movl	%r10d, %r15d
.LBB26_24:                              # %if.end.226
	movl	%r11d, %eax
	subl	%r8d, %eax
	jle	.LBB26_26
# BB#25:                                # %if.then.231
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %edx
	movslq	%edx, %rdx
	cltq
	imulq	%rdx, %rax
	movslq	%edi, %rdi
	cqto
	idivq	%rdi
	addl	%esi, %eax
	movl	%eax, 108(%rsp)
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%r11d, 104(%rsp)
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%r11d, %r8d
.LBB26_26:                              # %if.end.264
	movl	%r13d, %eax
	subl	%r10d, %eax
	movq	%r12, %rdi
	jle	.LBB26_28
# BB#27:                                # %if.then.269
	movl	%r14d, %edx
	subl	%edi, %edx
	movslq	%edx, %rdx
	cltq
	imulq	%rdx, %rax
	subl	%r15d, %r13d
	movslq	%r13d, %rsi
	cqto
	idivq	%rsi
	subl	%eax, %r14d
	movl	%r14d, 132(%rsp)
	cmpl	%ebp, %r14d
	cmovlel	%r14d, %ebp
	movl	%r10d, 128(%rsp)
	movl	%r10d, %r13d
.LBB26_28:                              # %if.end.302
	movl	%r11d, %eax
	subl	%r9d, %eax
	jle	.LBB26_30
# BB#29:                                # %if.then.307
	movq	%rdi, %r12
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%edi, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %edx
	movslq	%edx, %rdx
	cltq
	imulq	%rdx, %rax
	movl	%r8d, %edx
	subl	%r9d, %edx
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	subl	%eax, %edi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	%edi, 116(%rsp)
	cmpl	%ebp, %edi
	cmovlel	%edi, %ebp
	movq	%r12, %rdi
	movl	%r11d, 112(%rsp)
	movl	%r11d, %r9d
.LBB26_30:                              # %if.end.340
	xorl	%r12d, %r12d
	cmpl	%ebp, %ecx
	jg	.LBB26_94
# BB#31:                                # %if.end.344
	movl	%ecx, %eax
	subl	%edi, %eax
	jle	.LBB26_33
# BB#32:                                # %if.then.349
	movl	%r14d, %edx
	subl	%edi, %edx
	notl	%edi
	leal	(%rdi,%r14), %esi
	movl	%esi, 40(%rsp)          # 4-byte Spill
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	%r13d, %r14d
	subl	%r15d, %r14d
	cltq
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movslq	%r14d, %rax
	movq	%rsi, %r14
	movslq	40(%rsp), %rsi          # 4-byte Folded Reload
	cmovlq	%rsi, %rdi
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	subq	%rdi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	addl	%r15d, %eax
	movl	%eax, 120(%rsp)
	movl	%ecx, 124(%rsp)
	movl	%ecx, %edi
	movl	%eax, %r15d
.LBB26_33:                              # %if.end.392
	movl	%r14d, %eax
	subl	%ebp, %eax
	jle	.LBB26_35
# BB#34:                                # %if.then.397
	leal	-1(%r14), %edx
	subl	%edi, %edx
	xorl	%esi, %esi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%r15d, %edi
	subl	%r13d, %edi
	cltq
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	%edi, %rax
	movq	48(%rsp), %rdi          # 8-byte Reload
	movslq	%edx, %rdx
	cmovlq	%rdx, %rsi
	imulq	40(%rsp), %rax          # 8-byte Folded Reload
	subq	%rsi, %rax
	subl	%edi, %r14d
	movslq	%r14d, %rsi
	cqto
	idivq	%rsi
	addl	%r13d, %eax
	movl	%eax, 128(%rsp)
	movl	%ebp, 132(%rsp)
	movl	%ebp, %r14d
	movl	%eax, %r13d
.LBB26_35:                              # %if.end.441
	cmpl	%r11d, %r15d
	jge	.LBB26_38
# BB#36:                                # %if.end.441
	cmpl	%r11d, %r13d
	jge	.LBB26_38
# BB#37:                                # %if.then.450
	movl	%r11d, 120(%rsp)
	movl	%r11d, 128(%rsp)
	movl	%ecx, 124(%rsp)
	movl	%ebp, 132(%rsp)
	movl	%ecx, %edi
	movl	%ebp, %r14d
	movl	%r11d, %r15d
	movl	%r11d, %r13d
.LBB26_38:                              # %if.end.459
	movl	%ecx, %eax
	movq	64(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %eax
	jle	.LBB26_39
# BB#40:                                # %if.then.464
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r14          # 8-byte Reload
	movl	%r14d, %edx
	subl	%esi, %edx
	notl	%esi
	leal	(%rsi,%r14), %esi
	movl	%esi, 32(%rsp)          # 4-byte Spill
	xorl	%edi, %edi
	movl	%r9d, %esi
	subl	%r8d, %esi
	cltq
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	%esi, %rax
	movslq	32(%rsp), %rsi          # 4-byte Folded Reload
	cmovgq	%rsi, %rdi
	imulq	64(%rsp), %rax          # 8-byte Folded Reload
	addq	%rdi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	addl	%r8d, %eax
	movl	%eax, 104(%rsp)
	movl	%ecx, 108(%rsp)
	movl	%ecx, %edx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	%eax, %r8d
	jmp	.LBB26_41
.LBB26_39:
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	56(%rsp), %r14          # 8-byte Reload
.LBB26_41:                              # %if.end.508
	movl	%r14d, %eax
	subl	%ebp, %eax
	jle	.LBB26_43
# BB#42:                                # %if.then.513
	leal	-1(%r14), %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	subl	%esi, %edx
	xorl	%esi, %esi
	movl	%r8d, %edi
	subl	%r9d, %edi
	cltq
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%edi, %rax
	movslq	%edx, %rdx
	cmovgq	%rdx, %rsi
	imulq	32(%rsp), %rax          # 8-byte Folded Reload
	addq	%rsi, %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %r14d
	movslq	%r14d, %rsi
	cqto
	idivq	%rsi
	addl	%r9d, %eax
	movl	%eax, 112(%rsp)
	movl	%ebp, 116(%rsp)
	movl	%ebp, %edx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movl	%eax, %r9d
.LBB26_43:                              # %if.end.557
	movq	48(%rsp), %r14          # 8-byte Reload
	cmpl	%r10d, %r8d
	jle	.LBB26_46
# BB#44:                                # %if.end.557
	cmpl	%r10d, %r9d
	jle	.LBB26_46
# BB#45:                                # %if.then.567
	movl	%r10d, 104(%rsp)
	movl	%r10d, 112(%rsp)
	movl	%ecx, 108(%rsp)
	movl	%ebp, 116(%rsp)
	movl	%ecx, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
.LBB26_46:                              # %if.end.576
	movl	%r15d, %eax
	subl	%r8d, %eax
	jle	.LBB26_52
# BB#47:                                # %if.then.583
	movl	%r15d, %edx
	subl	%r13d, %edx
	jne	.LBB26_49
# BB#48:                                # %if.then.590
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %eax
	movslq	%eax, %rdx
	movl	%r13d, %eax
	subl	%r8d, %eax
	cltq
	imulq	%rdx, %rax
	movl	%r9d, %edx
	subl	%r8d, %edx
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movl	%r13d, 104(%rsp)
	movl	%r13d, %r8d
	jmp	.LBB26_50
.LBB26_49:                              # %if.else.617
	movq	40(%rsp), %rsi          # 8-byte Reload
	subl	%r14d, %esi
	movslq	%esi, %rsi
	cltq
	imulq	%rsi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movl	%r8d, 120(%rsp)
	movl	%r8d, %r15d
.LBB26_50:                              # %if.end.644
	addl	%ecx, %eax
	cmpl	%ebp, %eax
	jg	.LBB26_94
# BB#51:                                # %if.end.648
	movl	%eax, 124(%rsp)
	movl	%eax, 108(%rsp)
	movl	%eax, %r14d
	movl	%eax, %ecx
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB26_52:                              # %if.end.653
	movl	%r13d, %eax
	subl	%r9d, %eax
	jle	.LBB26_58
# BB#53:                                # %if.then.660
	movl	%r13d, %edx
	subl	%r15d, %edx
	jne	.LBB26_55
# BB#54:                                # %if.then.667
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %edi
	movslq	%edi, %rdx
	cltq
	imulq	%rdx, %rax
	movl	%r8d, %edx
	subl	%r9d, %edx
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movl	%r13d, 112(%rsp)
	jmp	.LBB26_56
.LBB26_55:                              # %if.else.694
	movq	40(%rsp), %rsi          # 8-byte Reload
	subl	%r14d, %esi
	movslq	%esi, %rsi
	cltq
	imulq	%rsi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movl	%r9d, 128(%rsp)
	movl	%r9d, %r13d
.LBB26_56:                              # %if.end.721
	subl	%eax, %ebp
	cmpl	%ebp, %ecx
	jg	.LBB26_94
# BB#57:                                # %if.end.725
	movl	%ebp, 132(%rsp)
	movl	%ebp, 116(%rsp)
	movl	%ebp, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	%r13d, %r9d
	movl	%ebp, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB26_58:                              # %if.end.730
	movl	%r11d, 88(%rsp)
	movl	%ecx, 92(%rsp)
	movl	%r11d, 96(%rsp)
	movl	%ebp, 100(%rsp)
	movl	%r10d, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%r10d, 80(%rsp)
	movl	%ebp, 84(%rsp)
	movl	%r15d, %edx
	subl	%r13d, %edx
	movl	%ecx, %r12d
	jle	.LBB26_60
# BB#59:                                # %if.then.753
	movl	%r15d, %eax
	subl	%r11d, %eax
	movslq	%eax, %rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%r14d, %eax
	cltq
	imulq	%rsi, %rax
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movq	%rax, %r12
	addl	%ecx, %r12d
	cmpl	%ebp, %r12d
	cmovgl	%ebp, %r12d
.LBB26_60:                              # %if.end.778
	movl	%r9d, %edx
	subl	%r8d, %edx
	movl	%ecx, %esi
	jle	.LBB26_62
# BB#61:                                # %if.then.785
	movl	%r10d, %eax
	subl	%r8d, %eax
	movslq	%eax, %rsi
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	subl	%edi, %eax
	cltq
	imulq	%rsi, %rax
	movslq	%edx, %rdi
	cqto
	idivq	%rdi
	movq	%rax, %rsi
	addl	%ecx, %esi
	cmpl	%ebp, %esi
	cmovgl	%ebp, %esi
.LBB26_62:                              # %if.end.810
	movl	%r13d, %edx
	subl	%r15d, %edx
	movl	%ebp, %r15d
	jle	.LBB26_64
# BB#63:                                # %if.then.817
	subl	%r11d, %r13d
	movslq	%r13d, %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%r14d, %eax
	cltq
	imulq	%rdi, %rax
	movslq	%edx, %rdi
	cqto
	idivq	%rdi
	movl	%ebp, %r15d
	subl	%eax, %r15d
	cmpl	%ecx, %r15d
	cmovll	%ecx, %r15d
.LBB26_64:                              # %if.end.842
	subl	%r9d, %r8d
	movl	%ebp, %r13d
	jle	.LBB26_66
# BB#65:                                # %if.then.849
	subl	%r9d, %r10d
	movslq	%r10d, %rdx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	%eax, %edi
	movslq	%edi, %rax
	imulq	%rdx, %rax
	movslq	%r8d, %rdi
	cqto
	idivq	%rdi
	movl	%ebp, %r13d
	subl	%eax, %r13d
	cmpl	%ecx, %r13d
	cmovll	%ecx, %r13d
.LBB26_66:                              # %if.end.874
	cmpl	%esi, %r15d
	movq	208(%rsp), %r14
	jge	.LBB26_71
# BB#67:                                # %if.then.877
	movq	%rsi, %r13
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	88(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r15d, %r8d
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB26_94
# BB#68:                                # %if.end.882
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB26_94
# BB#69:                                # %if.end.893
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r13d, %ecx
	movl	%ebp, %r8d
	jmp	.LBB26_93
.LBB26_71:                              # %if.else.901
	cmpl	%r12d, %r13d
	jge	.LBB26_75
# BB#72:                                # %if.then.904
	movq	%r12, %r15
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r13d, %r8d
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB26_94
# BB#73:                                # %if.end.915
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r13d, %ecx
	movl	%r15d, %r8d
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB26_94
# BB#74:                                # %if.end.926
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	jmp	.LBB26_93
.LBB26_75:                              # %if.end.935
	cmpl	%esi, %r12d
	movl	%r12d, %r8d
	movq	%r12, 64(%rsp)          # 8-byte Spill
	cmovgl	%esi, %r8d
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	cmpl	%ecx, %r8d
	jle	.LBB26_77
# BB#76:                                # %if.then.942
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r8d, %r12d
	callq	*1360(%rdi)
	movl	%r12d, %ecx
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB26_94
.LBB26_77:                              # %if.end.954
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	cmpl	%r13d, %r15d
	movl	%r15d, %ecx
	cmovll	%r13d, %ecx
	cmpl	%ebp, %ecx
	jge	.LBB26_78
# BB#79:                                # %if.then.961
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%ebp, %r8d
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	56(%rsp), %ecx          # 4-byte Reload
	jns	.LBB26_80
	jmp	.LBB26_94
.LBB26_78:
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	movl	56(%rsp), %ecx          # 4-byte Reload
.LBB26_80:                              # %if.end.973
	movq	64(%rsp), %r8           # 8-byte Reload
	cmpl	%ecx, %r8d
	jle	.LBB26_82
# BB#81:                                # %if.then.976
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r8, %rbp
	jmp	.LBB26_85
.LBB26_82:                              # %if.else.988
	movq	48(%rsp), %rbp          # 8-byte Reload
	cmpl	%ecx, %ebp
	jle	.LBB26_83
# BB#84:                                # %if.then.991
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	88(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%ebp, %r8d
.LBB26_85:                              # %if.then.991
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB26_86
	jmp	.LBB26_94
.LBB26_83:
	movl	%ecx, %ebp
.LBB26_86:                              # %if.end.1004
	movl	40(%rsp), %r8d          # 4-byte Reload
	cmpl	%r8d, %r15d
	jge	.LBB26_88
# BB#87:                                # %if.then.1007
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	120(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r15d, %ecx
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB26_91
	jmp	.LBB26_94
.LBB26_88:                              # %if.else.1019
	cmpl	%r8d, %r13d
	jge	.LBB26_89
# BB#90:                                # %if.then.1022
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	88(%rsp), %rsi
	leaq	104(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%r13d, %ecx
	callq	*1360(%rdi)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	%r13d, %r15d
	jns	.LBB26_91
	jmp	.LBB26_94
.LBB26_89:
	movl	%r8d, %r15d
.LBB26_91:                              # %if.end.1035
	cmpl	%r15d, %ebp
	movl	$0, %r12d
	jg	.LBB26_94
# BB#92:                                # %if.end.1039
	movq	(%rbx), %rdi
	movq	8(%rbx), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r14, (%rsp)
	leaq	88(%rsp), %rsi
	leaq	72(%rsp), %rdx
	xorl	%r9d, %r9d
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	jmp	.LBB26_93
.Lfunc_end26:
	.size	gx_shade_trapezoid, .Lfunc_end26-gx_shade_trapezoid
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	fill_triangle,@function
fill_triangle:                          # @fill_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp233:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp234:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp235:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp236:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp237:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp238:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp239:
	.cfi_def_cfa_offset 80
.Ltmp240:
	.cfi_offset %rbx, -56
.Ltmp241:
	.cfi_offset %r12, -48
.Ltmp242:
	.cfi_offset %r13, -40
.Ltmp243:
	.cfi_offset %r14, -32
.Ltmp244:
	.cfi_offset %r15, -24
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	80(%rsp), %r10
	movl	(%rdx), %r11d
	movl	4(%rdx), %r14d
	movl	(%rsi), %r12d
	movl	4(%rsi), %r15d
	movl	%r11d, %eax
	subl	%r12d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovll	%eax, %ebx
	movl	%r14d, %ebp
	subl	%r15d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	cmpl	%eax, %ebx
	cmovgel	%ebx, %eax
	movl	(%rcx), %ebp
	movl	4(%rcx), %r13d
	subl	%ebp, %r12d
	subl	%r11d, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovll	%ebp, %ebx
	subl	%r13d, %r15d
	subl	%r14d, %r13d
	movl	%r13d, %r11d
	negl	%r11d
	cmovll	%r13d, %r11d
	cmpl	%r11d, %ebx
	cmovgel	%ebx, %r11d
	movl	%r12d, %ebx
	negl	%ebx
	cmovll	%r12d, %ebx
	movl	%r15d, %ebp
	negl	%ebp
	cmovll	%r15d, %ebp
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	cmpl	%r11d, %eax
	cmovgel	%eax, %r11d
	cmpl	%ebp, %r11d
	cmovll	%ebp, %r11d
	xorpd	%xmm0, %xmm0
	cmpq	$0, 328(%rdi)
	jne	.LBB27_11
# BB#1:                                 # %if.then
	movq	8(%rdx), %r13
	movq	8(%rsi), %r15
	movl	24(%rdi), %r14d
	movss	16(%r15), %xmm8         # xmm8 = mem[0],zero,zero,zero
	movss	16(%r13), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm8, %xmm0
	subss	%xmm2, %xmm0
	movaps	.LCPI27_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	xorps	%xmm4, %xmm4
	movaps	%xmm0, %xmm5
	cmpltss	%xmm4, %xmm5
	movaps	%xmm5, %xmm6
	andnps	%xmm0, %xmm6
	andps	%xmm1, %xmm5
	orps	%xmm6, %xmm5
	movss	384(%rdi), %xmm9        # xmm9 = mem[0],zero,zero,zero
	divss	%xmm9, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	cmpl	$2, %r14d
	jl	.LBB27_4
# BB#2:                                 # %for.body.i.preheader
	leal	-1(%r14), %r12d
	leaq	388(%rdi), %rbx
	leaq	20(%r13), %rbp
	leaq	20(%r15), %rax
	movaps	.LCPI27_0(%rip), %xmm5  # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	.align	16, 0x90
.LBB27_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rax), %xmm6           # xmm6 = mem[0],zero,zero,zero
	subss	(%rbp), %xmm6
	movaps	%xmm6, %xmm7
	cmpltss	%xmm4, %xmm7
	movaps	%xmm7, %xmm3
	andnps	%xmm6, %xmm3
	xorps	%xmm5, %xmm6
	andps	%xmm6, %xmm7
	orps	%xmm3, %xmm7
	divss	(%rbx), %xmm7
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm7, %xmm3
	maxsd	%xmm3, %xmm0
	addq	$4, %rbx
	addq	$4, %rbp
	addq	$4, %rax
	decl	%r12d
	jne	.LBB27_3
.LBB27_4:                               # %color_span.exit
	movq	8(%rcx), %r12
	movss	16(%r12), %xmm5         # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm2
	movaps	.LCPI27_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm3
	movaps	%xmm2, %xmm6
	cmpltss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	andnps	%xmm2, %xmm4
	andps	%xmm3, %xmm6
	orps	%xmm4, %xmm6
	divss	%xmm9, %xmm6
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm6, %xmm2
	cmpl	$2, %r14d
	jl	.LBB27_12
# BB#5:                                 # %for.body.i.101.preheader
	leal	-1(%r14), %ebp
	leaq	388(%rdi), %rax
	leaq	20(%r12), %rbx
	addq	$20, %r13
	movaps	.LCPI27_0(%rip), %xmm4  # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm6, %xmm6
	.align	16, 0x90
.LBB27_6:                               # %for.body.i.101
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r13), %xmm3           # xmm3 = mem[0],zero,zero,zero
	subss	(%rbx), %xmm3
	movaps	%xmm3, %xmm7
	cmpltss	%xmm6, %xmm7
	movaps	%xmm7, %xmm1
	andnps	%xmm3, %xmm1
	xorps	%xmm4, %xmm3
	andps	%xmm3, %xmm7
	orps	%xmm1, %xmm7
	divss	(%rax), %xmm7
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm7, %xmm1
	maxsd	%xmm1, %xmm2
	addq	$4, %rax
	addq	$4, %rbx
	addq	$4, %r13
	decl	%ebp
	jne	.LBB27_6
# BB#7:                                 # %color_span.exit103
	subss	%xmm8, %xmm5
	movaps	.LCPI27_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm5, %xmm6
	cmpltss	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	andnps	%xmm5, %xmm7
	andps	%xmm1, %xmm6
	orps	%xmm7, %xmm6
	divss	%xmm9, %xmm6
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm6, %xmm1
	cmpl	$2, %r14d
	jl	.LBB27_10
# BB#8:                                 # %for.body.i.131.preheader
	decl	%r14d
	leaq	388(%rdi), %rax
	addq	$20, %r15
	addq	$20, %r12
	.align	16, 0x90
.LBB27_9:                               # %for.body.i.131
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r12), %xmm5           # xmm5 = mem[0],zero,zero,zero
	subss	(%r15), %xmm5
	movaps	%xmm5, %xmm6
	cmpltss	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	andnps	%xmm5, %xmm7
	xorps	%xmm4, %xmm5
	andps	%xmm5, %xmm6
	orps	%xmm7, %xmm6
	divss	(%rax), %xmm6
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm6, %xmm5
	maxsd	%xmm5, %xmm1
	addq	$4, %rax
	addq	$4, %r15
	addq	$4, %r12
	decl	%r14d
	jne	.LBB27_9
	jmp	.LBB27_10
.LBB27_12:                              # %color_span.exit103.thread
	subss	%xmm8, %xmm5
	movaps	.LCPI27_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm3
	xorps	%xmm4, %xmm4
	movaps	%xmm5, %xmm6
	cmpltss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	andnps	%xmm5, %xmm4
	andps	%xmm3, %xmm6
	orps	%xmm4, %xmm6
	divss	%xmm9, %xmm6
	cvtss2sd	%xmm6, %xmm1
.LBB27_10:                              # %color_span.exit133
	maxsd	%xmm2, %xmm0
	maxsd	%xmm1, %xmm0
.LBB27_11:                              # %if.end
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	triangle_by_4
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	fill_triangle, .Lfunc_end27-fill_triangle
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI28_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI28_2:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	triangle_by_4,@function
triangle_by_4:                          # @triangle_by_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp247:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp248:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp249:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp250:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp251:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp252:
	.cfi_def_cfa_offset 400
.Ltmp253:
	.cfi_offset %rbx, -56
.Ltmp254:
	.cfi_offset %r12, -48
.Ltmp255:
	.cfi_offset %r13, -40
.Ltmp256:
	.cfi_offset %r14, -32
.Ltmp257:
	.cfi_offset %r15, -24
.Ltmp258:
	.cfi_offset %rbp, -16
	movl	672(%rdi), %r10d
	testl	%r10d, %r10d
                                        # implicit-def: EAX
	movl	%eax, 136(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 116(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 120(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 128(%rsp)         # 4-byte Spill
                                        # implicit-def: R15D
                                        # implicit-def: R13D
                                        # implicit-def: R14D
                                        # implicit-def: R12D
	jne	.LBB28_3
# BB#1:                                 # %if.then
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	(%rsi), %r9d
	movl	4(%rsi), %r14d
	movl	(%rdx), %eax
	movl	4(%rdx), %ebp
	cmpl	%eax, %r9d
	movl	%r9d, %r15d
	cmovgl	%eax, %r15d
	cmovll	%eax, %r9d
	cmpl	%ebp, %r14d
	movl	%r14d, %r13d
	cmovgl	%ebp, %r13d
	cmovll	%ebp, %r14d
	movl	(%rcx), %eax
	movl	4(%rcx), %ebp
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	cmpl	%eax, %r9d
	cmovll	%eax, %r9d
	cmpl	%ebp, %r13d
	cmovgl	%ebp, %r13d
	cmpl	%ebp, %r14d
	cmovll	%ebp, %r14d
	movl	312(%rdi), %r12d
	movl	316(%rdi), %r11d
	cmpl	%r15d, %r12d
	cmovll	%r15d, %r12d
	movl	%r12d, 128(%rsp)        # 4-byte Spill
	movl	320(%rdi), %ebp
	cmpl	%r9d, %ebp
	cmovgl	%r9d, %ebp
	cmpl	%r13d, %r11d
	cmovll	%r13d, %r11d
	movl	324(%rdi), %ebx
	cmpl	%r14d, %ebx
	cmovgl	%r14d, %ebx
	xorl	%eax, %eax
	cmpl	%r12d, %ebp
	jle	.LBB28_150
# BB#2:                                 # %if.then
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	cmpl	%r11d, %ebx
	movl	%ebx, 136(%rsp)         # 4-byte Spill
	movl	%r11d, 120(%rsp)        # 4-byte Spill
	movl	%r14d, %r12d
	movl	%r9d, %r14d
	movq	104(%rsp), %r9          # 8-byte Reload
	jle	.LBB28_150
.LBB28_3:                               # %if.end.64
	movq	688(%rdi), %rbp
	movslq	680(%rdi), %r11
	leaq	(%r11,%r11,2), %rax
	leaq	(%rax,%rbp), %rbx
	movl	$-28, %eax
	cmpq	704(%rdi), %rbx
	ja	.LBB28_150
# BB#4:                                 # %reserve_colors_inline.exit
	movq	%rbx, 688(%rdi)
	testq	%rbp, %rbp
	je	.LBB28_150
# BB#5:                                 # %if.end.67
	movl	%r12d, 44(%rsp)         # 4-byte Spill
	movl	%r14d, %r12d
	movl	%r15d, 52(%rsp)         # 4-byte Spill
	movl	%r13d, 48(%rsp)         # 4-byte Spill
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%r10d, 76(%rsp)         # 4-byte Spill
	movl	408(%rsp), %r14d
	leaq	(%rbp,%r11), %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	leaq	(%rbx,%r11), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r11, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 336(%rsp)
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 320(%rsp)
	movq	%rax, 304(%rsp)
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	callq	try_device_linear_color
	cmpl	$1, %eax
	jne	.LBB28_6
# BB#25:                                # %sw.bb.110
	cmpl	%r14d, 640(%r15)
	movq	%r15, %r10
	movq	%rbx, %rbp
	movl	136(%rsp), %r11d        # 4-byte Reload
	jg	.LBB28_23
	jmp	.LBB28_26
.LBB28_6:                               # %if.end.67
	cmpl	$2, %eax
	movq	%r15, %r10
	movl	136(%rsp), %r11d        # 4-byte Reload
	jne	.LBB28_149
# BB#7:                                 # %sw.bb.74
	movl	640(%r10), %eax
	shll	$2, %eax
	cmpl	%r14d, %eax
	jle	.LBB28_10
# BB#8:                                 # %if.then.76
	movq	%r10, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	jmp	.LBB28_9
.LBB28_10:                              # %if.end.78
	cmpq	$0, 328(%r10)
	movq	%rbx, %rbp
	je	.LBB28_24
# BB#11:                                # %if.then.80
	movq	8(%rbp), %rdx
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r9
	movl	24(%r10), %r8d
	movss	16(%r9), %xmm8          # xmm8 = mem[0],zero,zero,zero
	movss	16(%rdx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm8, %xmm0
	subss	%xmm2, %xmm0
	movaps	.LCPI28_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm1
	xorps	%xmm4, %xmm4
	movaps	%xmm0, %xmm5
	cmpltss	%xmm4, %xmm5
	movaps	%xmm5, %xmm6
	andnps	%xmm0, %xmm6
	andps	%xmm1, %xmm5
	orps	%xmm6, %xmm5
	movss	384(%r10), %xmm9        # xmm9 = mem[0],zero,zero,zero
	divss	%xmm9, %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	cmpl	$2, %r8d
	jl	.LBB28_14
# BB#12:                                # %for.body.i.139.preheader
	leal	-1(%r8), %ecx
	leaq	388(%r10), %rax
	leaq	20(%rdx), %rsi
	leaq	20(%r9), %rdi
	movaps	.LCPI28_0(%rip), %xmm5  # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	.align	16, 0x90
.LBB28_13:                              # %for.body.i.139
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm6           # xmm6 = mem[0],zero,zero,zero
	subss	(%rsi), %xmm6
	movaps	%xmm6, %xmm7
	cmpltss	%xmm4, %xmm7
	movaps	%xmm7, %xmm3
	andnps	%xmm6, %xmm3
	xorps	%xmm5, %xmm6
	andps	%xmm6, %xmm7
	orps	%xmm3, %xmm7
	divss	(%rax), %xmm7
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm7, %xmm3
	maxsd	%xmm3, %xmm0
	addq	$4, %rax
	addq	$4, %rsi
	addq	$4, %rdi
	decl	%ecx
	jne	.LBB28_13
.LBB28_14:                              # %color_span.exit
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rsi
	movss	16(%rsi), %xmm5         # xmm5 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm2
	movaps	.LCPI28_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm3
	movaps	%xmm2, %xmm6
	cmpltss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	andnps	%xmm2, %xmm4
	andps	%xmm3, %xmm6
	orps	%xmm4, %xmm6
	divss	%xmm9, %xmm6
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm6, %xmm2
	cmpl	$2, %r8d
	jl	.LBB28_151
# BB#15:                                # %for.body.i.167.preheader
	leal	-1(%r8), %edi
	leaq	388(%r10), %rcx
	leaq	20(%rsi), %rax
	addq	$20, %rdx
	movaps	.LCPI28_0(%rip), %xmm4  # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm6, %xmm6
	.align	16, 0x90
.LBB28_16:                              # %for.body.i.167
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	subss	(%rax), %xmm3
	movaps	%xmm3, %xmm7
	cmpltss	%xmm6, %xmm7
	movaps	%xmm7, %xmm1
	andnps	%xmm3, %xmm1
	xorps	%xmm4, %xmm3
	andps	%xmm3, %xmm7
	orps	%xmm1, %xmm7
	divss	(%rcx), %xmm7
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm7, %xmm1
	maxsd	%xmm1, %xmm2
	addq	$4, %rcx
	addq	$4, %rax
	addq	$4, %rdx
	decl	%edi
	jne	.LBB28_16
# BB#17:                                # %color_span.exit169
	subss	%xmm8, %xmm5
	movaps	.LCPI28_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm5, %xmm6
	cmpltss	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	andnps	%xmm5, %xmm7
	andps	%xmm1, %xmm6
	orps	%xmm7, %xmm6
	divss	%xmm9, %xmm6
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm6, %xmm1
	cmpl	$2, %r8d
	jl	.LBB28_20
# BB#18:                                # %for.body.i.197.preheader
	decl	%r8d
	leaq	388(%r10), %rax
	addq	$20, %r9
	addq	$20, %rsi
.LBB28_19:                              # %for.body.i.197
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	subss	(%r9), %xmm5
	movaps	%xmm5, %xmm6
	cmpltss	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	andnps	%xmm5, %xmm7
	xorps	%xmm4, %xmm5
	andps	%xmm5, %xmm6
	orps	%xmm7, %xmm6
	divss	(%rax), %xmm6
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm6, %xmm5
	maxsd	%xmm5, %xmm1
	addq	$4, %rax
	addq	$4, %r9
	addq	$4, %rsi
	decl	%r8d
	jne	.LBB28_19
	jmp	.LBB28_20
.LBB28_24:                              # %if.else
	movsd	648(%r10), %xmm0        # xmm0 = mem[0],zero
	ucomisd	64(%rsp), %xmm0         # 8-byte Folded Reload
	jae	.LBB28_23
	jmp	.LBB28_26
.LBB28_151:                             # %color_span.exit169.thread
	subss	%xmm8, %xmm5
	movaps	.LCPI28_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm3
	xorps	%xmm4, %xmm4
	movaps	%xmm5, %xmm6
	cmpltss	%xmm4, %xmm6
	movaps	%xmm6, %xmm4
	andnps	%xmm5, %xmm4
	andps	%xmm3, %xmm6
	orps	%xmm4, %xmm6
	divss	%xmm9, %xmm6
	cvtss2sd	%xmm6, %xmm1
.LBB28_20:                              # %color_span.exit199
	movsd	648(%r10), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm1, %xmm3
	jb	.LBB28_26
# BB#21:                                # %color_span.exit199
	ucomisd	%xmm0, %xmm3
	jb	.LBB28_26
# BB#22:                                # %color_span.exit199
	ucomisd	%xmm2, %xmm3
	jb	.LBB28_26
.LBB28_23:                              # %cleanup
	movq	%r10, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
.LBB28_9:                               # %out
	movq	%r10, %rbx
	callq	constant_color_triangle
	movq	%rbx, %r10
	jmp	.LBB28_149
.LBB28_26:                              # %sw.epilog
	movl	76(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	sete	%al
	movl	128(%rsp), %ecx         # 4-byte Reload
	cmpl	52(%rsp), %ecx          # 4-byte Folded Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	jne	.LBB28_32
# BB#27:                                # %sw.epilog
	testb	%al, %al
	je	.LBB28_32
# BB#28:                                # %sw.epilog
	movl	120(%rsp), %eax         # 4-byte Reload
	cmpl	48(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB28_32
# BB#29:                                # %sw.epilog
	cmpl	%r12d, 116(%rsp)        # 4-byte Folded Reload
	jne	.LBB28_32
# BB#30:                                # %sw.epilog
	cmpl	44(%rsp), %r11d         # 4-byte Folded Reload
	jne	.LBB28_32
# BB#31:                                # %if.then.141
	movl	$1, 672(%r10)
.LBB28_32:                              # %if.end.144
	movl	(%rbp), %r11d
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx), %eax
	addl	%r11d, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 328(%rsp)
	movl	4(%rbp), %r13d
	movl	4(%rdx), %eax
	addl	%r13d, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 332(%rsp)
	movq	8(%rdx), %rdx
	movq	8(%rbp), %rax
	movq	328(%r10), %rdi
	testq	%rdi, %rdi
	je	.LBB28_34
# BB#33:                                # %if.then.i.7.i
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI28_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rsi)
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r10), %r13
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	movq	%r10, %rbx
	callq	*8(%rdi)
	movq	(%r13), %rax
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*40(%rax)
	movq	%rbx, %r10
	movl	(%rbp), %r11d
	movl	4(%rbp), %r13d
	movq	8(%rbp), %rax
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movq	328(%r10), %rdi
	jmp	.LBB28_48
.LBB28_34:                              # %if.else.i.i
	movslq	24(%r10), %rbx
	xorl	%edi, %edi
	testq	%rbx, %rbx
	jle	.LBB28_35
# BB#36:                                # %for.body.lr.ph.i.i.208
	movq	%r10, 128(%rsp)         # 8-byte Spill
	cmpq	$2, %rbx
	movl	$1, %ecx
	cmovlq	%rbx, %rcx
	notq	%rcx
	leaq	(%rcx,%rbx), %r10
	cmpq	$-2, %r10
	jne	.LBB28_38
# BB#37:
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movq	128(%rsp), %r10         # 8-byte Reload
	jmp	.LBB28_45
.LBB28_35:
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	jmp	.LBB28_48
.LBB28_38:                              # %overflow.checked
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	addq	$2, %r10
	xorl	%ecx, %ecx
	movq	%r10, %r9
	andq	$-4, %r9
	je	.LBB28_44
# BB#39:                                # %vector.memcheck
	leaq	12(%rsi,%rbx,4), %r8
	cmpq	$2, %rbx
	movq	%rsi, %rbp
	movl	$1, %esi
	cmovlq	%rbx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	movq	%rax, %rcx
	subq	%rsi, %rcx
	negq	%rsi
	leaq	8(%rbp,%rsi), %rsi
	leaq	12(%rdx,%rbx,4), %r14
	addq	$8, %rdi
	leaq	12(%rax,%rbx,4), %r15
	addq	$8, %rcx
	cmpq	%rdi, %r8
	setbe	%r12b
	cmpq	%rsi, %r14
	setbe	%r14b
	cmpq	%rcx, %r8
	setbe	%r8b
	cmpq	%rsi, %r15
	setbe	%dil
	xorl	%ecx, %ecx
	testb	%r14b, %r12b
	jne	.LBB28_44
# BB#40:                                # %vector.memcheck
	andb	%dil, %r8b
	jne	.LBB28_44
# BB#41:                                # %vector.body.preheader
	movq	%rbx, %r8
	subq	%r9, %r8
	leaq	8(%rdx,%rbx,4), %rdi
	leaq	8(%rax,%rbx,4), %rsi
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	8(%rcx,%rbx,4), %rcx
	movq	%rbx, %r14
	notq	%r14
	cmpq	$-3, %r14
	movq	$-2, %rbp
	cmovgq	%r14, %rbp
	leaq	2(%rbp,%rbx), %rbx
	andq	$-4, %rbx
	movapd	.LCPI28_2(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB28_42:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rsi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rsi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rcx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rcx)
	addq	$-16, %rdi
	addq	$-16, %rsi
	addq	$-16, %rcx
	addq	$-4, %rbx
	jne	.LBB28_42
# BB#43:
	movq	%r8, %rbx
	movq	%r9, %rcx
.LBB28_44:                              # %middle.block
	xorl	%edi, %edi
	cmpq	%rcx, %r10
	movq	128(%rsp), %r10         # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	je	.LBB28_48
.LBB28_45:                              # %for.body.i.i.210.preheader
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB28_46:                              # %for.body.i.i.210
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%rdx,%rbx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	12(%rax,%rbx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 12(%rsi,%rbx,4)
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	jg	.LBB28_46
# BB#47:
	movq	%rsi, 88(%rsp)          # 8-byte Spill
.LBB28_48:                              # %divide_bar.exit
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	(%r15), %r14d
	leal	(%r11,%r14), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 312(%rsp)
	movl	4(%r15), %r9d
	leal	(%r13,%r9), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 316(%rsp)
	movq	8(%r15), %rcx
	testq	%rdi, %rdi
	je	.LBB28_50
# BB#49:                                # %if.then.i.7.i.250
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI28_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movq	24(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r10), %rbp
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	movq	%r10, %rbx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	%rbx, %r10
	movl	(%r15), %r14d
	movl	4(%r15), %r9d
	movq	8(%r15), %rcx
	movq	328(%r10), %rdi
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB28_63
.LBB28_50:                              # %if.else.i.i.253
	movslq	24(%r10), %rbx
	xorl	%edi, %edi
	testq	%rbx, %rbx
	movq	104(%rsp), %r15         # 8-byte Reload
	jle	.LBB28_63
# BB#51:                                # %for.body.lr.ph.i.i.254
	movq	%r10, 128(%rsp)         # 8-byte Spill
	cmpq	$2, %rbx
	movl	$1, %edx
	cmovlq	%rbx, %rdx
	notq	%rdx
	leaq	(%rdx,%rbx), %r10
	cmpq	$-2, %r10
	jne	.LBB28_53
# BB#52:
	movq	128(%rsp), %r10         # 8-byte Reload
	jmp	.LBB28_61
.LBB28_53:                              # %overflow.checked633
	addq	$2, %r10
	xorl	%ebp, %ebp
	movq	%r10, %rdx
	andq	$-4, %rdx
	je	.LBB28_60
# BB#54:                                # %vector.memcheck661
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %r15
	leaq	(%r15,%rbx,4), %r11
	movq	88(%rsp), %rsi          # 8-byte Reload
	leaq	12(%rsi,%r11), %r8
	cmpq	$2, %rbx
	movl	$1, %edi
	cmovlq	%rbx, %rdi
	notq	%rdi
	shlq	$2, %rdi
	movq	%rax, %rbp
	subq	%rdi, %rbp
	movq	%rcx, %rdx
	subq	%rdi, %rdx
	negq	%rdi
	leaq	8(%r15,%rdi), %rdi
	leaq	(%rdi,%rsi), %rdi
	leaq	12(%rax,%rbx,4), %r15
	addq	$8, %rbp
	leaq	12(%rcx,%rbx,4), %r12
	addq	$8, %rdx
	cmpq	%rbp, %r8
	setbe	%r13b
	cmpq	%rdi, %r15
	setbe	%r15b
	cmpq	%rdx, %r8
	setbe	%dl
	cmpq	%rdi, %r12
	setbe	%dil
	xorl	%ebp, %ebp
	testb	%r15b, %r13b
	jne	.LBB28_55
# BB#56:                                # %vector.memcheck661
	andb	%dil, %dl
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	120(%rsp), %r12         # 8-byte Reload
	jne	.LBB28_60
# BB#57:                                # %vector.body629.preheader
	movq	%rbx, %r8
	subq	%r12, %r8
	leaq	8(%rax,%rbx,4), %rdi
	leaq	8(%rcx,%rbx,4), %rbp
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%r11), %rdx
	movq	%rbx, %r11
	notq	%r11
	cmpq	$-3, %r11
	movq	$-2, %rsi
	cmovgq	%r11, %rsi
	leaq	2(%rsi,%rbx), %rbx
	andq	$-4, %rbx
	movapd	.LCPI28_2(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB28_58:                              # %vector.body629
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdx)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rdx
	addq	$-4, %rbx
	jne	.LBB28_58
# BB#59:
	movq	%r8, %rbx
	movq	%r12, %rbp
	jmp	.LBB28_60
.LBB28_55:
	movq	104(%rsp), %r15         # 8-byte Reload
.LBB28_60:                              # %middle.block630
	xorl	%edi, %edi
	cmpq	%rbp, %r10
	movq	128(%rsp), %r10         # 8-byte Reload
	je	.LBB28_63
.LBB28_61:                              # %for.body.i.i.267.preheader
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	12(%rsi,%rdx), %rdx
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB28_62:                              # %for.body.i.i.267
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%rax,%rbx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	12(%rcx,%rbx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rdx,%rbx,4)
	cmpq	$1, %rbx
	leaq	-1(%rbx), %rbx
	jg	.LBB28_62
.LBB28_63:                              # %divide_bar.exit268
	movq	96(%rsp), %rdx          # 8-byte Reload
	addl	(%rdx), %r14d
	movl	%r14d, %eax
	shrl	$31, %eax
	addl	%r14d, %eax
	sarl	%eax
	movl	%eax, 296(%rsp)
	addl	4(%rdx), %r9d
	movl	%r9d, %eax
	shrl	$31, %eax
	addl	%r9d, %eax
	sarl	%eax
	movl	%eax, 300(%rsp)
	movq	8(%rdx), %rax
	testq	%rdi, %rdi
	je	.LBB28_65
# BB#64:                                # %if.then.i.7.i.308
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI28_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movq	32(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r10), %rbp
	movq	%r10, %r14
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	jmp	.LBB28_77
.LBB28_65:                              # %if.else.i.i.311
	movslq	24(%r10), %rsi
	movq	%r10, %r14
	testq	%rsi, %rsi
	jle	.LBB28_77
# BB#66:                                # %for.body.lr.ph.i.i.312
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r12
	cmpq	$-2, %r12
	je	.LBB28_75
# BB#67:                                # %overflow.checked691
	addq	$2, %r12
	xorl	%ebp, %ebp
	movq	%r12, %r9
	andq	$-4, %r9
	je	.LBB28_74
# BB#68:                                # %vector.memcheck719
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rbp,%rbp), %rdi
	leaq	(%rdi,%rsi,4), %r10
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	12(%rdx,%r10), %r8
	leaq	8(%rbp,%rbp), %rbx
	cmpq	$2, %rsi
	movl	$1, %edi
	cmovlq	%rsi, %rdi
	notq	%rdi
	shlq	$2, %rdi
	subq	%rdi, %rbx
	leaq	(%rbx,%rdx), %r15
	leaq	12(%rcx,%rsi,4), %r11
	movq	%rcx, %rbx
	subq	%rdi, %rbx
	addq	$8, %rbx
	leaq	12(%rax,%rsi,4), %rdx
	movq	%rax, %rbp
	subq	%rdi, %rbp
	addq	$8, %rbp
	cmpq	%rbx, %r8
	setbe	%dil
	cmpq	%r15, %r11
	setbe	%r11b
	cmpq	%rbp, %r8
	setbe	%bl
	cmpq	%r15, %rdx
	setbe	%r8b
	xorl	%ebp, %ebp
	testb	%r11b, %dil
	jne	.LBB28_69
# BB#70:                                # %vector.memcheck719
	andb	%r8b, %bl
	movq	104(%rsp), %r15         # 8-byte Reload
	jne	.LBB28_74
# BB#71:                                # %vector.body687.preheader
	movq	%rsi, %r8
	subq	%r9, %r8
	leaq	8(%rcx,%rsi,4), %rbx
	leaq	8(%rax,%rsi,4), %rbp
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	8(%rdx,%r10), %rdi
	movq	%rsi, %r10
	notq	%r10
	cmpq	$-3, %r10
	movq	$-2, %rdx
	cmovgq	%r10, %rdx
	leaq	2(%rdx,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI28_2(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB28_72:                              # %vector.body687
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdi)
	addq	$-16, %rbx
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-4, %rsi
	jne	.LBB28_72
# BB#73:
	movq	%r8, %rsi
	movq	%r9, %rbp
	jmp	.LBB28_74
.LBB28_69:
	movq	104(%rsp), %r15         # 8-byte Reload
.LBB28_74:                              # %middle.block688
	cmpq	%rbp, %r12
	je	.LBB28_77
.LBB28_75:                              # %for.body.i.i.325.preheader
	incq	%rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	16(%rsp), %rdi          # 8-byte Reload
	leaq	12(%rdx,%rdi,2), %rdx
	movsd	.LCPI28_1(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB28_76:                              # %for.body.i.i.325
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rax,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rdx,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB28_76
.LBB28_77:                              # %divide_bar.exit326
	leaq	144(%rsp), %rdi
	xorl	%esi, %esi
	movl	$72, %edx
	callq	memset
	movq	56(%rsp), %r12          # 8-byte Reload
	movl	(%r12), %eax
	movl	%eax, 272(%rsp)
	testl	%eax, %eax
	je	.LBB28_78
# BB#79:                                # %if.else.i
	leaq	280(%rsp), %r9
	leaq	328(%rsp), %r8
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	open_wedge_median
	movq	16(%r12), %rcx
	movq	%rcx, 288(%rsp)
	jmp	.LBB28_80
.LBB28_78:                              # %if.then.i.329
	leaq	288(%rsp), %r9
	leaq	328(%rsp), %r8
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	open_wedge_median
	movq	8(%r12), %rcx
	movq	%rcx, 280(%rsp)
.LBB28_80:                              # %make_wedge_median.exit
	testl	%eax, %eax
	js	.LBB28_148
# BB#81:                                # %if.then.154
	movl	(%r15), %eax
	movl	%eax, 248(%rsp)
	testl	%eax, %eax
	je	.LBB28_82
# BB#83:                                # %if.else.i.343
	leaq	256(%rsp), %r9
	leaq	312(%rsp), %r8
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	open_wedge_median
	movq	16(%r15), %rcx
	movq	%rcx, 264(%rsp)
	jmp	.LBB28_84
.LBB28_82:                              # %if.then.i.338
	leaq	264(%rsp), %r9
	leaq	312(%rsp), %r8
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	136(%rsp), %rdx         # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	open_wedge_median
	movq	8(%r15), %rcx
	movq	%rcx, 256(%rsp)
.LBB28_84:                              # %if.end.159
	testl	%eax, %eax
	js	.LBB28_148
# BB#85:                                # %if.then.161
	movq	400(%rsp), %rbx
	movl	(%rbx), %eax
	movl	%eax, 224(%rsp)
	testl	%eax, %eax
	je	.LBB28_87
# BB#86:                                # %if.then.i.354
	leaq	240(%rsp), %r9
	leaq	296(%rsp), %r8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	open_wedge_median
	movq	8(%rbx), %rcx
	movq	%rbx, %rbp
	movq	%rcx, 232(%rsp)
	jmp	.LBB28_88
.LBB28_87:                              # %if.else.i.359
	leaq	232(%rsp), %r9
	leaq	296(%rsp), %r8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	callq	open_wedge_median
	movq	16(%rbx), %rcx
	movq	%rbx, %rbp
	movq	%rcx, 240(%rsp)
.LBB28_88:                              # %if.end.166
	testl	%eax, %eax
	js	.LBB28_148
# BB#89:                                # %if.end.173
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI28_1(%rip), %xmm0
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movl	408(%rsp), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	leaq	224(%rsp), %rax
	movq	%rax, (%rsp)
	movl	%ebx, 8(%rsp)
	leaq	328(%rsp), %rdx
	leaq	296(%rsp), %rcx
	leaq	272(%rsp), %r13
	leaq	144(%rsp), %r9
	movq	%r14, %rdi
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %r8
	callq	triangle_by_4
	testl	%eax, %eax
	js	.LBB28_148
# BB#90:                                # %if.then.175
	cmpl	$0, 272(%rsp)
	je	.LBB28_91
# BB#92:                                # %if.else.i.370
	movq	280(%rsp), %rax
	movq	%rax, 288(%rsp)
	movq	8(%r12), %rax
	movq	%rax, 280(%rsp)
	jmp	.LBB28_93
.LBB28_91:                              # %if.then.i.368
	movq	288(%rsp), %rax
	movq	%rax, 280(%rsp)
	movq	16(%r12), %rax
	movq	%rax, 288(%rsp)
.LBB28_93:                              # %move_wedge.exit
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	$0, 224(%rsp)
	je	.LBB28_95
# BB#94:                                # %if.then.i.377
	movq	240(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, 240(%rsp)
	jmp	.LBB28_96
.LBB28_95:                              # %if.else.i.381
	movq	232(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	8(%rbp), %rax
	movq	%rax, 232(%rsp)
.LBB28_96:                              # %if.end.180
	leaq	168(%rsp), %rbp
	movl	%ebx, 8(%rsp)
	movq	%r13, (%rsp)
	leaq	312(%rsp), %rdx
	leaq	328(%rsp), %rcx
	leaq	248(%rsp), %r13
	movq	%r14, %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	%r13, %r8
	movq	%rbp, %r9
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	callq	triangle_by_4
	testl	%eax, %eax
	js	.LBB28_148
# BB#97:                                # %if.then.182
	cmpl	$0, 248(%rsp)
	je	.LBB28_98
# BB#99:                                # %if.else.i.406
	movq	256(%rsp), %rax
	movq	%rax, 264(%rsp)
	movq	8(%r15), %rax
	movq	%rax, 256(%rsp)
	jmp	.LBB28_100
.LBB28_98:                              # %if.then.i.402
	movq	264(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	16(%r15), %rax
	movq	%rax, 264(%rsp)
.LBB28_100:                             # %if.end.187
	movq	80(%rsp), %rsi          # 8-byte Reload
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	leaq	192(%rsp), %r9
	movl	%ebx, 8(%rsp)
	movq	%r13, (%rsp)
	leaq	296(%rsp), %rdx
	leaq	312(%rsp), %rcx
	leaq	224(%rsp), %r8
	movq	%r14, %rdi
	movq	%r9, %r13
	callq	triangle_by_4
	testl	%eax, %eax
	js	.LBB28_148
# BB#101:                               # %if.end.201
	movl	$1, 192(%rsp)
	movl	$1, 168(%rsp)
	movl	$1, 144(%rsp)
	movl	%ebx, 8(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	328(%rsp), %rsi
	leaq	312(%rsp), %rdx
	leaq	296(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbp, %r8
	movq	%r13, %r9
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	triangle_by_4
	testl	%eax, %eax
	js	.LBB28_148
# BB#102:                               # %if.then.203
	cmpl	$0, (%r12)
	je	.LBB28_108
# BB#103:                               # %if.end.i.485
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r8
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %r9
	movq	8(%r12), %rsi
	movq	16(%r12), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#104:                               # %if.end.2.i.489
	movq	8(%r12), %rdx
	movq	16(%r12), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB28_108
# BB#105:                               # %for.body.lr.ph.i.i.492
	movq	360(%r14), %rsi
.LBB28_106:                             # %for.body.i.i.496
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB28_106
# BB#107:                               # %for.end.loopexit.i.i.497
	movq	%rdx, 360(%r14)
.LBB28_108:                             # %if.then.209
	cmpl	$0, (%r15)
	movq	80(%rsp), %rbx          # 8-byte Reload
	je	.LBB28_114
# BB#109:                               # %if.end.i.510
	movq	8(%rbx), %r8
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %r9
	movq	8(%r15), %rsi
	movq	16(%r15), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#110:                               # %if.end.2.i.514
	movq	8(%r15), %rdx
	movq	16(%r15), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB28_114
# BB#111:                               # %for.body.lr.ph.i.i.517
	movq	360(%r14), %rsi
.LBB28_112:                             # %for.body.i.i.521
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB28_112
# BB#113:                               # %for.end.loopexit.i.i.522
	movq	%rdx, 360(%r14)
.LBB28_114:                             # %if.then.215
	movq	400(%rsp), %rcx
	cmpl	$0, (%rcx)
	movq	96(%rsp), %rax          # 8-byte Reload
	je	.LBB28_120
# BB#115:                               # %if.end.i.201
	movq	8(%rax), %r8
	movq	8(%rbx), %r9
	movq	8(%rcx), %rsi
	movq	16(%rcx), %rdx
	movq	%rcx, %rbx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#116:                               # %if.end.2.i
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB28_120
# BB#117:                               # %for.body.lr.ph.i.i
	movq	360(%r14), %rsi
.LBB28_118:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB28_118
# BB#119:                               # %for.end.loopexit.i.i
	movq	%rdx, 360(%r14)
.LBB28_120:                             # %if.then.221
	movq	152(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB28_129
# BB#121:                               # %if.then.i.451
	movq	304(%rsp), %r9
	movq	336(%rsp), %r8
	movq	160(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#122:                               # %if.end.i.455
	movq	152(%rsp), %rsi
	movq	160(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB28_128
# BB#123:                               # %if.then.i.i.456
	testq	%rcx, %rcx
	je	.LBB28_148
# BB#124:                               # %if.end.i.i.461
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB28_127
.LBB28_125:                             # %for.body.i.i.i.465
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB28_125
# BB#126:                               # %for.end.loopexit.i.i.i.466
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB28_127:                             # %release_wedge_vertex_list_interval.exit.i.i.470
	movq	152(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 152(%rsp)
	jmp	.LBB28_129
.LBB28_128:                             # %if.else.i.i.471
	testq	%rcx, %rcx
	jne	.LBB28_148
.LBB28_129:                             # %if.then.228
	movq	176(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB28_138
# BB#130:                               # %if.then.i.418
	movq	336(%rsp), %r9
	movq	320(%rsp), %r8
	movq	184(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#131:                               # %if.end.i.422
	movq	176(%rsp), %rsi
	movq	184(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB28_137
# BB#132:                               # %if.then.i.i.423
	testq	%rcx, %rcx
	je	.LBB28_148
# BB#133:                               # %if.end.i.i.428
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB28_136
.LBB28_134:                             # %for.body.i.i.i.432
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB28_134
# BB#135:                               # %for.end.loopexit.i.i.i.433
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB28_136:                             # %release_wedge_vertex_list_interval.exit.i.i.437
	movq	176(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 176(%rsp)
	jmp	.LBB28_138
.LBB28_137:                             # %if.else.i.i.438
	testq	%rcx, %rcx
	jne	.LBB28_148
.LBB28_138:                             # %if.then.235
	movq	200(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB28_148
# BB#139:                               # %if.then.i.393
	movq	320(%rsp), %r9
	movq	304(%rsp), %r8
	movq	208(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB28_148
# BB#140:                               # %if.end.i.394
	movq	200(%rsp), %rsi
	movq	208(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB28_146
# BB#141:                               # %if.then.i.i
	testq	%rcx, %rcx
	je	.LBB28_148
# BB#142:                               # %if.end.i.i
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB28_145
.LBB28_143:                             # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB28_143
# BB#144:                               # %for.end.loopexit.i.i.i
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB28_145:                             # %release_wedge_vertex_list_interval.exit.i.i
	movq	200(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 200(%rsp)
	jmp	.LBB28_147
.LBB28_146:                             # %if.else.i.i.396
	testq	%rcx, %rcx
	jne	.LBB28_148
.LBB28_147:                             # %for.inc.critedge.i.i
	xorl	%eax, %eax
.LBB28_148:                             # %if.end.240
	movq	%r14, %r10
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 672(%r10)
.LBB28_149:                             # %out
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 688(%r10)
.LBB28_150:                             # %cleanup.242
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	triangle_by_4, .Lfunc_end28-triangle_by_4
	.cfi_endproc

	.align	16, 0x90
	.type	try_device_linear_color,@function
try_device_linear_color:                # @try_device_linear_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp260:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp261:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp262:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp263:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp264:
	.cfi_def_cfa_offset 56
	subq	$2824, %rsp             # imm = 0xB08
.Ltmp265:
	.cfi_def_cfa_offset 2880
.Ltmp266:
	.cfi_offset %rbx, -56
.Ltmp267:
	.cfi_offset %r12, -48
.Ltmp268:
	.cfi_offset %r13, -40
.Ltmp269:
	.cfi_offset %r14, -32
.Ltmp270:
	.cfi_offset %r15, -24
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$2, %ebp
	cmpl	$0, 668(%rbx)
	jne	.LBB29_14
# BB#1:                                 # %if.then.2
	movq	16(%rbx), %r13
	testq	%r13, %r13
	je	.LBB29_7
# BB#2:                                 # %if.then.3
	movq	8(%r12), %rsi
	movq	8(%r15), %rdx
	movq	%rbx, %rdi
	callq	function_linearity
	cvtss2sd	%xmm0, %xmm1
	movl	$1, %ebp
	ucomisd	648(%rbx), %xmm1
	ja	.LBB29_14
# BB#3:                                 # %if.end.8
	movss	%xmm0, 28(%rsp)         # 4-byte Spill
	movq	8(%r15), %rsi
	movq	8(%r14), %rdx
	movq	%rbx, %rdi
	callq	function_linearity
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	ucomisd	648(%rbx), %xmm1
	ja	.LBB29_14
# BB#4:                                 # %if.end.17
	movss	%xmm0, 24(%rsp)         # 4-byte Spill
	movq	8(%r14), %rsi
	movq	8(%r12), %rdx
	movq	%rbx, %rdi
	callq	function_linearity
	cvtss2sd	%xmm0, %xmm2
	movsd	648(%rbx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	ja	.LBB29_14
# BB#5:                                 # %if.end.26
	movss	28(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	maxss	24(%rsp), %xmm2         # 4-byte Folded Reload
	maxss	%xmm0, %xmm2
	movq	(%r13), %rax
	movq	8(%rbx), %rsi
	movq	288(%rbx), %rdx
	movq	8(%r12), %rcx
	addq	$8, %rcx
	movq	8(%r15), %r8
	addq	$8, %r8
	movq	8(%r14), %r9
	addq	$8, %r9
	cvtss2sd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%rbx), %rdi
	movq	%rdi, 8(%rsp)
	movq	$0, (%rsp)
	movq	%r13, %rdi
	callq	*120(%rax)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB29_14
# BB#6:                                 # %if.end.47
	movl	$1, %ebp
	je	.LBB29_14
.LBB29_7:                               # %if.end.60
	movq	(%rbx), %r13
	leaq	312(%rbx), %rax
	movq	%rax, 2000(%rsp)
	movq	$0, 2016(%rsp)
	movl	$0, 2008(%rsp)
	movl	$0, 2024(%rsp)
	movq	8(%r12), %rsi
	leaq	32(%rsp), %rdx
	leaq	2048(%rsp), %rcx
	movq	%rbx, %rdi
	callq	patch_color_to_device_color_inline
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB29_14
# BB#8:                                 # %if.end.67
	movq	32(%rsp), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, %rax
	je	.LBB29_10
# BB#9:                                 # %if.end.67
	movl	$2, %ebp
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	jne	.LBB29_14
.LBB29_10:                              # %if.then.79
	movq	8(%r15), %rsi
	leaq	688(%rsp), %rdx
	leaq	2304(%rsp), %rcx
	movq	%rbx, %rdi
	callq	patch_color_to_device_color_inline
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB29_14
# BB#11:                                # %if.end.89
	movq	8(%r14), %rsi
	leaq	1344(%rsp), %rdx
	leaq	2560(%rsp), %rax
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rcx
	callq	patch_color_to_device_color_inline
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB29_14
# BB#12:                                # %if.end.98
	movq	%rbx, 8(%rsp)
	leaq	2304(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	2000(%rsp), %rsi
	leaq	2048(%rsp), %r9
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	*1608(%r13)
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB29_14
# BB#13:                                # %if.end.122
	testl	%eax, %eax
	movl	$1, %ebp
	cmovsl	%eax, %ebp
.LBB29_14:                              # %cleanup.130
	movl	%ebp, %eax
	addq	$2824, %rsp             # imm = 0xB08
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	try_device_linear_color, .Lfunc_end29-try_device_linear_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	constant_color_triangle,@function
constant_color_triangle:                # @constant_color_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp272:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp273:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp274:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp275:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp276:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp277:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp278:
	.cfi_def_cfa_offset 128
.Ltmp279:
	.cfi_offset %rbx, -56
.Ltmp280:
	.cfi_offset %r12, -48
.Ltmp281:
	.cfi_offset %r13, -40
.Ltmp282:
	.cfi_offset %r14, -32
.Ltmp283:
	.cfi_offset %r15, -24
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	688(%r14), %rbx
	movslq	680(%r14), %r13
	leaq	(%rbx,%r13,2), %rdx
	movl	$-28, %eax
	cmpq	704(%r14), %rdx
	ja	.LBB30_32
# BB#1:                                 # %reserve_colors_inline.exit
	movq	%rdx, 688(%r14)
	testq	%rbx, %rbx
	je	.LBB30_32
# BB#2:                                 # %if.end
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	(%rbx,%r13), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	8(%r15), %rcx
	movq	8(%r12), %r8
	movq	328(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB30_3
# BB#16:                                # %patch_interpolate_color.exit
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI30_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%r8), %xmm1            # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rbx)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r8), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rbx)
	movq	16(%r14), %r15
	leaq	8(%rbx), %rbp
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movq	(%r15), %rax
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*40(%rax)
	movq	328(%r14), %rdi
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rax
	testq	%rdi, %rdi
	je	.LBB30_17
# BB#41:                                # %if.then.i.90
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%rbx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	32(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%rax), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r14), %r13
	leaq	8(%rsi), %r15
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%r13), %rax
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*40(%rax)
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB30_21
.LBB30_3:                               # %if.else.i
	movslq	24(%r14), %rsi
	testq	%rsi, %rsi
	jle	.LBB30_15
# BB#4:                                 # %for.body.lr.ph.i
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r10
	cmpq	$-2, %r10
	je	.LBB30_13
# BB#5:                                 # %overflow.checked
	addq	$2, %r10
	xorl	%edx, %edx
	movq	%r10, %rax
	andq	$-4, %rax
	je	.LBB30_12
# BB#6:                                 # %vector.memcheck
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	leaq	12(%rbx,%rsi,4), %rax
	cmpq	$2, %rsi
	movl	$1, %edi
	cmovlq	%rsi, %rdi
	notq	%rdi
	shlq	$2, %rdi
	movq	%rcx, %rbp
	subq	%rdi, %rbp
	movq	%r8, %rdx
	subq	%rdi, %rdx
	negq	%rdi
	leaq	8(%rbx,%rdi), %rdi
	leaq	12(%rcx,%rsi,4), %r11
	addq	$8, %rbp
	leaq	12(%r8,%rsi,4), %r15
	addq	$8, %rdx
	cmpq	%rbp, %rax
	setbe	%bpl
	cmpq	%rdi, %r11
	setbe	%r9b
	cmpq	%rdx, %rax
	setbe	%r11b
	cmpq	%rdi, %r15
	setbe	%al
	xorl	%edx, %edx
	testb	%r9b, %bpl
	jne	.LBB30_7
# BB#8:                                 # %vector.memcheck
	andb	%al, %r11b
	movq	16(%rsp), %r15          # 8-byte Reload
	jne	.LBB30_12
# BB#9:                                 # %vector.body.preheader
	movq	%rsi, %r11
	subq	8(%rsp), %r11           # 8-byte Folded Reload
	leaq	8(%rcx,%rsi,4), %rbp
	leaq	8(%r8,%rsi,4), %rdi
	leaq	8(%rbx,%rsi,4), %rdx
	movq	%rsi, %r9
	notq	%r9
	cmpq	$-3, %r9
	movq	$-2, %rax
	cmovgq	%r9, %rax
	leaq	2(%rax,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI30_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB30_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rdi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rdi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdx)
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-16, %rdx
	addq	$-4, %rsi
	jne	.LBB30_10
# BB#11:
	movq	%r11, %rsi
	movq	8(%rsp), %rdx           # 8-byte Reload
	jmp	.LBB30_12
.LBB30_17:
	movq	16(%rsp), %r15          # 8-byte Reload
	jmp	.LBB30_18
.LBB30_7:
	movq	16(%rsp), %r15          # 8-byte Reload
.LBB30_12:                              # %middle.block
	cmpq	%rdx, %r10
	je	.LBB30_15
.LBB30_13:                              # %for.body.i.34.preheader
	incq	%rsi
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB30_14:                              # %for.body.i.34
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r8,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%rbx,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB30_14
.LBB30_15:                              # %patch_interpolate_color.exit.thread
	movq	24(%rsp), %rbp          # 8-byte Reload
	movq	8(%rbp), %rax
.LBB30_18:                              # %if.else.i.63
	movslq	24(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB30_21
# BB#19:                                # %for.body.lr.ph.i.64
	leaq	12(%r13,%rbx), %rdx
	movsd	.LCPI30_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB30_20:                              # %for.body.i.77
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%rax,%rcx,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	12(%rbx,%rcx,4), %xmm2  # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rdx,%rcx,4)
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB30_20
.LBB30_21:                              # %for.body
	movl	4(%r15), %ecx
	xorl	%eax, %eax
	cmpl	4(%r12), %ecx
	jg	.LBB30_27
# BB#22:                                # %land.lhs.true
	cmpl	4(%rbp), %ecx
	jg	.LBB30_27
# BB#23:                                # %if.then.20
	movq	(%r15), %rax
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	(%r12), %rcx
	movq	%rcx, 64(%rsp)
	movq	(%rbp), %rdx
	movq	%rdx, 48(%rsp)
	movl	%ecx, %esi
	subl	%eax, %esi
	movabsq	$-4294967296, %rdi      # imm = 0xFFFFFFFF00000000
	andq	%rax, %rdi
	movl	%edx, %r8d
	subl	%eax, %r8d
	movslq	%esi, %rax
	subq	%rdi, %rdx
	sarq	$32, %rdx
	imulq	%rax, %rdx
	subq	%rdi, %rcx
	sarq	$32, %rcx
	movslq	%r8d, %rax
	imulq	%rcx, %rax
	cmpq	%rax, %rdx
	jge	.LBB30_25
# BB#24:                                # %if.then.50
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	jmp	.LBB30_26
.LBB30_25:                              # %if.else
	leaq	40(%rsp), %rsi
	leaq	56(%rsp), %rdx
.LBB30_26:                              # %if.end.55
	movq	%r14, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	ordered_triangle
	testl	%eax, %eax
	js	.LBB30_31
.LBB30_27:                              # %if.end.60
	movl	4(%r12), %ecx
	cmpl	4(%rbp), %ecx
	jg	.LBB30_35
# BB#28:                                # %land.lhs.true.1
	cmpl	4(%r15), %ecx
	jg	.LBB30_35
# BB#29:                                # %if.then.20.1
	movq	(%r12), %rax
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	(%rbp), %rcx
	movq	%rbp, %r13
	movq	%rcx, 64(%rsp)
	movq	(%r15), %rdx
	movq	%rdx, 48(%rsp)
	movl	%ecx, %esi
	subl	%eax, %esi
	movabsq	$-4294967296, %rdi      # imm = 0xFFFFFFFF00000000
	andq	%rax, %rdi
	movl	%edx, %ebp
	subl	%eax, %ebp
	movslq	%esi, %rax
	subq	%rdi, %rdx
	sarq	$32, %rdx
	imulq	%rax, %rdx
	subq	%rdi, %rcx
	sarq	$32, %rcx
	movslq	%ebp, %rax
	imulq	%rcx, %rax
	cmpq	%rax, %rdx
	jge	.LBB30_30
# BB#33:                                # %if.then.50.1
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	jmp	.LBB30_34
.LBB30_30:                              # %if.else.1
	leaq	40(%rsp), %rsi
	leaq	56(%rsp), %rdx
.LBB30_34:                              # %if.end.55.1
	movq	%r14, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	ordered_triangle
	testl	%eax, %eax
	movq	%r13, %rbp
	js	.LBB30_31
.LBB30_35:                              # %if.end.60.1
	movl	4(%rbp), %ecx
	cmpl	4(%r15), %ecx
	jg	.LBB30_31
# BB#36:                                # %land.lhs.true.2
	cmpl	4(%r12), %ecx
	jg	.LBB30_31
# BB#37:                                # %if.then.20.2
	movq	(%rbp), %rax
	movq	%rax, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	(%r15), %rcx
	movq	%rcx, 64(%rsp)
	movq	(%r12), %rdx
	movq	%rdx, 48(%rsp)
	movl	%ecx, %esi
	subl	%eax, %esi
	movabsq	$-4294967296, %rdi      # imm = 0xFFFFFFFF00000000
	andq	%rax, %rdi
	movl	%edx, %ebp
	subl	%eax, %ebp
	movslq	%esi, %rax
	subq	%rdi, %rdx
	sarq	$32, %rdx
	imulq	%rax, %rdx
	subq	%rdi, %rcx
	sarq	$32, %rcx
	movslq	%ebp, %rax
	imulq	%rcx, %rax
	cmpq	%rax, %rdx
	jge	.LBB30_38
# BB#40:                                # %if.then.50.2
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	jmp	.LBB30_39
.LBB30_38:                              # %if.else.2
	leaq	40(%rsp), %rsi
	leaq	56(%rsp), %rdx
.LBB30_39:                              # %for.end
	movq	%r14, %rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	callq	ordered_triangle
.LBB30_31:                              # %for.end
	movq	%rbx, 688(%r14)
.LBB30_32:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	constant_color_triangle, .Lfunc_end30-constant_color_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	ordered_triangle,@function
ordered_triangle:                       # @ordered_triangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp285:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp286:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp287:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp288:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp289:
	.cfi_def_cfa_offset 48
	subq	$960, %rsp              # imm = 0x3C0
.Ltmp290:
	.cfi_def_cfa_offset 1008
.Ltmp291:
	.cfi_offset %rbx, -48
.Ltmp292:
	.cfi_offset %r12, -40
.Ltmp293:
	.cfi_offset %r13, -32
.Ltmp294:
	.cfi_offset %r14, -24
.Ltmp295:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	720(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB31_3
# BB#1:                                 # %if.then.3.i
	leaq	16(%rbx), %rsi
	leaq	24(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	gs_cached_color_index
	testl	%eax, %eax
	js	.LBB31_24
# BB#2:                                 # %if.end.8.i
	cmpq	$0, 720(%r12)
	jne	.LBB31_17
.LBB31_3:                               # %if.then.11.i
	movq	16(%r12), %r13
	testq	%r13, %r13
	je	.LBB31_5
# BB#4:                                 # %if.then.13.i
	leaq	704(%rsp), %rdi
	addq	$16, %rbx
	movslq	24(%r12), %rdx
	shlq	$2, %rdx
	movq	%rbx, %rsi
	callq	memcpy
	movq	(%r13), %rax
	movq	(%r12), %r8
	movq	8(%r12), %rcx
	leaq	696(%rsp), %rdi
	leaq	24(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r13, %rsi
	callq	*72(%rax)
	testl	%eax, %eax
	jns	.LBB31_17
	jmp	.LBB31_24
.LBB31_5:                               # %if.else.i
	movq	(%r12), %rax
	movslq	100(%rax), %rax
	testq	%rax, %rax
	jle	.LBB31_16
# BB#6:                                 # %for.body.i.preheader
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.LBB31_15
# BB#7:                                 # %overflow.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-8, %rcx
	je	.LBB31_14
# BB#8:                                 # %vector.body.preheader
	leaq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB31_10
# BB#9:                                 # %vector.body.prol
	movups	32(%rbx), %xmm0
	cvttps2dq	%xmm0, %xmm0
	movaps	%xmm0, 16
	movl	$8, %edx
.LBB31_10:                              # %vector.body.preheader.split
	testq	%rsi, %rsi
	je	.LBB31_13
# BB#11:                                # %vector.body.preheader.split.split
	movq	%rax, %rsi
	andq	$-8, %rsi
	.align	16, 0x90
.LBB31_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	16(%rbx,%rdx,4), %xmm0
	movups	32(%rbx,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, (,%rdx,4)
	movaps	%xmm1, 16(,%rdx,4)
	movups	48(%rbx,%rdx,4), %xmm0
	movups	64(%rbx,%rdx,4), %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movaps	%xmm0, 32(,%rdx,4)
	movaps	%xmm1, 48(,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB31_12
.LBB31_13:
	movq	%rcx, %rdx
.LBB31_14:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB31_16
	.align	16, 0x90
.LBB31_15:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	16(%rbx,%rdx,4), %ecx
	movl	%ecx, (,%rdx,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB31_15
.LBB31_16:                              # %for.end.i
	movq	$gx_dc_type_data_pure, 24(%rsp)
.LBB31_17:                              # %if.end
	movl	12(%r15), %r8d
	movl	12(%r14), %eax
	cmpl	%eax, %r8d
	jge	.LBB31_20
# BB#18:                                # %if.then.4
	movl	4(%r15), %ecx
	movq	(%r12), %rdi
	movq	8(%r12), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	leaq	24(%rsp), %rbx
	movq	%rbx, (%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*1360(%rdi)
	testl	%eax, %eax
	js	.LBB31_24
# BB#19:                                # %if.then.11
	movq	8(%r15), %rax
	movq	%rax, 680(%rsp)
	movq	8(%r14), %rax
	movq	%rax, 688(%rsp)
	movl	12(%r15), %ecx
	movl	12(%r14), %r8d
	movq	(%r12), %rdi
	movq	8(%r12), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%rbx, (%rsp)
	leaq	680(%rsp), %rsi
	xorl	%r9d, %r9d
	movq	%r14, %rdx
	callq	*1360(%rdi)
	jmp	.LBB31_24
.LBB31_20:                              # %if.else
	movq	(%r12), %rdi
	movq	8(%r12), %rdx
	movq	1360(%rdi), %rbx
	movl	4(%r15), %ecx
	movl	212(%rdx), %edx
	cmpl	%eax, %r8d
	jle	.LBB31_23
# BB#21:                                # %if.then.33
	movl	%edx, 8(%rsp)
	leaq	24(%rsp), %r13
	movq	%r13, (%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movl	%eax, %r8d
	movq	%r14, %rdx
	callq	*%rbx
	testl	%eax, %eax
	js	.LBB31_24
# BB#22:                                # %if.then.46
	movq	8(%r14), %rax
	movq	%rax, 680(%rsp)
	movq	8(%r15), %rax
	movq	%rax, 688(%rsp)
	movl	12(%r14), %ecx
	movl	12(%r15), %r8d
	movq	(%r12), %rdi
	movq	8(%r12), %rax
	movl	212(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	%r13, (%rsp)
	leaq	680(%rsp), %rdx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	callq	*1360(%rdi)
	jmp	.LBB31_24
.LBB31_23:                              # %if.else.63
	movl	%edx, 8(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%rbx
.LBB31_24:                              # %cleanup
	addq	$960, %rsp              # imm = 0x3C0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end31:
	.size	ordered_triangle, .Lfunc_end31-ordered_triangle
	.cfi_endproc

	.align	16, 0x90
	.type	open_wedge_median,@function
open_wedge_median:                      # @open_wedge_median
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp296:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp297:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp298:
	.cfi_def_cfa_offset 32
.Ltmp299:
	.cfi_offset %rbx, -32
.Ltmp300:
	.cfi_offset %r14, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	8(%rsi), %r10
	cmpl	$0, (%rsi)
	je	.LBB32_1
# BB#30:                                # %if.else
	testq	%r10, %r10
	je	.LBB32_31
# BB#54:                                # %if.else.46
	movl	(%r10), %ebp
	movl	$-28, %eax
	cmpl	(%rcx), %ebp
	jne	.LBB32_77
# BB#55:                                # %if.end.53
	movl	4(%r10), %ebp
	cmpl	4(%rcx), %ebp
	jne	.LBB32_77
# BB#56:                                # %if.end.60
	movq	16(%rsi), %rcx
	movl	(%rcx), %ebp
	cmpl	(%rdx), %ebp
	jne	.LBB32_77
# BB#57:                                # %if.end.67
	movl	4(%rcx), %ebp
	cmpl	4(%rdx), %ebp
	jne	.LBB32_77
# BB#58:                                # %if.end.74
	cmpq	%rcx, 16(%r10)
	je	.LBB32_59
# BB#69:                                # %if.else.85
	movl	8(%r10), %esi
	movl	8(%rcx), %edx
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	cmpq	%rcx, %r10
	je	.LBB32_77
# BB#70:                                # %for.body.i.preheader
	incl	%edx
	cmpl	%edx, %esi
	je	.LBB32_73
.LBB32_71:                              # %for.inc.i
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r10), %r10
	cmpq	%rcx, %r10
	je	.LBB32_77
# BB#72:                                # %for.inc.i.for.body.i_crit_edge
                                        #   in Loop: Header=BB32_71 Depth=1
	cmpl	%edx, 8(%r10)
	jne	.LBB32_71
.LBB32_73:                              # %if.end.99
	movl	(%r10), %ecx
	cmpl	(%r8), %ecx
	jne	.LBB32_77
# BB#74:                                # %lor.lhs.false
	movl	4(%r10), %ecx
	cmpl	4(%r8), %ecx
	jne	.LBB32_77
# BB#75:                                # %if.end.109
	incl	12(%r10)
	movq	%r10, %rdx
	jmp	.LBB32_76
.LBB32_1:                               # %if.then
	testq	%r10, %r10
	jne	.LBB32_15
# BB#2:                                 # %if.then.1
	movl	$-28, %eax
	cmpq	$0, 16(%rsi)
	jne	.LBB32_77
# BB#3:                                 # %if.end.i
	movq	360(%rdi), %r10
	testq	%r10, %r10
	je	.LBB32_4
# BB#7:                                 # %wedge_vertex_list_elem_reserve.exit.i
	movq	16(%r10), %r11
	movq	%r11, 360(%rdi)
	movq	%r10, 8(%rsi)
	testq	%r11, %r11
	je	.LBB32_8
# BB#78:                                # %if.then.i.19.i
	movq	16(%r11), %rbx
	movq	%rbx, 360(%rdi)
	jmp	.LBB32_12
.LBB32_31:                              # %if.then.35
	movl	$-28, %eax
	cmpq	$0, 16(%rsi)
	jne	.LBB32_77
# BB#32:                                # %if.end.i.142
	movq	360(%rdi), %r10
	testq	%r10, %r10
	je	.LBB32_33
# BB#36:                                # %wedge_vertex_list_elem_reserve.exit.i.158
	movq	16(%r10), %rbx
	movq	%rbx, 360(%rdi)
	movq	%r10, 8(%rsi)
	testq	%rbx, %rbx
	je	.LBB32_37
# BB#79:                                # %if.then.i.19.i.160
	movq	16(%rbx), %rbp
	movq	%rbp, 360(%rdi)
	jmp	.LBB32_41
.LBB32_33:                              # %if.end.i.i.146
	movl	368(%rdi), %r11d
	movl	372(%rdi), %ebx
	xorl	%r10d, %r10d
	cmpl	%ebx, %r11d
	jge	.LBB32_35
# BB#34:                                # %if.then.3.i.i.151
	movslq	%r11d, %r10
	movq	352(%rdi), %rbp
	incl	%r11d
	movl	%r11d, 368(%rdi)
	shlq	$5, %r10
	addq	%rbp, %r10
.LBB32_35:                              # %wedge_vertex_list_elem_reserve.exit.thread.i.154
	movq	%r10, 8(%rsi)
	jmp	.LBB32_38
.LBB32_37:                              # %wedge_vertex_list_elem_reserve.exit.i.158.if.end.i.23.i.165_crit_edge
	movl	368(%rdi), %r11d
	movl	372(%rdi), %ebx
.LBB32_38:                              # %if.end.i.23.i.165
	cmpl	%ebx, %r11d
	jge	.LBB32_39
# BB#40:                                # %if.then.3.i.28.i.171
	movq	352(%rdi), %rbp
	leal	1(%r11), %ebx
	movl	%ebx, 368(%rdi)
	movslq	%r11d, %rbx
	shlq	$5, %rbx
	addq	%rbp, %rbx
.LBB32_41:                              # %wedge_vertex_list_elem_reserve.exit30.i.176
	movq	%rbx, 16(%rsi)
	testq	%r10, %r10
	je	.LBB32_77
# BB#42:                                # %wedge_vertex_list_elem_reserve.exit30.i.176
	testq	%rbx, %rbx
	je	.LBB32_77
# BB#43:                                # %if.end.39
	movq	$0, 16(%rbx)
	movq	$0, 24(%r10)
	movq	%rbx, 16(%r10)
	movq	%r10, 24(%rbx)
	movq	(%rcx), %rcx
	movq	%rcx, (%r10)
	movq	16(%rsi), %rcx
	movq	(%rdx), %rdx
	movq	%rdx, (%rcx)
	movq	16(%rsi), %rcx
	movl	$0, 8(%rcx)
	movq	8(%rsi), %rbx
	movl	$0, 8(%rbx)
	movq	360(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB32_45
# BB#44:                                # %wedge_vertex_list_elem_reserve.exit.thread40.i.78
	movq	16(%rdx), %rbp
	movq	%rbp, 360(%rdi)
.LBB32_47:                              # %if.end.i.94
	cmpq	%rcx, 16(%rbx)
	jne	.LBB32_77
# BB#48:                                # %if.end.3.i.97
	cmpq	%rbx, 24(%rcx)
	jne	.LBB32_77
# BB#49:                                # %if.end.8.i.121
	movq	%rcx, 16(%rdx)
	movq	%rbx, 24(%rdx)
	movq	(%r8), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdi
	movl	8(%rcx), %esi
	movl	8(%rdi), %ebp
	cmpl	%ebp, %esi
	cmovgel	%esi, %ebp
	incl	%ebp
	movl	%ebp, 8(%rdx)
	movl	$0, 12(%rdx)
	movq	%rdx, 24(%rdi)
	movq	%rdx, 16(%rcx)
	movl	(%rdi), %esi
	movl	4(%rdi), %r10d
	movl	(%rcx), %ebp
	movl	4(%rcx), %r14d
	cmpl	%esi, %ebp
	movl	$1, %r11d
	movl	$-1, %edi
	movl	$-1, %ebx
	cmovll	%r11d, %ebx
	cmpl	%r10d, %r14d
	cmovll	%r11d, %edi
	movl	(%r8), %r11d
	movl	%r11d, %ecx
	subl	%ebp, %ecx
	imull	%ebx, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#50:                                # %if.end.47.i.126
	movl	4(%r8), %r8d
	movl	%r8d, %ecx
	subl	%r14d, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#51:                                # %if.end.56.i.130
	subl	%r11d, %esi
	imull	%ebx, %esi
	testl	%esi, %esi
	js	.LBB32_77
# BB#52:                                # %if.end.65.i.134
	subl	%r8d, %r10d
	imull	%edi, %r10d
	testl	%r10d, %r10d
	js	.LBB32_77
# BB#53:                                # %if.end.43
	movl	$1, 12(%rdx)
	jmp	.LBB32_76
.LBB32_39:                              # %wedge_vertex_list_elem_reserve.exit30.thread.i.166
	movq	$0, 16(%rsi)
	jmp	.LBB32_77
.LBB32_4:                               # %if.end.i.i
	movl	368(%rdi), %r11d
	movl	372(%rdi), %ebx
	xorl	%r10d, %r10d
	cmpl	%ebx, %r11d
	jge	.LBB32_6
# BB#5:                                 # %if.then.3.i.i
	movslq	%r11d, %r10
	movq	352(%rdi), %r14
	incl	%r11d
	movl	%r11d, 368(%rdi)
	shlq	$5, %r10
	addq	%r14, %r10
.LBB32_6:                               # %wedge_vertex_list_elem_reserve.exit.thread.i
	movq	%r10, 8(%rsi)
	jmp	.LBB32_9
.LBB32_8:                               # %wedge_vertex_list_elem_reserve.exit.i.if.end.i.23.i_crit_edge
	movl	368(%rdi), %r11d
	movl	372(%rdi), %ebx
.LBB32_9:                               # %if.end.i.23.i
	cmpl	%ebx, %r11d
	jge	.LBB32_10
# BB#11:                                # %if.then.3.i.28.i
	movq	352(%rdi), %rbx
	leal	1(%r11), %ebp
	movl	%ebp, 368(%rdi)
	movslq	%r11d, %r11
	shlq	$5, %r11
	addq	%rbx, %r11
.LBB32_12:                              # %wedge_vertex_list_elem_reserve.exit30.i
	movq	%r11, 16(%rsi)
	testq	%r10, %r10
	je	.LBB32_77
# BB#13:                                # %wedge_vertex_list_elem_reserve.exit30.i
	testq	%r11, %r11
	je	.LBB32_77
# BB#14:                                # %create_wedge_vertex_list.exit
	movq	$0, 16(%r11)
	movq	$0, 24(%r10)
	movq	%r11, 16(%r10)
	movq	%r10, 24(%r11)
	movq	(%rdx), %rax
	movq	%rax, (%r10)
	movq	16(%rsi), %rax
	movq	(%rcx), %rbp
	movq	%rbp, (%rax)
	movq	16(%rsi), %rax
	movl	$0, 8(%rax)
	movq	8(%rsi), %r10
	movl	$0, 8(%r10)
.LBB32_15:                              # %if.end.4
	movl	(%r10), %ebp
	movl	$-28, %eax
	cmpl	(%rdx), %ebp
	jne	.LBB32_77
# BB#16:                                # %if.end.9
	movl	4(%r10), %ebp
	cmpl	4(%rdx), %ebp
	jne	.LBB32_77
# BB#17:                                # %if.end.15
	movq	16(%rsi), %rbx
	movl	(%rbx), %edx
	cmpl	(%rcx), %edx
	jne	.LBB32_77
# BB#18:                                # %if.end.21
	movl	4(%rbx), %edx
	cmpl	4(%rcx), %edx
	jne	.LBB32_77
# BB#19:                                # %if.end.28
	movq	360(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB32_21
# BB#20:                                # %wedge_vertex_list_elem_reserve.exit.thread40.i.189
	movq	16(%rdx), %rcx
	movq	%rcx, 360(%rdi)
.LBB32_23:                              # %if.end.i.205
	cmpq	%rbx, 16(%r10)
	jne	.LBB32_77
# BB#24:                                # %if.end.3.i.208
	cmpq	%r10, 24(%rbx)
	jne	.LBB32_77
# BB#25:                                # %if.end.8.i.232
	movq	%rbx, 16(%rdx)
	movq	%r10, 24(%rdx)
	movq	(%r8), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdi
	movl	8(%rcx), %esi
	movl	8(%rdi), %ebp
	cmpl	%ebp, %esi
	cmovgel	%esi, %ebp
	incl	%ebp
	movl	%ebp, 8(%rdx)
	movl	$0, 12(%rdx)
	movq	%rdx, 24(%rdi)
	movq	%rdx, 16(%rcx)
	movl	(%rdi), %esi
	movl	4(%rdi), %r10d
	movl	(%rcx), %ebp
	movl	4(%rcx), %r14d
	cmpl	%esi, %ebp
	movl	$1, %r11d
	movl	$-1, %edi
	movl	$-1, %ebx
	cmovll	%r11d, %ebx
	cmpl	%r10d, %r14d
	cmovll	%r11d, %edi
	movl	(%r8), %r11d
	movl	%r11d, %ecx
	subl	%ebp, %ecx
	imull	%ebx, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#26:                                # %if.end.47.i.237
	movl	4(%r8), %r8d
	movl	%r8d, %ecx
	subl	%r14d, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#27:                                # %if.end.56.i.241
	subl	%r11d, %esi
	imull	%ebx, %esi
	testl	%esi, %esi
	js	.LBB32_77
# BB#28:                                # %if.end.65.i.245
	subl	%r8d, %r10d
	imull	%edi, %r10d
	testl	%r10d, %r10d
	js	.LBB32_77
# BB#29:                                # %if.end.32
	movl	$1, 12(%rdx)
	jmp	.LBB32_76
.LBB32_10:                              # %wedge_vertex_list_elem_reserve.exit30.thread.i
	movq	$0, 16(%rsi)
	jmp	.LBB32_77
.LBB32_45:                              # %if.end.i.i.82
	movslq	368(%rdi), %rdx
	cmpl	372(%rdi), %edx
	jge	.LBB32_77
# BB#46:                                # %wedge_vertex_list_elem_reserve.exit.i.88
	leal	1(%rdx), %ebp
	shlq	$5, %rdx
	addq	352(%rdi), %rdx
	movl	%ebp, 368(%rdi)
	jne	.LBB32_47
	jmp	.LBB32_77
.LBB32_59:                              # %if.then.78
	movq	360(%rdi), %rdx
	testq	%rdx, %rdx
	je	.LBB32_61
# BB#60:                                # %wedge_vertex_list_elem_reserve.exit.thread40.i
	movq	16(%rdx), %rbp
	movq	%rbp, 360(%rdi)
.LBB32_63:                              # %if.end.3.i
	cmpq	%r10, 24(%rcx)
	jne	.LBB32_77
# BB#64:                                # %if.end.8.i
	movq	%rcx, 16(%rdx)
	movq	%r10, 24(%rdx)
	movq	(%r8), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdi
	movl	8(%rcx), %esi
	movl	8(%rdi), %ebp
	cmpl	%ebp, %esi
	cmovgel	%esi, %ebp
	incl	%ebp
	movl	%ebp, 8(%rdx)
	movl	$0, 12(%rdx)
	movq	%rdx, 24(%rdi)
	movq	%rdx, 16(%rcx)
	movl	(%rdi), %esi
	movl	4(%rdi), %r10d
	movl	(%rcx), %ebp
	movl	4(%rcx), %r14d
	cmpl	%esi, %ebp
	movl	$1, %r11d
	movl	$-1, %edi
	movl	$-1, %ebx
	cmovll	%r11d, %ebx
	cmpl	%r10d, %r14d
	cmovll	%r11d, %edi
	movl	(%r8), %r11d
	movl	%r11d, %ecx
	subl	%ebp, %ecx
	imull	%ebx, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#65:                                # %if.end.47.i
	movl	4(%r8), %r8d
	movl	%r8d, %ecx
	subl	%r14d, %ecx
	imull	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB32_77
# BB#66:                                # %if.end.56.i
	subl	%r11d, %esi
	imull	%ebx, %esi
	testl	%esi, %esi
	js	.LBB32_77
# BB#67:                                # %if.end.65.i
	subl	%r8d, %r10d
	imull	%edi, %r10d
	testl	%r10d, %r10d
	js	.LBB32_77
# BB#68:                                # %if.end.82
	movl	$1, 12(%rdx)
.LBB32_76:                              # %if.end.114
	movq	%rdx, (%r9)
	xorl	%eax, %eax
	jmp	.LBB32_77
.LBB32_21:                              # %if.end.i.i.193
	movslq	368(%rdi), %rdx
	cmpl	372(%rdi), %edx
	jge	.LBB32_77
# BB#22:                                # %wedge_vertex_list_elem_reserve.exit.i.199
	leal	1(%rdx), %ecx
	shlq	$5, %rdx
	addq	352(%rdi), %rdx
	movl	%ecx, 368(%rdi)
	jne	.LBB32_23
	jmp	.LBB32_77
.LBB32_61:                              # %if.end.i.i.61
	movslq	368(%rdi), %rdx
	cmpl	372(%rdi), %edx
	jge	.LBB32_77
# BB#62:                                # %wedge_vertex_list_elem_reserve.exit.i.67
	leal	1(%rdx), %ebp
	shlq	$5, %rdx
	addq	352(%rdi), %rdx
	movl	%ebp, 368(%rdi)
	jne	.LBB32_63
.LBB32_77:                              # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	open_wedge_median, .Lfunc_end32-open_wedge_median
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI33_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	fill_wedge_from_list_rec,@function
fill_wedge_from_list_rec:               # @fill_wedge_from_list_rec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp306:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp307:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp308:
	.cfi_def_cfa_offset 160
.Ltmp309:
	.cfi_offset %rbx, -56
.Ltmp310:
	.cfi_offset %r12, -48
.Ltmp311:
	.cfi_offset %r13, -40
.Ltmp312:
	.cfi_offset %r14, -32
.Ltmp313:
	.cfi_offset %r15, -24
.Ltmp314:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %rbx
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	16(%rbp), %rax
	xorl	%r14d, %r14d
	cmpq	%rbx, %rax
	je	.LBB33_67
# BB#1:                                 # %if.else
	cmpq	%rbx, 16(%rax)
	je	.LBB33_2
# BB#20:                                # %if.else.17
	movq	688(%r13), %r10
	movslq	680(%r13), %rax
	leaq	(%rax,%r10), %rax
	movl	$-28, %r14d
	cmpq	704(%r13), %rax
	ja	.LBB33_67
# BB#21:                                # %reserve_colors_inline.exit
	movq	%rax, 688(%r13)
	testq	%r10, %r10
	je	.LBB33_67
# BB#22:                                # %if.end.21
	cmpq	%rbx, %rbp
	je	.LBB33_67
# BB#23:                                # %if.end.21
	testq	%rbx, %rbx
	je	.LBB33_67
# BB#24:
	movl	(%rbp), %edx
	movl	(%rbx), %ecx
	movl	4(%rbx), %esi
	addl	4(%rbp), %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	incl	%r12d
	movq	%rbp, %r15
	.align	16, 0x90
.LBB33_25:                              # %for.body.i.70
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r12d, 8(%r15)
	je	.LBB33_27
# BB#26:                                # %for.inc.i
                                        #   in Loop: Header=BB33_25 Depth=1
	movq	16(%r15), %r15
	cmpq	%rbx, %r15
	jne	.LBB33_25
	jmp	.LBB33_67
.LBB33_2:                               # %if.then.4
	movl	12(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	$-28, %r14d
	cmpl	$1, %edx
	ja	.LBB33_67
# BB#3:                                 # %if.end
	cmpl	$1, %ecx
	movl	$0, %r14d
	jne	.LBB33_67
# BB#4:                                 # %if.end.15
	movq	688(%r13), %r15
	movslq	680(%r13), %rcx
	leaq	(%rcx,%r15), %rcx
	movl	$-28, %r14d
	cmpq	704(%r13), %rcx
	ja	.LBB33_67
# BB#5:                                 # %reserve_colors_inline.exit.i
	movq	%rcx, 688(%r13)
	testq	%r15, %r15
	je	.LBB33_67
# BB#6:                                 # %if.end.i
	leaq	80(%rsp), %r14
	movq	%r15, 88(%rsp)
	movq	(%rbp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%r8, 56(%rsp)
	leaq	64(%rsp), %r12
	movq	(%rbx), %rcx
	movq	%rcx, 64(%rsp)
	movq	%r9, 72(%rsp)
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	movq	328(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB33_8
# BB#7:                                 # %if.then.i.58
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI33_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r9), %xmm2            # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r15)
	movss	4(%r8), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r9), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r15)
	movq	16(%r13), %rbx
	leaq	8(%r15), %rbp
	leaq	16(%r15), %rdx
	movq	%r15, %rsi
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB33_19
.LBB33_27:                              # %wedge_vertex_list_find.exit
	testq	%r15, %r15
	je	.LBB33_67
# BB#28:                                # %if.end.36
	addl	%edx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%edx, (%r15)
	jne	.LBB33_67
# BB#29:                                # %lor.lhs.false
	cmpl	%eax, 4(%r15)
	jne	.LBB33_67
# BB#30:                                # %if.end.46
	movq	328(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB33_32
# BB#31:                                # %if.then.i.122
	movss	(%r8), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI33_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r9), %xmm2            # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r10)
	movss	4(%r8), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r9), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r10)
	movq	16(%r13), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	8(%r10), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	16(%r10), %rdx
	movq	%r10, %rsi
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%r10, 40(%rsp)          # 8-byte Spill
	callq	*8(%rdi)
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	(%rsi), %rax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*40(%rax)
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %r9           # 8-byte Reload
	jmp	.LBB33_45
.LBB33_8:                               # %if.else.i
	movslq	24(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB33_19
# BB#9:                                 # %for.body.lr.ph.i
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %rax
	cmpq	$-2, %rax
	je	.LBB33_17
# BB#10:                                # %overflow.checked292
	addq	$2, %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	$-4, %rdx
	je	.LBB33_16
# BB#11:                                # %vector.memcheck320
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	leaq	12(%r15,%rcx,4), %r11
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r8, %rdi
	subq	%rsi, %rdi
	movq	%r9, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%r15,%rsi), %rsi
	leaq	12(%r8,%rcx,4), %rbx
	addq	$8, %rdi
	leaq	12(%r9,%rcx,4), %rdx
	addq	$8, %rbp
	cmpq	%rdi, %r11
	setbe	%dil
	cmpq	%rsi, %rbx
	setbe	%r10b
	cmpq	%rbp, %r11
	setbe	%bl
	cmpq	%rsi, %rdx
	setbe	%dl
	xorl	%esi, %esi
	testb	%r10b, %dil
	jne	.LBB33_16
# BB#12:                                # %vector.memcheck320
	andb	%dl, %bl
	movq	40(%rsp), %r11          # 8-byte Reload
	jne	.LBB33_16
# BB#13:                                # %vector.body288.preheader
	movq	%rcx, %r10
	subq	%r11, %r10
	leaq	8(%r8,%rcx,4), %rdi
	leaq	8(%r9,%rcx,4), %rbp
	leaq	8(%r15,%rcx,4), %rbx
	movq	%rcx, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rsi
	cmovgq	%rdx, %rsi
	leaq	2(%rsi,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI33_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB33_14:                              # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbx)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rbx
	addq	$-4, %rcx
	jne	.LBB33_14
# BB#15:
	movq	%r10, %rcx
	movq	%r11, %rsi
.LBB33_16:                              # %middle.block289
	cmpq	%rsi, %rax
	je	.LBB33_19
.LBB33_17:                              # %for.body.i.preheader
	incq	%rcx
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB33_18:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r8,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r9,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r15,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB33_18
.LBB33_19:                              # %patch_interpolate_color.exit
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	fill_triangle_wedge
	movl	%eax, %r14d
	movq	%r15, 688(%r13)
	jmp	.LBB33_67
.LBB33_32:                              # %if.else.i.95
	movslq	24(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB33_45
# BB#33:                                # %for.body.lr.ph.i.96
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %r11
	cmpq	$-2, %r11
	je	.LBB33_43
# BB#34:                                # %overflow.checked
	addq	$2, %r11
	xorl	%edx, %edx
	movq	%r11, %rax
	andq	$-4, %rax
	je	.LBB33_42
# BB#35:                                # %vector.memcheck
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	12(%r10,%rcx,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r8, %rdi
	subq	%rsi, %rdi
	movq	%r9, %rdx
	subq	%rsi, %rdx
	negq	%rsi
	leaq	8(%r10,%rsi), %rsi
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	leaq	12(%r8,%rcx,4), %r10
	addq	$8, %rdi
	leaq	12(%r9,%rcx,4), %rax
	addq	$8, %rdx
	movq	8(%rsp), %r8            # 8-byte Reload
	cmpq	%rdi, %r8
	setbe	%dil
	cmpq	%rsi, %r10
	setbe	%r10b
	cmpq	%rdx, %r8
	setbe	%r8b
	cmpq	%rsi, %rax
	setbe	%al
	xorl	%edx, %edx
	testb	%r10b, %dil
	jne	.LBB33_36
# BB#37:                                # %vector.memcheck
	andb	%al, %r8b
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	jne	.LBB33_42
# BB#38:                                # %vector.body.preheader
	movq	%rcx, %rax
	subq	16(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	8(%r8,%rcx,4), %rdi
	leaq	8(%r9,%rcx,4), %rsi
	leaq	8(%r10,%rcx,4), %rdx
	movq	%rcx, %r10
	notq	%r10
	cmpq	$-3, %r10
	movq	$-2, %rax
	cmovgq	%r10, %rax
	leaq	2(%rax,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI33_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB33_39:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rsi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rsi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdx)
	addq	$-16, %rdi
	addq	$-16, %rsi
	addq	$-16, %rdx
	addq	$-4, %rcx
	jne	.LBB33_39
# BB#40:
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB33_41
.LBB33_36:
	movq	24(%rsp), %r8           # 8-byte Reload
.LBB33_41:                              # %middle.block
	movq	40(%rsp), %r10          # 8-byte Reload
.LBB33_42:                              # %middle.block
	cmpq	%rdx, %r11
	je	.LBB33_45
.LBB33_43:                              # %for.body.i.109.preheader
	incq	%rcx
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB33_44:                              # %for.body.i.109
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r8,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r9,%rcx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r10,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB33_44
.LBB33_45:                              # %patch_interpolate_color.exit111
	movq	%r10, 40(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movq	%r10, %r9
	callq	fill_wedge_from_list_rec
	movq	40(%rsp), %r8           # 8-byte Reload
	testl	%eax, %eax
	js	.LBB33_66
# BB#46:                                # %if.end.53
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	movq	%r8, %r12
	movq	32(%rsp), %r9           # 8-byte Reload
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB33_65
# BB#47:                                # %if.then.55
	movl	12(%r15), %ecx
	leal	-1(%rcx), %edx
	cmpl	$1, %edx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	ja	.LBB33_67
# BB#48:                                # %if.end.62
	cmpl	$1, %ecx
	movq	%r12, %r8
	jne	.LBB33_66
# BB#49:                                # %if.then.65
	movq	688(%r13), %r14
	movslq	680(%r13), %rax
	leaq	(%rax,%r14), %rcx
	movl	$-28, %eax
	cmpq	704(%r13), %rcx
	ja	.LBB33_66
# BB#50:                                # %reserve_colors_inline.exit.i.134
	movq	%rcx, 688(%r13)
	testq	%r14, %r14
	je	.LBB33_66
# BB#51:                                # %if.end.i.142
	movq	%r8, %r12
	movq	%r14, 88(%rsp)
	movq	(%rbp), %rax
	movq	%rax, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	(%rbx), %rax
	movq	%rax, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	(%r15), %rax
	movq	%rax, 80(%rsp)
	movq	328(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB33_53
# BB#52:                                # %if.then.i.195
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI33_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r14)
	movss	4(%rsi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rdx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r14)
	movq	16(%r13), %rbx
	leaq	8(%r14), %rbp
	leaq	16(%r14), %rdx
	movq	%r14, %rsi
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB33_64
.LBB33_53:                              # %if.else.i.168
	movslq	24(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB33_64
# BB#54:                                # %for.body.lr.ph.i.169
	movq	%rsi, %r15
	movq	%rdx, %r11
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %rax
	cmpq	$-2, %rax
	je	.LBB33_62
# BB#55:                                # %overflow.checked234
	addq	$2, %rax
	xorl	%esi, %esi
	movq	%rax, %r8
	andq	$-4, %r8
	je	.LBB33_61
# BB#56:                                # %vector.memcheck262
	leaq	12(%r14,%rcx,4), %r9
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r15, %rdi
	subq	%rsi, %rdi
	movq	%r11, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%r14,%rsi), %rsi
	leaq	12(%r15,%rcx,4), %rbx
	addq	$8, %rdi
	leaq	12(%r11,%rcx,4), %rdx
	addq	$8, %rbp
	cmpq	%rdi, %r9
	setbe	%dil
	cmpq	%rsi, %rbx
	setbe	%r10b
	cmpq	%rbp, %r9
	setbe	%bl
	cmpq	%rsi, %rdx
	setbe	%dl
	xorl	%esi, %esi
	testb	%r10b, %dil
	jne	.LBB33_61
# BB#57:                                # %vector.memcheck262
	andb	%dl, %bl
	jne	.LBB33_61
# BB#58:                                # %vector.body230.preheader
	movq	%rcx, %r9
	subq	%r8, %r9
	leaq	8(%r15,%rcx,4), %rdi
	leaq	8(%r11,%rcx,4), %rbp
	leaq	8(%r14,%rcx,4), %rbx
	movq	%rcx, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rsi
	cmovgq	%rdx, %rsi
	leaq	2(%rsi,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI33_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB33_59:                              # %vector.body230
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbx)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rbx
	addq	$-4, %rcx
	jne	.LBB33_59
# BB#60:
	movq	%r9, %rcx
	movq	%r8, %rsi
.LBB33_61:                              # %middle.block231
	cmpq	%rsi, %rax
	je	.LBB33_64
.LBB33_62:                              # %for.body.i.182.preheader
	incq	%rcx
	movsd	.LCPI33_0(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB33_63:                              # %for.body.i.182
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r15,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r11,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r14,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB33_63
.LBB33_64:                              # %patch_interpolate_color.exit184
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	leaq	64(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	fill_triangle_wedge
	movq	%r14, 688(%r13)
.LBB33_65:                              # %if.end.68
	movq	%r12, %r8
.LBB33_66:                              # %if.end.68
	movq	%r8, 688(%r13)
	movl	%eax, %r14d
.LBB33_67:                              # %return
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	fill_wedge_from_list_rec, .Lfunc_end33-fill_wedge_from_list_rec
	.cfi_endproc

	.align	16, 0x90
	.type	fill_triangle_wedge,@function
fill_triangle_wedge:                    # @fill_triangle_wedge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp316:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp317:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp318:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp319:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp320:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp321:
	.cfi_def_cfa_offset 112
.Ltmp322:
	.cfi_offset %rbx, -56
.Ltmp323:
	.cfi_offset %r12, -48
.Ltmp324:
	.cfi_offset %r13, -40
.Ltmp325:
	.cfi_offset %r14, -32
.Ltmp326:
	.cfi_offset %r15, -24
.Ltmp327:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	(%r15), %r10d
	movl	4(%r15), %r11d
	movl	(%rsi), %r13d
	movl	4(%rsi), %edx
	movl	%r10d, %eax
	subl	%r13d, %eax
	cltq
	movl	(%r14), %r8d
	movl	4(%r14), %r9d
	movl	%r9d, %ebx
	subl	%edx, %ebx
	movslq	%ebx, %rbx
	imulq	%rax, %rbx
	movl	%r11d, %eax
	subl	%edx, %eax
	cltq
	movl	%r8d, %ecx
	subl	%r13d, %ecx
	movslq	%ecx, %rcx
	imulq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	je	.LBB34_10
# BB#1:                                 # %if.end
	movl	%r13d, %eax
	subl	%r10d, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	movl	%edx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	cmpl	%eax, %ecx
	jle	.LBB34_3
# BB#2:                                 # %if.then.i
	movl	%edx, 48(%rsp)
	movl	%r13d, 52(%rsp)
	movl	%r11d, 40(%rsp)
	movl	%r10d, 44(%rsp)
	movl	%r9d, 32(%rsp)
	movl	%r8d, 36(%rsp)
	movl	$1, %ecx
	leaq	32(%rsp), %rdx
	leaq	40(%rsp), %rbx
	leaq	48(%rsp), %r12
	jmp	.LBB34_4
.LBB34_3:                               # %if.else.i
	xorl	%ecx, %ecx
	movl	%r11d, %r10d
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%r15, %rbx
	movq	%r14, %rdx
.LBB34_4:                               # %if.end.i
	movq	8(%rsi), %r9
	movq	8(%r14), %rax
	cmpl	%r10d, %r13d
	jge	.LBB34_7
# BB#5:                                 # %if.then.61.i
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rdi, %rbp
	movq	%r12, %rsi
	movq	%rdx, %r13
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	fill_wedge_trap
	testl	%eax, %eax
	js	.LBB34_10
# BB#6:                                 # %if.end.65.i
	movq	8(%r14), %r9
	movq	8(%r15), %rax
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	jmp	.LBB34_9
.LBB34_7:                               # %if.else.69.i
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rdi, %rbp
	movq	%r12, %rsi
	movq	%rdx, %r13
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	fill_wedge_trap
	testl	%eax, %eax
	js	.LBB34_10
# BB#8:                                 # %if.end.75.i
	movq	8(%r14), %r9
	movq	8(%r15), %rax
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
.LBB34_9:                               # %fill_triangle_wedge_aux.exit
	callq	fill_wedge_trap
.LBB34_10:                              # %return
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	fill_triangle_wedge, .Lfunc_end34-fill_triangle_wedge
	.cfi_endproc

	.align	16, 0x90
	.type	fill_wedge_trap,@function
fill_wedge_trap:                        # @fill_wedge_trap
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
	subq	$56, %rsp
.Ltmp334:
	.cfi_def_cfa_offset 112
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
	movq	%rcx, %rax
	movq	112(%rsp), %rcx
	movl	4(%rsi), %ebp
	cmpl	4(%rdx), %ebp
	movq	%rdx, %rbp
	cmovlq	%rsi, %rbp
	cmovlq	%rdx, %rsi
	movq	%rcx, %r10
	cmovlq	%r9, %r10
	cmovlq	%rcx, %r9
	movq	(%rbp), %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	(%rsi), %r11
	movq	(%rax), %r15
	movq	(%r8), %r12
	movq	%r11, %r8
	shrq	$32, %r8
	cmpl	$0, 340(%rdi)
	je	.LBB35_1
# BB#3:                                 # %if.end.i
	xorl	%eax, %eax
	cmpl	%r8d, %ecx
	je	.LBB35_12
	jmp	.LBB35_4
.LBB35_1:                               # %land.lhs.true.i
	xorl	%eax, %eax
	cmpl	%r8d, %ecx
	je	.LBB35_12
# BB#2:                                 # %land.lhs.true.i
	movslq	%ecx, %rsi
	addq	$127, %rsi
	andq	$-256, %rsi
	movq	%r11, %rbx
	sarq	$32, %rbx
	addq	$127, %rbx
	andq	$-256, %rbx
	cmpq	%rbx, %rsi
	jge	.LBB35_12
.LBB35_4:                               # %if.end.3.i
	movq	%r15, %r13
	shrq	$32, %r13
	movl	%r12d, %eax
	subl	%r15d, %eax
	movl	%edx, %ebp
	subl	%r15d, %ebp
	movl	%ecx, %ebx
	subl	%r13d, %ebx
	cltq
	movslq	%ebx, %r14
	imulq	%rax, %r14
	movq	%r13, %rsi
	shlq	$32, %rsi
	movq	%r12, %rbx
	subq	%rsi, %rbx
	sarq	$32, %rbx
	movslq	%ebp, %rsi
	imulq	%rbx, %rsi
	cmpq	%rsi, %r14
	jne	.LBB35_5
# BB#7:                                 # %if.else.42.i
	movl	%r11d, %esi
	subl	%r15d, %esi
	movl	%r8d, %ebp
	subl	%r13d, %ebp
	movslq	%ebp, %rbp
	imulq	%rax, %rbp
	movslq	%esi, %rax
	imulq	%rax, %rbx
	cmpq	%rbx, %rbp
	jle	.LBB35_6
	jmp	.LBB35_8
.LBB35_5:                               # %if.then.32.i
	jle	.LBB35_6
.LBB35_8:                               # %if.else.i.i.i
	movq	%rcx, %rax
	shlq	$32, %rax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rsi, %rdx
	orq	%rax, %rdx
	movq	%rdx, 40(%rsp)
	movq	%r11, 48(%rsp)
	movq	%r15, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r12, %r11
	jmp	.LBB35_9
.LBB35_6:                               # %if.then.i.i.9.i
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movq	%rcx, %rax
	shlq	$32, %rax
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andq	%rsi, %rdx
	orq	%rax, %rdx
	movq	%rdx, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rdx, %r15
.LBB35_9:                               # %if.end.i.i.i
	movl	120(%rsp), %eax
	testl	%eax, %eax
	je	.LBB35_11
# BB#10:                                # %if.then.i.3.i.i.i
	incl	%r15d
	movl	%r15d, 24(%rsp)
	incl	%r11d
	movl	%r11d, 32(%rsp)
.LBB35_11:                              # %linear_color_trapezoid.exit.i
	movq	%r9, 8(%rsp)
	movq	%r10, (%rsp)
	leaq	40(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movl	%eax, %r9d
	callq	decompose_linear_color
.LBB35_12:                              # %wedge_trap_decompose.exit
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	fill_wedge_trap, .Lfunc_end35-fill_wedge_trap
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI36_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	fill_wedges_aux,@function
fill_wedges_aux:                        # @fill_wedges_aux
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
	pushq	%r13
.Ltmp344:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp345:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp346:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp347:
	.cfi_def_cfa_offset 176
.Ltmp348:
	.cfi_offset %rbx, -56
.Ltmp349:
	.cfi_offset %r12, -48
.Ltmp350:
	.cfi_offset %r13, -40
.Ltmp351:
	.cfi_offset %r14, -32
.Ltmp352:
	.cfi_offset %r15, -24
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r11
	movq	%rcx, %r12
	movl	%edx, %ebx
	movq	%rdi, %r13
	movl	176(%rsp), %ebp
	cmpl	$2, %esi
	jl	.LBB36_27
# BB#1:                                 # %if.then
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movl	672(%r13), %edi
	testl	%edi, %edi
	jne	.LBB36_9
# BB#2:                                 # %if.then.2
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movl	%edi, %esi
	movl	%ebx, %r10d
	movl	(%r12), %edx
	movl	4(%r12), %edi
	movl	8(%r12), %eax
	cmpl	%eax, %edx
	movl	%edx, %ecx
	cmovgl	%eax, %ecx
	cmovll	%eax, %edx
	movl	12(%r12), %eax
	cmpl	%eax, %edi
	movl	%edi, %r15d
	cmovgl	%eax, %r15d
	cmovll	%eax, %edi
	movl	16(%r12), %eax
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	movl	20(%r12), %eax
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	cmpl	%eax, %edi
	cmovll	%eax, %edi
	movl	24(%r12), %eax
	cmpl	%eax, %ecx
	cmovgl	%eax, %ecx
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	movl	28(%r12), %eax
	cmpl	%eax, %r15d
	cmovgl	%eax, %r15d
	cmpl	%eax, %edi
	cmovll	%eax, %edi
	addl	$-128, %ecx
	addl	$-128, %r15d
	subl	$-128, %edx
	subl	$-128, %edi
	movl	312(%r13), %r9d
	movl	316(%r13), %r8d
	cmpl	%ecx, %r9d
	cmovll	%ecx, %r9d
	movl	320(%r13), %ebp
	cmpl	%edx, %ebp
	cmovgl	%edx, %ebp
	cmpl	%r15d, %r8d
	cmovll	%r15d, %r8d
	movl	324(%r13), %ebx
	cmpl	%edi, %ebx
	cmovgl	%edi, %ebx
	xorl	%eax, %eax
	cmpl	%r9d, %ebp
	jle	.LBB36_31
# BB#3:                                 # %if.then.2
	cmpl	%r8d, %ebx
	jle	.LBB36_31
# BB#4:                                 # %if.end.87
	cmpl	%ebx, %edi
	movl	%r10d, %ebx
	movl	%esi, %edi
	movl	40(%rsp), %esi          # 4-byte Reload
	jne	.LBB36_9
# BB#5:                                 # %if.end.87
	cmpl	%ebp, %edx
	jne	.LBB36_9
# BB#6:                                 # %if.end.87
	cmpl	%r9d, %ecx
	jne	.LBB36_9
# BB#7:                                 # %if.end.87
	cmpl	%r8d, %r15d
	jne	.LBB36_9
# BB#8:                                 # %if.then.114
	movl	$1, 672(%r13)
.LBB36_9:                               # %if.end.118
	movq	688(%r13), %r15
	movslq	680(%r13), %rax
	leaq	(%rax,%r15), %rcx
	movl	$-28, %eax
	cmpq	704(%r13), %rcx
	ja	.LBB36_31
# BB#10:                                # %reserve_colors_inline.exit
	movl	%esi, 40(%rsp)          # 4-byte Spill
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movq	%rcx, 688(%r13)
	testq	%r15, %r15
	je	.LBB36_31
# BB#11:                                # %if.end.122
	movq	328(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB36_13
# BB#12:                                # %if.then.i.73
	movss	(%r11), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI36_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r14), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r15)
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r14), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r15)
	movq	%r14, %rbx
	movq	16(%r13), %r14
	leaq	8(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	16(%r15), %rdx
	movq	%r15, %rsi
	movq	%r11, %rbp
	callq	*8(%rdi)
	movq	(%r14), %rax
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %r14
	callq	*40(%rax)
	movq	%rbp, %r11
	jmp	.LBB36_24
.LBB36_27:                              # %if.else
	testb	$1, %bpl
	je	.LBB36_29
# BB#28:                                # %do.end.146
	leaq	24(%r12), %rdx
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r11, %rcx
	movq	%r14, %r8
	movq	%r11, %r15
	callq	mesh_padding
	movq	%r15, %r11
	testl	%eax, %eax
	js	.LBB36_31
.LBB36_29:                              # %if.end.154
	xorl	%eax, %eax
	cmpl	$2, %ebx
	jl	.LBB36_31
# BB#30:                                # %if.end.154
	andl	$2, %ebp
	je	.LBB36_31
# BB#32:                                # %if.then.160
	movq	%r13, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	movq	%r11, %rcx
	movq	%r14, %r8
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	wedge_by_triangles      # TAILCALL
.LBB36_13:                              # %if.else.i
	movslq	24(%r13), %rcx
	testq	%rcx, %rcx
	jle	.LBB36_24
# BB#14:                                # %for.body.lr.ph.i
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %rax
	cmpq	$-2, %rax
	je	.LBB36_22
# BB#15:                                # %overflow.checked
	addq	$2, %rax
	xorl	%edx, %edx
	movq	%rax, %r9
	andq	$-4, %r9
	je	.LBB36_21
# BB#16:                                # %vector.memcheck
	leaq	12(%r15,%rcx,4), %r8
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r11, %rdi
	subq	%rsi, %rdi
	movq	%r14, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%r15,%rsi), %rsi
	leaq	12(%r11,%rcx,4), %rbx
	addq	$8, %rdi
	leaq	12(%r14,%rcx,4), %rdx
	addq	$8, %rbp
	cmpq	%rdi, %r8
	setbe	%dil
	cmpq	%rsi, %rbx
	setbe	%r10b
	cmpq	%rbp, %r8
	setbe	%bl
	cmpq	%rsi, %rdx
	setbe	%sil
	xorl	%edx, %edx
	testb	%r10b, %dil
	jne	.LBB36_21
# BB#17:                                # %vector.memcheck
	andb	%sil, %bl
	jne	.LBB36_21
# BB#18:                                # %vector.body.preheader
	movq	%rcx, %r8
	subq	%r9, %r8
	leaq	8(%r11,%rcx,4), %rdi
	leaq	8(%r14,%rcx,4), %rsi
	leaq	8(%r15,%rcx,4), %rdx
	movq	%rcx, %rbp
	notq	%rbp
	cmpq	$-3, %rbp
	movq	$-2, %rbx
	cmovgq	%rbp, %rbx
	leaq	2(%rbx,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI36_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB36_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rsi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rsi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdx)
	addq	$-16, %rdi
	addq	$-16, %rsi
	addq	$-16, %rdx
	addq	$-4, %rcx
	jne	.LBB36_19
# BB#20:
	movq	%r8, %rcx
	movq	%r9, %rdx
.LBB36_21:                              # %middle.block
	cmpq	%rdx, %rax
	je	.LBB36_24
.LBB36_22:                              # %for.body.i.69.preheader
	incq	%rcx
	movsd	.LCPI36_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB36_23:                              # %for.body.i.69
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r11,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r14,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r15,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB36_23
.LBB36_24:                              # %patch_interpolate_color.exit
	movq	%r11, 24(%rsp)          # 8-byte Spill
	movq	%r14, 16(%rsp)          # 8-byte Spill
	leaq	80(%rsp), %rdx
	leaq	48(%rsp), %r14
	movl	$1, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	split_curve_s
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movl	44(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, (%rsp)
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	36(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r15, %r9
	callq	fill_wedges_aux
	testl	%eax, %eax
	js	.LBB36_26
# BB#25:                                # %if.then.131
	movl	%r12d, (%rsp)
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%ebx, %edx
	leaq	80(%rsp), %rcx
	movq	%r15, %r8
	movq	16(%rsp), %r9           # 8-byte Reload
	callq	fill_wedges_aux
.LBB36_26:                              # %if.end.136
	movq	%r15, 688(%r13)
	movl	32(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 672(%r13)
.LBB36_31:                              # %cleanup.163
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	fill_wedges_aux, .Lfunc_end36-fill_wedges_aux
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI37_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	wedge_by_triangles,@function
wedge_by_triangles:                     # @wedge_by_triangles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp355:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp356:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp357:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp358:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp359:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp360:
	.cfi_def_cfa_offset 192
.Ltmp361:
	.cfi_offset %rbx, -56
.Ltmp362:
	.cfi_offset %r12, -48
.Ltmp363:
	.cfi_offset %r13, -40
.Ltmp364:
	.cfi_offset %r14, -32
.Ltmp365:
	.cfi_offset %r15, -24
.Ltmp366:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	688(%r14), %rbx
	movslq	680(%r14), %rax
	leaq	(%rax,%rbx), %rcx
	movl	$-28, %eax
	cmpq	704(%r14), %rcx
	ja	.LBB37_21
# BB#1:                                 # %reserve_colors_inline.exit
	movq	%rcx, 688(%r14)
	testq	%rbx, %rbx
	je	.LBB37_21
# BB#2:                                 # %if.end
	movq	%rbx, 56(%rsp)
	leaq	96(%rsp), %rdx
	leaq	64(%rsp), %rsi
	movl	$1, %ecx
	movq	%r13, %rdi
	callq	split_curve_s
	movq	(%r13), %rax
	movq	%rax, 16(%rsp)
	movq	%r12, 24(%rsp)
	leaq	32(%rsp), %r11
	movq	24(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	328(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB37_4
# BB#3:                                 # %if.then.i.27
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI37_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r15), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%rbx)
	movss	4(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r15), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rbx)
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movq	16(%r14), %rbp
	leaq	8(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	movq	%r15, %r13
	movq	%r11, %r15
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbp, %rsi
	movl	8(%rsp), %ebp           # 4-byte Reload
	callq	*40(%rax)
	movq	%r15, %r11
	movq	%r13, %r15
	jmp	.LBB37_16
.LBB37_4:                               # %if.else.i
	movslq	24(%r14), %rcx
	testq	%rcx, %rcx
	jle	.LBB37_16
# BB#5:                                 # %for.body.lr.ph.i
	cmpq	$2, %rcx
	movl	$1, %eax
	cmovlq	%rcx, %rax
	notq	%rax
	leaq	(%rax,%rcx), %r9
	cmpq	$-2, %r9
	je	.LBB37_14
# BB#6:                                 # %overflow.checked
	addq	$2, %r9
	xorl	%esi, %esi
	movq	%r9, %rax
	andq	$-4, %rax
	je	.LBB37_13
# BB#7:                                 # %vector.memcheck
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%ebp, %eax
	leaq	12(%rbx,%rcx,4), %r8
	cmpq	$2, %rcx
	movl	$1, %esi
	cmovlq	%rcx, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r12, %rdi
	subq	%rsi, %rdi
	movq	%r15, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%rbx,%rsi), %rsi
	leaq	12(%r12,%rcx,4), %rdx
	addq	$8, %rdi
	leaq	12(%r15,%rcx,4), %r10
	addq	$8, %rbp
	cmpq	%rdi, %r8
	setbe	%r11b
	cmpq	%rsi, %rdx
	setbe	%r13b
	cmpq	%rbp, %r8
	setbe	%dl
	cmpq	%rsi, %r10
	setbe	%dil
	xorl	%esi, %esi
	testb	%r13b, %r11b
	jne	.LBB37_8
# BB#9:                                 # %vector.memcheck
	andb	%dil, %dl
	movl	%eax, %ebp
	leaq	32(%rsp), %r11
	movq	8(%rsp), %r13           # 8-byte Reload
	jne	.LBB37_13
# BB#10:                                # %vector.body.preheader
	movl	%ebp, %r10d
	movq	%rcx, %r8
	subq	%r13, %r8
	leaq	8(%r12,%rcx,4), %rdi
	leaq	8(%r15,%rcx,4), %rbp
	leaq	8(%rbx,%rcx,4), %rsi
	movq	%rcx, %rdx
	notq	%rdx
	cmpq	$-3, %rdx
	movq	$-2, %rax
	cmovgq	%rdx, %rax
	leaq	2(%rax,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI37_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB37_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rsi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rsi)
	addq	$-16, %rdi
	addq	$-16, %rbp
	addq	$-16, %rsi
	addq	$-4, %rcx
	jne	.LBB37_11
# BB#12:
	movq	%r8, %rcx
	movq	%r13, %rsi
	movl	%r10d, %ebp
	jmp	.LBB37_13
.LBB37_8:
	movl	%eax, %ebp
	leaq	32(%rsp), %r11
.LBB37_13:                              # %middle.block
	cmpq	%rsi, %r9
	je	.LBB37_16
.LBB37_14:                              # %for.body.i.23.preheader
	incq	%rcx
	movsd	.LCPI37_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB37_15:                              # %for.body.i.23
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r12,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r15,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%rbx,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB37_15
.LBB37_16:                              # %patch_interpolate_color.exit
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r11, %rdx
	leaq	48(%rsp), %rcx
	callq	fill_triangle_wedge
	cmpl	$2, %ebp
	je	.LBB37_20
# BB#17:                                # %patch_interpolate_color.exit
	testl	%eax, %eax
	js	.LBB37_20
# BB#18:                                # %if.end.34
	movl	%ebp, %eax
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	leaq	64(%rsp), %rdx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	wedge_by_triangles
	testl	%eax, %eax
	js	.LBB37_20
# BB#19:                                # %if.then.36
	movq	%r14, %rdi
	movl	%ebp, %esi
	leaq	96(%rsp), %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	callq	wedge_by_triangles
.LBB37_20:                              # %out
	movq	%rbx, 688(%r14)
.LBB37_21:                              # %cleanup
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	wedge_by_triangles, .Lfunc_end37-wedge_by_triangles
	.cfi_endproc

	.align	16, 0x90
	.type	split_curve_s,@function
split_curve_s:                          # @split_curve_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp367:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp368:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp369:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp370:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp371:
	.cfi_def_cfa_offset 48
.Ltmp372:
	.cfi_offset %rbx, -48
.Ltmp373:
	.cfi_offset %r12, -40
.Ltmp374:
	.cfi_offset %r14, -32
.Ltmp375:
	.cfi_offset %r15, -24
.Ltmp376:
	.cfi_offset %rbp, -16
	movslq	%ecx, %r8
	movl	(%rdi,%r8,8), %r11d
	leal	(%r8,%r8), %eax
	movslq	%eax, %r9
	movl	(%rdi,%r9,8), %r10d
	movl	%r10d, %eax
	orl	%r11d, %r10d
	movl	(%rdi), %ebx
	movl	%ebx, %r12d
	orl	%r11d, %ebx
	sarl	%r11d
	sarl	%eax
	addl	%r11d, %eax
	andl	$1, %r10d
	addl	%eax, %r10d
	movl	4(%rdi,%r8,8), %eax
	movl	%eax, %r15d
	sarl	%r15d
	movl	4(%rdi,%r9,8), %r14d
	movl	%r14d, %ebp
	sarl	%ebp
	addl	%r15d, %ebp
	orl	%eax, %r14d
	andl	$1, %r14d
	addl	%ebp, %r14d
	sarl	%r12d
	addl	%r11d, %r12d
	andl	$1, %ebx
	addl	%r12d, %ebx
	movl	%ebx, (%rsi,%r8,8)
	movl	4(%rdi), %ebp
	orl	%ebp, %eax
	sarl	%ebp
	addl	%r15d, %ebp
	andl	$1, %eax
	addl	%ebp, %eax
	movl	%eax, 4(%rsi,%r8,8)
	movl	(%rdi,%r9,8), %eax
	leal	(%rcx,%rcx,2), %ecx
	movslq	%ecx, %r11
	movl	(%rdi,%r11,8), %ebp
	movl	%ebp, %ebx
	orl	%eax, %ebp
	sarl	%eax
	sarl	%ebx
	addl	%eax, %ebx
	andl	$1, %ebp
	addl	%ebx, %ebp
	movl	%ebp, (%rdx,%r9,8)
	movl	4(%rdi,%r9,8), %eax
	movl	4(%rdi,%r11,8), %ebp
	movl	%ebp, %ebx
	orl	%eax, %ebp
	sarl	%eax
	sarl	%ebx
	addl	%eax, %ebx
	andl	$1, %ebp
	addl	%ebx, %ebp
	movl	%ebp, 4(%rdx,%r9,8)
	movl	(%rsi,%r8,8), %eax
	movl	%eax, %ebp
	sarl	%ebp
	movl	%r10d, %ebx
	sarl	%ebx
	addl	%ebx, %ebp
	orl	%r10d, %eax
	andl	$1, %eax
	addl	%ebp, %eax
	movl	%eax, (%rsi,%r9,8)
	movl	4(%rsi,%r8,8), %eax
	movl	%eax, %ebp
	sarl	%ebp
	movl	%r14d, %ecx
	sarl	%ecx
	addl	%ecx, %ebp
	orl	%r14d, %eax
	andl	$1, %eax
	addl	%ebp, %eax
	movl	%eax, 4(%rsi,%r9,8)
	movl	(%rdx,%r9,8), %eax
	orl	%eax, %r10d
	sarl	%eax
	addl	%ebx, %eax
	andl	$1, %r10d
	addl	%eax, %r10d
	movl	%r10d, (%rdx,%r8,8)
	movl	4(%rdx,%r9,8), %eax
	orl	%eax, %r14d
	sarl	%eax
	addl	%ecx, %eax
	andl	$1, %r14d
	addl	%eax, %r14d
	movl	%r14d, 4(%rdx,%r8,8)
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	4(%rdi), %eax
	movl	%eax, 4(%rsi)
	movl	(%rsi,%r9,8), %eax
	movl	(%rdx,%r8,8), %ecx
	movl	%ecx, %ebp
	orl	%eax, %ecx
	sarl	%eax
	sarl	%ebp
	addl	%eax, %ebp
	andl	$1, %ecx
	addl	%ebp, %ecx
	movl	%ecx, (%rdx)
	movl	%ecx, (%rsi,%r11,8)
	movl	4(%rsi,%r9,8), %eax
	movl	4(%rdx,%r8,8), %ecx
	movl	%ecx, %ebp
	orl	%eax, %ecx
	sarl	%eax
	sarl	%ebp
	addl	%eax, %ebp
	andl	$1, %ecx
	addl	%ebp, %ecx
	movl	%ecx, 4(%rdx)
	movl	%ecx, 4(%rsi,%r11,8)
	movl	(%rdi,%r11,8), %eax
	movl	%eax, (%rdx,%r11,8)
	movl	4(%rdi,%r11,8), %eax
	movl	%eax, 4(%rdx,%r11,8)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	split_curve_s, .Lfunc_end38-split_curve_s
	.cfi_endproc

	.align	16, 0x90
	.type	fill_stripe,@function
fill_stripe:                            # @fill_stripe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp377:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp378:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp379:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp380:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp381:
	.cfi_def_cfa_offset 48
	subq	$64, %rsp
.Ltmp382:
	.cfi_def_cfa_offset 112
.Ltmp383:
	.cfi_offset %rbx, -48
.Ltmp384:
	.cfi_offset %r12, -40
.Ltmp385:
	.cfi_offset %r14, -32
.Ltmp386:
	.cfi_offset %r15, -24
.Ltmp387:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	644(%r14), %ecx
	movups	8(%rbx), %xmm0
	movups	%xmm0, 44(%rsp)
	movl	24(%rbx), %eax
	movl	%eax, 36(%rsp)
	movl	28(%rbx), %eax
	movl	%eax, 40(%rsp)
	movl	(%rbx), %edi
	movl	4(%rbx), %esi
	leaq	16(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %r12d
	movl	8(%rbx), %eax
	movl	12(%rbx), %ecx
	movl	%eax, %edx
	subl	(%rbx), %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	%ecx, %edx
	subl	4(%rbx), %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	addl	%esi, %edi
	movl	16(%rbx), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	addl	%edi, %eax
	movl	20(%rbx), %esi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movl	24(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	addl	%ecx, %edx
	movl	28(%rbx), %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %r12d
	jg	.LBB39_2
# BB#1:                                 # %entry
	movb	%al, %r12b
.LBB39_2:                               # %entry
	movl	$1, %r15d
	movl	$1, %ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	movl	644(%r14), %ecx
	movups	104(%rbx), %xmm0
	movups	%xmm0, 44(%rsp)
	movl	120(%rbx), %eax
	movl	%eax, 36(%rsp)
	movl	124(%rbx), %eax
	movl	%eax, 40(%rsp)
	movl	96(%rbx), %edi
	movl	100(%rbx), %esi
	leaq	16(%rsp), %rdx
	callq	gx_curve_log2_samples
	movl	%eax, %r12d
	movl	104(%rbx), %eax
	movl	108(%rbx), %ecx
	movl	%eax, %edx
	subl	96(%rbx), %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	%ecx, %edx
	subl	100(%rbx), %edx
	movl	%edx, %edi
	negl	%edi
	cmovll	%edx, %edi
	addl	%esi, %edi
	movl	112(%rbx), %edx
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	cmovll	%esi, %eax
	addl	%edi, %eax
	movl	116(%rbx), %esi
	movl	%esi, %edi
	subl	%ecx, %edi
	movl	%edi, %ecx
	negl	%ecx
	cmovll	%edi, %ecx
	addl	%eax, %ecx
	movl	120(%rbx), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	addl	%ecx, %edx
	movl	124(%rbx), %eax
	subl	%esi, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$48, %rdi
	addq	%rax, %rdi
	shrq	$16, %rdi
	callq	ilog2
	cmpl	%eax, %r12d
	jg	.LBB39_4
# BB#3:                                 # %entry
	movb	%al, %r12b
.LBB39_4:                               # %entry
	movb	%r12b, %cl
	shll	%cl, %r15d
	cmpl	%r15d, %ebp
	movl	%r15d, %r12d
	cmovgel	%ebp, %r12d
	movq	128(%rbx), %r10
	cmpl	%r12d, %ebp
	je	.LBB39_7
# BB#5:                                 # %fill_wedges.exit
	movq	136(%rbx), %r9
	movups	(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	16(%rbx), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	%r12d, %eax
	cltd
	idivl	%ebp
	movl	$2, (%rsp)
	leaq	16(%rsp), %rcx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	%eax, %edx
	movq	%r10, %r8
	callq	fill_wedges_aux
	testl	%eax, %eax
	js	.LBB39_12
# BB#6:                                 # %fill_wedges.exit.do.end_crit_edge
	movq	128(%rbx), %r10
.LBB39_7:                               # %do.end
	leaq	96(%rbx), %rdx
	movq	144(%rbx), %r8
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	callq	mesh_padding
	testl	%eax, %eax
	js	.LBB39_12
# BB#8:                                 # %do.end.41
	leaq	24(%rbx), %rsi
	leaq	120(%rbx), %rdx
	movq	136(%rbx), %rcx
	movq	152(%rbx), %r8
	movq	%r14, %rdi
	callq	mesh_padding
	testl	%eax, %eax
	js	.LBB39_12
# BB#9:                                 # %if.end.57
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	decompose_stripe
	testl	%eax, %eax
	js	.LBB39_12
# BB#10:                                # %if.end.61
	xorl	%eax, %eax
	cmpl	%r12d, %r15d
	je	.LBB39_12
# BB#11:                                # %if.end.i.109
	movq	144(%rbx), %r8
	movq	152(%rbx), %r9
	movups	96(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	112(%rbx), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	%r12d, %eax
	cltd
	idivl	%r15d
	movl	$2, (%rsp)
	leaq	16(%rsp), %rcx
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%eax, %edx
	callq	fill_wedges_aux
.LBB39_12:                              # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	fill_stripe, .Lfunc_end39-fill_stripe
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI40_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI40_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	decompose_stripe,@function
decompose_stripe:                       # @decompose_stripe
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp388:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp389:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp390:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp391:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp392:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp393:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp394:
	.cfi_def_cfa_offset 480
.Ltmp395:
	.cfi_offset %rbx, -56
.Ltmp396:
	.cfi_offset %r12, -48
.Ltmp397:
	.cfi_offset %r13, -40
.Ltmp398:
	.cfi_offset %r14, -32
.Ltmp399:
	.cfi_offset %r15, -24
.Ltmp400:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$2, %edx
	jl	.LBB40_47
# BB#1:                                 # %if.then
	movl	672(%r14), %r10d
	testl	%r10d, %r10d
	jne	.LBB40_12
# BB#2:                                 # %if.then.2
	movl	(%r15), %r9d
	movl	4(%r15), %r8d
	xorl	%r11d, %r11d
	movl	%r8d, %edi
	movl	%r9d, %esi
	movl	%r8d, %ecx
	movl	%r9d, %ebx
	jmp	.LBB40_3
	.align	16, 0x90
.LBB40_4:                               # %for.cond.12.preheader.i.for.cond.12.preheader.i_crit_edge
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	32(%r15,%r11), %r9d
	movl	36(%r15,%r11), %r8d
	movq	%rax, %r11
.LBB40_3:                               # %for.cond.12.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r9d, %ebx
	cmovgl	%r9d, %ebx
	cmpl	%r8d, %ecx
	cmovgl	%r8d, %ecx
	cmpl	%r9d, %esi
	cmovll	%r9d, %esi
	cmpl	%r8d, %edi
	cmovll	%r8d, %edi
	movl	8(%r15,%r11), %eax
	movl	12(%r15,%r11), %ebp
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	movl	16(%r15,%r11), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	movl	20(%r15,%r11), %ebp
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	movl	24(%r15,%r11), %eax
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	movl	28(%r15,%r11), %ebp
	cmpl	%ebp, %ecx
	cmovgl	%ebp, %ecx
	cmpl	%eax, %esi
	cmovll	%eax, %esi
	cmpl	%ebp, %edi
	cmovll	%ebp, %edi
	leaq	32(%r11), %rax
	cmpq	$128, %rax
	jne	.LBB40_4
# BB#5:                                 # %tensor_patch_bbox.exit
	movl	312(%r14), %r9d
	movl	316(%r14), %r8d
	cmpl	%ebx, %r9d
	cmovll	%ebx, %r9d
	movl	320(%r14), %r11d
	cmpl	%esi, %r11d
	cmovgl	%esi, %r11d
	cmpl	%ecx, %r8d
	cmovll	%ecx, %r8d
	movl	324(%r14), %ebp
	cmpl	%edi, %ebp
	cmovgl	%edi, %ebp
	xorl	%eax, %eax
	cmpl	%r9d, %r11d
	jle	.LBB40_85
# BB#6:                                 # %tensor_patch_bbox.exit
	cmpl	%r8d, %ebp
	jle	.LBB40_85
# BB#7:                                 # %if.end.61
	cmpl	%ebp, %edi
	jne	.LBB40_12
# BB#8:                                 # %if.end.61
	cmpl	%r11d, %esi
	jne	.LBB40_12
# BB#9:                                 # %if.end.61
	cmpl	%r9d, %ebx
	jne	.LBB40_12
# BB#10:                                # %if.end.61
	cmpl	%r8d, %ecx
	jne	.LBB40_12
# BB#11:                                # %if.then.84
	movl	$1, 672(%r14)
.LBB40_12:                              # %if.end.88
	movq	688(%r14), %rdi
	movslq	680(%r14), %rcx
	leaq	(%rdi,%rcx,2), %rsi
	movl	$-28, %eax
	cmpq	704(%r14), %rsi
	ja	.LBB40_85
# BB#13:                                # %reserve_colors_inline.exit
	movq	%rsi, 688(%r14)
	testq	%rdi, %rdi
	je	.LBB40_85
# BB#14:                                # %if.end.91
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%r10d, 28(%rsp)         # 4-byte Spill
	leaq	(%rcx,%rdi), %rax
	movq	%rdi, 392(%rsp)
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rax, 408(%rsp)
	leaq	256(%rsp), %rsi
	leaq	96(%rsp), %rdx
	movl	$1, %ecx
	movq	%r15, %rdi
	callq	split_curve_s
	leaq	32(%r15), %rdi
	leaq	288(%rsp), %rsi
	leaq	128(%rsp), %rdx
	movl	$1, %ecx
	callq	split_curve_s
	leaq	64(%r15), %rdi
	leaq	320(%rsp), %rsi
	leaq	160(%rsp), %rdx
	movl	$1, %ecx
	callq	split_curve_s
	leaq	96(%r15), %rdi
	leaq	352(%rsp), %rsi
	leaq	192(%rsp), %rdx
	movl	$1, %ecx
	callq	split_curve_s
	movq	128(%r15), %rdx
	movq	%rdx, 384(%rsp)
	movq	144(%r15), %r11
	movq	%r11, 400(%rsp)
	movq	392(%rsp), %rsi
	movq	%rsi, 224(%rsp)
	movq	408(%rsp), %r12
	movq	%r12, 240(%rsp)
	movq	136(%r15), %r13
	movq	328(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB40_15
# BB#30:                                # %patch_interpolate_color.exit.i
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI40_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%r13), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	movss	4(%rdx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r13), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r14), %rbp
	leaq	8(%rsi), %r13
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r14), %rdi
	movq	144(%r15), %r11
	movq	152(%r15), %rdx
	leaq	152(%r15), %rbx
	testq	%rdi, %rdi
	je	.LBB40_31
# BB#86:                                # %if.then.i.84.i
	movss	(%r11), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI40_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%rdx), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%r12)
	movss	4(%r11), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%rdx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%r12)
	movq	16(%r14), %rbp
	leaq	8(%r12), %r13
	leaq	16(%r12), %rdx
	movq	%r12, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	jmp	.LBB40_44
.LBB40_47:                              # %if.else
	leaq	256(%rsp), %rbp
	xorl	%esi, %esi
	movl	$96, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	(%r15), %rax
	movq	%rax, 32(%rsp)
	leaq	48(%rsp), %rax
	movq	24(%r15), %rcx
	movq	%rcx, 48(%rsp)
	leaq	64(%rsp), %rcx
	movq	96(%r15), %rdx
	movq	%rdx, 64(%rsp)
	leaq	80(%rsp), %rdx
	movq	120(%r15), %rsi
	movq	%rsi, 80(%rsp)
	movq	128(%r15), %rsi
	movq	%rsi, 40(%rsp)
	movq	136(%r15), %rsi
	movq	%rsi, 56(%rsp)
	movq	144(%r15), %rsi
	movq	%rsi, 72(%rsp)
	movq	152(%r15), %rsi
	movq	%rsi, 88(%rsp)
	leaq	32(%rsp), %rsi
	movq	%rsi, 96(%rsp)
	movq	%rax, 104(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rbp, 128(%rsp)
	leaq	280(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	304(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	328(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	96(%rsp), %rsi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fill_quadrangle
	testl	%eax, %eax
	js	.LBB40_85
# BB#48:                                # %if.end.114
	movq	264(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB40_57
# BB#49:                                # %if.then.i.106
	movq	96(%rsp), %rax
	movq	104(%rsp), %rcx
	movq	8(%rcx), %r9
	movq	8(%rax), %r8
	movq	272(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB40_85
# BB#50:                                # %if.end.i.110
	movq	264(%rsp), %rsi
	movq	272(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB40_56
# BB#51:                                # %if.then.i.i.111
	testq	%rcx, %rcx
	je	.LBB40_85
# BB#52:                                # %if.end.i.i.116
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB40_55
	.align	16, 0x90
.LBB40_53:                              # %for.body.i.i.i.120
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB40_53
# BB#54:                                # %for.end.loopexit.i.i.i.121
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB40_55:                              # %release_wedge_vertex_list_interval.exit.i.i.125
	movq	264(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 264(%rsp)
	jmp	.LBB40_57
.LBB40_15:                              # %if.else.i.i
	movslq	24(%r14), %r10
	testq	%r10, %r10
	jle	.LBB40_29
# BB#16:                                # %for.body.lr.ph.i.i
	cmpq	$2, %r10
	movl	$1, %eax
	cmovlq	%r10, %rax
	notq	%rax
	leaq	(%rax,%r10), %r9
	cmpq	$-2, %r9
	jne	.LBB40_18
# BB#17:
	movq	%r10, %rcx
	jmp	.LBB40_27
.LBB40_56:                              # %if.else.i.i.126
	testq	%rcx, %rcx
	jne	.LBB40_85
.LBB40_57:                              # %if.end.126
	movq	288(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB40_66
# BB#58:                                # %if.then.i.139
	movq	104(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	8(%rcx), %r9
	movq	8(%rax), %r8
	movq	296(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB40_85
# BB#59:                                # %if.end.i.143
	movq	288(%rsp), %rsi
	movq	296(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB40_65
# BB#60:                                # %if.then.i.i.144
	testq	%rcx, %rcx
	je	.LBB40_85
# BB#61:                                # %if.end.i.i.149
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB40_64
	.align	16, 0x90
.LBB40_62:                              # %for.body.i.i.i.153
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB40_62
# BB#63:                                # %for.end.loopexit.i.i.i.154
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB40_64:                              # %release_wedge_vertex_list_interval.exit.i.i.158
	movq	288(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 288(%rsp)
	jmp	.LBB40_66
.LBB40_31:                              # %patch_interpolate_color.exit.i.if.else.i.58.i_crit_edge
	movl	24(%r14), %r10d
	jmp	.LBB40_32
.LBB40_65:                              # %if.else.i.i.159
	testq	%rcx, %rcx
	jne	.LBB40_85
.LBB40_66:                              # %if.end.139
	movq	312(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB40_75
# BB#67:                                # %if.then.i.70
	movq	112(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	8(%rax), %r9
	movq	8(%rcx), %r8
	movq	320(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB40_85
# BB#68:                                # %if.end.i.74
	movq	312(%rsp), %rsi
	movq	320(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB40_74
# BB#69:                                # %if.then.i.i.75
	testq	%rcx, %rcx
	je	.LBB40_85
# BB#70:                                # %if.end.i.i.80
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB40_73
	.align	16, 0x90
.LBB40_71:                              # %for.body.i.i.i.84
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB40_71
# BB#72:                                # %for.end.loopexit.i.i.i.85
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB40_73:                              # %release_wedge_vertex_list_interval.exit.i.i.89
	movq	312(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 312(%rsp)
	jmp	.LBB40_75
.LBB40_74:                              # %if.else.i.i.90
	testq	%rcx, %rcx
	jne	.LBB40_85
.LBB40_75:                              # %if.end.152
	movq	336(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB40_85
# BB#76:                                # %if.then.i.58
	movq	104(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	8(%rax), %r9
	movq	8(%rcx), %r8
	movq	344(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB40_85
# BB#77:                                # %if.end.i.59
	movq	336(%rsp), %rsi
	movq	344(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB40_83
# BB#78:                                # %if.then.i.i
	testq	%rcx, %rcx
	je	.LBB40_85
# BB#79:                                # %if.end.i.i
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB40_82
.LBB40_80:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB40_80
# BB#81:                                # %for.end.loopexit.i.i.i
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB40_82:                              # %release_wedge_vertex_list_interval.exit.i.i
	movq	336(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 336(%rsp)
	jmp	.LBB40_84
.LBB40_18:                              # %overflow.checked
	addq	$2, %r9
	xorl	%eax, %eax
	movq	%r9, %rcx
	andq	$-4, %rcx
	je	.LBB40_19
# BB#20:                                # %vector.memcheck
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	12(%rsi,%r10,4), %rbp
	cmpq	$2, %r10
	movl	$1, %ecx
	cmovlq	%r10, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%rsi, %rdi
	subq	%rcx, %rdi
	addq	$8, %rdi
	leaq	12(%rdx,%r10,4), %r8
	movq	%rdx, %rbx
	subq	%rcx, %rbx
	addq	$8, %rbx
	leaq	12(%r13,%r10,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%r13, %rax
	subq	%rcx, %rax
	addq	$8, %rax
	cmpq	%rbx, %rbp
	setbe	%bl
	cmpq	%rdi, %r8
	setbe	%r8b
	cmpq	%rax, %rbp
	setbe	%cl
	cmpq	%rdi, 8(%rsp)           # 8-byte Folded Reload
	setbe	%dil
	xorl	%eax, %eax
	testb	%r8b, %bl
	jne	.LBB40_21
# BB#22:                                # %vector.memcheck
	andb	%dil, %cl
	movq	%r10, %rcx
	jne	.LBB40_26
# BB#23:                                # %vector.body.preheader
	movq	%r10, %rcx
	subq	(%rsp), %rcx            # 8-byte Folded Reload
	leaq	8(%rdx,%r10,4), %rdi
	leaq	8(%r13,%r10,4), %rax
	leaq	8(%rsi,%r10,4), %rbp
	movq	%r10, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rbx
	cmovgq	%r8, %rbx
	leaq	2(%rbx,%r10), %r8
	andq	$-4, %r8
	movapd	.LCPI40_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB40_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rax), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rax), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbp)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbp)
	addq	$-16, %rdi
	addq	$-16, %rax
	addq	$-16, %rbp
	addq	$-4, %r8
	jne	.LBB40_24
# BB#25:
	movq	(%rsp), %rax            # 8-byte Reload
	jmp	.LBB40_26
.LBB40_83:                              # %if.else.i.i.60
	testq	%rcx, %rcx
	jne	.LBB40_85
.LBB40_84:                              # %for.inc.critedge.i.i
	xorl	%eax, %eax
	jmp	.LBB40_85
.LBB40_19:
	movq	%r10, %rcx
	jmp	.LBB40_26
.LBB40_21:
	movq	%r10, %rcx
.LBB40_26:                              # %middle.block
	cmpq	%rax, %r9
	je	.LBB40_29
.LBB40_27:                              # %for.body.i.i.preheader
	incq	%rcx
	movsd	.LCPI40_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB40_28:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rdx,%rcx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r13,%rcx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%rsi,%rcx,4)
	decq	%rcx
	cmpq	$1, %rcx
	jg	.LBB40_28
.LBB40_29:                              # %patch_interpolate_color.exit.thread.i
	leaq	152(%r15), %rbx
	movq	152(%r15), %rdx
.LBB40_32:                              # %if.else.i.58.i
	testl	%r10d, %r10d
	jle	.LBB40_44
# BB#33:                                # %for.body.lr.ph.i.59.i
	movslq	%r10d, %rsi
	cmpq	$2, %rsi
	movl	$1, %eax
	cmovlq	%rsi, %rax
	notq	%rax
	leaq	(%rax,%rsi), %r9
	cmpq	$-2, %r9
	je	.LBB40_42
# BB#34:                                # %overflow.checked253
	addq	$2, %r9
	xorl	%eax, %eax
	movq	%r9, %rcx
	andq	$-4, %rcx
	je	.LBB40_41
# BB#35:                                # %vector.memcheck284
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	12(%r12,%rsi,4), %rax
	cmpq	$2, %rsi
	movl	$1, %ecx
	cmovlq	%rsi, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%r12, %rdi
	subq	%rcx, %rdi
	addq	$8, %rdi
	leaq	12(%r11,%rsi,4), %r13
	movq	%r11, %rbp
	subq	%rcx, %rbp
	addq	$8, %rbp
	leaq	12(%rdx,%rsi,4), %rbx
	movq	%rdx, %r8
	subq	%rcx, %r8
	addq	$8, %r8
	cmpq	%rbp, %rax
	setbe	%bpl
	cmpq	%rdi, %r13
	setbe	%r13b
	cmpq	%r8, %rax
	setbe	%cl
	cmpq	%rdi, %rbx
	setbe	%bl
	xorl	%eax, %eax
	testb	%r13b, %bpl
	jne	.LBB40_40
# BB#36:                                # %vector.memcheck284
	andb	%bl, %cl
	movq	(%rsp), %r13            # 8-byte Reload
	jne	.LBB40_40
# BB#37:                                # %vector.body249.preheader
	subq	%r13, %rsi
	movslq	%r10d, %rcx
	leaq	8(%r11,%rcx,4), %rdi
	leaq	8(%rdx,%rcx,4), %rax
	leaq	8(%r12,%rcx,4), %rbp
	movq	%rcx, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rbx
	cmovgq	%r8, %rbx
	leaq	2(%rbx,%rcx), %rcx
	andq	$-4, %rcx
	movapd	.LCPI40_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB40_38:                              # %vector.body249
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rax), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rax), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rbp)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rbp)
	addq	$-16, %rdi
	addq	$-16, %rax
	addq	$-16, %rbp
	addq	$-4, %rcx
	jne	.LBB40_38
# BB#39:
	movq	%r13, %rax
.LBB40_40:                              # %middle.block250
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB40_41:                              # %middle.block250
	cmpq	%rax, %r9
	je	.LBB40_44
.LBB40_42:                              # %for.body.i.72.i.preheader
	incq	%rsi
	movsd	.LCPI40_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB40_43:                              # %for.body.i.72.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r11,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rdx,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r12,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB40_43
.LBB40_44:
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	136(%r15), %rax
	movq	%rax, 232(%rsp)
	movq	(%rbx), %rax
	movq	%rax, 248(%rsp)
	movl	%ecx, %ebx
	shrl	$31, %ebx
	addl	%ecx, %ebx
	sarl	%ebx
	leaq	256(%rsp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	decompose_stripe
	testl	%eax, %eax
	js	.LBB40_46
# BB#45:                                # %if.then.95
	leaq	96(%rsp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	decompose_stripe
.LBB40_46:                              # %if.end.98
	movq	%rbp, 688(%r14)
	movl	%r12d, 672(%r14)
.LBB40_85:                              # %return
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	decompose_stripe, .Lfunc_end40-decompose_stripe
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI41_3:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_1:
	.quad	4593671619917905920     # double 0.125
.LCPI41_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	fill_quadrangle,@function
fill_quadrangle:                        # @fill_quadrangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp401:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp402:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp403:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp404:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp405:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp406:
	.cfi_def_cfa_offset 56
	subq	$1288, %rsp             # imm = 0x508
.Ltmp407:
	.cfi_def_cfa_offset 1344
.Ltmp408:
	.cfi_offset %rbx, -56
.Ltmp409:
	.cfi_offset %r12, -48
.Ltmp410:
	.cfi_offset %r13, -40
.Ltmp411:
	.cfi_offset %r14, -32
.Ltmp412:
	.cfi_offset %r15, -24
.Ltmp413:
	.cfi_offset %rbp, -16
	movl	%edx, 156(%rsp)         # 4-byte Spill
	movq	%rdi, %r14
	movl	660(%r14), %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movl	664(%r14), %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	movl	672(%r14), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movq	(%rsi), %rbx
	testl	%eax, %eax
	je	.LBB41_2
# BB#1:                                 # %entry.if.end.77_crit_edge
	movl	(%rbx), %r8d
	movl	4(%rbx), %r15d
	leaq	8(%rsi), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	movl	(%rax), %ebp
	movl	4(%rax), %r12d
	leaq	16(%rsi), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	(%rcx), %r11d
	movl	4(%rcx), %r10d
	leaq	24(%rsi), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	24(%rsi), %r9
	movq	%rsi, %r13
                                        # implicit-def: EAX
	movl	%eax, 148(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 160(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 208(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 176(%rsp)         # 4-byte Spill
                                        # implicit-def: EDI
                                        # implicit-def: EAX
	movl	%eax, 224(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 168(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 152(%rsp)         # 4-byte Spill
	jmp	.LBB41_8
.LBB41_2:                               # %if.then
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	24(%rsi), %r9
	movl	(%rbx), %r8d
	movl	4(%rbx), %r15d
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	(%rax), %ebp
	movl	4(%rax), %r12d
	cmpl	%ebp, %r8d
	movl	%r8d, %ebx
	cmovgl	%ebp, %ebx
	movl	%r8d, %eax
	cmovll	%ebp, %eax
	cmpl	%r12d, %r15d
	movl	%r15d, %edi
	cmovgl	%r12d, %edi
	movl	%r15d, %edx
	cmovll	%r12d, %edx
	movl	(%rcx), %r11d
	movl	4(%rcx), %r10d
	movl	%edx, %ecx
	cmpl	%r11d, %ebx
	cmovgl	%r11d, %ebx
	cmpl	%r11d, %eax
	cmovll	%r11d, %eax
	cmpl	%r10d, %edi
	cmovgl	%r10d, %edi
	cmpl	%r10d, %ecx
	cmovll	%r10d, %ecx
	testq	%r9, %r9
	je	.LBB41_3
# BB#4:                                 # %if.end.78.i
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movl	%eax, %edx
	movl	(%r9), %eax
	movl	%ecx, %esi
	movl	4(%r9), %ecx
	cmpl	%eax, %ebx
	cmovgl	%eax, %ebx
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	movl	%edx, %eax
	cmpl	%ecx, %edi
	cmovgl	%ecx, %edi
	cmpl	%ecx, %esi
	cmovll	%ecx, %esi
	movl	%esi, %ecx
	jmp	.LBB41_5
.LBB41_3:
	movq	%rsi, 96(%rsp)          # 8-byte Spill
.LBB41_5:                               # %bbox_of_points.exit
	movl	%edi, 224(%rsp)         # 4-byte Spill
	movl	%eax, 168(%rsp)         # 4-byte Spill
	movl	312(%r14), %r13d
	movl	316(%r14), %esi
	cmpl	%ebx, %r13d
	cmovll	%ebx, %r13d
	movl	%r13d, 176(%rsp)        # 4-byte Spill
	movl	320(%r14), %edx
	cmpl	%eax, %edx
	cmovgl	%eax, %edx
	movl	%edx, 160(%rsp)         # 4-byte Spill
	cmpl	%edi, %esi
	cmovll	%edi, %esi
	movl	324(%r14), %edi
	cmpl	%ecx, %edi
	cmovgl	%ecx, %edi
	xorl	%eax, %eax
	cmpl	%r13d, %edx
	jle	.LBB41_333
# BB#6:                                 # %bbox_of_points.exit
	movl	%ecx, 152(%rsp)         # 4-byte Spill
	cmpl	%esi, %edi
	movl	%edi, 148(%rsp)         # 4-byte Spill
	jle	.LBB41_333
# BB#7:
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movq	96(%rsp), %r13          # 8-byte Reload
	leaq	8(%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	16(%r13), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	24(%r13), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%ebx, %edi
	movq	128(%rsp), %rbx         # 8-byte Reload
.LBB41_8:                               # %if.end.77
	movl	%r8d, %eax
	subl	%ebp, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	(%r9), %ecx
	movl	4(%r9), %eax
	movl	%r11d, %esi
	subl	%ecx, %esi
	movl	%esi, %edx
	negl	%edx
	cmovll	%esi, %edx
	cvtsi2sdl	%edx, %xmm8
	movl	%r15d, %edx
	subl	%r12d, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	cvtsi2sdl	%esi, %xmm7
	movl	%r10d, %edx
	subl	%eax, %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	cvtsi2sdl	%esi, %xmm6
	subl	%r11d, %r8d
	movl	%r8d, %edx
	negl	%edx
	cmovll	%r8d, %edx
	cvtsi2sdl	%edx, %xmm2
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	negl	%ecx
	cmovll	%ebp, %ecx
	cvtsi2sdl	%ecx, %xmm4
	subl	%r10d, %r15d
	movl	%r15d, %ecx
	negl	%ecx
	cmovll	%r15d, %ecx
	cvtsi2sdl	%ecx, %xmm5
	subl	%eax, %r12d
	movl	%r12d, %eax
	negl	%eax
	cmovll	%r12d, %eax
	cvtsi2sdl	%eax, %xmm3
	movapd	%xmm1, %xmm11
	maxsd	%xmm8, %xmm11
	movapd	%xmm7, %xmm0
	maxsd	%xmm6, %xmm0
	maxsd	%xmm0, %xmm11
	movapd	%xmm2, %xmm12
	maxsd	%xmm4, %xmm12
	movapd	%xmm5, %xmm0
	maxsd	%xmm3, %xmm0
	maxsd	%xmm0, %xmm12
	movq	%r14, %r15
	cvtsi2sdl	640(%r15), %xmm10
	ucomisd	%xmm10, %xmm12
	ja	.LBB41_11
# BB#9:                                 # %if.end.77
	ucomisd	%xmm10, %xmm11
	ja	.LBB41_11
# BB#10:                                # %if.then.1775
	movl	656(%r15), %edx
	testl	%edx, %edx
	movl	$constant_color_quadrangle, %eax
	movl	$triangles4, %ecx
	cmoveq	%rax, %rcx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	*%rcx
	jmp	.LBB41_333
.LBB41_11:                              # %if.end.1780
	movq	%rbx, %rax
	xorl	%r12d, %r12d
	cmpl	$0, 236(%rsp)           # 4-byte Folded Reload
	movl	$0, %ecx
	jne	.LBB41_18
# BB#12:                                # %if.then.1783
	movsd	%xmm3, 40(%rsp)         # 8-byte Spill
	movsd	%xmm5, 48(%rsp)         # 8-byte Spill
	movsd	%xmm4, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 64(%rsp)         # 8-byte Spill
	movsd	%xmm7, 80(%rsp)         # 8-byte Spill
	movsd	%xmm8, 88(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	movl	%edi, %ebx
	movq	8(%rax), %rsi
	movq	8(%r9), %rdx
	movq	328(%r15), %rdi
	leaq	1016(%rsp), %rcx
	callq	*16(%rdi)
	testl	%eax, %eax
	cmovnsl	1016(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB41_14
# BB#13:                                # %if.end.i.394
	movb	336(%r15), %cl
	shll	%cl, %eax
	movl	%eax, %edx
	andl	$1, %edx
	shrl	%eax
	andl	$1, %eax
	movl	%eax, %r12d
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	88(%rsp), %xmm8         # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	80(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	64(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jmp	.LBB41_15
.LBB41_14:                              # %is_quadrangle_color_monotonic.exit
	xorl	%r12d, %r12d
	testl	%eax, %eax
	movl	$0, %edx
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	88(%rsp), %xmm8         # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	80(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
	movsd	64(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	56(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	48(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	js	.LBB41_333
.LBB41_15:                              # %if.end.1788
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	ucomisd	%xmm10, %xmm11
	cmovbel	%eax, %edx
	ucomisd	%xmm10, %xmm12
	cmovbel	%eax, %r12d
	movl	%edx, %eax
	orl	%r12d, %eax
	movq	%rdx, %rcx
	je	.LBB41_16
# BB#17:                                # %if.end.1801
	cmpl	$0, 660(%r15)
	movl	%ebx, %edi
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB41_18
	jmp	.LBB41_64
.LBB41_16:                              # %if.end.1801.thread1000
	movl	$1, 660(%r15)
	movl	%ebx, %edi
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB41_18:                              # %land.lhs.true.1804
	cmpl	$0, 664(%r15)
	je	.LBB41_20
# BB#19:
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%r12d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	%r13, %r14
	jmp	.LBB41_65
.LBB41_20:                              # %if.then.1807
	testl	%r12d, %r12d
	movl	224(%rsp), %r11d        # 4-byte Reload
	je	.LBB41_24
# BB#21:                                # %if.then.1807
	testl	%ecx, %ecx
	je	.LBB41_24
# BB#22:                                # %if.then.1811
	xorl	%edx, %edx
	ucomisd	%xmm12, %xmm11
	movq	%r13, %r14
	ja	.LBB41_62
# BB#23:                                # %if.else.1815
	xorl	%ecx, %ecx
	movl	%r12d, %edx
	jmp	.LBB41_62
.LBB41_24:                              # %if.else.1817
	movl	%ecx, %eax
	orl	%r12d, %eax
	movq	%r13, %r14
	je	.LBB41_26
# BB#25:
	movl	%r12d, %edx
	jmp	.LBB41_62
.LBB41_26:                              # %land.lhs.true.1821
	cmpl	$0, 668(%r15)
	je	.LBB41_28
# BB#27:
	movl	%r12d, %edx
	jmp	.LBB41_62
.LBB41_28:                              # %if.then.1823
	movl	%edi, 108(%rsp)         # 4-byte Spill
	addsd	%xmm8, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm6, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	addsd	%xmm4, %xmm2
	addsd	%xmm5, %xmm2
	addsd	%xmm3, %xmm2
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	ucomisd	%xmm2, %xmm1
	movq	%rcx, %rbx
	movl	208(%rsp), %ecx         # 4-byte Reload
	jbe	.LBB41_36
# BB#29:                                # %if.else.i.i
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movq	8(%rax), %rbx
	movq	8(%rcx), %rdx
	movq	%r15, %rbp
	movq	16(%rbp), %r13
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rdx, %r15
	callq	function_linearity
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB41_30
# BB#31:                                # %if.end.i.i
	movq	(%r13), %rax
	movq	8(%rbp), %rsi
	movq	288(%rbp), %rdx
	addq	$8, %rbx
	movq	%r15, %r8
	addq	$8, %r8
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%rbp), %rcx
	movq	%rbp, %r15
	movq	%rcx, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rbx, %rcx
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	callq	*120(%rax)
	testl	%eax, %eax
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	jle	.LBB41_35
# BB#32:                                # %if.end.i.402
	cmpl	$0, 668(%r15)
	jne	.LBB41_36
# BB#33:                                # %if.else.i.14.i
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rbx
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	%r15, %rbp
	movq	16(%rbp), %r13
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rdx, %r15
	callq	function_linearity
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB41_34
.LBB41_30:
	movq	%rbp, %r15
	movl	$1, %ebx
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	jmp	.LBB41_36
.LBB41_34:                              # %if.end.i.27.i
	movq	(%r13), %rax
	movq	8(%rbp), %rsi
	movq	288(%rbp), %rdx
	addq	$8, %rbx
	movq	%r15, %r8
	addq	$8, %r8
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%rbp), %rcx
	movq	%rbp, %r15
	movq	%rcx, 8(%rsp)
	movq	$0, (%rsp)
	movq	%rbx, %rcx
	xorl	%ebx, %ebx
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	callq	*120(%rax)
	testl	%eax, %eax
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	jg	.LBB41_36
.LBB41_35:                              # %is_quadrangle_color_linear_by_u.exit
	testl	%eax, %eax
	movl	$1, %ebx
	js	.LBB41_333
.LBB41_36:                              # %if.end.1839
	ucomisd	%xmm10, %xmm12
	jbe	.LBB41_37
# BB#39:                                # %if.then.1841
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movl	%ecx, %r12d
	movq	%r15, %rbp
	movl	668(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB41_43
# BB#40:                                # %if.else.i.i.415
	movq	(%r14), %rax
	movq	16(%r14), %rcx
	movq	8(%rax), %r13
	movq	8(%rcx), %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	16(%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	callq	function_linearity
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$1, %edx
	ucomisd	%xmm1, %xmm0
	movl	%r12d, %ecx
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movq	%rbx, %r15
	ja	.LBB41_47
# BB#41:                                # %if.end.i.i.427
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	8(%rbp), %rsi
	movq	288(%rbp), %rdx
	addq	$8, %r13
	movq	88(%rsp), %r8           # 8-byte Reload
	addq	$8, %r8
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%rbp), %rbx
	movq	%rbx, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movl	%ecx, %ebx
	movq	%r13, %rcx
	callq	*120(%rax)
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movl	%ebx, %ecx
	testl	%eax, %eax
	jle	.LBB41_46
# BB#42:                                # %if.end.i.if.end_crit_edge.i.429
	movq	%r15, %rbx
	movl	%ecx, %r12d
	movl	668(%rbp), %eax
.LBB41_43:                              # %if.end.i.435
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	%r12d, %ecx
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movq	%rbx, %r15
	jne	.LBB41_47
# BB#44:                                # %if.else.i.14.i.441
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r12
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r13
	movq	16(%rbp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%ecx, %ebx
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	callq	function_linearity
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movl	%ebx, %ecx
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	$1, %edx
	ucomisd	%xmm1, %xmm0
	ja	.LBB41_47
# BB#45:                                # %if.end.i.27.i.454
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rdi), %rax
	movq	8(%rbp), %rsi
	movq	288(%rbp), %rdx
	addq	$8, %r12
	addq	$8, %r13
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%rbp), %rbx
	movq	%rbx, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movl	%ecx, %ebx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	*120(%rax)
	xorl	%edx, %edx
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	movl	%ebx, %ecx
	testl	%eax, %eax
	jg	.LBB41_47
.LBB41_46:                              # %is_quadrangle_color_linear_by_v.exit
	movl	$1, %edx
	testl	%eax, %eax
	js	.LBB41_333
.LBB41_47:                              # %if.end.1850
	movq	%r15, %rbx
	ucomisd	%xmm10, %xmm11
	jbe	.LBB41_48
# BB#49:                                # %if.then.1854
	movq	%rdx, %r12
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movq	%rbp, %r15
	movl	668(%r15), %eax
	testl	%eax, %eax
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	224(%rsp), %r11d        # 4-byte Reload
	jne	.LBB41_53
# BB#50:                                # %if.else.i.i.467
	movq	(%r14), %rax
	movq	24(%r14), %rcx
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	8(%rax), %r13
	movq	8(%rcx), %r14
	movq	16(%r15), %rbp
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	callq	function_linearity
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%r15), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	ja	.LBB41_58
# BB#51:                                # %if.end.i.i.479
	movq	(%rbp), %rax
	movq	8(%r15), %rsi
	movq	288(%r15), %rdx
	addq	$8, %r13
	addq	$8, %r14
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	*120(%rax)
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	testl	%eax, %eax
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	96(%rsp), %r14          # 8-byte Reload
	movl	108(%rsp), %edi         # 4-byte Reload
	jle	.LBB41_57
# BB#52:                                # %if.end.i.if.end_crit_edge.i.481
	movl	668(%r15), %eax
	movq	200(%rsp), %rcx         # 8-byte Reload
.LBB41_53:                              # %if.end.i.487
	testl	%eax, %eax
	je	.LBB41_55
# BB#54:
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movl	108(%rsp), %edi         # 4-byte Reload
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movq	%rbx, %rcx
	movq	%r12, %rdx
	jmp	.LBB41_62
.LBB41_37:
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movl	%r12d, %edx
	movl	224(%rsp), %r11d        # 4-byte Reload
	jmp	.LBB41_38
.LBB41_48:
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	%rbp, %r15
.LBB41_38:                              # %if.end.1876
	movl	108(%rsp), %edi         # 4-byte Reload
	movq	%rbx, %rcx
.LBB41_62:                              # %if.end.1876
	movl	%edx, %eax
	orl	%ecx, %eax
	je	.LBB41_334
# BB#63:
	movq	%r14, %r13
	movl	%r11d, 224(%rsp)        # 4-byte Spill
	movl	%edx, %r12d
.LBB41_64:                              # %if.end.1883
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	cmpl	$0, 664(%r15)
	movl	%r12d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	%r13, %r14
	jne	.LBB41_65
	jmp	.LBB41_155
.LBB41_334:                             # %if.then.1880
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	$1, 664(%r15)
.LBB41_65:                              # %if.else.1887
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movq	8(%rax), %r12
	movq	8(%rcx), %r10
	movl	24(%r15), %r9d
	testl	%r9d, %r9d
	jle	.LBB41_335
# BB#66:                                # %for.body.i.i.preheader
	movq	%r15, %r13
	movq	%r14, %r15
	leal	-1(%r9), %ebp
	leaq	1(%rbp), %rcx
	xorl	%edi, %edi
	movq	%rcx, %rax
	andq	%r8, %rax
	je	.LBB41_73
# BB#67:                                # %vector.body.preheader
	leaq	1(%rbp), %rsi
	andq	%r8, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rdi
	shrq	$3, %rdi
	xorl	%edx, %edx
	btq	$3, %rsi
	jb	.LBB41_69
# BB#68:                                # %vector.body.prol
	movups	16(%r10), %xmm0
	movups	32(%r10), %xmm1
	movups	16(%r12), %xmm2
	movups	32(%r12), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 1032(%rsp)
	movups	%xmm1, 1048(%rsp)
	movl	$8, %edx
.LBB41_69:                              # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB41_72
# BB#70:                                # %vector.body.preheader.split.split
	leaq	1(%rbp), %rdi
	andq	%r8, %rdi
	.align	16, 0x90
.LBB41_71:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	16(%r10,%rdx,4), %xmm0
	movups	32(%r10,%rdx,4), %xmm1
	movups	16(%r12,%rdx,4), %xmm2
	movups	32(%r12,%rdx,4), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 1032(%rsp,%rdx,4)
	movups	%xmm1, 1048(%rsp,%rdx,4)
	movups	48(%r10,%rdx,4), %xmm0
	movups	64(%r10,%rdx,4), %xmm1
	movups	48(%r12,%rdx,4), %xmm2
	movups	64(%r12,%rdx,4), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 1064(%rsp,%rdx,4)
	movups	%xmm1, 1080(%rsp,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB41_71
.LBB41_72:
	movq	%rax, %rdi
.LBB41_73:                              # %middle.block
	movl	%r11d, %r14d
	cmpq	%rdi, %rcx
	je	.LBB41_76
# BB#74:                                # %for.body.i.i.preheader1414
	movl	%r9d, %eax
	subl	%edi, %eax
	leaq	1032(%rsp,%rdi,4), %rcx
	leaq	16(%r12,%rdi,4), %rdx
	leaq	16(%r10,%rdi,4), %rdi
	.align	16, 0x90
.LBB41_75:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%rdx), %xmm0
	movss	%xmm0, (%rcx)
	addq	$4, %rcx
	addq	$4, %rdx
	addq	$4, %rdi
	decl	%eax
	jne	.LBB41_75
.LBB41_76:                              # %for.body.i.275.i.preheader
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	leaq	1(%rbp), %r11
	xorl	%edx, %edx
	movq	%r11, %rbx
	andq	%r8, %rbx
	je	.LBB41_83
# BB#77:                                # %vector.body1139.preheader
	leaq	1(%rbp), %rsi
	andq	%r8, %rsi
	addq	$-8, %rsi
	movq	%rsi, %rax
	shrq	$3, %rax
	xorl	%edx, %edx
	btq	$3, %rsi
	jb	.LBB41_79
# BB#78:                                # %vector.body1139.prol
	movups	16(%rcx), %xmm0
	movups	32(%rcx), %xmm1
	movups	16(%rdi), %xmm2
	movups	32(%rdi), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 760(%rsp)
	movups	%xmm1, 776(%rsp)
	movl	$8, %edx
.LBB41_79:                              # %vector.body1139.preheader.split
	testq	%rax, %rax
	je	.LBB41_82
# BB#80:                                # %vector.body1139.preheader.split.split
	incq	%rbp
	andq	%r8, %rbp
	.align	16, 0x90
.LBB41_81:                              # %vector.body1139
                                        # =>This Inner Loop Header: Depth=1
	movups	16(%rcx,%rdx,4), %xmm0
	movups	32(%rcx,%rdx,4), %xmm1
	movups	16(%rdi,%rdx,4), %xmm2
	movups	32(%rdi,%rdx,4), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 760(%rsp,%rdx,4)
	movups	%xmm1, 776(%rsp,%rdx,4)
	movups	48(%rcx,%rdx,4), %xmm0
	movups	64(%rcx,%rdx,4), %xmm1
	movups	48(%rdi,%rdx,4), %xmm2
	movups	64(%rdi,%rdx,4), %xmm3
	subps	%xmm2, %xmm0
	subps	%xmm3, %xmm1
	movups	%xmm0, 792(%rsp,%rdx,4)
	movups	%xmm1, 808(%rsp,%rdx,4)
	addq	$16, %rdx
	cmpq	%rdx, %rbp
	jne	.LBB41_81
.LBB41_82:
	movq	%rbx, %rdx
.LBB41_83:                              # %middle.block1140
	cmpq	%rdx, %r11
	jne	.LBB41_85
# BB#84:
	movl	%r14d, %r11d
	jmp	.LBB41_87
.LBB41_335:                             # %color_diff.exit.i.thread
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %rcx
	jmp	.LBB41_88
.LBB41_85:                              # %for.body.i.275.i.preheader1413
	movl	%r9d, %eax
	subl	%edx, %eax
	leaq	760(%rsp,%rdx,4), %rbp
	leaq	16(%rdi,%rdx,4), %rbx
	leaq	16(%rcx,%rdx,4), %rdx
	xorl	%esi, %esi
	movl	%r14d, %r11d
	.align	16, 0x90
.LBB41_86:                              # %for.body.i.275.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx,%rsi,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	subss	(%rbx,%rsi,4), %xmm0
	movss	%xmm0, (%rbp,%rsi,4)
	incq	%rsi
	cmpl	%esi, %eax
	jne	.LBB41_86
.LBB41_87:
	movq	%r15, %r14
	movq	%r13, %r15
.LBB41_88:                              # %color_diff.exit276.i
	movss	1032(%rsp), %xmm8       # xmm8 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm8, %xmm0
	xorpd	%xmm1, %xmm1
	movaps	%xmm8, %xmm2
	cmpltss	%xmm1, %xmm2
	movaps	%xmm2, %xmm3
	andnps	%xmm8, %xmm3
	andps	%xmm0, %xmm2
	orps	%xmm3, %xmm2
	movss	384(%r15), %xmm9        # xmm9 = mem[0],zero,zero,zero
	divss	%xmm9, %xmm2
	cvtss2sd	%xmm2, %xmm15
	cmpl	$2, %r9d
	jl	.LBB41_89
# BB#90:                                # %for.body.i.262.i.preheader
	movl	$1, %edx
	testb	$1, %r9b
	jne	.LBB41_91
# BB#92:                                # %for.body.i.262.i.prol
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	movss	1036(%rsp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm3
	xorpd	%xmm4, %xmm4
	movaps	%xmm2, %xmm5
	cmpltss	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	andnps	%xmm2, %xmm4
	andps	%xmm3, %xmm5
	orps	%xmm4, %xmm5
	divss	388(%r15), %xmm5
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm5, %xmm2
	maxsd	%xmm2, %xmm15
	movl	$2, %edx
	jmp	.LBB41_93
.LBB41_89:
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	jmp	.LBB41_96
.LBB41_91:
	movsd	%xmm10, 128(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
.LBB41_93:                              # %for.body.i.262.i.preheader.split
	cmpl	$2, %r9d
	je	.LBB41_96
# BB#94:                                # %for.body.i.262.i.preheader.split.split
	movl	%r9d, %eax
	subl	%edx, %eax
	leaq	388(%r15,%rdx,4), %rbp
	leaq	1036(%rsp,%rdx,4), %rbx
	movaps	.LCPI41_0(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm3, %xmm3
	.align	16, 0x90
.LBB41_95:                              # %for.body.i.262.i
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rbx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	(%rbx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm6
	xorps	%xmm2, %xmm6
	movaps	%xmm4, %xmm7
	cmpltss	%xmm3, %xmm7
	andps	%xmm7, %xmm6
	andnps	%xmm4, %xmm7
	orps	%xmm6, %xmm7
	divss	-4(%rbp), %xmm7
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm7, %xmm4
	maxsd	%xmm4, %xmm15
	movaps	%xmm5, %xmm4
	xorps	%xmm2, %xmm4
	movaps	%xmm5, %xmm6
	cmpltss	%xmm3, %xmm6
	andps	%xmm6, %xmm4
	andnps	%xmm5, %xmm6
	orps	%xmm4, %xmm6
	divss	(%rbp), %xmm6
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm6, %xmm4
	maxsd	%xmm4, %xmm15
	addq	$8, %rbp
	addq	$8, %rbx
	addl	$-2, %eax
	jne	.LBB41_95
.LBB41_96:                              # %color_norm.exit264.i
	movss	760(%rsp), %xmm10       # xmm10 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm10, %xmm2
	movaps	%xmm10, %xmm3
	cmpltss	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	andnps	%xmm10, %xmm1
	andps	%xmm2, %xmm3
	orps	%xmm1, %xmm3
	divss	%xmm9, %xmm3
	cvtss2sd	%xmm3, %xmm4
	cmpl	$2, %r9d
	jl	.LBB41_102
# BB#97:                                # %for.body.i.236.i.preheader
	movl	$1, %edx
	testb	$1, %r9b
	jne	.LBB41_99
# BB#98:                                # %for.body.i.236.i.prol
	movss	764(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm1, %xmm5
	cmpltss	%xmm3, %xmm5
	movaps	%xmm5, %xmm3
	andnps	%xmm1, %xmm3
	andps	%xmm2, %xmm5
	orps	%xmm3, %xmm5
	divss	388(%r15), %xmm5
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	maxsd	%xmm1, %xmm4
	movl	$2, %edx
.LBB41_99:                              # %for.body.i.236.i.preheader.split
	cmpl	$2, %r9d
	je	.LBB41_102
# BB#100:                               # %for.body.i.236.i.preheader.split.split
	movl	%r9d, %eax
	subl	%edx, %eax
	leaq	388(%r15,%rdx,4), %rbp
	leaq	764(%rsp,%rdx,4), %rbx
	movaps	.LCPI41_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm2
	.align	16, 0x90
.LBB41_101:                             # %for.body.i.236.i
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movss	(%rbx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	movaps	%xmm3, %xmm6
	xorps	%xmm1, %xmm6
	movaps	%xmm3, %xmm7
	cmpltss	%xmm2, %xmm7
	andps	%xmm7, %xmm6
	andnps	%xmm3, %xmm7
	orps	%xmm6, %xmm7
	divss	-4(%rbp), %xmm7
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm7, %xmm3
	maxsd	%xmm3, %xmm4
	movaps	%xmm5, %xmm3
	xorps	%xmm1, %xmm3
	movaps	%xmm5, %xmm6
	cmpltss	%xmm2, %xmm6
	andps	%xmm6, %xmm3
	andnps	%xmm5, %xmm6
	orps	%xmm3, %xmm6
	divss	(%rbp), %xmm6
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm6, %xmm3
	maxsd	%xmm3, %xmm4
	addq	$8, %rbp
	addq	$8, %rbx
	addl	$-2, %eax
	jne	.LBB41_101
.LBB41_102:                             # %color_norm.exit238.i
	movss	16(%rdi), %xmm12        # xmm12 = mem[0],zero,zero,zero
	movss	16(%r12), %xmm13        # xmm13 = mem[0],zero,zero,zero
	movaps	%xmm12, %xmm2
	subss	%xmm13, %xmm2
	movaps	.LCPI41_0(%rip), %xmm5  # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm2, %xmm5
	xorps	%xmm3, %xmm3
	movaps	%xmm2, %xmm6
	cmpltss	%xmm3, %xmm6
	movaps	%xmm6, %xmm7
	andnps	%xmm2, %xmm7
	andps	%xmm5, %xmm6
	orps	%xmm7, %xmm6
	divss	%xmm9, %xmm6
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm6, %xmm2
	cmpl	$2, %r9d
	jl	.LBB41_105
# BB#103:                               # %for.body.i.210.i.preheader
	leal	-1(%r9), %eax
	leaq	388(%r15), %rbp
	leaq	20(%r12), %rbx
	leaq	20(%rdi), %rdx
	movaps	.LCPI41_0(%rip), %xmm5  # xmm5 = [2147483648,2147483648,2147483648,2147483648]
	.align	16, 0x90
.LBB41_104:                             # %for.body.i.210.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	subss	(%rbx), %xmm6
	movaps	%xmm6, %xmm7
	cmpltss	%xmm3, %xmm7
	movaps	%xmm7, %xmm1
	andnps	%xmm6, %xmm1
	xorps	%xmm5, %xmm6
	andps	%xmm6, %xmm7
	orps	%xmm1, %xmm7
	divss	(%rbp), %xmm7
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm7, %xmm1
	maxsd	%xmm1, %xmm2
	addq	$4, %rbp
	addq	$4, %rbx
	addq	$4, %rdx
	decl	%eax
	jne	.LBB41_104
.LBB41_105:                             # %color_span.exit212.i
	movss	16(%rcx), %xmm14        # xmm14 = mem[0],zero,zero,zero
	movss	16(%r10), %xmm11        # xmm11 = mem[0],zero,zero,zero
	movaps	%xmm14, %xmm1
	subss	%xmm11, %xmm1
	movaps	.LCPI41_0(%rip), %xmm6  # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm6
	movaps	%xmm1, %xmm7
	cmpltss	%xmm3, %xmm7
	movaps	%xmm7, %xmm3
	andnps	%xmm1, %xmm3
	andps	%xmm6, %xmm7
	orps	%xmm3, %xmm7
	divss	%xmm9, %xmm7
	xorps	%xmm6, %xmm6
	cvtss2sd	%xmm7, %xmm6
	cmpl	$2, %r9d
	jl	.LBB41_336
# BB#106:                               # %for.body.i.180.i.preheader
	movaps	%xmm8, 64(%rsp)         # 16-byte Spill
	leal	-1(%r9), %eax
	leaq	388(%r15), %rbp
	leaq	20(%r10), %rbx
	leaq	20(%rcx), %rdx
	movaps	.LCPI41_0(%rip), %xmm8  # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm7, %xmm7
	.align	16, 0x90
.LBB41_107:                             # %for.body.i.180.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm5           # xmm5 = mem[0],zero,zero,zero
	subss	(%rbx), %xmm5
	movaps	%xmm5, %xmm1
	cmpltss	%xmm7, %xmm1
	movaps	%xmm1, %xmm0
	andnps	%xmm5, %xmm0
	xorps	%xmm8, %xmm5
	andps	%xmm5, %xmm1
	orps	%xmm0, %xmm1
	divss	(%rbp), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	maxsd	%xmm0, %xmm6
	addq	$4, %rbp
	addq	$4, %rbx
	addq	$4, %rdx
	decl	%eax
	jne	.LBB41_107
# BB#108:                               # %for.body.i.150.i.preheader
	subss	%xmm13, %xmm14
	movaps	.LCPI41_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm14, %xmm0
	xorps	%xmm13, %xmm13
	movaps	%xmm14, %xmm1
	cmpltss	%xmm13, %xmm1
	movaps	%xmm1, %xmm5
	andnps	%xmm14, %xmm5
	andps	%xmm0, %xmm1
	orps	%xmm5, %xmm1
	divss	%xmm9, %xmm1
	cvtss2sd	%xmm1, %xmm1
	leal	-1(%r9), %eax
	leaq	388(%r15), %rbp
	addq	$20, %r12
	addq	$20, %rcx
	.align	16, 0x90
.LBB41_109:                             # %for.body.i.150.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%r12), %xmm0
	movaps	%xmm0, %xmm5
	cmpltss	%xmm13, %xmm5
	movaps	%xmm5, %xmm7
	andnps	%xmm0, %xmm7
	xorps	%xmm8, %xmm0
	andps	%xmm0, %xmm5
	orps	%xmm7, %xmm5
	divss	(%rbp), %xmm5
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	maxsd	%xmm0, %xmm1
	addq	$4, %rbp
	addq	$4, %r12
	addq	$4, %rcx
	decl	%eax
	jne	.LBB41_109
# BB#110:                               # %for.body.i.121.i.preheader
	subss	%xmm11, %xmm12
	movaps	.LCPI41_0(%rip), %xmm11 # xmm11 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm12, %xmm11
	xorps	%xmm13, %xmm13
	movaps	%xmm12, %xmm5
	cmpltss	%xmm13, %xmm5
	movaps	%xmm5, %xmm0
	andnps	%xmm12, %xmm0
	andps	%xmm11, %xmm5
	orps	%xmm0, %xmm5
	divss	%xmm9, %xmm5
	cvtss2sd	%xmm5, %xmm5
	leal	-1(%r9), %eax
	leaq	388(%r15), %rcx
	addq	$20, %r10
	addq	$20, %rdi
	.align	16, 0x90
.LBB41_111:                             # %for.body.i.121.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm7           # xmm7 = mem[0],zero,zero,zero
	subss	(%r10), %xmm7
	movaps	%xmm7, %xmm0
	cmpltss	%xmm13, %xmm0
	movaps	%xmm0, %xmm3
	andnps	%xmm7, %xmm3
	xorps	%xmm8, %xmm7
	andps	%xmm7, %xmm0
	orps	%xmm3, %xmm0
	divss	(%rcx), %xmm0
	cvtss2sd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm5
	addq	$4, %rcx
	addq	$4, %r10
	addq	$4, %rdi
	decl	%eax
	jne	.LBB41_111
# BB#112:
	movaps	64(%rsp), %xmm8         # 16-byte Reload
	jmp	.LBB41_113
.LBB41_336:                             # %color_span.exit152.thread.i
	subss	%xmm13, %xmm14
	movaps	.LCPI41_0(%rip), %xmm0  # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	movaps	%xmm14, %xmm1
	xorps	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	movaps	%xmm14, %xmm5
	cmpltss	%xmm3, %xmm5
	movaps	%xmm5, %xmm7
	andnps	%xmm14, %xmm7
	andps	%xmm1, %xmm5
	orps	%xmm7, %xmm5
	divss	%xmm9, %xmm5
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm5, %xmm1
	subss	%xmm11, %xmm12
	xorps	%xmm12, %xmm0
	movaps	%xmm12, %xmm5
	cmpltss	%xmm3, %xmm5
	movaps	%xmm5, %xmm3
	andnps	%xmm12, %xmm3
	andps	%xmm0, %xmm5
	orps	%xmm3, %xmm5
	divss	%xmm9, %xmm5
	cvtss2sd	%xmm5, %xmm5
.LBB41_113:                             # %color_span.exit.i
	cmpl	$0, 668(%r15)
	movl	108(%rsp), %edi         # 4-byte Reload
	je	.LBB41_126
# BB#114:                               # %if.then.i.519
	movsd	648(%r15), %xmm3        # xmm3 = mem[0],zero
	ucomisd	%xmm15, %xmm3
	sbbb	%cl, %cl
	ucomisd	%xmm4, %xmm3
	sbbb	%al, %al
	orb	%cl, %al
	andb	$1, %al
	ucomisd	%xmm5, %xmm3
	jb	.LBB41_119
# BB#115:                               # %if.then.i.519
	ucomisd	%xmm1, %xmm3
	jb	.LBB41_119
# BB#116:                               # %if.then.i.519
	ucomisd	%xmm6, %xmm3
	jb	.LBB41_119
# BB#117:                               # %if.then.i.519
	ucomisd	%xmm2, %xmm3
	jb	.LBB41_119
# BB#118:                               # %if.then.i.519
	testb	%al, %al
	je	.LBB41_122
.LBB41_119:                             # %if.end.i.520
	testb	%al, %al
	je	.LBB41_120
# BB#123:                               # %if.end.76.i
	ucomisd	%xmm2, %xmm3
	jb	.LBB41_126
# BB#124:                               # %if.end.76.i
	ucomisd	%xmm6, %xmm3
	jb	.LBB41_126
# BB#125:                               # %if.then.82.i
	movl	$1, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB41_121
.LBB41_126:                             # %if.end.87.i.522
	movl	%edi, %ebx
	testl	%r9d, %r9d
	jle	.LBB41_138
# BB#127:                               # %for.body.i.108.i.preheader
	subss	%xmm8, %xmm10
	movss	%xmm10, 488(%rsp)
	cmpl	$1, %r9d
	je	.LBB41_138
# BB#128:                               # %for.body.i.108.for.body.i.108_crit_edge.i.preheader
	leal	-2(%r9), %esi
	leaq	1(%rsi), %rdx
	leaq	2(%rsi), %rcx
	andq	%r8, %rdx
	orq	$1, %rdx
	movl	$1, %edi
	cmpq	$1, %rdx
	je	.LBB41_135
# BB#129:                               # %vector.body1167.preheader
	leaq	1(%rsi), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	movl	$1, %eax
	btq	$3, %rdi
	jb	.LBB41_131
# BB#130:                               # %vector.body1167.prol
	movups	764(%rsp), %xmm0
	movups	780(%rsp), %xmm1
	movups	1036(%rsp), %xmm3
	movups	1052(%rsp), %xmm5
	subps	%xmm3, %xmm0
	subps	%xmm5, %xmm1
	movups	%xmm0, 492(%rsp)
	movups	%xmm1, 508(%rsp)
	movl	$9, %eax
.LBB41_131:                             # %vector.body1167.preheader.split
	testq	%rbp, %rbp
	je	.LBB41_134
# BB#132:                               # %vector.body1167.preheader.split.split
	incq	%rsi
	andq	%r8, %rsi
	decq	%rax
	.align	16, 0x90
.LBB41_133:                             # %vector.body1167
                                        # =>This Inner Loop Header: Depth=1
	movups	764(%rsp,%rax,4), %xmm0
	movups	780(%rsp,%rax,4), %xmm1
	movups	1036(%rsp,%rax,4), %xmm3
	movups	1052(%rsp,%rax,4), %xmm5
	subps	%xmm3, %xmm0
	subps	%xmm5, %xmm1
	movups	%xmm0, 492(%rsp,%rax,4)
	movups	%xmm1, 508(%rsp,%rax,4)
	movups	796(%rsp,%rax,4), %xmm0
	movups	812(%rsp,%rax,4), %xmm1
	movups	1068(%rsp,%rax,4), %xmm3
	movups	1084(%rsp,%rax,4), %xmm5
	subps	%xmm3, %xmm0
	subps	%xmm5, %xmm1
	movups	%xmm0, 524(%rsp,%rax,4)
	movups	%xmm1, 540(%rsp,%rax,4)
	addq	$16, %rax
	cmpq	%rax, %rsi
	jne	.LBB41_133
.LBB41_134:
	movq	%rdx, %rdi
.LBB41_135:                             # %middle.block1168
	cmpq	%rdi, %rcx
	je	.LBB41_138
# BB#136:                               # %for.body.i.108.for.body.i.108_crit_edge.i.preheader1412
	leaq	488(%rsp,%rdi,4), %rax
	movl	%r9d, %ecx
	subl	%edi, %ecx
	leaq	760(%rsp,%rdi,4), %rdx
	leaq	1032(%rsp,%rdi,4), %rsi
	.align	16, 0x90
.LBB41_137:                             # %for.body.i.108.for.body.i.108_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	(%rsi), %xmm0
	movss	%xmm0, (%rax)
	addq	$4, %rax
	addq	$4, %rdx
	addq	$4, %rsi
	decl	%ecx
	jne	.LBB41_137
.LBB41_138:                             # %color_diff.exit109.i
	maxsd	%xmm4, %xmm15
	maxsd	%xmm6, %xmm2
	movsd	648(%r15), %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI41_1(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm8, %xmm3
	ucomisd	%xmm15, %xmm3
	movl	%ebx, %edi
	jb	.LBB41_140
# BB#139:                               # %color_diff.exit109.i
	ucomisd	%xmm2, %xmm3
	jae	.LBB41_122
.LBB41_140:                             # %if.end.101.i
	ucomisd	%xmm15, %xmm3
	jae	.LBB41_173
# BB#141:                               # %if.end.101.i
	ucomisd	%xmm2, %xmm3
	jae	.LBB41_173
# BB#142:                               # %if.end.111.i
	movss	488(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm3  # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm3
	xorpd	%xmm4, %xmm4
	movaps	%xmm0, %xmm5
	cmpltss	%xmm4, %xmm5
	movaps	%xmm5, %xmm4
	andnps	%xmm0, %xmm4
	andps	%xmm3, %xmm5
	orps	%xmm4, %xmm5
	divss	%xmm9, %xmm5
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm5, %xmm3
	cmpl	$2, %r9d
	jl	.LBB41_148
# BB#143:                               # %for.body.i.97.i.preheader
	movl	$1, %ecx
	testb	$1, %r9b
	jne	.LBB41_145
# BB#144:                               # %for.body.i.97.i.prol
	movss	492(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI41_0(%rip), %xmm4  # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm4
	xorps	%xmm5, %xmm5
	movaps	%xmm0, %xmm6
	cmpltss	%xmm5, %xmm6
	movaps	%xmm6, %xmm5
	andnps	%xmm0, %xmm5
	andps	%xmm4, %xmm6
	orps	%xmm5, %xmm6
	divss	388(%r15), %xmm6
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm6, %xmm0
	maxsd	%xmm0, %xmm3
	movl	$2, %ecx
.LBB41_145:                             # %for.body.i.97.i.preheader.split
	cmpl	$2, %r9d
	je	.LBB41_148
# BB#146:                               # %for.body.i.97.i.preheader.split.split
	subl	%ecx, %r9d
	leaq	388(%r15,%rcx,4), %rax
	leaq	492(%rsp,%rcx,4), %rcx
	movaps	.LCPI41_0(%rip), %xmm4  # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm5, %xmm5
	.align	16, 0x90
.LBB41_147:                             # %for.body.i.97.i
                                        # =>This Inner Loop Header: Depth=1
	movss	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	(%rcx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm7
	xorps	%xmm4, %xmm7
	movaps	%xmm1, %xmm0
	cmpltss	%xmm5, %xmm0
	andps	%xmm0, %xmm7
	andnps	%xmm1, %xmm0
	orps	%xmm7, %xmm0
	divss	-4(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	maxsd	%xmm0, %xmm3
	movaps	%xmm6, %xmm0
	xorps	%xmm4, %xmm0
	movaps	%xmm6, %xmm1
	cmpltss	%xmm5, %xmm1
	andps	%xmm1, %xmm0
	andnps	%xmm6, %xmm1
	orps	%xmm0, %xmm1
	divss	(%rax), %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	maxsd	%xmm0, %xmm3
	addq	$8, %rax
	addq	$8, %rcx
	addl	$-2, %r9d
	jne	.LBB41_147
.LBB41_148:                             # %color_norm.exit.i
	ucomisd	%xmm3, %xmm8
	jae	.LBB41_172
# BB#149:                               # %if.end.116.i
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	128(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB41_152
# BB#150:                               # %if.end.116.i
	ucomisd	%xmm2, %xmm15
	ja	.LBB41_151
.LBB41_152:                             # %if.else.i
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm3, %xmm1
	jbe	.LBB41_168
# BB#153:                               # %if.else.i
	ucomisd	%xmm15, %xmm2
	jbe	.LBB41_168
# BB#154:
	movl	$1, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jmp	.LBB41_155
.LBB41_120:                             # %if.then.72.i
	movl	$1, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movsd	120(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB41_121:                             # %if.then.72.i
	ucomisd	128(%rsp), %xmm0        # 8-byte Folded Reload
	ja	.LBB41_155
.LBB41_122:                             # %sw.bb
	movl	656(%r15), %edx
	testl	%edx, %edx
	movl	$constant_color_quadrangle, %eax
	movl	$triangles4, %ecx
	cmoveq	%rax, %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*%rcx
.LBB41_186:                             # %triangles2.exit
	movl	236(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 660(%r15)
	movl	220(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 664(%r15)
.LBB41_333:                             # %cleanup.2206
	addq	$1288, %rsp             # imm = 0x508
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB41_173:                             # %sw.bb.1902
	leaq	1016(%rsp), %rbp
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	(%r14), %rsi
	movq	8(%r14), %rdx
	movq	24(%r14), %rcx
	movq	32(%r14), %r8
	movq	40(%r14), %r9
	movq	%rbp, (%rsp)
	movq	%r15, %rdi
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB41_186
# BB#174:                               # %if.end.i.531
	movl	$1, 1016(%rsp)
	movq	24(%r14), %rsi
	movq	(%r14), %rcx
	movq	16(%r14), %rdx
	movq	48(%r14), %r8
	movq	56(%r14), %r9
	movq	%rbp, (%rsp)
	movq	%r15, %rdi
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB41_186
# BB#175:                               # %if.end.21.i.533
	movq	1024(%rsp), %rsi
	xorl	%ecx, %ecx
	testq	%rsi, %rsi
	je	.LBB41_185
# BB#176:                               # %if.then.i.i
	movq	(%r14), %rax
	movq	24(%r14), %rcx
	movq	8(%rax), %r9
	movq	8(%rcx), %r8
	movq	1032(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB41_185
# BB#177:                               # %if.end.i.i.535
	movq	1024(%rsp), %rsi
	movq	1032(%rsp), %rax
	movl	$-28, %ecx
	testq	%rsi, %rsi
	je	.LBB41_183
# BB#178:                               # %if.then.i.i.i
	testq	%rax, %rax
	je	.LBB41_185
# BB#179:                               # %if.end.i.i.i
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	movq	%rsi, 24(%rax)
	cmpq	%rax, %rdx
	movq	360(%r15), %rcx
	je	.LBB41_182
.LBB41_180:                             # %for.body.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	cmpq	%rax, %rdx
	movq	%rsi, %rcx
	jne	.LBB41_180
# BB#181:                               # %for.end.loopexit.i.i.i.i
	movq	%rsi, 360(%r15)
	movq	%rsi, %rcx
.LBB41_182:                             # %release_wedge_vertex_list_interval.exit.i.i.i
	movq	1024(%rsp), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rdx, 16(%rax)
	movq	%rax, 360(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1024(%rsp)
	jmp	.LBB41_184
.LBB41_172:                             # %sw.bb.1898
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	triangles4
	jmp	.LBB41_186
.LBB41_168:                             # %if.else.125.i
	ucomisd	%xmm3, %xmm0
	jbe	.LBB41_170
# BB#169:                               # %if.else.125.i
	ucomisd	%xmm1, %xmm0
	jbe	.LBB41_170
.LBB41_151:
	movl	$1, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB41_155
.LBB41_170:                             # %if.else.130.i
	ucomisd	%xmm3, %xmm1
	seta	%al
	ucomisd	%xmm3, %xmm0
	seta	%cl
	ucomisd	%xmm0, %xmm1
	seta	%dl
	andb	%al, %dl
	movl	$1, %eax
	movl	$1, %esi
	movq	80(%rsp), %rbp          # 8-byte Reload
	cmovnel	%ebp, %esi
	movq	88(%rsp), %rbx          # 8-byte Reload
	cmovnel	%eax, %ebx
	orb	%cl, %dl
	cmovel	%ebp, %esi
	cmovel	%eax, %ebx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	%esi, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB41_155:                             # %if.end.1922
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	sete	%al
	cmpl	%edi, 176(%rsp)         # 4-byte Folded Reload
	jne	.LBB41_161
# BB#156:                               # %if.end.1922
	testb	%al, %al
	je	.LBB41_161
# BB#157:                               # %if.end.1922
	cmpl	%r11d, 208(%rsp)        # 4-byte Folded Reload
	jne	.LBB41_161
# BB#158:                               # %if.end.1922
	movl	160(%rsp), %eax         # 4-byte Reload
	cmpl	168(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB41_161
# BB#159:                               # %if.end.1922
	movl	148(%rsp), %eax         # 4-byte Reload
	cmpl	152(%rsp), %eax         # 4-byte Folded Reload
	jne	.LBB41_161
# BB#160:                               # %if.then.1952
	movl	$1, 672(%r15)
.LBB41_161:                             # %if.end.1955
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB41_258
# BB#162:                               # %if.then.1957
	movq	688(%r15), %r13
	movslq	680(%r15), %rbx
	leaq	(%r13,%rbx,2), %rcx
	movl	$-28, %eax
	cmpq	704(%r15), %rcx
	ja	.LBB41_333
# BB#163:                               # %reserve_colors_inline.exit
	movq	%rcx, 688(%r15)
	testq	%r13, %r13
	je	.LBB41_333
# BB#164:                               # %if.end.1962
	leaq	(%r13,%rbx), %r9
	leaq	256(%rsp), %r8
	movq	%r13, 248(%rsp)
	movq	%r9, 264(%rsp)
	movq	(%r14), %rax
	movq	16(%r14), %rsi
	movl	(%rsi), %ecx
	addl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movl	%edx, 240(%rsp)
	movq	8(%r14), %rdx
	movq	24(%r14), %rcx
	movl	(%rcx), %ebp
	addl	(%rdx), %ebp
	movl	%ebp, %edi
	shrl	$31, %edi
	addl	%ebp, %edi
	sarl	%edi
	movl	%edi, 256(%rsp)
	movl	4(%rsi), %ebp
	addl	4(%rax), %ebp
	movl	%ebp, %edi
	shrl	$31, %edi
	addl	%ebp, %edi
	sarl	%edi
	movl	%edi, 244(%rsp)
	movl	4(%rcx), %ebp
	addl	4(%rdx), %ebp
	movl	%ebp, %edi
	shrl	$31, %edi
	addl	%ebp, %edi
	sarl	%edi
	movl	%edi, 260(%rsp)
	movq	8(%rax), %r12
	movq	8(%rsi), %r11
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB41_165
# BB#200:                               # %patch_interpolate_color.exit.i
	movq	%r9, 176(%rsp)          # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI41_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%r11), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%r13)
	movss	4(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r11), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%r13)
	movq	16(%r15), %rbp
	leaq	8(%r13), %r12
	leaq	16(%r13), %rdx
	movq	%r13, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	136(%rsp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdx
	movq	%r15, %rax
	movq	192(%rsp), %r15         # 8-byte Reload
	movq	(%r15), %rcx
	movq	328(%rax), %rdi
	movq	8(%rdx), %r12
	movq	8(%rcx), %r11
	testq	%rdi, %rdi
	je	.LBB41_201
# BB#337:                               # %if.then.i.85.i
	movq	%r13, 224(%rsp)         # 8-byte Spill
	movss	(%r12), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI41_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%r11), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	176(%rsp), %rsi         # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%r12), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r11), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%rax), %rbp
	movq	%rax, %r13
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	(%rbx), %rdx
	movq	(%r15), %rcx
	leaq	256(%rsp), %r8
	jmp	.LBB41_219
.LBB41_258:                             # %if.else.2070
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB41_331
# BB#259:                               # %if.then.2072
	movq	688(%r15), %rsi
	movslq	680(%r15), %rdx
	leaq	(%rsi,%rdx,2), %rcx
	movl	$-28, %eax
	cmpq	704(%r15), %rcx
	ja	.LBB41_333
# BB#260:                               # %reserve_colors_inline.exit680
	movq	%rcx, 688(%r15)
	testq	%rsi, %rsi
	je	.LBB41_333
# BB#261:                               # %if.end.2080
	leaq	(%rsi,%rdx), %r12
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	leaq	256(%rsp), %rbx
	movq	%rsi, 248(%rsp)
	movq	%r12, 264(%rsp)
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movl	(%rcx), %edx
	addl	(%rax), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	movl	%edi, 240(%rsp)
	movq	16(%r14), %r8
	movq	24(%r14), %r11
	movl	(%r11), %edx
	addl	(%r8), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	movl	%edi, 256(%rsp)
	movl	4(%rcx), %edx
	addl	4(%rax), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	movl	%edi, 244(%rsp)
	movl	4(%r11), %edx
	addl	4(%r8), %edx
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	movl	%edi, 260(%rsp)
	movq	8(%rax), %rbp
	movq	8(%rcx), %r13
	movq	328(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB41_262
# BB#278:                               # %patch_interpolate_color.exit.i.764
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI41_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movss	(%r13), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rsi)
	movss	4(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r13), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r15), %rbp
	leaq	8(%rsi), %rbx
	leaq	16(%rsi), %rdx
	movq	%rsi, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	200(%rsp), %rbx         # 8-byte Reload
	movq	(%rbx), %r8
	movq	%r15, %rax
	movq	192(%rsp), %r15         # 8-byte Reload
	movq	(%r15), %r11
	movq	328(%rax), %rdi
	movq	8(%r8), %rbp
	movq	8(%r11), %r13
	testq	%rdi, %rdi
	je	.LBB41_279
# BB#338:                               # %if.then.i.85.i.790
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI41_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	movss	(%r13), %xmm1           # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%r12)
	movss	4(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	movss	4(%r13), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 4(%r12)
	movq	16(%rax), %rbp
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	8(%r12), %r13
	leaq	16(%r12), %rdx
	movq	%r12, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	(%rbx), %r8
	movq	(%r15), %r11
	movq	%rbx, %r15
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	256(%rsp), %rbx
	jmp	.LBB41_292
.LBB41_331:                             # %if.else.2193
	movl	656(%r15), %edx
	testl	%edx, %edx
	movl	$constant_color_quadrangle, %eax
	movl	$triangles4, %ecx
	cmoveq	%rax, %rcx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*%rcx
	jmp	.LBB41_332
.LBB41_165:                             # %if.else.i.i.550
	movslq	24(%r15), %r10
	testq	%r10, %r10
	jle	.LBB41_199
# BB#166:                               # %for.body.lr.ph.i.i
	cmpq	$2, %r10
	movl	$1, %eax
	cmovlq	%r10, %rax
	notq	%rax
	leaq	(%rax,%r10), %r9
	cmpq	$-2, %r9
	jne	.LBB41_187
# BB#167:
	movq	%r10, %rax
	jmp	.LBB41_197
.LBB41_201:                             # %patch_interpolate_color.exit.i.if.else.i.59.i_crit_edge
	movl	24(%rax), %r10d
	movq	%rax, %r15
	leaq	256(%rsp), %r8
	movq	208(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB41_202
.LBB41_262:                             # %if.else.i.i.715
	movslq	24(%r15), %r10
	movq	%r15, 224(%rsp)         # 8-byte Spill
	testq	%r10, %r10
	movq	136(%rsp), %rcx         # 8-byte Reload
	jle	.LBB41_277
# BB#263:                               # %for.body.lr.ph.i.i.716
	cmpq	$2, %r10
	movl	$1, %eax
	cmovlq	%r10, %rax
	notq	%rax
	leaq	(%rax,%r10), %r9
	cmpq	$-2, %r9
	jne	.LBB41_265
# BB#264:
	movq	%r10, %rdx
	jmp	.LBB41_275
.LBB41_187:                             # %overflow.checked1199
	addq	$2, %r9
	xorl	%esi, %esi
	movq	%r9, %rax
	andq	$-4, %rax
	je	.LBB41_188
# BB#189:                               # %vector.memcheck
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	leaq	12(%r13,%r10,4), %rax
	cmpq	$2, %r10
	movl	$1, %esi
	cmovlq	%r10, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%r12, %rdi
	subq	%rsi, %rdi
	movq	%r11, %rbx
	subq	%rsi, %rbx
	negq	%rsi
	leaq	8(%r13,%rsi), %rsi
	leaq	12(%r12,%r10,4), %rbp
	addq	$8, %rdi
	leaq	12(%r11,%r10,4), %r8
	addq	$8, %rbx
	cmpq	%rdi, %rax
	setbe	%dil
	cmpq	%rsi, %rbp
	setbe	%bpl
	cmpq	%rbx, %rax
	setbe	%al
	cmpq	%rsi, %r8
	setbe	%bl
	xorl	%esi, %esi
	testb	%bpl, %dil
	jne	.LBB41_190
# BB#191:                               # %vector.memcheck
	andb	%bl, %al
	movq	%r10, %rax
	leaq	256(%rsp), %r8
	movq	208(%rsp), %rbx         # 8-byte Reload
	jne	.LBB41_196
# BB#192:                               # %vector.body1195.preheader
	movq	%r10, %rax
	subq	224(%rsp), %rax         # 8-byte Folded Reload
	leaq	8(%r12,%r10,4), %rdi
	leaq	8(%r11,%r10,4), %rbx
	leaq	8(%r13,%r10,4), %rsi
	movq	%r10, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rbp
	cmovgq	%r8, %rbp
	leaq	2(%rbp,%r10), %rbp
	andq	$-4, %rbp
	movapd	.LCPI41_3(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB41_193:                             # %vector.body1195
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbx), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbx), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rsi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rsi)
	addq	$-16, %rdi
	addq	$-16, %rbx
	addq	$-16, %rsi
	addq	$-4, %rbp
	jne	.LBB41_193
# BB#194:
	movq	224(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB41_195
.LBB41_183:                             # %if.else.i.i.i
	testq	%rax, %rax
	jne	.LBB41_185
.LBB41_184:                             # %for.inc.critedge.i.i.i
	xorl	%ecx, %ecx
.LBB41_185:                             # %terminate_wedge_vertex_list.exit.i
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	jmp	.LBB41_186
.LBB41_279:                             # %patch_interpolate_color.exit.i.764.if.else.i.59.i.793_crit_edge
	movl	24(%rax), %r10d
	movq	%rax, 224(%rsp)         # 8-byte Spill
	movq	%rbx, %r15
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	208(%rsp), %rsi         # 8-byte Reload
	leaq	256(%rsp), %rbx
	jmp	.LBB41_280
.LBB41_265:                             # %overflow.checked1302
	addq	$2, %r9
	xorl	%eax, %eax
	movq	%r9, %rdx
	andq	$-4, %rdx
	je	.LBB41_266
# BB#267:                               # %vector.memcheck1330
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	%rcx, %r15
	leaq	12(%rsi,%r10,4), %rax
	cmpq	$2, %r10
	movl	$1, %ecx
	cmovlq	%r10, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	movq	%r13, %rdi
	subq	%rcx, %rdi
	negq	%rcx
	leaq	8(%rsi,%rcx), %rbx
	leaq	12(%rbp,%r10,4), %rcx
	addq	$8, %rdx
	leaq	12(%r13,%r10,4), %r12
	addq	$8, %rdi
	cmpq	%rdx, %rax
	setbe	160(%rsp)               # 1-byte Folded Spill
	cmpq	%rbx, %rcx
	setbe	%dl
	cmpq	%rdi, %rax
	setbe	%cl
	cmpq	%rbx, %r12
	setbe	%bl
	xorl	%eax, %eax
	testb	160(%rsp), %dl          # 1-byte Folded Reload
	jne	.LBB41_268
# BB#269:                               # %vector.memcheck1330
	andb	%bl, %cl
	movq	%r10, %rdx
	movq	%r15, %rcx
	jne	.LBB41_274
# BB#270:                               # %vector.body1298.preheader
	movq	%rcx, %r15
	movq	%r10, %rdx
	subq	168(%rsp), %rdx         # 8-byte Folded Reload
	leaq	8(%rbp,%r10,4), %rdi
	leaq	8(%r13,%r10,4), %rbx
	leaq	8(%rsi,%r10,4), %rax
	movq	%r10, %r12
	notq	%r12
	cmpq	$-3, %r12
	movq	$-2, %rcx
	cmovgq	%r12, %rcx
	leaq	2(%rcx,%r10), %rcx
	andq	$-4, %rcx
	movapd	.LCPI41_3(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB41_271:                             # %vector.body1298
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rdi), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbx), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbx), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rax)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rax)
	addq	$-16, %rdi
	addq	$-16, %rbx
	addq	$-16, %rax
	addq	$-4, %rcx
	jne	.LBB41_271
# BB#272:
	movq	168(%rsp), %rax         # 8-byte Reload
	jmp	.LBB41_273
.LBB41_188:
	movq	%r10, %rax
	jmp	.LBB41_196
.LBB41_55:                              # %if.else.i.14.i.493
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r13
	movq	(%rcx), %rax
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	8(%rax), %rbp
	movq	16(%r15), %r14
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movsd	%xmm11, 112(%rsp)       # 8-byte Spill
	movsd	%xmm12, 120(%rsp)       # 8-byte Spill
	callq	function_linearity
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	cvtss2sd	%xmm0, %xmm0
	movsd	648(%r15), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movl	208(%rsp), %ecx         # 4-byte Reload
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	ja	.LBB41_58
# BB#56:                                # %if.end.i.27.i.506
	movq	(%r14), %rax
	movq	8(%r15), %rsi
	movq	288(%r15), %rdx
	addq	$8, %r13
	addq	$8, %rbp
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	296(%r15), %rcx
	movq	%rcx, 8(%rsp)
	movq	$0, (%rsp)
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	%r13, %rcx
	movq	%rbp, %r8
	callq	*120(%rax)
	movq	%r12, %rdx
	movsd	128(%rsp), %xmm10       # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	120(%rsp), %xmm12       # 8-byte Reload
                                        # xmm12 = mem[0],zero
	movsd	112(%rsp), %xmm11       # 8-byte Reload
                                        # xmm11 = mem[0],zero
	testl	%eax, %eax
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	96(%rsp), %r14          # 8-byte Reload
	movl	108(%rsp), %edi         # 4-byte Reload
	movq	%rbx, %rcx
	jg	.LBB41_62
.LBB41_57:                              # %is_quadrangle_color_linear_by_diagonals.exit
	movq	%r14, 96(%rsp)          # 8-byte Spill
	movl	%edi, 108(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	208(%rsp), %ecx         # 4-byte Reload
	js	.LBB41_333
.LBB41_58:                              # %if.then.1861
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	24(%rsp), %xmm0         # 8-byte Folded Reload
	jbe	.LBB41_60
# BB#59:
	xorl	%edx, %edx
	movl	$1, %ecx
	jmp	.LBB41_61
.LBB41_60:                              # %if.else.1871
	movl	$1, %edx
	xorl	%ecx, %ecx
.LBB41_61:                              # %if.end.1876
	movl	224(%rsp), %r11d        # 4-byte Reload
	movq	96(%rsp), %r14          # 8-byte Reload
	movl	108(%rsp), %edi         # 4-byte Reload
	jmp	.LBB41_62
.LBB41_190:
	movq	%r10, %rax
.LBB41_195:                             # %middle.block1196
	leaq	256(%rsp), %r8
	movq	208(%rsp), %rbx         # 8-byte Reload
.LBB41_196:                             # %middle.block1196
	cmpq	%rsi, %r9
	je	.LBB41_199
.LBB41_197:                             # %for.body.i.i.555.preheader
	incq	%rax
	movsd	.LCPI41_2(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB41_198:                             # %for.body.i.i.555
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r12,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r11,%rax,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r13,%rax,4)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB41_198
.LBB41_199:                             # %patch_interpolate_color.exit.thread.i
	movq	8(%rdx), %r12
	movq	8(%rcx), %r11
.LBB41_202:                             # %if.else.i.59.i
	testl	%r10d, %r10d
	jle	.LBB41_203
# BB#204:                               # %for.body.lr.ph.i.60.i
	movslq	%r10d, %rdi
	cmpq	$2, %rdi
	movl	$1, %eax
	cmovlq	%rdi, %rax
	notq	%rax
	leaq	(%rax,%rdi), %r9
	cmpq	$-2, %r9
	jne	.LBB41_208
# BB#205:
	movq	%r13, 224(%rsp)         # 8-byte Spill
	jmp	.LBB41_206
.LBB41_203:
	movq	%r13, 224(%rsp)         # 8-byte Spill
	jmp	.LBB41_218
.LBB41_208:                             # %overflow.checked1244
	addq	$2, %r9
	xorl	%eax, %eax
	movq	%r9, %rsi
	andq	$-4, %rsi
	je	.LBB41_209
# BB#210:                               # %vector.memcheck1272
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rdi,4), %rax
	leaq	12(%r13,%rax), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	cmpq	$2, %rdi
	movl	$1, %esi
	cmovlq	%rdi, %rsi
	notq	%rsi
	shlq	$2, %rsi
	movq	%rbx, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%r12, %rbx
	subq	%rsi, %rbx
	movq	%r11, %rbp
	subq	%rsi, %rbp
	negq	%rsi
	leaq	8(%rax,%rsi), %rsi
	leaq	(%rsi,%r13), %rsi
	leaq	12(%r12,%rdi,4), %r8
	addq	$8, %rbx
	leaq	12(%r11,%rdi,4), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	addq	$8, %rbp
	movq	224(%rsp), %rax         # 8-byte Reload
	cmpq	%rbx, %rax
	setbe	168(%rsp)               # 1-byte Folded Spill
	cmpq	%rsi, %r8
	setbe	%r8b
	cmpq	%rbp, %rax
	setbe	%bl
	cmpq	%rsi, 160(%rsp)         # 8-byte Folded Reload
	setbe	%sil
	xorl	%eax, %eax
	testb	168(%rsp), %r8b         # 1-byte Folded Reload
	jne	.LBB41_211
# BB#212:                               # %vector.memcheck1272
	andb	%sil, %bl
	jne	.LBB41_211
# BB#213:                               # %vector.body1240.preheader
	subq	176(%rsp), %rdi         # 8-byte Folded Reload
	movslq	%r10d, %r10
	leaq	8(%r12,%r10,4), %rbx
	leaq	8(%r11,%r10,4), %rax
	movq	208(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%r10,4), %rsi
	leaq	8(%r13,%rsi), %rsi
	movq	%r10, %r8
	notq	%r8
	cmpq	$-3, %r8
	movq	$-2, %rbp
	cmovgq	%r8, %rbp
	leaq	2(%rbp,%r10), %rbp
	andq	$-4, %rbp
	movapd	.LCPI41_3(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB41_214:                             # %vector.body1240
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rax), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rax), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rsi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rsi)
	addq	$-16, %rbx
	addq	$-16, %rax
	addq	$-16, %rsi
	addq	$-4, %rbp
	jne	.LBB41_214
# BB#215:
	movq	%r13, 224(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	jmp	.LBB41_216
.LBB41_209:
	movq	%r13, 224(%rsp)         # 8-byte Spill
	jmp	.LBB41_217
.LBB41_211:
	movq	%r13, 224(%rsp)         # 8-byte Spill
.LBB41_216:                             # %middle.block1241
	leaq	256(%rsp), %r8
	movq	208(%rsp), %rbx         # 8-byte Reload
.LBB41_217:                             # %middle.block1241
	cmpq	%rax, %r9
	jne	.LBB41_206
.LBB41_218:
	movq	%r15, %r13
	jmp	.LBB41_219
.LBB41_206:                             # %for.body.i.73.i.preheader
	movq	%r15, %r13
	incq	%rdi
	movq	224(%rsp), %rax         # 8-byte Reload
	leaq	12(%rbx,%rax), %rax
	movsd	.LCPI41_2(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB41_207:                             # %for.body.i.73.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%r12,%rdi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r11,%rdi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rax,%rdi,4)
	decq	%rdi
	cmpq	$1, %rdi
	jg	.LBB41_207
.LBB41_219:                             # %divide_quadrangle_by_v.exit
	movq	(%r14), %rax
	movq	%rax, 408(%rsp)
	movq	%rdx, 416(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 344(%rsp)
	movq	%rax, 424(%rsp)
	movq	%r8, 352(%rsp)
	movq	%r8, 432(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, 360(%rsp)
	movq	%rcx, 368(%rsp)
	movq	40(%r14), %rbp
	movl	(%rbp), %eax
	movl	%eax, 296(%rsp)
	testl	%eax, %eax
	je	.LBB41_220
# BB#221:                               # %if.else.i.570
	leaq	304(%rsp), %r9
	movq	%r13, %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	16(%rbp), %rcx
	movq	%rcx, 312(%rsp)
	jmp	.LBB41_222
.LBB41_220:                             # %if.then.i.569
	leaq	312(%rsp), %r9
	movq	%r13, %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	8(%rbp), %rcx
	movq	%rcx, 304(%rsp)
.LBB41_222:                             # %make_wedge_median.exit
	testl	%eax, %eax
	movq	224(%rsp), %r12         # 8-byte Reload
	js	.LBB41_257
# BB#223:                               # %if.then.1986
	movq	56(%r14), %rbp
	movq	(%r14), %rcx
	movq	16(%r14), %rdx
	movq	424(%rsp), %r8
	movl	(%rbp), %eax
	movl	%eax, 272(%rsp)
	testl	%eax, %eax
	je	.LBB41_225
# BB#224:                               # %if.then.i.579
	leaq	288(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	8(%rbp), %rcx
	movq	%rcx, 280(%rsp)
	jmp	.LBB41_226
.LBB41_225:                             # %if.else.i.584
	leaq	280(%rsp), %r9
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	16(%rbp), %rcx
	movq	%rcx, 288(%rsp)
.LBB41_226:                             # %if.end.2000
	testl	%eax, %eax
	js	.LBB41_257
# BB#227:                               # %if.end.2017
	leaq	320(%rsp), %rax
	movq	%rax, 376(%rsp)
	movq	%rax, 456(%rsp)
	leaq	296(%rsp), %rax
	movq	%rax, 384(%rsp)
	movq	%rax, 448(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 400(%rsp)
	movq	%rax, 464(%rsp)
	movq	32(%r14), %rax
	movq	%rax, 440(%rsp)
	movq	48(%r14), %rax
	movq	%rax, 392(%rsp)
	leaq	408(%rsp), %rsi
	movq	%r15, %rdi
	movl	156(%rsp), %edx         # 4-byte Reload
	callq	fill_quadrangle
	testl	%eax, %eax
	js	.LBB41_257
# BB#228:                               # %if.then.2020
	movl	$1, 320(%rsp)
	movq	40(%r14), %rax
	cmpl	$0, 296(%rsp)
	je	.LBB41_229
# BB#230:                               # %if.else.i.594
	movq	304(%rsp), %rcx
	movq	%rcx, 312(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 304(%rsp)
	jmp	.LBB41_231
.LBB41_229:                             # %if.then.i.592
	movq	312(%rsp), %rcx
	movq	%rcx, 304(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 312(%rsp)
.LBB41_231:                             # %move_wedge.exit
	movq	56(%r14), %rax
	cmpl	$0, 272(%rsp)
	je	.LBB41_233
# BB#232:                               # %if.then.i.601
	movq	288(%rsp), %rcx
	movq	%rcx, 280(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 288(%rsp)
	jmp	.LBB41_234
.LBB41_233:                             # %if.else.i.605
	movq	280(%rsp), %rcx
	movq	%rcx, 288(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 280(%rsp)
.LBB41_234:                             # %if.end.2024
	leaq	344(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	fill_quadrangle
	testl	%eax, %eax
	js	.LBB41_257
# BB#235:                               # %if.then.2027
	movq	40(%r14), %rbx
	cmpl	$0, (%rbx)
	je	.LBB41_241
# BB#236:                               # %if.end.i.615
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r8
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	8(%rax), %r9
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_257
# BB#237:                               # %if.end.2.i
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB41_241
# BB#238:                               # %for.body.lr.ph.i.i.616
	movq	360(%r15), %rsi
.LBB41_239:                             # %for.body.i.i.617
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB41_239
# BB#240:                               # %for.end.loopexit.i.i
	movq	%rdx, 360(%r15)
.LBB41_241:                             # %if.then.2041
	movq	56(%r14), %rbx
	cmpl	$0, (%rbx)
	je	.LBB41_247
# BB#242:                               # %if.end.i.629
	movq	(%r14), %rax
	movq	16(%r14), %rcx
	movq	8(%rax), %r8
	movq	8(%rcx), %r9
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_257
# BB#243:                               # %if.end.2.i.633
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB41_247
# BB#244:                               # %for.body.lr.ph.i.i.636
	movq	360(%r15), %rsi
.LBB41_245:                             # %for.body.i.i.640
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB41_245
# BB#246:                               # %for.end.loopexit.i.i.641
	movq	%rdx, 360(%r15)
.LBB41_247:                             # %if.then.2055
	movq	328(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB41_257
# BB#248:                               # %if.then.i.653
	movq	424(%rsp), %rax
	movq	432(%rsp), %rcx
	movq	8(%rcx), %r9
	movq	8(%rax), %r8
	movq	336(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r15, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_257
# BB#249:                               # %if.end.i.655
	movq	328(%rsp), %rsi
	movq	336(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB41_255
# BB#250:                               # %if.then.i.i.656
	testq	%rcx, %rcx
	je	.LBB41_257
# BB#251:                               # %if.end.i.i.658
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r15), %rax
	je	.LBB41_254
.LBB41_252:                             # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB41_252
# BB#253:                               # %for.end.loopexit.i.i.i
	movq	%rsi, 360(%r15)
	movq	%rsi, %rax
.LBB41_254:                             # %release_wedge_vertex_list_interval.exit.i.i
	movq	328(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 328(%rsp)
	jmp	.LBB41_256
.LBB41_266:
	movq	%r10, %rdx
	jmp	.LBB41_274
.LBB41_255:                             # %if.else.i.i.660
	testq	%rcx, %rcx
	jne	.LBB41_257
.LBB41_256:                             # %for.inc.critedge.i.i
	xorl	%eax, %eax
.LBB41_257:                             # %cleanup.2066
	movq	%r12, 688(%r15)
	jmp	.LBB41_332
.LBB41_268:
	movq	%r10, %rdx
.LBB41_273:                             # %middle.block1299
	movq	%r15, %rcx
.LBB41_274:                             # %middle.block1299
	cmpq	%rax, %r9
	leaq	256(%rsp), %rbx
	je	.LBB41_277
.LBB41_275:                             # %for.body.i.i.729.preheader
	incq	%rdx
	movsd	.LCPI41_2(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB41_276:                             # %for.body.i.i.729
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rbp,%rdx,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r13,%rdx,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%rsi,%rdx,4)
	decq	%rdx
	cmpq	$1, %rdx
	jg	.LBB41_276
.LBB41_277:                             # %patch_interpolate_color.exit.thread.i.732
	movq	8(%r8), %rbp
	movq	8(%r11), %r13
	movq	200(%rsp), %r15         # 8-byte Reload
.LBB41_280:                             # %if.else.i.59.i.793
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	testl	%r10d, %r10d
	jle	.LBB41_292
# BB#281:                               # %for.body.lr.ph.i.60.i.794
	movslq	%r10d, %rdi
	cmpq	$2, %rdi
	movl	$1, %eax
	cmovlq	%rdi, %rax
	notq	%rax
	leaq	(%rax,%rdi), %r9
	cmpq	$-2, %r9
	je	.LBB41_290
# BB#282:                               # %overflow.checked1360
	addq	$2, %r9
	xorl	%eax, %eax
	movq	%r9, %rdx
	andq	$-4, %rdx
	je	.LBB41_289
# BB#283:                               # %vector.memcheck1388
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rdi,4), %rax
	movq	208(%rsp), %r12         # 8-byte Reload
	leaq	12(%r12,%rax), %r15
	cmpq	$2, %rdi
	movl	$1, %ecx
	cmovlq	%rdi, %rcx
	notq	%rcx
	shlq	$2, %rcx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	movq	%r13, %rbx
	subq	%rcx, %rbx
	negq	%rcx
	leaq	8(%rsi,%rcx), %rcx
	leaq	(%rcx,%r12), %r12
	leaq	12(%rbp,%rdi,4), %rcx
	addq	$8, %rdx
	leaq	12(%r13,%rdi,4), %rax
	addq	$8, %rbx
	movq	%r15, %rsi
	cmpq	%rdx, %rsi
	setbe	%r15b
	cmpq	%r12, %rcx
	setbe	%dl
	cmpq	%rbx, %rsi
	setbe	%cl
	cmpq	%r12, %rax
	setbe	%bl
	xorl	%eax, %eax
	testb	%dl, %r15b
	jne	.LBB41_288
# BB#284:                               # %vector.memcheck1388
	andb	%bl, %cl
	movq	168(%rsp), %rsi         # 8-byte Reload
	jne	.LBB41_288
# BB#285:                               # %vector.body1356.preheader
	subq	%rsi, %rdi
	movslq	%r10d, %r12
	leaq	8(%rbp,%r12,4), %rbx
	leaq	8(%r13,%r12,4), %rdx
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r12,4), %rax
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	8(%rcx,%rax), %rax
	movq	%r12, %r10
	notq	%r10
	cmpq	$-3, %r10
	movq	$-2, %rcx
	cmovgq	%r10, %rcx
	leaq	2(%rcx,%r12), %rcx
	andq	$-4, %rcx
	movapd	.LCPI41_3(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
.LBB41_286:                             # %vector.body1356
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rdx), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rdx), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rax)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rax)
	addq	$-16, %rbx
	addq	$-16, %rdx
	addq	$-16, %rax
	addq	$-4, %rcx
	jne	.LBB41_286
# BB#287:
	movq	%rsi, %rax
.LBB41_288:                             # %middle.block1357
	movq	200(%rsp), %r15         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	256(%rsp), %rbx
.LBB41_289:                             # %middle.block1357
	cmpq	%rax, %r9
	je	.LBB41_292
.LBB41_290:                             # %for.body.i.73.i.807.preheader
	incq	%rdi
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	leaq	12(%rdx,%rax), %rax
	movsd	.LCPI41_2(%rip), %xmm0  # xmm0 = mem[0],zero
.LBB41_291:                             # %for.body.i.73.i.807
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rbp,%rdi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r13,%rdi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rax,%rdi,4)
	decq	%rdi
	cmpq	$1, %rdi
	jg	.LBB41_291
.LBB41_292:                             # %divide_quadrangle_by_u.exit
	movq	(%r14), %rdx
	movq	%rdx, 408(%rsp)
	movq	%r8, 424(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 344(%rsp)
	movq	%rax, 416(%rsp)
	movq	%rbx, 360(%rsp)
	movq	%rbx, 432(%rsp)
	movq	(%rcx), %rcx
	movq	%rcx, 352(%rsp)
	movq	%r11, 368(%rsp)
	movq	32(%r14), %rbp
	movl	(%rbp), %eax
	movl	%eax, 296(%rsp)
	testl	%eax, %eax
	je	.LBB41_293
# BB#294:                               # %if.else.i.825
	leaq	304(%rsp), %r9
	leaq	240(%rsp), %r8
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	16(%rbp), %rcx
	movq	%rcx, 312(%rsp)
	jmp	.LBB41_295
.LBB41_293:                             # %if.then.i.820
	leaq	312(%rsp), %r9
	leaq	240(%rsp), %r8
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	8(%rbp), %rcx
	movq	%rcx, 304(%rsp)
.LBB41_295:                             # %make_wedge_median.exit828
	testl	%eax, %eax
	js	.LBB41_330
# BB#296:                               # %if.then.2105
	movq	48(%r14), %rbp
	movq	16(%r14), %rcx
	movq	24(%r14), %rdx
	movq	432(%rsp), %r8
	movl	(%rbp), %eax
	movl	%eax, 272(%rsp)
	testl	%eax, %eax
	je	.LBB41_298
# BB#297:                               # %if.then.i.837
	leaq	288(%rsp), %r9
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	8(%rbp), %rcx
	movq	%rcx, 280(%rsp)
	jmp	.LBB41_299
.LBB41_298:                             # %if.else.i.842
	leaq	280(%rsp), %r9
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	open_wedge_median
	movq	16(%rbp), %rcx
	movq	%rcx, 288(%rsp)
.LBB41_299:                             # %if.end.2120
	testl	%eax, %eax
	js	.LBB41_330
# BB#300:                               # %if.end.2139
	leaq	320(%rsp), %rax
	movq	%rax, 400(%rsp)
	movq	%rax, 448(%rsp)
	leaq	296(%rsp), %rax
	movq	%rax, 376(%rsp)
	movq	%rax, 440(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 392(%rsp)
	movq	%rax, 456(%rsp)
	movq	56(%r14), %rax
	movq	%rax, 464(%rsp)
	movq	40(%r14), %rax
	movq	%rax, 384(%rsp)
	leaq	408(%rsp), %rsi
	xorl	%edx, %edx
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	fill_quadrangle
	testl	%eax, %eax
	js	.LBB41_330
# BB#301:                               # %if.then.2142
	movl	$1, 320(%rsp)
	movq	32(%r14), %rax
	cmpl	$0, 296(%rsp)
	je	.LBB41_302
# BB#303:                               # %if.else.i.888
	movq	304(%rsp), %rcx
	movq	%rcx, 312(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 304(%rsp)
	jmp	.LBB41_304
.LBB41_302:                             # %if.then.i.884
	movq	312(%rsp), %rcx
	movq	%rcx, 304(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 312(%rsp)
.LBB41_304:                             # %move_wedge.exit890
	movq	48(%r14), %rax
	cmpl	$0, 272(%rsp)
	je	.LBB41_306
# BB#305:                               # %if.then.i.897
	movq	288(%rsp), %rcx
	movq	%rcx, 280(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 288(%rsp)
	jmp	.LBB41_307
.LBB41_306:                             # %if.else.i.901
	movq	280(%rsp), %rcx
	movq	%rcx, 288(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 280(%rsp)
.LBB41_307:                             # %if.end.2147
	leaq	344(%rsp), %rsi
	xorl	%edx, %edx
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	fill_quadrangle
	testl	%eax, %eax
	js	.LBB41_330
# BB#308:                               # %if.then.2150
	movq	32(%r14), %rbx
	cmpl	$0, (%rbx)
	movq	192(%rsp), %rbp         # 8-byte Reload
	je	.LBB41_314
# BB#309:                               # %if.end.i.939
	movq	(%r14), %rax
	movq	8(%r14), %rcx
	movq	8(%rcx), %r8
	movq	8(%rax), %r9
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_330
# BB#310:                               # %if.end.2.i.943
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB41_314
# BB#311:                               # %for.body.lr.ph.i.i.946
	movq	224(%rsp), %rdx         # 8-byte Reload
	movq	360(%rdx), %rsi
.LBB41_312:                             # %for.body.i.i.950
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB41_312
# BB#313:                               # %for.end.loopexit.i.i.951
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	%rdx, 360(%rax)
.LBB41_314:                             # %if.then.2164
	movq	48(%r14), %rbx
	cmpl	$0, (%rbx)
	je	.LBB41_320
# BB#315:                               # %if.end.i.914
	movq	(%r15), %rax
	movq	8(%rax), %r8
	movq	(%rbp), %rax
	movq	8(%rax), %r9
	movq	8(%rbx), %rsi
	movq	16(%rbx), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_330
# BB#316:                               # %if.end.2.i.918
	movq	8(%rbx), %rdx
	movq	16(%rbx), %rax
	movq	16(%rdx), %rcx
	movq	%rax, 16(%rdx)
	movq	%rdx, 24(%rax)
	cmpq	%rax, %rcx
	je	.LBB41_320
# BB#317:                               # %for.body.lr.ph.i.i.921
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	360(%rdi), %rsi
.LBB41_318:                             # %for.body.i.i.925
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movq	16(%rdx), %rcx
	movq	%rsi, 16(%rdx)
	cmpq	%rax, %rcx
	movq	%rdx, %rsi
	jne	.LBB41_318
# BB#319:                               # %for.end.loopexit.i.i.926
	movq	%rdx, 360(%rdi)
.LBB41_320:                             # %if.then.2178
	movq	328(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB41_330
# BB#321:                               # %if.then.i.855
	movq	416(%rsp), %rax
	movq	432(%rsp), %rcx
	movq	8(%rcx), %r9
	movq	8(%rax), %r8
	movq	336(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB41_330
# BB#322:                               # %if.end.i.859
	movq	328(%rsp), %rsi
	movq	336(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB41_328
# BB#323:                               # %if.then.i.i.860
	testq	%rcx, %rcx
	je	.LBB41_330
# BB#324:                               # %if.end.i.i.865
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	360(%rdi), %rax
	je	.LBB41_327
.LBB41_325:                             # %for.body.i.i.i.869
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB41_325
# BB#326:                               # %for.end.loopexit.i.i.i.870
	movq	%rsi, 360(%rdi)
	movq	%rsi, %rax
.LBB41_327:                             # %release_wedge_vertex_list_interval.exit.i.i.874
	movq	328(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 328(%rsp)
	jmp	.LBB41_329
.LBB41_328:                             # %if.else.i.i.875
	testq	%rcx, %rcx
	jne	.LBB41_330
.LBB41_329:                             # %for.inc.critedge.i.i.876
	xorl	%eax, %eax
.LBB41_330:                             # %cleanup.2189
	movq	224(%rsp), %r15         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 688(%r15)
.LBB41_332:                             # %if.end.2202
	movl	236(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 660(%r15)
	movl	220(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 664(%r15)
	movl	188(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 672(%r15)
	jmp	.LBB41_333
.Lfunc_end41:
	.size	fill_quadrangle, .Lfunc_end41-fill_quadrangle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI42_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI42_1:
	.quad	4602678819172646912     # double 5.000000e-01
	.quad	4602678819172646912     # double 5.000000e-01
	.text
	.align	16, 0x90
	.type	triangles4,@function
triangles4:                             # @triangles4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp414:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp415:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp416:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp417:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp418:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp419:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp420:
	.cfi_def_cfa_offset 256
.Ltmp421:
	.cfi_offset %rbx, -56
.Ltmp422:
	.cfi_offset %r12, -48
.Ltmp423:
	.cfi_offset %r13, -40
.Ltmp424:
	.cfi_offset %r14, -32
.Ltmp425:
	.cfi_offset %r15, -24
.Ltmp426:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	688(%r14), %r15
	movslq	680(%r14), %rdx
	leaq	(%rdx,%rdx,2), %rax
	leaq	(%rax,%r15), %rcx
	movl	$-28, %eax
	cmpq	704(%r14), %rcx
	ja	.LBB42_78
# BB#1:                                 # %reserve_colors_inline.exit
	movq	%rcx, 688(%r14)
	testq	%r15, %r15
	je	.LBB42_78
# BB#2:                                 # %if.end
	leaq	(%r15,%rdx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	(%rax,%rdx), %rax
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rax, 192(%rsp)
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset
	movq	(%r13), %rax
	movq	8(%r13), %rdx
	movl	(%rdx), %ecx
	movl	4(%rdx), %esi
	addl	(%rax), %ecx
	movl	%ecx, %r12d
	shrl	$31, %r12d
	addl	%ecx, %r12d
	addl	4(%rax), %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	movq	8(%rax), %rcx
	movq	8(%rdx), %rax
	movq	328(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB42_4
# BB#3:                                 # %if.then.i.7.i
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, (%r15)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%r15)
	movq	16(%r14), %rbp
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movl	%r12d, %r14d
	leaq	8(%r15), %r12
	leaq	16(%r15), %rdx
	movq	%r15, %rsi
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movl	%r14d, %r12d
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r14), %rdi
	jmp	.LBB42_17
.LBB42_4:                               # %if.else.i.i.47
	movslq	24(%r14), %rsi
	xorl	%edi, %edi
	testq	%rsi, %rsi
	jle	.LBB42_17
# BB#5:                                 # %for.body.lr.ph.i.i
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r9
	cmpq	$-2, %r9
	jne	.LBB42_7
# BB#6:
	movl	72(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB42_15
.LBB42_7:                               # %overflow.checked
	addq	$2, %r9
	xorl	%ebp, %ebp
	movq	%r9, %rdx
	andq	$-4, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	je	.LBB42_14
# BB#8:                                 # %vector.memcheck
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	leaq	12(%r15,%rsi,4), %r8
	cmpq	$2, %rsi
	movl	$1, %ebp
	cmovlq	%rsi, %rbp
	notq	%rbp
	shlq	$2, %rbp
	movq	%rcx, %rbx
	subq	%rbp, %rbx
	movq	%rax, %rdi
	subq	%rbp, %rdi
	negq	%rbp
	leaq	8(%r15,%rbp), %rbp
	leaq	12(%rcx,%rsi,4), %r10
	addq	$8, %rbx
	leaq	12(%rax,%rsi,4), %r11
	addq	$8, %rdi
	cmpq	%rbx, %r8
	setbe	%r12b
	cmpq	%rbp, %r10
	setbe	%r10b
	cmpq	%rdi, %r8
	setbe	%bl
	cmpq	%rbp, %r11
	setbe	%dil
	xorl	%ebp, %ebp
	testb	%r10b, %r12b
	jne	.LBB42_9
# BB#10:                                # %vector.memcheck
	andb	%dil, %bl
	movl	32(%rsp), %r12d         # 4-byte Reload
	jne	.LBB42_14
# BB#11:                                # %vector.body.preheader
	movq	%r13, %r11
	movq	%rsi, %r8
	movq	24(%rsp), %r13          # 8-byte Reload
	subq	%r13, %r8
	leaq	8(%rcx,%rsi,4), %rbx
	leaq	8(%rax,%rsi,4), %rbp
	leaq	8(%r15,%rsi,4), %rdi
	movq	%rsi, %r10
	notq	%r10
	cmpq	$-3, %r10
	movq	$-2, %rdx
	cmovgq	%r10, %rdx
	leaq	2(%rdx,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI42_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB42_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbx), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rbp), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rbp), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdi)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdi)
	addq	$-16, %rbx
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-4, %rsi
	jne	.LBB42_12
# BB#13:
	movq	%r8, %rsi
	movq	%r13, %rbp
	movq	%r11, %r13
	jmp	.LBB42_14
.LBB42_9:
	movl	32(%rsp), %r12d         # 4-byte Reload
.LBB42_14:                              # %middle.block
	xorl	%edi, %edi
	cmpq	%rbp, %r9
	movl	72(%rsp), %ebx          # 4-byte Reload
	je	.LBB42_17
.LBB42_15:                              # %for.body.i.i.preheader
	incq	%rsi
	movsd	.LCPI42_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB42_16:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%rax,%rsi,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 8(%r15,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB42_16
.LBB42_17:                              # %divide_bar.exit
	movq	%r13, 56(%rsp)          # 8-byte Spill
	sarl	%r12d
	sarl	%ebx
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	16(%r13), %rax
	movq	24(%r13), %rdx
	movl	(%rdx), %ecx
	movl	4(%rdx), %esi
	addl	(%rax), %ecx
	movl	%ecx, %r13d
	shrl	$31, %r13d
	addl	%ecx, %r13d
	sarl	%r13d
	addl	4(%rax), %esi
	movl	%esi, %ebx
	shrl	$31, %ebx
	addl	%esi, %ebx
	sarl	%ebx
	movq	8(%rax), %rcx
	movq	8(%rdx), %r8
	testq	%rdi, %rdi
	je	.LBB42_19
# BB#18:                                # %if.then.i.7.i.88
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movss	(%r8), %xmm2            # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movq	64(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%rcx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%r8), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r14), %rbp
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%r14, %r15
	movl	%r12d, %r14d
	leaq	8(%rsi), %r12
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbp), %rax
	movq	%r12, %rdi
	movl	%r14d, %r12d
	movq	%r15, %r14
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	%rbp, %rsi
	callq	*40(%rax)
	movq	328(%r14), %rdi
	jmp	.LBB42_31
.LBB42_19:                              # %if.else.i.i.91
	movslq	24(%r14), %rsi
	xorl	%edi, %edi
	testq	%rsi, %rsi
	jle	.LBB42_31
# BB#20:                                # %for.body.lr.ph.i.i.92
	cmpq	$2, %rsi
	movl	$1, %edx
	cmovlq	%rsi, %rdx
	notq	%rdx
	leaq	(%rdx,%rsi), %r10
	cmpq	$-2, %r10
	je	.LBB42_29
# BB#21:                                # %overflow.checked328
	addq	$2, %r10
	xorl	%ebp, %ebp
	movq	%r10, %rax
	andq	$-4, %rax
	je	.LBB42_28
# BB#22:                                # %vector.memcheck356
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	movq	40(%rsp), %r9           # 8-byte Reload
	leaq	(%r9,%rsi,4), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	12(%r15,%rax), %rax
	cmpq	$2, %rsi
	movl	$1, %edi
	cmovlq	%rsi, %rdi
	notq	%rdi
	shlq	$2, %rdi
	movq	%rcx, %rbp
	subq	%rdi, %rbp
	movq	%r8, %rdx
	subq	%rdi, %rdx
	negq	%rdi
	leaq	8(%r9,%rdi), %rdi
	leaq	(%rdi,%r15), %rdi
	leaq	12(%rcx,%rsi,4), %r12
	addq	$8, %rbp
	leaq	12(%r8,%rsi,4), %r11
	addq	$8, %rdx
	cmpq	%rbp, %rax
	setbe	%r9b
	cmpq	%rdi, %r12
	setbe	%r12b
	cmpq	%rdx, %rax
	setbe	%dl
	cmpq	%rdi, %r11
	setbe	%dil
	xorl	%ebp, %ebp
	testb	%r12b, %r9b
	jne	.LBB42_23
# BB#24:                                # %vector.memcheck356
	andb	%dil, %dl
	movl	32(%rsp), %r12d         # 4-byte Reload
	jne	.LBB42_28
# BB#25:                                # %vector.body324.preheader
	movq	%rsi, %r11
	subq	24(%rsp), %r11          # 8-byte Folded Reload
	leaq	8(%rcx,%rsi,4), %rbp
	leaq	8(%r8,%rsi,4), %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	8(%r15,%rax), %rdx
	movq	%rsi, %r9
	notq	%r9
	cmpq	$-3, %r9
	movq	$-2, %rax
	cmovgq	%r9, %rax
	leaq	2(%rax,%rsi), %rsi
	andq	$-4, %rsi
	movapd	.LCPI42_1(%rip), %xmm0  # xmm0 = [5.000000e-01,5.000000e-01]
	.align	16, 0x90
.LBB42_26:                              # %vector.body324
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %xmm1           # xmm1 = mem[0],zero
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movq	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulpd	%xmm0, %xmm1
	mulpd	%xmm0, %xmm2
	movq	(%rdi), %xmm3           # xmm3 = mem[0],zero
	shufps	$225, %xmm3, %xmm3      # xmm3 = xmm3[1,0,2,3]
	movq	-8(%rdi), %xmm4         # xmm4 = mem[0],zero
	shufps	$225, %xmm4, %xmm4      # xmm4 = xmm4[1,0,2,3]
	cvtps2pd	%xmm3, %xmm3
	cvtps2pd	%xmm4, %xmm4
	mulpd	%xmm0, %xmm3
	mulpd	%xmm0, %xmm4
	addpd	%xmm1, %xmm3
	addpd	%xmm2, %xmm4
	cvtpd2ps	%xmm3, %xmm1
	cvtpd2ps	%xmm4, %xmm2
	shufps	$225, %xmm1, %xmm1      # xmm1 = xmm1[1,0,2,3]
	movlps	%xmm1, (%rdx)
	shufps	$225, %xmm2, %xmm2      # xmm2 = xmm2[1,0,2,3]
	movlps	%xmm2, -8(%rdx)
	addq	$-16, %rbp
	addq	$-16, %rdi
	addq	$-16, %rdx
	addq	$-4, %rsi
	jne	.LBB42_26
# BB#27:
	movq	%r11, %rsi
	movq	24(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB42_28
.LBB42_23:
	movl	32(%rsp), %r12d         # 4-byte Reload
.LBB42_28:                              # %middle.block325
	xorl	%edi, %edi
	cmpq	%rbp, %r10
	je	.LBB42_31
.LBB42_29:                              # %for.body.i.i.105.preheader
	incq	%rsi
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	12(%rax,%r15), %rdx
	movsd	.LCPI42_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edi, %edi
	.align	16, 0x90
.LBB42_30:                              # %for.body.i.i.105
                                        # =>This Inner Loop Header: Depth=1
	movss	8(%rcx,%rsi,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	8(%r8,%rsi,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -4(%rdx,%rsi,4)
	decq	%rsi
	cmpq	$1, %rsi
	jg	.LBB42_30
.LBB42_31:                              # %divide_bar.exit106
	addl	%r12d, %r13d
	movl	%r13d, %eax
	shrl	$31, %eax
	addl	%r13d, %eax
	sarl	%eax
	movl	%eax, 184(%rsp)
	addl	72(%rsp), %ebx          # 4-byte Folded Reload
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	movl	%eax, 188(%rsp)
	testq	%rdi, %rdi
	je	.LBB42_33
# BB#32:                                # %if.then.i.7.i.146
	movss	(%r15), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI42_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	64(%rsp), %rax          # 8-byte Reload
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movq	48(%rsp), %rsi          # 8-byte Reload
	movss	%xmm0, (%rsi)
	movss	4(%r15), %xmm0          # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movss	4(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
	movss	%xmm0, 4(%rsi)
	movq	16(%r14), %rbx
	leaq	8(%rsi), %rbp
	leaq	16(%rsi), %rdx
	callq	*8(%rdi)
	movq	(%rbx), %rax
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	jmp	.LBB42_36
.LBB42_33:                              # %if.else.i.i.149
	movslq	24(%r14), %rax
	testq	%rax, %rax
	jle	.LBB42_36
# BB#34:                                # %for.body.lr.ph.i.i.150
	movq	40(%rsp), %rdx          # 8-byte Reload
	leaq	12(%r15,%rdx,2), %rcx
	leaq	12(%rdx,%r15), %rdx
	movsd	.LCPI42_0(%rip), %xmm0  # xmm0 = mem[0],zero
	.align	16, 0x90
.LBB42_35:                              # %for.body.i.i.163
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%r15,%rax,4), %xmm1  # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movss	(%rdx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, (%rcx,%rax,4)
	cmpq	$1, %rax
	leaq	-1(%rax), %rax
	jg	.LBB42_35
.LBB42_36:                              # %divide_bar.exit164
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	32(%rbx), %r8
	leaq	152(%rsp), %r12
	movq	%r12, (%rsp)
	leaq	184(%rsp), %rcx
	leaq	80(%rsp), %rbp
	movq	%r14, %rdi
	movq	%rbp, %r9
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB42_77
# BB#37:                                # %if.end.45
	movl	$1, 80(%rsp)
	movl	$1, 152(%rsp)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdx
	movq	40(%rbx), %r8
	leaq	104(%rsp), %r13
	movq	%rbp, (%rsp)
	leaq	184(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r13, %r9
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB42_77
# BB#38:                                # %if.end.59
	movl	$1, 104(%rsp)
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rsi
	movq	48(%rbx), %r8
	leaq	128(%rsp), %rbp
	movq	%r13, (%rsp)
	leaq	184(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbp, %r9
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB42_77
# BB#39:                                # %if.end.73
	movl	$1, 128(%rsp)
	movq	(%rbx), %rdx
	movq	16(%rbx), %rsi
	movq	56(%rbx), %r8
	movq	%rbp, (%rsp)
	leaq	184(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r12, %r9
	callq	fill_triangle
	testl	%eax, %eax
	js	.LBB42_77
# BB#40:                                # %if.then.75
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB42_49
# BB#41:                                # %if.then.i.174
	movq	192(%rsp), %r9
	movq	8(%rbx), %rax
	movq	8(%rax), %r8
	movq	96(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB42_77
# BB#42:                                # %if.end.i.178
	movq	88(%rsp), %rsi
	movq	96(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB42_48
# BB#43:                                # %if.then.i.i.179
	testq	%rcx, %rcx
	je	.LBB42_77
# BB#44:                                # %if.end.i.i.184
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB42_47
.LBB42_45:                              # %for.body.i.i.i.188
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB42_45
# BB#46:                                # %for.end.loopexit.i.i.i.189
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB42_47:                              # %release_wedge_vertex_list_interval.exit.i.i.193
	movq	88(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 88(%rsp)
	jmp	.LBB42_49
.LBB42_48:                              # %if.else.i.i.194
	testq	%rcx, %rcx
	jne	.LBB42_77
.LBB42_49:                              # %if.then.85
	movq	112(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB42_58
# BB#50:                                # %if.then.i.207
	movq	192(%rsp), %r9
	movq	24(%rbx), %rax
	movq	8(%rax), %r8
	movq	120(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB42_77
# BB#51:                                # %if.end.i.211
	movq	112(%rsp), %rsi
	movq	120(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB42_57
# BB#52:                                # %if.then.i.i.212
	testq	%rcx, %rcx
	je	.LBB42_77
# BB#53:                                # %if.end.i.i.217
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB42_56
.LBB42_54:                              # %for.body.i.i.i.221
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB42_54
# BB#55:                                # %for.end.loopexit.i.i.i.222
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB42_56:                              # %release_wedge_vertex_list_interval.exit.i.i.226
	movq	112(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	jmp	.LBB42_58
.LBB42_57:                              # %if.else.i.i.227
	testq	%rcx, %rcx
	jne	.LBB42_77
.LBB42_58:                              # %if.then.95
	movq	136(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB42_67
# BB#59:                                # %if.then.i.240
	movq	192(%rsp), %r9
	movq	16(%rbx), %rax
	movq	8(%rax), %r8
	movq	144(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB42_77
# BB#60:                                # %if.end.i.244
	movq	136(%rsp), %rsi
	movq	144(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB42_66
# BB#61:                                # %if.then.i.i.245
	testq	%rcx, %rcx
	je	.LBB42_77
# BB#62:                                # %if.end.i.i.250
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB42_65
.LBB42_63:                              # %for.body.i.i.i.254
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB42_63
# BB#64:                                # %for.end.loopexit.i.i.i.255
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB42_65:                              # %release_wedge_vertex_list_interval.exit.i.i.259
	movq	136(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 136(%rsp)
	jmp	.LBB42_67
.LBB42_66:                              # %if.else.i.i.260
	testq	%rcx, %rcx
	jne	.LBB42_77
.LBB42_67:                              # %if.then.105
	movq	160(%rsp), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB42_77
# BB#68:                                # %if.then.i.44
	movq	(%rbx), %rax
	movq	8(%rax), %r9
	movq	192(%rsp), %r8
	movq	168(%rsp), %rdx
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movq	%r14, %rdi
	callq	fill_wedge_from_list_rec
	testl	%eax, %eax
	js	.LBB42_77
# BB#69:                                # %if.end.i.45
	movq	160(%rsp), %rsi
	movq	168(%rsp), %rcx
	movl	$-28, %eax
	testq	%rsi, %rsi
	je	.LBB42_75
# BB#70:                                # %if.then.i.i
	testq	%rcx, %rcx
	je	.LBB42_77
# BB#71:                                # %if.end.i.i
	movq	16(%rsi), %rdx
	movq	%rcx, 16(%rsi)
	movq	%rsi, 24(%rcx)
	cmpq	%rcx, %rdx
	movq	360(%r14), %rax
	je	.LBB42_74
.LBB42_72:                              # %for.body.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rsi
	movq	16(%rsi), %rdx
	movq	%rax, 16(%rsi)
	cmpq	%rcx, %rdx
	movq	%rsi, %rax
	jne	.LBB42_72
# BB#73:                                # %for.end.loopexit.i.i.i
	movq	%rsi, 360(%r14)
	movq	%rsi, %rax
.LBB42_74:                              # %release_wedge_vertex_list_interval.exit.i.i
	movq	160(%rsp), %rdx
	movq	%rax, 16(%rdx)
	movq	%rdx, 16(%rcx)
	movq	%rcx, 360(%r14)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	jmp	.LBB42_76
.LBB42_75:                              # %if.else.i.i
	testq	%rcx, %rcx
	jne	.LBB42_77
.LBB42_76:                              # %for.inc.critedge.i.i
	xorl	%eax, %eax
.LBB42_77:                              # %if.end.113
	movq	%r15, 688(%r14)
.LBB42_78:                              # %cleanup
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	triangles4, .Lfunc_end42-triangles4
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"term_patch_fill_state"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"alloc_wedge_vertex_list_elem_buffer"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"wedge_vertex_list_elem_buffer_free"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"mesh_triangle"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"patch_fill"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"allocate_color_stack"
	.size	.L.str.5, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
