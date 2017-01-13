	.text
	.file	"gxshade4.bc"
	.globl	mesh_init_fill_state
	.align	16, 0x90
	.type	mesh_init_fill_state,@function
mesh_init_fill_state:                   # @mesh_init_fill_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rcx, %rdx
	movq	%r8, %rcx
	callq	shade_init_fill_state
	testl	%eax, %eax
	js	.LBB0_2
# BB#1:                                 # %if.end
	movq	%r15, 304(%rbx)
	movups	(%r14), %xmm0
	movups	%xmm0, 312(%rbx)
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	mesh_init_fill_state, .Lfunc_end0-mesh_init_fill_state
	.cfi_endproc

	.globl	gs_shading_FfGt_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_FfGt_fill_rectangle,@function
gs_shading_FfGt_fill_rectangle:         # @gs_shading_FfGt_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp10:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 56
	subq	$1304, %rsp             # imm = 0x518
.Ltmp12:
	.cfi_def_cfa_offset 1360
.Ltmp13:
	.cfi_offset %rbx, -56
.Ltmp14:
	.cfi_offset %r12, -48
.Ltmp15:
	.cfi_offset %r13, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rdx, %rbx
	movq	%rdi, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	144(%rax), %ebp
	leaq	576(%rsp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r13, %rcx
	callq	shade_init_fill_state
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB1_40
# BB#1:                                 # %if.end
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	16(%rax), %r12
	movq	120(%r12), %rax
	movq	%rax, 904(%rsp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 888(%rsp)
	leaq	576(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_2
# BB#4:                                 # %if.end.11
	leaq	576(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	$3, %edx
	callq	reserve_colors
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rax, 136(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rax, 120(%rsp)
	movq	80(%rsp), %rbx
	movq	%rbx, 104(%rsp)
	leaq	152(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	shade_next_init
	movq	%rbp, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	shade_next_flag
	testl	%eax, %eax
	js	.LBB1_35
# BB#5:                                 # %while.body.lr.ph
	leaq	152(%rsp), %r13
	leaq	576(%rsp), %r12
	.align	16, 0x90
.LBB1_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, %eax
	je	.LBB1_7
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	$1, %eax
	movq	48(%rsp), %rbp          # 8-byte Reload
	jne	.LBB1_9
# BB#22:                                # %sw.bb.33
                                        #   in Loop: Header=BB1_6 Depth=1
	movups	112(%rsp), %xmm0
	movaps	%xmm0, 128(%rsp)
	movq	%rbp, 120(%rsp)
	movq	40(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_6 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB1_23:                               # %sw.bb.35
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movups	96(%rsp), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rbp, 104(%rsp)
	movq	%rbp, %rbx
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB1_24:                               # %v2
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdx
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_27
# BB#25:                                # %land.lhs.true.i.51
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB1_27
# BB#26:                                # %if.then.i.58
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	16(%rbx), %rdx
	movl	16(%rbx), %eax
	movl	%eax, (%rbx)
	movl	$0, 4(%rbx)
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB1_28
	.align	16, 0x90
.LBB1_27:                               # %if.else.i.63
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	leaq	8(%rbx), %rdi
	callq	*40(%rax)
.LBB1_28:                               # %Gt_next_vertex.exit65
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	128(%rsp), %rsi
	testl	%r14d, %r14d
	js	.LBB1_34
# BB#29:                                # %if.end.40
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rcx
	movq	120(%rsp), %r8
	movq	%r12, %rdi
	leaq	112(%rsp), %r15
	movq	%r15, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_33
# BB#30:                                # %if.end.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	120(%rsp), %rcx
	movq	104(%rsp), %r8
	movq	%r12, %rdi
	movq	%r15, %rsi
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_33
# BB#31:                                # %if.end.15.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	104(%rsp), %rcx
	movq	136(%rsp), %r8
	movq	%r12, %rdi
	movq	%rbp, %rsi
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_33
# BB#32:                                # %if.then.17.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	leaq	112(%rsp), %rdx
	movq	%rbp, %rcx
	callq	mesh_triangle
	movl	%eax, %r14d
.LBB1_33:                               # %sw.epilog
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_9:                                # %while.body
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$-15, %ecx
	testl	%eax, %eax
	jne	.LBB1_40
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	leaq	128(%rsp), %rsi
	movq	%rbp, %rdx
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_13
# BB#11:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB1_13
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	16(%rbp), %rdx
	movl	16(%rbp), %eax
	movl	%eax, (%rbp)
	movl	$0, 4(%rbp)
	movq	%rbp, %rsi
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.i
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	leaq	8(%rbp), %rdi
	callq	*40(%rax)
.LBB1_14:                               # %Gt_next_vertex.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	leaq	112(%rsp), %rbp
	testl	%r14d, %r14d
	js	.LBB1_34
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	shade_next_flag
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_34
# BB#16:                                # %lor.lhs.false.25
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_19
# BB#17:                                # %land.lhs.true.i.32
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB1_19
# BB#18:                                # %if.then.i.39
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	16(%rsi), %rdx
	movl	16(%rsi), %eax
	movl	%eax, (%rsi)
	movl	$0, 4(%rsi)
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.i.44
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	8(%rcx), %rdi
	callq	*40(%rax)
.LBB1_20:                               # %Gt_next_vertex.exit46
                                        #   in Loop: Header=BB1_6 Depth=1
	testl	%r14d, %r14d
	js	.LBB1_34
# BB#21:                                # %lor.lhs.false.28
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	%r13, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	shade_next_flag
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB1_24
	.align	16, 0x90
.LBB1_34:                               # %sw.epilog
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$8, %esi
	movq	%r13, %rdi
	callq	*560(%rsp)
	movq	%r13, %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	shade_next_flag
	testl	%eax, %eax
	jns	.LBB1_6
.LBB1_35:                               # %while.end
	movq	1272(%rsp), %rsi
	leaq	576(%rsp), %rdi
	movl	$3, %edx
	callq	release_colors
	movq	872(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_37
# BB#36:                                # %if.then.47
	callq	gsicc_release_link
.LBB1_37:                               # %if.end.49
	leaq	576(%rsp), %rdi
	callq	term_patch_fill_state
	movl	$-28, %ecx
	testl	%eax, %eax
	jne	.LBB1_40
# BB#38:                                # %if.end.52
	leaq	152(%rsp), %rdi
	callq	*568(%rsp)
	testl	%eax, %eax
	movl	$-15, %eax
	cmovel	%eax, %r14d
	jmp	.LBB1_39
.LBB1_2:                                # %if.then.6
	movq	872(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_39
# BB#3:                                 # %if.then.8
	callq	gsicc_release_link
.LBB1_39:                               # %cleanup
	movl	%r14d, %ecx
.LBB1_40:                               # %cleanup
	movl	%ecx, %eax
	addq	$1304, %rsp             # imm = 0x518
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_shading_FfGt_fill_rectangle, .Lfunc_end1-gs_shading_FfGt_fill_rectangle
	.cfi_endproc

	.globl	gs_shading_LfGt_fill_rectangle
	.align	16, 0x90
	.type	gs_shading_LfGt_fill_rectangle,@function
gs_shading_LfGt_fill_rectangle:         # @gs_shading_LfGt_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp22:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp23:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 56
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp25:
	.cfi_def_cfa_offset 1296
.Ltmp26:
	.cfi_offset %rbx, -56
.Ltmp27:
	.cfi_offset %r12, -48
.Ltmp28:
	.cfi_offset %r13, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r13
	movslq	144(%r13), %r12
	leaq	512(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rcx, %rdx
	movq	%r15, %rcx
	callq	shade_init_fill_state
	testl	%eax, %eax
	js	.LBB2_6
# BB#1:                                 # %if.end
	leaq	16(%r13), %rbp
	movq	120(%rbp), %rax
	movq	%rax, 840(%rsp)
	movups	(%rbx), %xmm0
	movups	%xmm0, 824(%rsp)
	leaq	512(%rsp), %rdi
	callq	init_patch_fill_state
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_2
# BB#7:                                 # %if.end.7
	leaq	512(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movl	$1, %edx
	callq	reserve_colors
	movq	64(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	88(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	shade_next_init
	movq	8(%r15), %rdi
	addq	$8, %r15
	movl	$16, %edx
	movl	$.L.str, %ecx
	movl	%r12d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	%r12, %rax
	xorl	%r12d, %r12d
	testq	%rbp, %rbp
	je	.LBB2_8
# BB#9:                                 # %if.end.15
	movq	(%r15), %rdi
	movl	1192(%rsp), %esi
	imull	%eax, %esi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB2_8
# BB#10:                                # %if.end.22
	movq	(%r15), %rdi
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(,%rax,8), %esi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	je	.LBB2_11
# BB#12:                                # %for.cond.preheader
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB2_18
# BB#13:
	movq	40(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB2_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	1192(%rsp), %rax
	movslq	%ebp, %rcx
	imulq	%rax, %rcx
	leaq	(%rcx,%rbx), %rax
	movq	%rbx, %r13
	movq	%rax, (%r12,%rbp,8)
	movq	%rax, 8(%r15)
	movq	(%r12,%rbp,8), %rbx
	leaq	88(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_24
# BB#15:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB2_24
# BB#16:                                # %if.then.i
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	16(%rbx), %eax
	movl	%eax, (%rbx)
	movl	$0, 4(%rbx)
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB2_25
	.align	16, 0x90
.LBB2_24:                               # %if.else.i
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	addq	$8, %rbx
	movq	%rbx, %rdi
	callq	*40(%rax)
.LBB2_25:                               # %Gt_next_vertex.exit
                                        #   in Loop: Header=BB2_14 Depth=1
	movq	%r13, %rbx
	testl	%r14d, %r14d
	js	.LBB2_26
# BB#17:                                # %for.cond
                                        #   in Loop: Header=BB2_14 Depth=1
	incq	%rbp
	addq	$16, %r15
	cmpq	56(%rsp), %rbp          # 8-byte Folded Reload
	jl	.LBB2_14
.LBB2_18:                               # %while.cond.preheader
	movq	56(%rsp), %rax          # 8-byte Reload
	shlq	$4, %rax
	movq	40(%rsp), %rbp          # 8-byte Reload
	leaq	-16(%rax,%rbp), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbp, %rax
	addq	$16, %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	72(%rsp), %rdx
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_19
.LBB2_8:
	xorl	%ebx, %ebx
	movl	$-25, %r14d
	jmp	.LBB2_3
.LBB2_2:                                # %if.end.out_crit_edge
	addq	$8, %r15
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB2_3
.LBB2_47:                               # %for.end.106
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	%r15, %rdx
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	-8(%r12,%r13,8), %rax
	movups	72(%rsp), %xmm0
	movq	(%rsp), %rcx            # 8-byte Reload
	movups	%xmm0, (%rcx)
	movq	64(%rsp), %rcx
	movq	%rcx, -8(%r12,%r13,8)
	movq	%rax, 64(%rsp)
	movq	%rax, 80(%rsp)
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB2_19:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_32 Depth 2
	movq	440(%rsp), %rax
	movq	112(%rax), %rcx
	cmpq	120(%rax), %rcx
	jb	.LBB2_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB2_19 Depth=1
	movzwl	152(%rax), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	je	.LBB2_3
.LBB2_21:                               # %while.body
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rbx
	leaq	88(%rsp), %rdi
	movq	%rdx, %r15
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_27
# BB#22:                                # %land.lhs.true.i.83
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB2_27
# BB#23:                                # %if.then.i.90
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	16(%rbx), %eax
	movl	%eax, (%rbx)
	movl	$0, 4(%rbx)
	leaq	16(%rbx), %rdx
	movq	%rbx, %rsi
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.i.95
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	addq	$8, %rbx
	movq	%rbx, %rdi
	callq	*40(%rax)
.LBB2_28:                               # %Gt_next_vertex.exit97
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	512(%rsp), %rbx
	testl	%r14d, %r14d
	js	.LBB2_29
# BB#46:                                # %for.cond.66.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	movq	8(%rsp), %r12           # 8-byte Reload
	movl	$1, %r13d
	jle	.LBB2_47
.LBB2_32:                               # %for.body.69
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-16(%r12), %rbp
	movq	-8(%r12), %rcx
	movq	8(%r12), %r8
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#34:                                # %if.end.i
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	8(%r12), %rcx
	movq	80(%rsp), %r8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#35:                                # %if.end.15.i
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	80(%rsp), %rcx
	movq	-8(%r12), %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#36:                                # %Gt_fill_triangle.exit
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	mesh_triangle
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#37:                                # %if.end.78
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%r15, %rbx
	movq	-8(%rcx,%r13,8), %r15
	movups	72(%rsp), %xmm0
	movups	%xmm0, -16(%r12)
	movq	64(%rsp), %rax
	movq	%rax, -8(%rcx,%r13,8)
	movq	%r15, 64(%rsp)
	movq	%r15, 80(%rsp)
	leaq	88(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	shade_next_vertex
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_40
# BB#38:                                # %land.lhs.true.i.104
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	136(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB2_40
# BB#39:                                # %if.then.i.111
                                        #   in Loop: Header=BB2_32 Depth=2
	movl	16(%r15), %eax
	movl	%eax, (%r15)
	movl	$0, 4(%r15)
	leaq	16(%r15), %rdx
	movq	%r15, %rsi
	callq	*8(%rdi)
	movl	%eax, %r14d
	jmp	.LBB2_41
.LBB2_40:                               # %if.else.i.116
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rsi
	movq	(%rsi), %rax
	addq	$8, %r15
	movq	%r15, %rdi
	callq	*40(%rax)
.LBB2_41:                               # %Gt_next_vertex.exit119
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	%rbx, %r15
	leaq	512(%rsp), %rbx
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#42:                                # %if.end.93
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	-8(%r12), %r8
	movq	8(%r12), %rcx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#43:                                # %if.end.i.130
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	-8(%r12), %rcx
	movq	80(%rsp), %r8
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#44:                                # %if.end.15.i.133
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	80(%rsp), %rcx
	movq	8(%r12), %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	mesh_padding
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#45:                                # %Gt_fill_triangle.exit137
                                        #   in Loop: Header=BB2_32 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	mesh_triangle
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_33
# BB#31:                                # %for.cond.66
                                        #   in Loop: Header=BB2_32 Depth=2
	incq	%r13
	addq	$16, %r12
	cmpq	56(%rsp), %r13          # 8-byte Folded Reload
	jl	.LBB2_32
	jmp	.LBB2_47
.LBB2_33:
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB2_30:                               # %out
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB2_3
.LBB2_11:
	movl	$-25, %r14d
	jmp	.LBB2_3
.LBB2_26:
	movq	24(%rsp), %r15          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB2_3:                                # %out
	movq	(%r15), %rdi
	movl	$.L.str, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	(%r15), %rdi
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	(%r15), %rdi
	movl	$.L.str, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	1208(%rsp), %rsi
	leaq	512(%rsp), %rdi
	movl	$1, %edx
	callq	release_colors
	movq	808(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# BB#4:                                 # %if.then.130
	callq	gsicc_release_link
.LBB2_5:                                # %if.end.132
	leaq	512(%rsp), %rdi
	callq	term_patch_fill_state
	testl	%eax, %eax
	movl	$-28, %eax
	cmovel	%r14d, %eax
.LBB2_6:                                # %cleanup
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_29:
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_30
.Lfunc_end2:
	.size	gs_shading_LfGt_fill_rectangle, .Lfunc_end2-gs_shading_LfGt_fill_rectangle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_shading_LfGt_render"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_shading_LfGt_fill_rectangle"
	.size	.L.str.1, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
