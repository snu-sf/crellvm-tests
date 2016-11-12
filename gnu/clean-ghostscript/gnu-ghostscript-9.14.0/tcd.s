	.text
	.file	"tcd.bc"
	.globl	opj_tcd_create
	.align	16, 0x90
	.type	opj_tcd_create,@function
opj_tcd_create:                         # @opj_tcd_create
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
	movl	%edi, %ebp
	movl	$64, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_4
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$64, %edx
	movq	%rbx, %rdi
	callq	memset
	testl	%ebp, %ebp
	setne	%al
	movb	60(%rbx), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, 60(%rbx)
	movl	$8, %edi
	callq	malloc
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	je	.LBB0_2
# BB#3:                                 # %if.end.7
	xorl	%esi, %esi
	movl	$8, %edx
	movq	%rax, %rdi
	callq	memset
	movq	%rbx, %rax
	jmp	.LBB0_4
.LBB0_2:                                # %if.then.6
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
.LBB0_4:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_tcd_create, .Lfunc_end0-opj_tcd_create
	.cfi_endproc

	.globl	opj_tcd_rateallocate_fixed
	.align	16, 0x90
	.type	opj_tcd_rateallocate_fixed,@function
opj_tcd_rateallocate_fixed:             # @opj_tcd_rateallocate_fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	48(%rbx), %rax
	cmpl	$0, 8(%rax)
	je	.LBB1_3
# BB#1:
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	opj_tcd_makelayer_fixed
	incl	%ebp
	movq	48(%rbx), %rax
	cmpl	8(%rax), %ebp
	jb	.LBB1_2
.LBB1_3:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_tcd_rateallocate_fixed, .Lfunc_end1-opj_tcd_rateallocate_fixed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4589168020290535424     # double 0.0625
	.text
	.globl	opj_tcd_makelayer_fixed
	.align	16, 0x90
	.type	opj_tcd_makelayer_fixed,@function
opj_tcd_makelayer_fixed:                # @opj_tcd_makelayer_fixed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$1256, %rsp             # imm = 0x4E8
.Ltmp16:
	.cfi_def_cfa_offset 1312
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rsp)        # 8-byte Spill
	movl	16(%rax), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	je	.LBB2_37
# BB#1:                                 # %for.body.lr.ph
	movq	40(%rdi), %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	48(%rdi), %rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	movl	%esi, %r15d
	leal	-1(%rsi), %eax
	imulq	$120, %rax, %rax
	leaq	48(%rsp,%rax), %rax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #       Child Loop BB2_6 Depth 3
                                        #     Child Loop BB2_10 Depth 2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #           Child Loop BB2_16 Depth 5
	movl	%r11d, %r11d
	movq	-112(%rsp), %rax        # 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	-120(%rsp), %rax        # 8-byte Reload
	movl	8(%rax), %ebx
	imulq	$56, %r11, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	movl	16(%rcx,%rax), %r10d
	movq	%r10, -88(%rsp)         # 8-byte Spill
	je	.LBB2_8
# BB#3:                                 # %for.cond.5.preheader.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	leal	(%r10,%r10,2), %r14d
	xorl	%r9d, %r9d
	leaq	56(%rsp), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_4:                                # %for.cond.5.preheader
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_6 Depth 3
	testl	%r10d, %r10d
	je	.LBB2_7
# BB#5:                                 # %for.cond.8.preheader.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	-104(%rsp), %rax        # 8-byte Reload
	movq	120(%rax), %rcx
	movq	32(%rdi), %rax
	movq	24(%rax), %rax
	movq	%r11, %rdx
	shlq	$6, %rdx
	movl	24(%rax,%rdx), %eax
	cvtsi2sdq	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movl	%r9d, %edx
	movq	%r12, %rbp
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB2_6:                                # %for.cond.8.preheader
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%edx, %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	(%rcx,%rax,4), %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, -8(%rbp)
	leal	1(%rdx), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	(%rcx,%rax,4), %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, -4(%rbp)
	leal	2(%rdx), %eax
	xorps	%xmm2, %xmm2
	cvtsi2ssl	(%rcx,%rax,4), %xmm2
	mulss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, (%rbp)
	incq	%r8
	addq	$12, %rbp
	addl	$3, %edx
	cmpq	%r10, %r8
	jb	.LBB2_6
.LBB2_7:                                # %for.inc.33
                                        #   in Loop: Header=BB2_4 Depth=2
	incq	%r13
	addq	$120, %r12
	addl	%r14d, %r9d
	cmpq	%rbx, %r13
	jb	.LBB2_4
.LBB2_8:                                # %for.cond.36.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%r10d, %r10d
	je	.LBB2_36
# BB#9:                                 # %for.body.40.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	24(%rax,%rcx), %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB2_10:                               # %for.body.40
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_12 Depth 3
                                        #         Child Loop BB2_14 Depth 4
                                        #           Child Loop BB2_16 Depth 5
	movq	%r8, -32(%rsp)          # 8-byte Spill
	movq	-96(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imulq	$176, %r8, %rbp
	movl	24(%rax,%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB2_34
# BB#11:                                # %for.body.46.lr.ph
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	%rbp, -48(%rsp)         # 8-byte Spill
	leaq	24(%rax,%rbp), %rdx
	movq	%rdx, -56(%rsp)         # 8-byte Spill
	leaq	16(%rax,%rbp), %rdx
	movq	%rdx, -64(%rsp)         # 8-byte Spill
	leaq	20(%rax,%rbp), %rdx
	movq	%rdx, -72(%rsp)         # 8-byte Spill
	movl	20(%rax,%rbp), %edx
	imull	16(%rax,%rbp), %edx
	movl	%edx, -20(%rsp)         # 4-byte Spill
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_12:                               # %for.body.46
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_14 Depth 4
                                        #           Child Loop BB2_16 Depth 5
	cmpl	$0, -20(%rsp)           # 4-byte Folded Reload
	movl	%edx, %edx
	je	.LBB2_33
# BB#13:                                # %for.body.53.lr.ph
                                        #   in Loop: Header=BB2_12 Depth=3
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-48(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rdx,%rdx,2), %rcx
	shlq	$4, %rcx
	leaq	56(%rcx,%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	-72(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	-64(%rsp), %rax         # 8-byte Reload
	imull	(%rax), %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	(,%r8,4), %rax
	leaq	(%rax,%rax,2), %rax
	imulq	$120, %r15, %rcx
	leaq	48(%rsp,%rcx), %rcx
	addq	%rax, %rcx
	leaq	(%rcx,%rdx,4), %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	-80(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rdx, -16(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_14:                               # %for.body.53
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_16 Depth 5
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rax), %rax
	imulq	$56, %rcx, %rdx
	movl	20(%rax,%rdx), %ecx
	imull	16(%rax,%rdx), %ecx
	testl	%ecx, %ecx
	je	.LBB2_31
# BB#15:                                # %for.body.60.lr.ph
                                        #   in Loop: Header=BB2_14 Depth=4
	leaq	24(%rax,%rdx), %r13
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r12d
	movl	%ecx, %ebx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$52, %r14d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB2_16:                               # %for.body.60
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_10 Depth=2
                                        #       Parent Loop BB2_12 Depth=3
                                        #         Parent Loop BB2_14 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	(%r13), %r8
	movq	32(%rdi), %rax
	movq	24(%rax), %rax
	movq	%r11, %rcx
	shlq	$6, %rcx
	movl	24(%rax,%rcx), %eax
	subl	-12(%r8,%r14), %eax
	testl	%esi, %esi
	movq	-44(%r8,%r14), %r9
	je	.LBB2_19
# BB#17:                                # %if.else.82
                                        #   in Loop: Header=BB2_16 Depth=5
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %ecx
	movl	%r12d, %edx
	subl	%ecx, %edx
	subl	%eax, %ecx
	jg	.LBB2_20
# BB#18:                                # %if.then.106
                                        #   in Loop: Header=BB2_16 Depth=5
	addl	%ecx, %edx
	movl	$0, %eax
	cmovsl	%eax, %edx
	jmp	.LBB2_20
	.align	16, 0x90
.LBB2_19:                               # %if.then.124
                                        #   in Loop: Header=BB2_16 Depth=5
	movl	%r12d, %edx
	subl	%eax, %edx
	movl	$0, %eax
	cmovlel	%eax, %edx
	movl	$0, (%r8,%r14)
.LBB2_20:                               # %if.end.125
                                        #   in Loop: Header=BB2_16 Depth=5
	movl	(%r8,%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB2_21
# BB#23:                                # %if.else.141
                                        #   in Loop: Header=BB2_16 Depth=5
	leal	(%rdx,%rdx,2), %ecx
	addl	%ebp, %ecx
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_21:                               # %if.then.130
                                        #   in Loop: Header=BB2_16 Depth=5
	xorl	%ecx, %ecx
	testl	%edx, %edx
	je	.LBB2_24
# BB#22:                                # %if.then.133
                                        #   in Loop: Header=BB2_16 Depth=5
	leal	-2(%rdx,%rdx,2), %ecx
.LBB2_24:                               # %if.end.145
                                        #   in Loop: Header=BB2_16 Depth=5
	movl	%ecx, %eax
	subl	%ebp, %eax
	leaq	(%r15,%r15,2), %rdx
	movl	%eax, (%r9,%rdx,8)
	je	.LBB2_30
# BB#25:                                # %if.end.150
                                        #   in Loop: Header=BB2_16 Depth=5
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	leal	-1(%rcx), %eax
	movq	-36(%r8,%r14), %rsi
	leaq	(%rax,%rax,2), %rax
	movl	(%rsi,%rax,8), %eax
	testl	%ebp, %ebp
	je	.LBB2_26
# BB#27:                                # %if.else.159
                                        #   in Loop: Header=BB2_16 Depth=5
	decl	%ebp
	leaq	(%rbp,%rbp,2), %rbp
	movl	(%rsi,%rbp,8), %esi
	subl	%esi, %eax
	addq	-52(%r8,%r14), %rsi
	jmp	.LBB2_28
.LBB2_26:                               # %if.then.154
                                        #   in Loop: Header=BB2_16 Depth=5
	movq	-52(%r8,%r14), %rsi
.LBB2_28:                               # %if.end.181
                                        #   in Loop: Header=BB2_16 Depth=5
	movq	%rsi, 16(%r9,%rdx,8)
	movq	%rdi, %rsi
	movq	%rbx, %rdi
	movq	32(%rsp), %rbx          # 8-byte Reload
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	%eax, 4(%r9,%rdx,8)
	je	.LBB2_30
# BB#29:                                # %if.then.183
                                        #   in Loop: Header=BB2_16 Depth=5
	movl	%ecx, (%r8,%r14)
.LBB2_30:                               # %cleanup
                                        #   in Loop: Header=BB2_16 Depth=5
	incq	%r10
	addq	$64, %r14
	cmpq	%rbx, %r10
	jb	.LBB2_16
.LBB2_31:                               # %for.end.191
                                        #   in Loop: Header=BB2_14 Depth=4
	movq	16(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	cmpq	(%rsp), %rcx            # 8-byte Folded Reload
	jb	.LBB2_14
# BB#32:                                # %for.cond.49.for.end.194_crit_edge
                                        #   in Loop: Header=BB2_12 Depth=3
	movq	-56(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	-32(%rsp), %r8          # 8-byte Reload
	movq	-16(%rsp), %rdx         # 8-byte Reload
.LBB2_33:                               # %for.end.194
                                        #   in Loop: Header=BB2_12 Depth=3
	incl	%edx
	cmpl	%ecx, %edx
	jb	.LBB2_12
.LBB2_34:                               # %for.end.197
                                        #   in Loop: Header=BB2_10 Depth=2
	incq	%r8
	movq	-88(%rsp), %rax         # 8-byte Reload
	cmpq	%rax, %r8
	jb	.LBB2_10
# BB#35:                                # %for.cond.36.for.end.200_crit_edge
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rsp), %rax        # 8-byte Reload
	movl	16(%rax), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB2_36:                               # %for.end.200
                                        #   in Loop: Header=BB2_2 Depth=1
	incl	%r11d
	cmpl	40(%rsp), %r11d         # 4-byte Folded Reload
	jb	.LBB2_2
.LBB2_37:                               # %for.end.203
	addq	$1256, %rsp             # imm = 0x4E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	opj_tcd_makelayer_fixed, .Lfunc_end2-opj_tcd_makelayer_fixed
	.cfi_endproc

	.globl	opj_tcd_makelayer
	.align	16, 0x90
	.type	opj_tcd_makelayer,@function
opj_tcd_makelayer:                      # @opj_tcd_makelayer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 64
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
	movl	%edx, -20(%rsp)         # 4-byte Spill
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	movl	%esi, %r14d
	movq	$0, 48(%rax,%r14,8)
	movl	16(%rax), %eax
	testl	%eax, %eax
	je	.LBB3_36
# BB#1:                                 # %for.body.lr.ph
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_16 Depth 6
	movl	%ecx, %ecx
	movq	%rcx, -128(%rsp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movq	24(%rcx), %rdx
	imulq	$56, %rdi, %rcx
	movl	16(%rdx,%rcx), %edi
	movq	%rdi, -112(%rsp)        # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB3_35
# BB#3:                                 # %for.body.5.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	24(%rdx,%rcx), %rax
	movq	%rax, -120(%rsp)        # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB3_4:                                # %for.body.5
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_16 Depth 6
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-120(%rsp), %rax        # 8-byte Reload
	movq	(%rax), %rdx
	imulq	$176, %rcx, %rdi
	movl	24(%rdx,%rdi), %eax
	movq	%rdx, %rcx
	testl	%eax, %eax
	je	.LBB3_33
# BB#5:                                 # %for.body.10.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	movq	%rdi, -72(%rsp)         # 8-byte Spill
	leaq	24(%rcx,%rdi), %rdx
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	leaq	16(%rcx,%rdi), %rdx
	movq	%rdx, -88(%rsp)         # 8-byte Spill
	leaq	20(%rcx,%rdi), %rdx
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	movl	20(%rcx,%rdi), %edx
	imull	16(%rcx,%rdi), %edx
	movl	%edx, -56(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_6:                                # %for.body.10
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_16 Depth 6
	cmpl	$0, -56(%rsp)           # 4-byte Folded Reload
	je	.LBB3_32
# BB#7:                                 # %for.body.15.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=3
	movl	%ecx, %eax
	movl	%ecx, -52(%rsp)         # 4-byte Spill
	movq	-64(%rsp), %rcx         # 8-byte Reload
	movq	-72(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdx
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	56(%rax,%rdx), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	-96(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	movq	-88(%rsp), %rax         # 8-byte Reload
	imull	(%rax), %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_8:                                # %for.body.15
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_16 Depth 6
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	imulq	$56, %rcx, %rcx
	movl	20(%rax,%rcx), %edx
	imull	16(%rax,%rcx), %edx
	testl	%edx, %edx
	je	.LBB3_30
# BB#9:                                 # %for.body.21.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=4
	leaq	24(%rax,%rcx), %r11
	movl	%edx, %r9d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB3_10:                               # %for.body.21
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_16 Depth 6
	movq	(%r11), %rbp
	movq	%rdi, %r15
	shlq	$6, %r15
	cmpl	$0, 4(%rsp)             # 4-byte Folded Reload
	movq	8(%rbp,%r15), %r12
	leaq	52(%rbp,%r15), %r13
	je	.LBB3_12
# BB#11:                                # %for.body.21.if.end_crit_edge
                                        #   in Loop: Header=BB3_10 Depth=5
	movl	(%r13), %r8d
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_12:                               # %if.then
                                        #   in Loop: Header=BB3_10 Depth=5
	movl	$0, (%r13)
	xorl	%r8d, %r8d
.LBB3_13:                               # %if.end
                                        #   in Loop: Header=BB3_10 Depth=5
	movl	56(%rbp,%r15), %eax
	cmpl	%eax, %r8d
	jae	.LBB3_14
# BB#15:                                # %for.body.31.lr.ph
                                        #   in Loop: Header=BB3_10 Depth=5
	movq	%r9, %rsi
	movq	%r11, %r9
	leaq	(%rbp,%r15), %rcx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movq	16(%rbp,%r15), %rdx
	movl	%r8d, %r10d
	movl	%r8d, %ebx
	.align	16, 0x90
.LBB3_16:                               # %for.body.31
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	testl	%ebx, %ebx
	leaq	(%r10,%r10,2), %rcx
	movl	(%rdx,%rcx,8), %r11d
	movsd	8(%rdx,%rcx,8), %xmm2   # xmm2 = mem[0],zero
	je	.LBB3_18
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB3_16 Depth=6
	leal	-1(%rbx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	subl	(%rdx,%rcx,8), %r11d
	subsd	8(%rdx,%rcx,8), %xmm2
.LBB3_18:                               # %if.end.49
                                        #   in Loop: Header=BB3_16 Depth=6
	testl	%r11d, %r11d
	je	.LBB3_19
# BB#20:                                # %if.end.54
                                        #   in Loop: Header=BB3_16 Depth=6
	movl	%r11d, %ecx
	cvtsi2sdq	%rcx, %xmm3
	divsd	%xmm3, %xmm2
	incq	%r10
	ucomisd	%xmm0, %xmm2
	cmovael	%r10d, %ebx
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_19:                               # %if.then.50
                                        #   in Loop: Header=BB3_16 Depth=6
	incq	%r10
	ucomisd	%xmm1, %xmm2
	cmovnel	%r10d, %ebx
	cmovpl	%r10d, %ebx
.LBB3_21:                               # %cleanup
                                        #   in Loop: Header=BB3_16 Depth=6
	cmpq	%rax, %r10
	jb	.LBB3_16
# BB#22:                                # %for.end
                                        #   in Loop: Header=BB3_10 Depth=5
	movl	%ebx, %edx
	subl	%r8d, %edx
	leaq	(%r14,%r14,2), %rax
	movl	%edx, (%r12,%rax,8)
	movq	%r9, %r11
	movq	%rsi, %r9
	je	.LBB3_23
# BB#24:                                # %if.end.67
                                        #   in Loop: Header=BB3_10 Depth=5
	leal	-1(%rbx), %edx
	movq	16(%rbp,%r15), %rbp
	leaq	(%rdx,%rdx,2), %rdx
	movl	(%rbp,%rdx,8), %r10d
	testl	%r8d, %r8d
	je	.LBB3_25
# BB#26:                                # %if.else.84
                                        #   in Loop: Header=BB3_10 Depth=5
	decl	%r8d
	leaq	(%r8,%r8,2), %r8
	movl	(%rbp,%r8,8), %ecx
	subl	%ecx, %r10d
	movq	-8(%rsp), %rsi          # 8-byte Reload
	addq	(%rsi), %rcx
	movq	%rcx, 16(%r12,%rax,8)
	movsd	8(%rbp,%rdx,8), %xmm2   # xmm2 = mem[0],zero
	subsd	8(%rbp,%r8,8), %xmm2
	movsd	%xmm2, 8(%r12,%rax,8)
	jmp	.LBB3_27
	.align	16, 0x90
.LBB3_14:                               # %for.end.thread
                                        #   in Loop: Header=BB3_10 Depth=5
	leaq	(%r14,%r14,2), %rax
	movl	$0, (%r12,%rax,8)
.LBB3_23:                               # %if.then.66
                                        #   in Loop: Header=BB3_10 Depth=5
	leaq	(%r14,%r14,2), %rax
	movq	$0, 8(%r12,%rax,8)
	jmp	.LBB3_29
.LBB3_25:                               # %if.then.71
                                        #   in Loop: Header=BB3_10 Depth=5
	movq	-8(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, 16(%r12,%rax,8)
	movq	8(%rbp,%rdx,8), %rcx
	movq	%rcx, 8(%r12,%rax,8)
	movd	%rcx, %xmm2
.LBB3_27:                               # %if.end.119
                                        #   in Loop: Header=BB3_10 Depth=5
	cmpl	$0, -20(%rsp)           # 4-byte Folded Reload
	movl	%r10d, 4(%r12,%rax,8)
	movq	-16(%rsp), %rax         # 8-byte Reload
	addsd	48(%rax,%r14,8), %xmm2
	movsd	%xmm2, 48(%rax,%r14,8)
	je	.LBB3_29
# BB#28:                                # %if.then.126
                                        #   in Loop: Header=BB3_10 Depth=5
	movl	%ebx, (%r13)
	.align	16, 0x90
.LBB3_29:                               # %cleanup.129
                                        #   in Loop: Header=BB3_10 Depth=5
	incq	%rdi
	cmpq	%r9, %rdi
	jb	.LBB3_10
.LBB3_30:                               # %for.end.136
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	-32(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	cmpq	-48(%rsp), %rcx         # 8-byte Folded Reload
	jb	.LBB3_8
# BB#31:                                # %for.cond.13.for.end.139_crit_edge
                                        #   in Loop: Header=BB3_6 Depth=3
	movq	-80(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	-52(%rsp), %ecx         # 4-byte Reload
.LBB3_32:                               # %for.end.139
                                        #   in Loop: Header=BB3_6 Depth=3
	incl	%ecx
	cmpl	%eax, %ecx
	jb	.LBB3_6
.LBB3_33:                               # %for.end.142
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	-104(%rsp), %rax        # 8-byte Reload
	incq	%rax
	cmpq	-112(%rsp), %rax        # 8-byte Folded Reload
	jb	.LBB3_4
# BB#34:                                # %for.cond.3.for.end.145_crit_edge
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rsp), %rax         # 8-byte Reload
	movl	16(%rax), %eax
.LBB3_35:                               # %for.end.145
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-128(%rsp), %rcx        # 8-byte Reload
	incl	%ecx
	cmpl	%eax, %ecx
	jb	.LBB3_2
.LBB3_36:                               # %for.end.148
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	opj_tcd_makelayer, .Lfunc_end3-opj_tcd_makelayer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI4_1:
	.quad	-4616189618054758400    # double -1
.LCPI4_3:
	.quad	4621819117588971520     # double 10
.LCPI4_4:
	.quad	4602678819172646912     # double 0.5
.LCPI4_6:
	.quad	0                       # double 0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_2:
	.long	1092616192              # float 10
.LCPI4_5:
	.long	0                       # float 0
	.text
	.globl	opj_tcd_rateallocate
	.align	16, 0x90
	.type	opj_tcd_rateallocate,@function
opj_tcd_rateallocate:                   # @opj_tcd_rateallocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$1016, %rsp             # imm = 0x3F8
.Ltmp42:
	.cfi_def_cfa_offset 1072
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	24(%rdi), %rax
	movq	40(%rdi), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	(%rax), %rax
	movq	48(%rdi), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	$0, 32(%rax)
	movl	16(%rax), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB4_1
# BB#2:                                 # %for.body.lr.ph
	movq	24(%rax), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	32(%rdi), %rax
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	movq	24(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorpd	%xmm3, %xmm3
	movsd	.LCPI4_0(%rip), %xmm4   # xmm4 = mem[0],zero
	xorl	%eax, %eax
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%edi, %edi
	xorpd	%xmm5, %xmm5
	.align	16, 0x90
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_12 Depth 4
                                        #           Child Loop BB4_14 Depth 5
                                        #             Child Loop BB4_16 Depth 6
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	imulq	$56, %rdi, %rcx
	movl	$0, 52(%rdx,%rcx)
	movl	16(%rdx,%rcx), %esi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB4_4
# BB#5:                                 # %for.body.5.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	leaq	52(%rdx,%rcx), %rsi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	24(%rdx,%rcx), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_6:                                # %for.body.5
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
                                        #         Child Loop BB4_12 Depth 4
                                        #           Child Loop BB4_14 Depth 5
                                        #             Child Loop BB4_16 Depth 6
	imulq	$176, %rsi, %rdi
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	24(%rcx,%rdi), %ebp
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB4_7
# BB#8:                                 # %for.body.10.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movq	%rdi, %rsi
	movq	%rsi, 160(%rsp)         # 8-byte Spill
	movl	20(%rcx,%rsi), %edi
	imull	16(%rcx,%rsi), %edi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_9:                                # %for.body.10
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_12 Depth 4
                                        #           Child Loop BB4_14 Depth 5
                                        #             Child Loop BB4_16 Depth 6
	testl	%edi, %edi
	je	.LBB4_10
# BB#11:                                # %for.body.15.lr.ph
                                        #   in Loop: Header=BB4_9 Depth=3
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	160(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %rcx
	leaq	(%rbx,%rbx,2), %rbp
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	shlq	$4, %rbp
	movq	56(%rbp,%rcx), %r9
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB4_12:                               # %for.body.15
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_14 Depth 5
                                        #             Child Loop BB4_16 Depth 6
	imulq	$56, %r10, %rbp
	movl	20(%r9,%rbp), %ecx
	imull	16(%r9,%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB4_23
# BB#13:                                # %for.body.21.lr.ph
                                        #   in Loop: Header=BB4_12 Depth=4
	movq	24(%r9,%rbp), %r11
	movl	%ecx, %r13d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_14:                               # %for.body.21
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        #         Parent Loop BB4_12 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_16 Depth 6
	movq	%r12, %r15
	shlq	$6, %r15
	movl	56(%r11,%r15), %ebx
	testq	%rbx, %rbx
	je	.LBB4_21
# BB#15:                                # %for.body.26.lr.ph
                                        #   in Loop: Header=BB4_14 Depth=5
	movq	16(%r11,%r15), %rbp
	leaq	8(%rbp), %rcx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_16:                               # %for.body.26
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_6 Depth=2
                                        #       Parent Loop BB4_9 Depth=3
                                        #         Parent Loop BB4_12 Depth=4
                                        #           Parent Loop BB4_14 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	testq	%r14, %r14
	movl	-8(%rcx), %r8d
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	je	.LBB4_18
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB4_16 Depth=6
	leal	-1(%r14), %esi
	leaq	(%rsi,%rsi,2), %rsi
	subl	(%rbp,%rsi,8), %r8d
	subsd	8(%rbp,%rsi,8), %xmm1
.LBB4_18:                               # %if.end
                                        #   in Loop: Header=BB4_16 Depth=6
	testl	%r8d, %r8d
	je	.LBB4_20
# BB#19:                                # %if.end.45
                                        #   in Loop: Header=BB4_16 Depth=6
	cvtsi2sdl	%r8d, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	minsd	%xmm4, %xmm2
	maxsd	%xmm3, %xmm1
	movapd	%xmm1, %xmm3
	movapd	%xmm2, %xmm4
.LBB4_20:                               # %cleanup
                                        #   in Loop: Header=BB4_16 Depth=6
	incq	%r14
	addq	$24, %rcx
	cmpq	%rbx, %r14
	jb	.LBB4_16
.LBB4_21:                               # %for.end
                                        #   in Loop: Header=BB4_14 Depth=5
	movl	32(%r11,%r15), %ecx
	movl	36(%r11,%r15), %esi
	subl	24(%r11,%r15), %ecx
	subl	28(%r11,%r15), %esi
	imull	%ecx, %esi
	leal	(%rax,%rsi), %eax
	addl	%esi, %edx
	incq	%r12
	cmpq	%r13, %r12
	jb	.LBB4_14
# BB#22:                                # %for.cond.18.for.end.72_crit_edge
                                        #   in Loop: Header=BB4_12 Depth=4
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%eax, 32(%rcx)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%edx, (%rcx)
.LBB4_23:                               # %for.end.72
                                        #   in Loop: Header=BB4_12 Depth=4
	incq	%r10
	cmpq	%rdi, %r10
	jb	.LBB4_12
	jmp	.LBB4_24
	.align	16, 0x90
.LBB4_10:                               #   in Loop: Header=BB4_9 Depth=3
	movq	%rbx, 184(%rsp)         # 8-byte Spill
.LBB4_24:                               # %for.end.75
                                        #   in Loop: Header=BB4_9 Depth=3
	movq	184(%rsp), %rbx         # 8-byte Reload
	incq	%rbx
	cmpq	176(%rsp), %rbx         # 8-byte Folded Reload
	jb	.LBB4_9
	jmp	.LBB4_25
	.align	16, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=2
	movq	%rsi, 152(%rsp)         # 8-byte Spill
.LBB4_25:                               # %for.end.78
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	152(%rsp), %rsi         # 8-byte Reload
	incq	%rsi
	cmpq	136(%rsp), %rsi         # 8-byte Folded Reload
	movq	144(%rsp), %rdi         # 8-byte Reload
	jb	.LBB4_6
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	xorl	%edx, %edx
.LBB4_26:                               # %for.end.81
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%rdi, %rcx
	shlq	$6, %rcx
	movq	64(%rsp), %rsi          # 8-byte Reload
	movb	24(%rsi,%rcx), %cl
	movl	$1, %esi
	shll	%cl, %esi
	cvtsi2sdl	%esi, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm5
	incq	%rdi
	cmpq	80(%rsp), %rdi          # 8-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	jb	.LBB4_3
	jmp	.LBB4_27
.LBB4_1:
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	xorpd	%xmm3, %xmm3
	movsd	.LCPI4_0(%rip), %xmm4   # xmm4 = mem[0],zero
	xorpd	%xmm5, %xmm5
.LBB4_27:                               # %for.end.102
	movsd	%xmm5, 72(%rsp)         # 8-byte Spill
	movsd	%xmm4, 136(%rsp)        # 8-byte Spill
	movsd	%xmm3, 80(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB4_28
# BB#29:                                # %if.then.103
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	56(%rcx), %ecx
	movq	104(%rdx), %rbx
	imulq	$608, %rcx, %rbp        # imm = 0x260
	movl	%eax, 560(%rbx,%rbp)
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rax
	movq	%rax, 568(%rbx,%rbp)
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax), %r14
	movl	8(%rax), %edi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, (%rbx,%rbp)
	jmp	.LBB4_30
.LBB4_28:                               # %for.end.102.for.cond.117.preheader_crit_edge
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax), %r14
.LBB4_30:                               # %for.cond.117.preheader
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	$1, %eax
	cmpl	$0, (%r14)
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	192(%rsp), %rbp         # 8-byte Reload
	je	.LBB4_63
# BB#31:                                # %for.body.121.lr.ph
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB4_32:                               # %for.body.121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_40 Depth 2
	movl	%ecx, %r15d
	movq	96(%rsp), %rax          # 8-byte Reload
	movss	20(%rax,%r15,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_5, %xmm0
	movl	%edx, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	%edx, %ebx
	jne	.LBB4_33
	jnp	.LBB4_34
.LBB4_33:                               # %cond.true.125
                                        #   in Loop: Header=BB4_32 Depth=1
	cvtss2sd	%xmm0, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %rax
	cmpl	%ebx, %eax
	cmovael	%ebx, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
.LBB4_34:                               # %cond.end.134
                                        #   in Loop: Header=BB4_32 Depth=1
	movsd	40(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)        # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movss	5184(%rax,%r15,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI4_2(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI4_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	movapd	%xmm0, %xmm2
	movq	88(%rsp), %r13          # 8-byte Reload
	movb	129(%r13), %al
	testb	$1, %al
	movsd	136(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	je	.LBB4_36
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
	movss	20(%rdx,%r15,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_5, %xmm0
	ja	.LBB4_38
.LBB4_36:                               # %lor.lhs.false
                                        #   in Loop: Header=BB4_32 Depth=1
	testb	$4, %al
	movapd	%xmm1, %xmm0
	je	.LBB4_57
# BB#37:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movss	5184(%rax,%r15,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI4_5, %xmm0
	movapd	%xmm1, %xmm0
	jbe	.LBB4_57
.LBB4_38:                               # %if.then.165
                                        #   in Loop: Header=BB4_32 Depth=1
	movsd	%xmm2, 200(%rsp)        # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rdi
	movq	%r13, %rsi
	callq	opj_t2_create
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB4_63
# BB#39:                                # %for.cond.173.preheader
                                        #   in Loop: Header=BB4_32 Depth=1
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	200(%rsp), %xmm0        # 8-byte Folded Reload
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	leal	1(%r15), %eax
	movl	%eax, 160(%rsp)         # 4-byte Spill
	leal	-1(%r15), %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 176(%rsp)        # 8-byte Spill
	movl	$128, %ebx
	movsd	80(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	136(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	.align	16, 0x90
.LBB4_40:                               # %for.body.176
                                        #   Parent Loop BB4_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm4, 184(%rsp)        # 8-byte Spill
	movsd	%xmm5, 192(%rsp)        # 8-byte Spill
	movq	%rbp, %r14
	movapd	%xmm4, %xmm0
	addsd	%xmm5, %xmm0
	mulsd	.LCPI4_4(%rip), %xmm0
	movsd	%xmm0, 200(%rsp)        # 8-byte Spill
	xorl	%edx, %edx
	movq	128(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r15d, %esi
	callq	opj_tcd_makelayer
	testb	$4, 129(%r13)
	jne	.LBB4_41
# BB#53:                                # %if.else.239
                                        #   in Loop: Header=BB4_40 Depth=2
	movl	56(%rbp), %esi
	movl	(%rbp), %eax
	movl	8(%rbp), %ecx
	movl	16(%rbp), %edx
	movl	%edx, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 40(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rbp
	movq	%rbp, %rdx
	movl	160(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	opj_t2_encode_packets
	testl	%eax, %eax
	movsd	184(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	200(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm1
	movapd	%xmm3, %xmm2
	movapd	%xmm3, %xmm4
	movsd	192(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jne	.LBB4_54
	jmp	.LBB4_55
	.align	16, 0x90
.LBB4_41:                               # %if.then.187
                                        #   in Loop: Header=BB4_40 Depth=2
	cmpl	$0, 104(%r13)
	je	.LBB4_49
# BB#42:                                # %if.then.191
                                        #   in Loop: Header=BB4_40 Depth=2
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	56(%rdx), %esi
	movl	(%rdx), %eax
	movl	8(%rdx), %ecx
	movl	16(%rdx), %edx
	movl	%edx, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 40(%rsp)
	movq	%r12, %rdi
	movq	%r14, %rbp
	movq	%rbp, %rdx
	movl	160(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	112(%rsp), %r9          # 8-byte Reload
	callq	opj_t2_encode_packets
	testl	%eax, %eax
	je	.LBB4_43
# BB#44:                                # %if.else.197
                                        #   in Loop: Header=BB4_40 Depth=2
	testl	%r15d, %r15d
	je	.LBB4_45
# BB#46:                                # %cond.false.202
                                        #   in Loop: Header=BB4_40 Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	movsd	208(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	48(%rbp,%r15,8), %xmm0
	jmp	.LBB4_47
.LBB4_49:                               # %if.else.218
                                        #   in Loop: Header=BB4_40 Depth=2
	testl	%r15d, %r15d
	movq	%r14, %rbp
	movsd	200(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	192(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	je	.LBB4_50
# BB#51:                                # %cond.false.224
                                        #   in Loop: Header=BB4_40 Depth=2
	movq	144(%rsp), %rax         # 8-byte Reload
	movsd	208(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	48(%rbp,%r15,8), %xmm0
	jmp	.LBB4_52
.LBB4_43:                               #   in Loop: Header=BB4_40 Depth=2
	movsd	200(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	movsd	192(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB4_55
.LBB4_45:                               # %cond.true.200
                                        #   in Loop: Header=BB4_40 Depth=2
	movsd	48(%rbp), %xmm0         # xmm0 = mem[0],zero
.LBB4_47:                               # %cond.end.210
                                        #   in Loop: Header=BB4_40 Depth=2
	movsd	200(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	176(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	184(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	192(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB4_48
.LBB4_50:                               # %cond.true.221
                                        #   in Loop: Header=BB4_40 Depth=2
	movsd	48(%rbp), %xmm0         # xmm0 = mem[0],zero
.LBB4_52:                               # %cond.end.232
                                        #   in Loop: Header=BB4_40 Depth=2
	movsd	176(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	184(%rsp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
.LBB4_48:                               # %cond.end.210
                                        #   in Loop: Header=BB4_40 Depth=2
	movsd	152(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	movapd	%xmm5, %xmm1
	movapd	%xmm3, %xmm5
	movsd	%xmm3, 176(%rsp)        # 8-byte Spill
	ja	.LBB4_55
.LBB4_54:                               # %if.end.249
                                        #   in Loop: Header=BB4_40 Depth=2
	movapd	%xmm0, %xmm4
	movapd	%xmm1, %xmm5
	movsd	%xmm2, 176(%rsp)        # 8-byte Spill
.LBB4_55:                               # %cleanup.250
                                        #   in Loop: Header=BB4_40 Depth=2
	decl	%ebx
	jne	.LBB4_40
# BB#56:                                # %cleanup.262.thread
                                        #   in Loop: Header=BB4_32 Depth=1
	movsd	176(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	cmpeqsd	.LCPI4_6, %xmm1
	andpd	%xmm1, %xmm3
	andnpd	%xmm0, %xmm1
	orpd	%xmm3, %xmm1
	movsd	%xmm1, 200(%rsp)        # 8-byte Spill
	movq	%r12, %rdi
	callq	opj_t2_destroy
	movsd	200(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	64(%rsp), %r14          # 8-byte Reload
.LBB4_57:                               # %if.end.270
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movq	120(%rsp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	je	.LBB4_59
# BB#58:                                # %if.then.272
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	56(%rdx), %eax
	movq	104(%rcx), %rcx
	imulq	$608, %rax, %rax        # imm = 0x260
	movq	(%rcx,%rax), %rax
	movsd	%xmm0, (%rax,%r15,8)
.LBB4_59:                               # %if.end.280
                                        #   in Loop: Header=BB4_32 Depth=1
	movq	%rdx, %rdi
	movl	$1, %edx
	movl	%r15d, %esi
	callq	opj_tcd_makelayer
	testl	%r15d, %r15d
	je	.LBB4_60
# BB#61:                                # %cond.false.286
                                        #   in Loop: Header=BB4_32 Depth=1
	leal	-1(%r15), %eax
	movsd	208(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	48(%rbp,%r15,8), %xmm0
	jmp	.LBB4_62
	.align	16, 0x90
.LBB4_60:                               # %cond.true.283
                                        #   in Loop: Header=BB4_32 Depth=1
	movsd	48(%rbp), %xmm0         # xmm0 = mem[0],zero
.LBB4_62:                               # %for.inc.308
                                        #   in Loop: Header=BB4_32 Depth=1
	movl	60(%rsp), %edx          # 4-byte Reload
	movsd	%xmm0, 208(%rsp,%r15,8)
	leal	1(%r15), %ecx
	movl	$1, %eax
	cmpl	(%r14), %ecx
	jb	.LBB4_32
.LBB4_63:                               # %cleanup.311
	addq	$1016, %rsp             # imm = 0x3F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_tcd_rateallocate, .Lfunc_end4-opj_tcd_rateallocate
	.cfi_endproc

	.globl	opj_tcd_init
	.align	16, 0x90
	.type	opj_tcd_init,@function
opj_tcd_init:                           # @opj_tcd_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 48
.Ltmp54:
	.cfi_offset %rbx, -48
.Ltmp55:
	.cfi_offset %r12, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%r15, 32(%rbx)
	movq	%r14, 40(%rbx)
	movl	$856, %edi              # imm = 0x358
	callq	malloc
	movq	24(%rbx), %rcx
	movq	%rax, (%rcx)
	xorl	%ebp, %ebp
	testq	%rax, %rax
	je	.LBB5_3
# BB#1:                                 # %if.end
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$856, %edx              # imm = 0x358
	movq	%rax, %rdi
	callq	memset
	imull	$56, 16(%r15), %r12d
	movq	%r12, %rdi
	callq	malloc
	movq	24(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 24(%rcx)
	testq	%rax, %rax
	je	.LBB5_3
# BB#2:                                 # %if.end.18
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	callq	memset
	movl	16(%r15), %eax
	movq	24(%rbx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	112(%r14), %eax
	movl	%eax, (%rbx)
	movl	$1, %ebp
.LBB5_3:                                # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_tcd_init, .Lfunc_end5-opj_tcd_init
	.cfi_endproc

	.globl	opj_tcd_destroy
	.align	16, 0x90
	.type	opj_tcd_destroy,@function
opj_tcd_destroy:                        # @opj_tcd_destroy
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
	subq	$40, %rsp
.Ltmp65:
	.cfi_def_cfa_offset 96
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
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB6_35
# BB#1:                                 # %if.end.i
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_34
# BB#2:                                 # %if.end.3.i
	testb	$1, 60(%rbx)
	movl	$opj_tcd_code_block_enc_deallocate, %eax
	movl	$opj_tcd_code_block_dec_deallocate, %r13d
	cmoveq	%rax, %r13
	movq	(%rdi), %r14
	movq	%r14, 8(%rsp)           # 8-byte Spill
	testq	%r14, %r14
	je	.LBB6_33
# BB#3:                                 # %if.end.10.i
	movq	%rbx, (%rsp)            # 8-byte Spill
	cmpl	$0, 16(%r14)
	je	.LBB6_32
# BB#4:                                 # %for.body.lr.ph.i
	movq	24(%r14), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB6_5:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #       Child Loop BB6_11 Depth 3
                                        #       Child Loop BB6_17 Depth 3
                                        #       Child Loop BB6_23 Depth 3
	movq	24(%rbx), %r15
	testq	%r15, %r15
	je	.LBB6_29
# BB#6:                                 # %if.then.12.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	32(%rbx), %ebp
	cmpq	$176, %rbp
	jb	.LBB6_28
# BB#7:                                 #   in Loop: Header=BB6_5 Depth=1
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	$3123612579, %eax       # imm = 0xBA2E8BA3
	imulq	%rax, %rbp
	shrq	$39, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB6_8:                                # %for.body.17.i
                                        #   Parent Loop BB6_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_11 Depth 3
                                        #       Child Loop BB6_17 Depth 3
                                        #       Child Loop BB6_23 Depth 3
	movq	56(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB6_14
# BB#9:                                 # %if.then.23.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	64(%r15), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	cmpl	$56, %ecx
	jb	.LBB6_13
# BB#10:                                #   in Loop: Header=BB6_8 Depth=2
	imulq	$613566757, %rax, %rbp  # imm = 0x24924925
	shrq	$32, %rbp
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB6_11:                               # %for.body.30.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	40(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 40(%rbx)
	movq	48(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 48(%rbx)
	movq	%rbx, %rdi
	callq	*%r13
	addq	$56, %rbx
	incl	%r12d
	cmpl	%ebp, %r12d
	jb	.LBB6_11
# BB#12:                                # %for.cond.27.for.end_crit_edge.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	56(%r15), %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_13:                               # %for.end.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rbx, %rdi
	callq	free
	movq	$0, 56(%r15)
.LBB6_14:                               # %if.end.35.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	104(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB6_20
# BB#15:                                # %if.then.23.1.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	112(%r15), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	cmpl	$56, %ecx
	jb	.LBB6_19
# BB#16:                                #   in Loop: Header=BB6_8 Depth=2
	imulq	$613566757, %rax, %r12  # imm = 0x24924925
	shrq	$32, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_17:                               # %for.body.30.1.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	40(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 40(%rbx)
	movq	48(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 48(%rbx)
	movq	%rbx, %rdi
	callq	*%r13
	addq	$56, %rbx
	incl	%ebp
	cmpl	%r12d, %ebp
	jb	.LBB6_17
# BB#18:                                # %for.cond.27.for.end_crit_edge.1.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	104(%r15), %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_19:                               # %for.end.1.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rbx, %rdi
	callq	free
	movq	$0, 104(%r15)
.LBB6_20:                               # %if.end.35.1.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	152(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB6_26
# BB#21:                                # %if.then.23.2.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movl	160(%r15), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	cmpl	$56, %ecx
	jb	.LBB6_25
# BB#22:                                #   in Loop: Header=BB6_8 Depth=2
	imulq	$613566757, %rax, %r12  # imm = 0x24924925
	shrq	$32, %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_23:                               # %for.body.30.2.i
                                        #   Parent Loop BB6_5 Depth=1
                                        #     Parent Loop BB6_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	40(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 40(%rbx)
	movq	48(%rbx), %rdi
	callq	opj_tgt_destroy
	movq	$0, 48(%rbx)
	movq	%rbx, %rdi
	callq	*%r13
	addq	$56, %rbx
	incl	%ebp
	cmpl	%r12d, %ebp
	jb	.LBB6_23
# BB#24:                                # %for.cond.27.for.end_crit_edge.2.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	152(%r15), %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
.LBB6_25:                               # %for.end.2.i
                                        #   in Loop: Header=BB6_8 Depth=2
	movq	%rbx, %rdi
	callq	free
	movq	$0, 152(%r15)
.LBB6_26:                               # %if.end.35.2.i
                                        #   in Loop: Header=BB6_8 Depth=2
	addq	$176, %r15
	incl	%r14d
	cmpl	%ebp, %r14d
	jb	.LBB6_8
# BB#27:                                # %for.cond.14.for.end.43_crit_edge.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	24(%rbx), %r15
	movq	8(%rsp), %r14           # 8-byte Reload
	movl	20(%rsp), %r12d         # 4-byte Reload
.LBB6_28:                               # %for.end.43.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	%r15, %rdi
	callq	free
	movq	$0, 24(%rbx)
.LBB6_29:                               # %if.end.46.i
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_31
# BB#30:                                # %if.then.48.i
                                        #   in Loop: Header=BB6_5 Depth=1
	callq	free
	movq	$0, 40(%rbx)
.LBB6_31:                               # %if.end.51.i
                                        #   in Loop: Header=BB6_5 Depth=1
	addq	$56, %rbx
	incl	%r12d
	cmpl	16(%r14), %r12d
	jb	.LBB6_5
.LBB6_32:                               # %opj_tcd_free_tile.exit
	movq	24(%r14), %rdi
	callq	free
	movq	$0, 24(%r14)
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	24(%rbx), %rax
	movq	(%rax), %rdi
	callq	free
	movq	24(%rbx), %rdi
	movq	$0, (%rdi)
	testq	%rdi, %rdi
	je	.LBB6_34
.LBB6_33:                               # %if.then.2
	callq	free
	movq	$0, 24(%rbx)
.LBB6_34:                               # %if.end
	movq	%rbx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB6_35:                               # %if.end.5
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	opj_tcd_destroy, .Lfunc_end6-opj_tcd_destroy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4557642822898941952     # double 4.8828125E-4
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_2:
	.quad	4611686018427387904     # double 2
	.text
	.globl	opj_tcd_init_encode_tile
	.align	16, 0x90
	.type	opj_tcd_init_encode_tile,@function
opj_tcd_init_encode_tile:               # @opj_tcd_init_encode_tile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp78:
	.cfi_def_cfa_offset 336
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	40(%rdi), %rbx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	96(%rbx), %rcx
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rdi
	movq	(%rdx), %r15
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	5584(%rcx,%rax), %r12
	movq	24(%r15), %r11
	movq	24(%rdi), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	32(%rbx)
	movl	%eax, %ecx
	movl	%edx, %esi
	movl	4(%rbx), %r9d
	movl	12(%rbx), %r14d
	movl	%r14d, %eax
	imull	%esi, %eax
	addl	%r9d, %eax
	movl	(%rdi), %ebp
	cmpl	%ebp, %eax
	cmovll	%ebp, %eax
	movl	%eax, (%r15)
	movl	8(%rbx), %r8d
	movl	16(%rbx), %r10d
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	addl	%r8d, %ebp
	movl	4(%rdi), %edx
	cmpl	%edx, %ebp
	cmovll	%edx, %ebp
	incl	%esi
	imull	%r14d, %esi
	movl	%ebp, 4(%r15)
	addl	%r9d, %esi
	movl	8(%rdi), %edx
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	incl	%ecx
	imull	%r10d, %ecx
	addl	%r8d, %ecx
	movl	%esi, 8(%r15)
	movl	12(%rdi), %edx
	cmpl	%edx, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, 12(%r15)
	movl	4(%r12), %r9d
	testl	%r9d, %r9d
	je	.LBB7_5
# BB#1:                                 # %for.cond.preheader
	movl	$1, %ebx
	cmpl	$0, 16(%r15)
	movq	%r15, 104(%rsp)         # 8-byte Spill
	je	.LBB7_10
# BB#2:                                 # %for.body.lr.ph
	movl	$1, %r15d
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	movq	%r11, %r14
	movq	%r12, %r10
	movq	224(%rsp), %r11         # 8-byte Reload
	jmp	.LBB7_3
.LBB7_5:                                # %if.then
	xorl	%ebx, %ebx
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
.LBB7_6:                                # %cleanup.598
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB7_10
	.align	16, 0x90
.LBB7_77:                               # %for.end.591.for.body_crit_edge
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	224(%rsp), %r11         # 8-byte Reload
	addq	$64, %r11
	addq	$56, %r14
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	movl	4(%rcx), %ebp
	movl	8(%rcx), %esi
	movl	12(%rcx), %ecx
	movq	%r15, %r10
	movl	1084(%r10), %r9d
	addq	$1080, %r10             # imm = 0x438
	movl	$1, %r15d
.LBB7_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
                                        #       Child Loop BB7_35 Depth 3
                                        #         Child Loop BB7_46 Depth 4
                                        #           Child Loop BB7_66 Depth 5
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	(%r11), %ebx
	leal	-1(%rax,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %r8d
	movl	%r8d, (%r14)
	movl	4(%r11), %edi
	leal	-1(%rbp,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %r12d
	movl	%r12d, 4(%r14)
	leal	-1(%rsi,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	movl	%esi, 8(%r14)
	leal	-1(%rcx,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %ebp
	movl	%ebp, 12(%r14)
	subl	%r8d, %esi
	subl	%r12d, %ebp
	imull	%esi, %ebp
	shll	$2, %ebp
	movl	%r9d, 16(%r14)
	movq	192(%rsp), %rax         # 8-byte Reload
	subl	104(%rax), %r9d
	cmovbl	%r15d, %r9d
	movl	%r9d, 20(%r14)
	movq	40(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#7:                                 # %if.else.72
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%r11, 224(%rsp)         # 8-byte Spill
	movq	%r10, %r15
	cmpl	48(%r14), %ebp
	jbe	.LBB7_13
# BB#8:                                 # %cond.false.81
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%ebp, %esi
	callq	realloc
	movq	%rax, %rbx
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	fprintf
	testq	%rbx, %rbx
	je	.LBB7_9
# BB#11:                                # %if.end.93
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rbx, 40(%r14)
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_4:                                # %cond.false
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%r11, 224(%rsp)         # 8-byte Spill
	movq	%r10, %r15
	movl	%ebp, %edi
	callq	malloc
	movq	%rax, 40(%r14)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_10
.LBB7_12:                               # %if.end.97
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%ebp, 48(%r14)
.LBB7_13:                               # %if.end.97
                                        #   in Loop: Header=BB7_3 Depth=1
	imull	$176, 16(%r14), %r12d
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB7_14
# BB#16:                                # %if.else.122
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	32(%r14), %r12d
	jbe	.LBB7_21
# BB#17:                                # %cond.false.131
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%r12d, %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_18
# BB#20:                                # %if.end.143
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%rax, 24(%r14)
	movl	32(%r14), %ecx
	addq	%rcx, %rax
	movl	%r12d, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%r12d, 32(%r14)
	jmp	.LBB7_21
	.align	16, 0x90
.LBB7_14:                               # %if.then.104
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%r12d, %ebp
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, 24(%r14)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# BB#15:                                # %if.end.118
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	%r12d, 32(%r14)
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memset
.LBB7_21:                               # %if.end.156
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	16(%r14), %r9d
	cmpl	$0, 20(%r15)
	movl	$opj_dwt_getgain_real, %r8d
	je	.LBB7_23
# BB#22:                                # %select.mid
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$opj_dwt_getgain, %r8d
.LBB7_23:                               # %select.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	%r8, 24(%rsp)           # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB7_76
# BB#24:                                # %for.body.169.lr.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	leaq	28(%r15), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	24(%r14), %r12
	xorl	%eax, %eax
.LBB7_25:                               # %for.body.169
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_35 Depth 3
                                        #         Child Loop BB7_46 Depth 4
                                        #           Child Loop BB7_66 Depth 5
	movq	%r12, 96(%rsp)          # 8-byte Spill
	leal	-1(%r9), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movslq	(%r14), %rdx
	movl	$1, %esi
	shll	%cl, %esi
	movslq	%esi, %rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	leaq	-1(%rbx,%rdx), %rdi
	sarq	%cl, %rdi
	movl	%edi, (%r12)
	movslq	4(%r14), %rdx
	leaq	-1(%rbx,%rdx), %r11
	sarq	%cl, %r11
	movl	%r11d, 4(%r12)
	movslq	8(%r14), %rsi
	leaq	-1(%rbx,%rsi), %rdx
	sarq	%cl, %rdx
	movl	%edx, 8(%r12)
	movslq	12(%r14), %rsi
	leaq	-1(%rbx,%rsi), %r13
	sarq	%cl, %r13
	movl	%r13d, 12(%r12)
	movl	%eax, %ecx
	movl	812(%r15,%rcx,4), %r10d
	movl	944(%r15,%rcx,4), %ebp
	movl	%edi, %ebx
	movb	%r10b, %cl
	sarl	%cl, %ebx
	movb	%r10b, %cl
	shll	%cl, %ebx
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	movl	%r11d, %esi
	movb	%bpl, %cl
	sarl	%cl, %esi
	movb	%bpl, %cl
	shll	%cl, %esi
	movl	$1, %ebx
	movb	%bpl, %cl
	shll	%cl, %ebx
	movslq	%r13d, %rcx
	movslq	%ebx, %rbx
	leaq	-1(%rbx,%rcx), %rbx
	movb	%bpl, %cl
	sarq	%cl, %rbx
	movb	%bpl, %cl
	shll	%cl, %ebx
	cmpl	%edx, %edi
	movl	$0, %edi
	je	.LBB7_27
# BB#26:                                # %cond.false.202
                                        #   in Loop: Header=BB7_25 Depth=2
	movslq	%edx, %rdi
	movl	$1, %edx
	movb	%r10b, %cl
	shll	%cl, %edx
	movslq	%edx, %rcx
	leaq	-1(%rcx,%rdi), %rdi
	movb	%r10b, %cl
	sarq	%cl, %rdi
	movb	%r10b, %cl
	shll	%cl, %edi
	movq	216(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %edi
	movb	%r10b, %cl
	sarl	%cl, %edi
.LBB7_27:                               # %cond.end.204
                                        #   in Loop: Header=BB7_25 Depth=2
	movl	%edi, 16(%r12)
	subl	%esi, %ebx
	movb	%bpl, %cl
	sarl	%cl, %ebx
	cmpl	%r13d, %r11d
	movl	$0, %ecx
	cmovel	%ecx, %ebx
	movl	%ebx, 20(%r12)
	imull	%edi, %ebx
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movl	$1, %ecx
	testl	%eax, %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB7_28
# BB#29:                                # %if.else.225
                                        #   in Loop: Header=BB7_25 Depth=2
	movq	216(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	incq	%rcx
	shrq	%rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movslq	%esi, %rsi
	incq	%rsi
	shrq	%rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	decl	%r10d
	decl	%ebp
	movl	$3, %ecx
	jmp	.LBB7_30
.LBB7_28:                               #   in Loop: Header=BB7_25 Depth=2
	movq	%rsi, 136(%rsp)         # 8-byte Spill
.LBB7_30:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB7_25 Depth=2
	movl	%ebp, 180(%rsp)         # 4-byte Spill
	movq	%r10, 184(%rsp)         # 8-byte Spill
	imull	$56, %ebx, %r13d
	movl	%r13d, 92(%rsp)         # 4-byte Spill
	movl	%ecx, 24(%r12)
	movl	8(%r15), %esi
	movl	12(%r15), %edx
	movl	$1, %edi
	movb	%r10b, %cl
	shll	%cl, %edi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movl	$1, %edi
	movb	%bpl, %cl
	shll	%cl, %edi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	cmpl	%r10d, %esi
	movl	%r10d, %edi
	cmovbl	%esi, %edi
	jb	.LBB7_32
# BB#31:                                # %for.body.239.lr.ph
                                        #   in Loop: Header=BB7_25 Depth=2
	movb	%r10b, %sil
.LBB7_32:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB7_25 Depth=2
	movl	$1, %ebx
	movb	%sil, %cl
	shll	%cl, %ebx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movslq	%ebx, %rcx
	cmpl	%ebp, %edx
	movl	%ebp, %esi
	cmovbl	%edx, %esi
	movl	%r13d, %ebx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	%edi, %edi
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	jb	.LBB7_34
# BB#33:                                # %for.body.239.lr.ph
                                        #   in Loop: Header=BB7_25 Depth=2
	movb	%bpl, %dl
.LBB7_34:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB7_25 Depth=2
	decq	64(%rsp)                # 8-byte Folded Spill
	leaq	32(%r12), %r10
	decq	%rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	$1, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	movslq	%edi, %rcx
	decq	%rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movl	%esi, %ecx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movl	$1, %edx
	movb	%r9b, %cl
	shll	%cl, %edx
	movslq	%edx, %rcx
	decq	%rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%r9d, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
.LBB7_35:                               # %for.body.239
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_46 Depth 4
                                        #           Child Loop BB7_66 Depth 5
	testl	%eax, %eax
	je	.LBB7_36
# BB#37:                                # %if.else.256
                                        #   in Loop: Header=BB7_35 Depth=3
	leal	1(%rcx), %edi
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%edi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	shrl	%edx
	movslq	(%r14), %rsi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movb	%bl, %cl
	shll	%cl, %eax
	movslq	%eax, %r9
	subq	%r9, %rsi
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %r11
	movq	8(%rsp), %rax           # 8-byte Reload
	movb	%al, %cl
	sarq	%cl, %r11
	movslq	4(%r14), %rsi
	movb	%bl, %cl
	shll	%cl, %edx
	movslq	%edx, %rbx
	subq	%rbx, %rsi
	leaq	(%rsi,%rbp), %rdx
	movb	%al, %cl
	sarq	%cl, %rdx
	movslq	8(%r14), %rcx
	subq	%r9, %rcx
	leaq	(%rcx,%rbp), %rsi
	movb	%al, %cl
	sarq	%cl, %rsi
	movslq	12(%r14), %rcx
	subq	%rbx, %rcx
	leaq	(%rcx,%rbp), %rbp
	movb	%al, %cl
	sarq	%cl, %rbp
	jmp	.LBB7_38
	.align	16, 0x90
.LBB7_36:                               # %if.then.242
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	(%r14), %rax
	movq	64(%rsp), %rbp          # 8-byte Reload
	leaq	(%rax,%rbp), %r11
	movq	72(%rsp), %rcx          # 8-byte Reload
	sarq	%cl, %r11
	movslq	4(%r14), %rdx
	leaq	(%rdx,%rbp), %rdx
	sarq	%cl, %rdx
	movslq	8(%r14), %rsi
	leaq	(%rsi,%rbp), %rsi
	sarq	%cl, %rsi
	movslq	12(%r14), %rdi
	leaq	(%rdi,%rbp), %rbp
	sarq	%cl, %rbp
	xorl	%edi, %edi
.LBB7_38:                               # %if.end.290
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	%r10, %r14
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movl	%edi, 16(%r14)
	movl	%r11d, (%r14)
	movl	%edx, 4(%r14)
	movl	%esi, 8(%r14)
	movl	%ebp, 12(%r14)
	callq	*%r8
	movq	224(%rsp), %rcx         # 8-byte Reload
	addl	24(%rcx), %eax
	movq	112(%rsp), %rbp         # 8-byte Reload
	cvtsi2sdl	4(%rbp), %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	addsd	.LCPI7_1(%rip), %xmm0
	movsd	%xmm0, 272(%rsp)        # 8-byte Spill
	subl	(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI7_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	272(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%r14)
	movl	(%rbp), %eax
	movl	804(%r15), %ecx
	movq	%r15, 48(%rsp)          # 8-byte Spill
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 36(%r14)
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB7_39
# BB#41:                                # %if.else.326
                                        #   in Loop: Header=BB7_35 Depth=3
	cmpl	%r13d, 32(%r14)
	movq	200(%rsp), %rbp         # 8-byte Reload
	jae	.LBB7_44
# BB#42:                                # %cond.false.335
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_78
# BB#43:                                # %cleanup.358.thread
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	%rax, 24(%r14)
	movl	32(%r14), %ecx
	addq	%rcx, %rax
	movl	%r13d, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%r13d, 32(%r14)
	jmp	.LBB7_44
	.align	16, 0x90
.LBB7_39:                               # %if.then.308
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	80(%rsp), %rdi          # 8-byte Reload
	callq	malloc
	movq	%rax, 24(%r14)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# BB#40:                                # %if.end.322
                                        #   in Loop: Header=BB7_35 Depth=3
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movl	%r13d, 32(%r14)
	movq	200(%rsp), %rbp         # 8-byte Reload
.LBB7_44:                               # %if.end.362
                                        #   in Loop: Header=BB7_35 Depth=3
	testl	%ebp, %ebp
	je	.LBB7_74
# BB#45:                                # %for.body.367.lr.ph
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	24(%r14), %rbp
	xorl	%r8d, %r8d
.LBB7_46:                               # %for.body.367
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        #       Parent Loop BB7_35 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_66 Depth 5
	xorl	%edx, %edx
	movl	%r8d, %eax
	divl	16(%r12)
	movl	%eax, %ebx
	movl	%edx, %esi
	movq	184(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %esi
	movq	216(%rsp), %rax         # 8-byte Reload
	addl	%eax, %esi
	movl	180(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %ebx
	movq	136(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ebx
	movq	168(%rsp), %rax         # 8-byte Reload
	leal	(%rsi,%rax), %eax
	movq	160(%rsp), %rcx         # 8-byte Reload
	leal	(%rbx,%rcx), %ecx
	movl	(%r14), %edx
	cmpl	%edx, %esi
	cmovll	%edx, %esi
	movl	%esi, (%rbp)
	movl	4(%r14), %edx
	cmpl	%edx, %ebx
	cmovll	%edx, %ebx
	movl	%ebx, 4(%rbp)
	movl	8(%r14), %edx
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	movl	%edx, 8(%rbp)
	movl	12(%r14), %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, 12(%rbp)
	movq	264(%rsp), %r9          # 8-byte Reload
	movb	%r9b, %cl
	sarl	%cl, %esi
	movb	%r9b, %cl
	shll	%cl, %esi
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rdi         # 8-byte Reload
	movb	%dil, %cl
	sarl	%cl, %ebx
	movb	%dil, %cl
	shll	%cl, %ebx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	movslq	%edx, %rcx
	movq	152(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdx
	movb	%r9b, %cl
	sarq	%cl, %rdx
	movb	%r9b, %cl
	shll	%cl, %edx
	cltq
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movb	%dil, %cl
	sarq	%cl, %rax
	movb	%dil, %cl
	shll	%cl, %eax
	subl	%esi, %edx
	movb	%r9b, %cl
	sarl	%cl, %edx
	movl	%edx, 16(%rbp)
	subl	%ebx, %eax
	movb	%dil, %cl
	sarl	%cl, %eax
	movl	%eax, 20(%rbp)
	imull	%edx, %eax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movl	%eax, %r14d
	shll	$6, %r14d
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_47
# BB#52:                                # %if.else.438
                                        #   in Loop: Header=BB7_46 Depth=4
	movl	%r8d, 212(%rsp)         # 4-byte Spill
	cmpl	32(%rbp), %r14d
	jbe	.LBB7_50
# BB#53:                                # %cond.false.447
                                        #   in Loop: Header=BB7_46 Depth=4
	movl	%r14d, %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB7_55
# BB#54:                                # %cleanup.475.thread
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	%rax, 24(%rbp)
	movl	32(%rbp), %ecx
	addq	%rcx, %rax
	movl	%r14d, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	jmp	.LBB7_49
	.align	16, 0x90
.LBB7_47:                               # %if.then.417
                                        #   in Loop: Header=BB7_46 Depth=4
	movl	%r8d, 212(%rsp)         # 4-byte Spill
	movl	%r14d, %r15d
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, 24(%rbp)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# BB#48:                                # %if.end.433
                                        #   in Loop: Header=BB7_46 Depth=4
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
.LBB7_49:                               # %if.end.479
                                        #   in Loop: Header=BB7_46 Depth=4
	callq	memset
	movl	%r14d, 32(%rbp)
.LBB7_50:                               # %if.end.479
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	40(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	20(%rbp), %edx
	testq	%rdi, %rdi
	je	.LBB7_51
# BB#56:                                # %if.else.486
                                        #   in Loop: Header=BB7_46 Depth=4
	callq	opj_tgt_init
	jmp	.LBB7_57
	.align	16, 0x90
.LBB7_51:                               # %if.then.481
                                        #   in Loop: Header=BB7_46 Depth=4
	movl	%esi, %edi
	movl	%edx, %esi
	callq	opj_tgt_create
.LBB7_57:                               # %if.end.492
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.LBB7_59
# BB#58:                                # %if.then.495
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	stderr(%rip), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB7_59:                               # %if.end.497
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	48(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	20(%rbp), %edx
	testq	%rdi, %rdi
	je	.LBB7_60
# BB#61:                                # %if.else.504
                                        #   in Loop: Header=BB7_46 Depth=4
	callq	opj_tgt_init
	jmp	.LBB7_62
	.align	16, 0x90
.LBB7_60:                               # %if.then.499
                                        #   in Loop: Header=BB7_46 Depth=4
	movl	%esi, %edi
	movl	%edx, %esi
	callq	opj_tgt_create
.LBB7_62:                               # %if.end.510
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	%rax, 48(%rbp)
	testq	%rax, %rax
	jne	.LBB7_64
# BB#63:                                # %if.then.513
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	stderr(%rip), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB7_64:                               # %if.end.515
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	272(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_73
# BB#65:                                # %for.body.521.lr.ph
                                        #   in Loop: Header=BB7_46 Depth=4
	movq	24(%rbp), %r14
	leaq	36(%r14), %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB7_66:                               # %for.body.521
                                        #   Parent Loop BB7_3 Depth=1
                                        #     Parent Loop BB7_25 Depth=2
                                        #       Parent Loop BB7_35 Depth=3
                                        #         Parent Loop BB7_46 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	16(%rbp)
	movq	264(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %edx
	movq	240(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %edx
	movq	256(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %eax
	movq	248(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %eax
	leal	(%rdx,%r13), %ecx
	movq	232(%rsp), %rsi         # 8-byte Reload
	leal	(%rax,%rsi), %esi
	movl	(%rbp), %edi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	movl	%edx, -12(%r12)
	movl	4(%rbp), %edx
	cmpl	%edx, %eax
	cmovll	%edx, %eax
	movl	%eax, -8(%r12)
	movl	8(%rbp), %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, -4(%r12)
	movl	12(%rbp), %eax
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	movl	%eax, (%r12)
	cmpq	$0, -36(%r12)
	je	.LBB7_68
# BB#67:                                # %entry.if.end.17_crit_edge.i
                                        #   in Loop: Header=BB7_66 Depth=5
	leaq	-28(%r12), %rax
	leaq	-20(%r12), %rbx
	jmp	.LBB7_72
	.align	16, 0x90
.LBB7_68:                               # %if.then.i
                                        #   in Loop: Header=BB7_66 Depth=5
	movl	$8192, %edi             # imm = 0x2000
	callq	malloc
	movq	%rax, -36(%r12)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# BB#69:                                # %if.end.i
                                        #   in Loop: Header=BB7_66 Depth=5
	movb	$0, (%rax)
	incq	%rax
	movq	%rax, -36(%r12)
	movl	$2400, %edi             # imm = 0x960
	callq	malloc
	movq	%rax, -28(%r12)
	testq	%rax, %rax
	je	.LBB7_10
# BB#70:                                # %if.end.11.i
                                        #   in Loop: Header=BB7_66 Depth=5
	movl	$2400, %edi             # imm = 0x960
	callq	malloc
	movq	%rax, -20(%r12)
	testq	%rax, %rax
	je	.LBB7_10
# BB#71:                                #   in Loop: Header=BB7_66 Depth=5
	leaq	8(%r14), %rax
	leaq	16(%r14), %rbx
.LBB7_72:                               # %opj_tcd_code_block_enc_allocate.exit
                                        #   in Loop: Header=BB7_66 Depth=5
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$2400, %edx             # imm = 0x960
	callq	memset
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	movl	$2400, %edx             # imm = 0x960
	callq	memset
	addq	$64, %r14
	incl	%r15d
	addq	$64, %r12
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r15d
	jb	.LBB7_66
.LBB7_73:                               # %for.inc.569
                                        #   in Loop: Header=BB7_46 Depth=4
	addq	$56, %rbp
	movl	212(%rsp), %r8d         # 4-byte Reload
	incl	%r8d
	movq	200(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r8d
	movq	96(%rsp), %r12          # 8-byte Reload
	movl	92(%rsp), %r13d         # 4-byte Reload
	movq	120(%rsp), %r14         # 8-byte Reload
	jb	.LBB7_46
	.align	16, 0x90
.LBB7_74:                               # %for.inc.577
                                        #   in Loop: Header=BB7_35 Depth=3
	addq	$48, %r14
	movq	%r14, %r10
	addq	$8, 112(%rsp)           # 8-byte Folded Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	cmpl	24(%r12), %ecx
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movl	4(%rsp), %eax           # 4-byte Reload
	jb	.LBB7_35
# BB#75:                                # %for.inc.589
                                        #   in Loop: Header=BB7_25 Depth=2
	addq	$176, %r12
	incl	%eax
	cmpl	16(%r14), %eax
	movq	72(%rsp), %r9           # 8-byte Reload
	jb	.LBB7_25
	.align	16, 0x90
.LBB7_76:                               # %for.end.591
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	36(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	$1, %ebx
	movq	104(%rsp), %rax         # 8-byte Reload
	cmpl	16(%rax), %ecx
	jb	.LBB7_77
	jmp	.LBB7_10
.LBB7_55:                               # %cleanup.475
	movq	24(%rbp), %rdi
	callq	free
	movq	$0, 24(%rbp)
	movl	$0, 32(%rbp)
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.4, %esi
	jmp	.LBB7_6
.LBB7_9:                                # %if.then.89
	movq	40(%r14), %rdi
	callq	free
	movq	$0, 40(%r14)
	movl	$0, 48(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_10
.LBB7_78:                               # %cleanup.358
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.3, %esi
	jmp	.LBB7_19
.LBB7_18:                               # %if.then.138
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.2, %esi
.LBB7_19:                               # %cleanup.598
	xorl	%eax, %eax
	callq	fprintf
	movq	24(%r14), %rdi
	callq	free
	movq	$0, 24(%r14)
	movl	$0, 32(%r14)
.LBB7_10:                               # %cleanup.598
	movl	%ebx, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	opj_tcd_init_encode_tile, .Lfunc_end7-opj_tcd_init_encode_tile
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4557642822898941952     # double 4.8828125E-4
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_3:
	.long	1056964608              # float 0.5
	.text
	.globl	opj_tcd_init_decode_tile
	.align	16, 0x90
	.type	opj_tcd_init_decode_tile,@function
opj_tcd_init_decode_tile:               # @opj_tcd_init_decode_tile
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp91:
	.cfi_def_cfa_offset 352
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
	movq	40(%rdi), %rbx
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	96(%rbx), %rcx
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rdi
	movq	(%rdx), %r15
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	5584(%rcx,%rax), %r13
	movq	24(%r15), %r11
	movq	24(%rdi), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	32(%rbx)
	movl	%eax, %ecx
	movl	%edx, %esi
	movl	4(%rbx), %r9d
	movl	12(%rbx), %r14d
	movl	%r14d, %eax
	imull	%esi, %eax
	addl	%r9d, %eax
	movl	(%rdi), %ebp
	cmpl	%ebp, %eax
	cmovll	%ebp, %eax
	movl	%eax, (%r15)
	movl	8(%rbx), %r8d
	movl	16(%rbx), %r10d
	movl	%r10d, %ebp
	imull	%ecx, %ebp
	addl	%r8d, %ebp
	movl	4(%rdi), %edx
	cmpl	%edx, %ebp
	cmovll	%edx, %ebp
	incl	%esi
	imull	%r14d, %esi
	movl	%ebp, 4(%r15)
	addl	%r9d, %esi
	movl	8(%rdi), %edx
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	incl	%ecx
	imull	%r10d, %ecx
	addl	%r8d, %ecx
	movl	%esi, 8(%r15)
	movl	12(%rdi), %edx
	cmpl	%edx, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, 12(%r15)
	movl	4(%r13), %r9d
	testl	%r9d, %r9d
	je	.LBB8_5
# BB#1:                                 # %for.cond.preheader
	movl	$1, 280(%rsp)           # 4-byte Folded Spill
	cmpl	$0, 16(%r15)
	movq	%r15, 96(%rsp)          # 8-byte Spill
	je	.LBB8_10
# BB#2:                                 # %for.body.lr.ph
	movl	$1, %r15d
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movq	%r11, %r14
	movq	%r13, %r10
	movq	248(%rsp), %r11         # 8-byte Reload
	jmp	.LBB8_3
.LBB8_5:                                # %if.then
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
.LBB8_6:                                # %cleanup.599
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB8_10
	.align	16, 0x90
.LBB8_75:                               # %for.end.592.for.body_crit_edge
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	248(%rsp), %r11         # 8-byte Reload
	addq	$64, %r11
	addq	$56, %r14
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %eax
	movl	4(%rcx), %ebp
	movl	8(%rcx), %esi
	movl	12(%rcx), %ecx
	movq	%r15, %r10
	movl	1084(%r10), %r9d
	addq	$1080, %r10             # imm = 0x438
	movl	$1, %r15d
.LBB8_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
                                        #       Child Loop BB8_35 Depth 3
                                        #         Child Loop BB8_46 Depth 4
                                        #           Child Loop BB8_66 Depth 5
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movl	(%r11), %ebx
	leal	-1(%rax,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %r8d
	movl	%r8d, (%r14)
	movl	4(%r11), %edi
	leal	-1(%rbp,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %ebp
	movl	%ebp, 4(%r14)
	leal	-1(%rsi,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	movl	%esi, 8(%r14)
	leal	-1(%rcx,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %ebx
	movl	%ebx, 12(%r14)
	subl	%r8d, %esi
	subl	%ebp, %ebx
	imull	%esi, %ebx
	shll	$2, %ebx
	movl	%r9d, 16(%r14)
	movq	200(%rsp), %rax         # 8-byte Reload
	subl	104(%rax), %r9d
	cmovbl	%r15d, %r9d
	movl	%r9d, 20(%r14)
	movq	40(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_4
# BB#7:                                 # %if.else.72
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%r10, %r15
	cmpl	48(%r14), %ebx
	jbe	.LBB8_13
# BB#8:                                 # %cond.false.81
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebx, %esi
	callq	realloc
	movq	%rax, %rbp
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	fprintf
	testq	%rbp, %rbp
	je	.LBB8_9
# BB#11:                                # %if.end.93
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rbp, 40(%r14)
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_4:                                # %cond.false
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%r11, 248(%rsp)         # 8-byte Spill
	movq	%r10, %r15
	movl	%ebx, %edi
	callq	malloc
	movq	%rax, 40(%r14)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB8_10
.LBB8_12:                               # %if.end.97
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebx, 48(%r14)
.LBB8_13:                               # %if.end.97
                                        #   in Loop: Header=BB8_3 Depth=1
	imull	$176, 16(%r14), %ebp
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_14
# BB#16:                                # %if.else.122
                                        #   in Loop: Header=BB8_3 Depth=1
	cmpl	32(%r14), %ebp
	jbe	.LBB8_21
# BB#17:                                # %cond.false.131
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebp, %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB8_18
# BB#20:                                # %if.end.143
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%rax, 24(%r14)
	movl	32(%r14), %ecx
	addq	%rcx, %rax
	movl	%ebp, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%ebp, 32(%r14)
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_14:                               # %if.then.104
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebp, %ebx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 24(%r14)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB8_10
# BB#15:                                # %if.end.118
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	%ebp, 32(%r14)
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	memset
.LBB8_21:                               # %if.end.156
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	16(%r14), %eax
	cmpl	$0, 20(%r15)
	movl	$opj_dwt_getgain_real, %r11d
	je	.LBB8_23
# BB#22:                                # %select.mid
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$opj_dwt_getgain, %r11d
.LBB8_23:                               # %select.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	%r11, 144(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	je	.LBB8_74
# BB#24:                                # %for.body.169.lr.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	28(%r15), %r12
	movq	24(%r14), %rbp
	xorl	%r10d, %r10d
.LBB8_25:                               # %for.body.169
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_35 Depth 3
                                        #         Child Loop BB8_46 Depth 4
                                        #           Child Loop BB8_66 Depth 5
	movq	%rax, 280(%rsp)         # 8-byte Spill
	movq	%r11, 144(%rsp)         # 8-byte Spill
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movl	%r10d, 4(%rsp)          # 4-byte Spill
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	leal	-1(%rax), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movslq	(%r14), %rdx
	movl	$1, %esi
	shll	%cl, %esi
	movslq	%esi, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	leaq	-1(%rbx,%rdx), %rdi
	sarq	%cl, %rdi
	movl	%edi, (%rbp)
	movslq	4(%r14), %rax
	leaq	-1(%rbx,%rax), %r8
	sarq	%cl, %r8
	movl	%r8d, 4(%rbp)
	movslq	8(%r14), %rsi
	movq	%rbp, %r13
	leaq	-1(%rbx,%rsi), %rbp
	sarq	%cl, %rbp
	movl	%ebp, 8(%r13)
	movslq	12(%r14), %rsi
	leaq	-1(%rbx,%rsi), %rsi
	sarq	%cl, %rsi
	movl	%esi, 12(%r13)
	movl	%r10d, %ebx
	movl	812(%r15,%rbx,4), %ecx
	movl	944(%r15,%rbx,4), %r15d
	movl	%edi, %ebx
	sarl	%cl, %ebx
	movq	%rcx, %r11
	shll	%cl, %ebx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	movl	%r8d, %edx
	movb	%r15b, %cl
	sarl	%cl, %edx
	movb	%r15b, %cl
	shll	%cl, %edx
	movl	$1, %ebx
	movb	%r15b, %cl
	shll	%cl, %ebx
	movslq	%esi, %rcx
	movslq	%ebx, %rbx
	leaq	-1(%rbx,%rcx), %r9
	movb	%r15b, %cl
	sarq	%cl, %r9
	movb	%r15b, %cl
	shll	%cl, %r9d
	cmpl	%ebp, %edi
	movl	$0, %edi
	je	.LBB8_27
# BB#26:                                # %cond.false.202
                                        #   in Loop: Header=BB8_25 Depth=2
	movslq	%ebp, %rdi
	movl	$1, %ebp
	movq	%r11, %rcx
	shll	%cl, %ebp
	movslq	%ebp, %rbp
	leaq	-1(%rbp,%rdi), %rdi
	sarq	%cl, %rdi
	shll	%cl, %edi
	movq	232(%rsp), %rax         # 8-byte Reload
	subl	%eax, %edi
	sarl	%cl, %edi
.LBB8_27:                               # %cond.end.204
                                        #   in Loop: Header=BB8_25 Depth=2
	movl	%edi, 16(%r13)
	subl	%edx, %r9d
	movb	%r15b, %cl
	sarl	%cl, %r9d
	cmpl	%esi, %r8d
	movl	$0, %ecx
	cmovel	%ecx, %r9d
	movl	%r9d, 20(%r13)
	imull	%edi, %r9d
	movl	$1, %ecx
	testl	%r10d, %r10d
	je	.LBB8_28
# BB#29:                                # %if.else.225
                                        #   in Loop: Header=BB8_25 Depth=2
	movq	232(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	incq	%rcx
	shrq	%rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movslq	%edx, %rdx
	incq	%rdx
	shrq	%rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%r11, %rbp
	decl	%ebp
	decl	%r15d
	movl	$3, %ecx
	jmp	.LBB8_30
.LBB8_28:                               #   in Loop: Header=BB8_25 Depth=2
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	%r11, %rbp
.LBB8_30:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB8_25 Depth=2
	movq	144(%rsp), %r11         # 8-byte Reload
	movq	280(%rsp), %rbx         # 8-byte Reload
	movl	%r15d, 124(%rsp)        # 4-byte Spill
	imull	$56, %r9d, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	%r9, 224(%rsp)          # 8-byte Spill
	movl	%ecx, 24(%r13)
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	8(%rcx), %esi
	movl	12(%rcx), %edx
	movl	$1, %edi
	movb	%bpl, %cl
	shll	%cl, %edi
	movq	%rdi, 184(%rsp)         # 8-byte Spill
	movl	$1, %edi
	movb	%r15b, %cl
	shll	%cl, %edi
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	cmpl	%ebp, %esi
	movl	%ebp, %edi
	cmovbl	%esi, %edi
	jb	.LBB8_32
# BB#31:                                # %for.body.239.lr.ph
                                        #   in Loop: Header=BB8_25 Depth=2
	movb	%bpl, %sil
.LBB8_32:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB8_25 Depth=2
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	movl	$1, %ebp
	movb	%sil, %cl
	shll	%cl, %ebp
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	cmpl	%r15d, %edx
	movl	%r15d, %esi
	cmovbl	%edx, %esi
	movl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%edi, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jb	.LBB8_34
# BB#33:                                # %for.body.239.lr.ph
                                        #   in Loop: Header=BB8_25 Depth=2
	movb	%r15b, %dl
.LBB8_34:                               # %for.body.239.lr.ph
                                        #   in Loop: Header=BB8_25 Depth=2
	decq	56(%rsp)                # 8-byte Folded Spill
	leaq	32(%r13), %r8
	decq	%rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movb	%dl, %cl
	shll	%cl, %eax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	cltq
	decq	%rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%esi, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movb	%bl, %cl
	shll	%cl, %edx
	movslq	%edx, %rax
	decq	%rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%eax, %eax
.LBB8_35:                               # %for.body.239
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_46 Depth 4
                                        #           Child Loop BB8_66 Depth 5
	testl	%r10d, %r10d
	je	.LBB8_36
# BB#37:                                # %if.else.256
                                        #   in Loop: Header=BB8_35 Depth=3
	leal	1(%rax), %edi
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%edi, %eax
	andl	$1, %eax
	movl	%edi, %edx
	shrl	%edx
	movslq	(%r14), %rsi
	movq	80(%rsp), %rbx          # 8-byte Reload
	movb	%bl, %cl
	shll	%cl, %eax
	movslq	%eax, %r9
	subq	%r9, %rsi
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rsi,%rbp), %r10
	movq	8(%rsp), %rax           # 8-byte Reload
	movb	%al, %cl
	sarq	%cl, %r10
	movslq	4(%r14), %rsi
	movb	%bl, %cl
	shll	%cl, %edx
	movslq	%edx, %rbx
	subq	%rbx, %rsi
	leaq	(%rsi,%rbp), %rdx
	movb	%al, %cl
	sarq	%cl, %rdx
	movslq	8(%r14), %rcx
	subq	%r9, %rcx
	leaq	(%rcx,%rbp), %rsi
	movb	%al, %cl
	sarq	%cl, %rsi
	movslq	12(%r14), %rcx
	subq	%rbx, %rcx
	leaq	(%rcx,%rbp), %rbp
	movb	%al, %cl
	sarq	%cl, %rbp
	jmp	.LBB8_38
	.align	16, 0x90
.LBB8_36:                               # %if.then.242
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movslq	(%r14), %rax
	movq	56(%rsp), %rbp          # 8-byte Reload
	leaq	(%rax,%rbp), %r10
	movq	80(%rsp), %rcx          # 8-byte Reload
	sarq	%cl, %r10
	movslq	4(%r14), %rdx
	leaq	(%rdx,%rbp), %rdx
	sarq	%cl, %rdx
	movslq	8(%r14), %rsi
	leaq	(%rsi,%rbp), %rsi
	sarq	%cl, %rsi
	movslq	12(%r14), %rdi
	leaq	(%rdi,%rbp), %rbp
	sarq	%cl, %rbp
	xorl	%edi, %edi
.LBB8_38:                               # %if.end.290
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	%r8, %r14
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movl	%edi, 16(%r14)
	movl	%r10d, (%r14)
	movl	%edx, 4(%r14)
	movl	%esi, 8(%r14)
	movl	%ebp, 12(%r14)
	callq	*%r11
	movq	248(%rsp), %rcx         # 8-byte Reload
	addl	24(%rcx), %eax
	cvtsi2sdl	4(%r12), %xmm0
	mulsd	.LCPI8_0(%rip), %xmm0
	addsd	.LCPI8_1(%rip), %xmm0
	movsd	%xmm0, 280(%rsp)        # 8-byte Spill
	subl	(%r12), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI8_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	pow
	mulsd	280(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	mulss	.LCPI8_3(%rip), %xmm0
	movss	%xmm0, 40(%r14)
	movl	(%r12), %eax
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	804(%rcx), %ecx
	leal	-1(%rax,%rcx), %eax
	movl	%eax, 36(%r14)
	movq	24(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB8_39
# BB#41:                                # %if.else.326
                                        #   in Loop: Header=BB8_35 Depth=3
	movl	76(%rsp), %ebp          # 4-byte Reload
	cmpl	%ebp, 32(%r14)
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r12         # 8-byte Reload
	jae	.LBB8_44
# BB#42:                                # %cond.false.335
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	realloc
	testq	%rax, %rax
	je	.LBB8_76
# BB#43:                                # %cleanup.358.thread
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	%rax, 24(%r14)
	movl	32(%r14), %ecx
	addq	%rcx, %rax
	movl	%ebp, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movl	%ebp, 32(%r14)
	jmp	.LBB8_44
	.align	16, 0x90
.LBB8_39:                               # %if.then.308
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	88(%rsp), %rdi          # 8-byte Reload
	callq	malloc
	movq	%rax, 24(%r14)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB8_10
# BB#40:                                # %if.end.322
                                        #   in Loop: Header=BB8_35 Depth=3
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%r14)
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	104(%rsp), %r12         # 8-byte Reload
.LBB8_44:                               # %if.end.362
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	224(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	64(%rsp), %r9           # 8-byte Reload
	je	.LBB8_72
# BB#45:                                # %for.body.367.lr.ph
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	24(%r14), %rbp
	xorl	%r8d, %r8d
.LBB8_46:                               # %for.body.367
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_35 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB8_66 Depth 5
	movq	%rbp, 256(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movl	%r8d, %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	divl	16(%rcx)
	movl	%eax, %esi
	movl	%edx, %ebx
	movq	192(%rsp), %rcx         # 8-byte Reload
	shll	%cl, %ebx
	movq	232(%rsp), %rax         # 8-byte Reload
	addl	%eax, %ebx
	movb	%r15b, %cl
	shll	%cl, %esi
	movq	152(%rsp), %rax         # 8-byte Reload
	addl	%eax, %esi
	movq	184(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %eax
	movq	176(%rsp), %rcx         # 8-byte Reload
	leal	(%rsi,%rcx), %ecx
	movl	(%r14), %edx
	cmpl	%edx, %ebx
	cmovll	%edx, %ebx
	movl	%ebx, (%rbp)
	movl	4(%r14), %edx
	cmpl	%edx, %esi
	cmovll	%edx, %esi
	movl	%esi, 4(%rbp)
	movl	8(%r14), %edx
	cmpl	%edx, %eax
	cmovlel	%eax, %edx
	movl	%edx, 8(%rbp)
	movl	12(%r14), %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, 12(%rbp)
	movb	%r12b, %cl
	sarl	%cl, %ebx
	movb	%r12b, %cl
	shll	%cl, %ebx
	movb	%r9b, %cl
	sarl	%cl, %esi
	movb	%r9b, %cl
	shll	%cl, %esi
	movslq	%edx, %rcx
	movq	168(%rsp), %rdx         # 8-byte Reload
	leaq	(%rcx,%rdx), %rdx
	movb	%r12b, %cl
	sarq	%cl, %rdx
	movb	%r12b, %cl
	shll	%cl, %edx
	cltq
	movq	160(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movb	%r9b, %cl
	sarq	%cl, %rax
	movb	%r9b, %cl
	shll	%cl, %eax
	subl	%ebx, %edx
	movb	%r12b, %cl
	sarl	%cl, %edx
	movl	%edx, 16(%rbp)
	subl	%esi, %eax
	movb	%r9b, %cl
	sarl	%cl, %eax
	movl	%eax, 20(%rbp)
	imull	%edx, %eax
	movl	%eax, %r14d
	shll	$6, %r14d
	movq	24(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_47
# BB#52:                                # %if.else.438
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movl	%r8d, 220(%rsp)         # 4-byte Spill
	movq	%r9, %rbx
	cmpl	32(%rbp), %r14d
	jbe	.LBB8_50
# BB#53:                                # %cond.false.447
                                        #   in Loop: Header=BB8_46 Depth=4
	movl	%r14d, %esi
	callq	realloc
	testq	%rax, %rax
	je	.LBB8_55
# BB#54:                                # %cleanup.475.thread
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	%rax, 24(%rbp)
	movl	32(%rbp), %ecx
	addq	%rcx, %rax
	movl	%r14d, %edx
	subl	%ecx, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	jmp	.LBB8_49
	.align	16, 0x90
.LBB8_47:                               # %if.then.417
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	%rax, 272(%rsp)         # 8-byte Spill
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movl	%r8d, 220(%rsp)         # 4-byte Spill
	movq	%r9, %rbx
	movl	%r14d, %r15d
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, 24(%rbp)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB8_10
# BB#48:                                # %if.end.433
                                        #   in Loop: Header=BB8_46 Depth=4
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
.LBB8_49:                               # %if.end.479
                                        #   in Loop: Header=BB8_46 Depth=4
	callq	memset
	movl	%r14d, 32(%rbp)
.LBB8_50:                               # %if.end.479
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	40(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	20(%rbp), %edx
	testq	%rdi, %rdi
	je	.LBB8_51
# BB#56:                                # %if.else.486
                                        #   in Loop: Header=BB8_46 Depth=4
	callq	opj_tgt_init
	jmp	.LBB8_57
	.align	16, 0x90
.LBB8_51:                               # %if.then.481
                                        #   in Loop: Header=BB8_46 Depth=4
	movl	%esi, %edi
	movl	%edx, %esi
	callq	opj_tgt_create
.LBB8_57:                               # %if.end.492
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	%rax, 40(%rbp)
	testq	%rax, %rax
	jne	.LBB8_59
# BB#58:                                # %if.then.495
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	stderr(%rip), %rdi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB8_59:                               # %if.end.497
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	48(%rbp), %rdi
	movl	16(%rbp), %esi
	movl	20(%rbp), %edx
	testq	%rdi, %rdi
	je	.LBB8_60
# BB#61:                                # %if.else.504
                                        #   in Loop: Header=BB8_46 Depth=4
	callq	opj_tgt_init
	jmp	.LBB8_62
	.align	16, 0x90
.LBB8_60:                               # %if.then.499
                                        #   in Loop: Header=BB8_46 Depth=4
	movl	%esi, %edi
	movl	%edx, %esi
	callq	opj_tgt_create
.LBB8_62:                               # %if.end.510
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	%rax, 48(%rbp)
	testq	%rax, %rax
	movq	%rbx, %r9
	movq	240(%rsp), %rbx         # 8-byte Reload
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	272(%rsp), %r10         # 8-byte Reload
	jne	.LBB8_64
# BB#63:                                # %if.then.513
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	stderr(%rip), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%r9, %r14
	movq	%r8, %r15
	callq	fprintf
	movq	272(%rsp), %r10         # 8-byte Reload
	movq	%r15, %r8
	movq	%r14, %r9
.LBB8_64:                               # %if.end.515
                                        #   in Loop: Header=BB8_46 Depth=4
	testl	%r10d, %r10d
	je	.LBB8_71
# BB#65:                                # %for.body.521.lr.ph
                                        #   in Loop: Header=BB8_46 Depth=4
	movq	24(%rbp), %r14
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB8_66:                               # %for.body.521
                                        #   Parent Loop BB8_3 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        #       Parent Loop BB8_35 Depth=3
                                        #         Parent Loop BB8_46 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	xorl	%edx, %edx
	movl	%r15d, %eax
	divl	16(%rbp)
	movb	%r12b, %cl
	shll	%cl, %edx
	addl	%r8d, %edx
	movb	%r9b, %cl
	shll	%cl, %eax
	addl	%ebx, %eax
	leal	(%rdx,%r13), %ecx
	movq	288(%rsp), %rsi         # 8-byte Reload
	leal	(%rax,%rsi), %esi
	movl	(%rbp), %edi
	cmpl	%edi, %edx
	cmovll	%edi, %edx
	movl	%edx, 16(%r14)
	movl	4(%rbp), %edx
	cmpl	%edx, %eax
	cmovll	%edx, %eax
	movl	%eax, 20(%r14)
	movl	8(%rbp), %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, 24(%r14)
	movl	12(%rbp), %eax
	cmpl	%eax, %esi
	cmovlel	%esi, %eax
	movl	%eax, 28(%r14)
	cmpq	$0, (%r14)
	jne	.LBB8_70
# BB#67:                                # %if.then.i
                                        #   in Loop: Header=BB8_66 Depth=5
	movq	%rbx, %rbp
	movq	%r9, %rbx
	movl	$8192, %edi             # imm = 0x2000
	callq	malloc
	movq	%rax, (%r14)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB8_10
# BB#68:                                # %if.end.i
                                        #   in Loop: Header=BB8_66 Depth=5
	movl	$8192, 40(%r14)         # imm = 0x2000
	movl	$400, %edi              # imm = 0x190
	callq	malloc
	movq	%rax, 8(%r14)
	testq	%rax, %rax
	je	.LBB8_10
# BB#69:                                # %if.end.11.i
                                        #   in Loop: Header=BB8_66 Depth=5
	xorl	%esi, %esi
	movl	$400, %edx              # imm = 0x190
	movq	%rax, %rdi
	callq	memset
	movl	$10, 60(%r14)
	movq	%rbx, %r9
	movq	%rbp, %rbx
	movq	256(%rsp), %rbp         # 8-byte Reload
	movq	264(%rsp), %r8          # 8-byte Reload
	movq	272(%rsp), %r10         # 8-byte Reload
.LBB8_70:                               # %for.inc
                                        #   in Loop: Header=BB8_66 Depth=5
	addq	$64, %r14
	incl	%r15d
	cmpl	%r10d, %r15d
	jb	.LBB8_66
.LBB8_71:                               # %for.inc.569
                                        #   in Loop: Header=BB8_46 Depth=4
	addq	$56, %rbp
	movl	220(%rsp), %r8d         # 4-byte Reload
	incl	%r8d
	movq	224(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r8d
	movl	124(%rsp), %r15d        # 4-byte Reload
	movq	136(%rsp), %r14         # 8-byte Reload
	jb	.LBB8_46
	.align	16, 0x90
.LBB8_72:                               # %for.inc.577
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	%r12, 104(%rsp)         # 8-byte Spill
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movq	%rax, 224(%rsp)         # 8-byte Spill
	addq	$48, %r14
	movq	%r14, %r8
	movq	48(%rsp), %r12          # 8-byte Reload
	addq	$8, %r12
	movq	40(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	208(%rsp), %rbp         # 8-byte Reload
	cmpl	24(%rbp), %eax
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	144(%rsp), %r11         # 8-byte Reload
	movl	4(%rsp), %r10d          # 4-byte Reload
	jb	.LBB8_35
# BB#73:                                # %for.inc.590
                                        #   in Loop: Header=BB8_25 Depth=2
	addq	$176, %rbp
	incl	%r10d
	cmpl	16(%r14), %r10d
	movq	80(%rsp), %r9           # 8-byte Reload
	movl	%r9d, %eax
	movq	128(%rsp), %r15         # 8-byte Reload
	jb	.LBB8_25
	.align	16, 0x90
.LBB8_74:                               # %for.end.592
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	28(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	$1, 280(%rsp)           # 4-byte Folded Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	16(%rax), %ecx
	jb	.LBB8_75
	jmp	.LBB8_10
.LBB8_55:                               # %cleanup.475
	movq	24(%rbp), %rdi
	callq	free
	movq	$0, 24(%rbp)
	movl	$0, 32(%rbp)
	movq	stderr(%rip), %rdi
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.4, %esi
	jmp	.LBB8_6
.LBB8_9:                                # %if.then.89
	movq	40(%r14), %rdi
	callq	free
	movq	$0, 40(%r14)
	movl	$0, 48(%r14)
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	jmp	.LBB8_10
.LBB8_18:                               # %if.then.138
	movq	stderr(%rip), %rdi
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.2, %esi
	jmp	.LBB8_19
.LBB8_76:                               # %cleanup.358
	movq	stderr(%rip), %rdi
	movl	$0, 280(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.3, %esi
.LBB8_19:                               # %cleanup.599
	xorl	%eax, %eax
	callq	fprintf
	movq	24(%r14), %rdi
	callq	free
	movq	$0, 24(%r14)
	movl	$0, 32(%r14)
.LBB8_10:                               # %cleanup.599
	movl	280(%rsp), %eax         # 4-byte Reload
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	opj_tcd_init_decode_tile, .Lfunc_end8-opj_tcd_init_decode_tile
	.cfi_endproc

	.globl	opj_tcd_get_decoded_tile_size
	.align	16, 0x90
	.type	opj_tcd_get_decoded_tile_size,@function
opj_tcd_get_decoded_tile_size:          # @opj_tcd_get_decoded_tile_size
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rdx
	movl	16(%rdx), %r9d
	xorl	%eax, %eax
	testl	%r9d, %r9d
	je	.LBB9_3
# BB#1:                                 # %for.body.lr.ph
	movq	24(%rdx), %r10
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rsi
	addq	$24, %rsi
	addq	$24, %r10
	xorl	%r11d, %r11d
	movl	$4, %r8d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r10), %edx
	movl	%edx, %ecx
	shrl	$3, %ecx
	andl	$7, %edx
	cmpl	$1, %edx
	sbbl	$-1, %ecx
	cmpl	$3, %ecx
	cmovel	%r8d, %ecx
	movq	(%rsi), %rdx
	movl	-4(%rsi), %edi
	imulq	$176, %rdi, %rdi
	movq	-168(%rdx,%rdi), %xmm0  # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	-176(%rdx,%rdi), %xmm1  # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %edx
	imull	%ecx, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ecx
	imull	%edx, %ecx
	addl	%ecx, %eax
	incl	%r11d
	addq	$56, %rsi
	addq	$64, %r10
	cmpl	%r9d, %r11d
	jb	.LBB9_2
.LBB9_3:                                # %for.end
	retq
.Lfunc_end9:
	.size	opj_tcd_get_decoded_tile_size, .Lfunc_end9-opj_tcd_get_decoded_tile_size
	.cfi_endproc

	.globl	opj_tcd_encode_tile
	.align	16, 0x90
	.type	opj_tcd_encode_tile,@function
opj_tcd_encode_tile:                    # @opj_tcd_encode_tile
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
	subq	$88, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 144
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
	movq	%r9, %rbp
	movl	%r8d, %r15d
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rdi, %r12
	cmpl	$0, 8(%r12)
	jne	.LBB10_67
# BB#1:                                 # %if.then
	movl	%r15d, 80(%rsp)         # 4-byte Spill
	movq	%r14, 72(%rsp)          # 8-byte Spill
	movl	%esi, 56(%r12)
	movl	%esi, %r14d
	movq	40(%r12), %rax
	movq	96(%rax), %rcx
	imulq	$5680, %r14, %rdx       # imm = 0x1630
	leaq	(%rcx,%rdx), %rax
	movq	%rax, 48(%r12)
	testq	%rbp, %rbp
	je	.LBB10_7
# BB#2:                                 # %if.then.1
	movq	24(%r12), %rax
	movq	(%rax), %rax
	movq	24(%rax), %r8
	cmpl	$0, 16(%r8)
	je	.LBB10_3
# BB#4:                                 # %for.body.lr.ph
	movq	5584(%rcx,%rdx), %r9
	movq	24(%r8), %rdx
	xorl	%edi, %edi
	imulq	$608, %r14, %rsi        # imm = 0x260
	addq	104(%rbp), %rsi
	movq	%rbp, %r10
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebx
	imulq	$176, %rbx, %rax
	movl	16(%rdx,%rax), %ecx
	movl	%ecx, 24(%rsi,%rbx,4)
	movl	20(%rdx,%rax), %ecx
	movl	%ecx, 156(%rsi,%rbx,4)
	movl	20(%rdx,%rax), %ecx
	imull	16(%rdx,%rax), %ecx
	addl	%ecx, %edi
	movl	812(%r9,%rbx,4), %eax
	movl	%eax, 288(%rsi,%rbx,4)
	movl	944(%r9,%rbx,4), %eax
	movl	%eax, 420(%rsi,%rbx,4)
	incl	%ebp
	cmpl	16(%r8), %ebp
	jb	.LBB10_5
	jmp	.LBB10_6
.LBB10_3:                               # %if.then.1.for.end_crit_edge
	movq	%rbp, %r10
	xorl	%edi, %edi
.LBB10_6:                               # %for.end
	movq	%r10, %rbp
	imull	52(%rbp), %edi
	imull	56(%rbp), %edi
	movl	$32, %esi
	callq	calloc
	movq	104(%rbp), %rcx
	imulq	$608, %r14, %rdx        # imm = 0x260
	movq	%rax, 552(%rcx,%rdx)
.LBB10_7:                               # %if.end
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	24(%r12), %rax
	movq	(%rax), %r15
	cmpl	$0, 16(%r15)
	je	.LBB10_8
# BB#9:                                 # %for.body.lr.ph.i
	movq	48(%r12), %r8
	movq	5584(%r8), %rcx
	movq	24(%r15), %r14
	xorl	%r10d, %r10d
	movq	%r14, %rsi
	.align	16, 0x90
.LBB10_10:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
                                        #     Child Loop BB10_17 Depth 2
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_24 Depth 2
	movq	40(%rsi), %rdi
	movq	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %eax
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ebx
	imull	%eax, %ebx
	cmpl	$1, 20(%rcx)
	jne	.LBB10_11
# BB#18:                                # %for.cond.4.preheader.i
                                        #   in Loop: Header=BB10_10 Depth=1
	testl	%ebx, %ebx
	je	.LBB10_25
# BB#19:                                # %for.body.6.lr.ph.i
                                        #   in Loop: Header=BB10_10 Depth=1
	leal	-1(%rbx), %r9d
	xorl	%ebp, %ebp
	testb	$3, %bl
	je	.LBB10_22
# BB#20:                                # %for.body.6.i.prol.preheader
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	%ebx, %eax
	andl	$3, %eax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_21:                              # %for.body.6.i.prol
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	1076(%rcx), %edx
	subl	%edx, (%rdi)
	addq	$4, %rdi
	incl	%ebp
	cmpl	%ebp, %eax
	jne	.LBB10_21
.LBB10_22:                              # %for.body.6.lr.ph.i.split
                                        #   in Loop: Header=BB10_10 Depth=1
	cmpl	$3, %r9d
	jb	.LBB10_25
# BB#23:                                # %for.body.6.lr.ph.i.split.split
                                        #   in Loop: Header=BB10_10 Depth=1
	subl	%ebp, %ebx
	.align	16, 0x90
.LBB10_24:                              # %for.body.6.i
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	1076(%rcx), %eax
	subl	%eax, (%rdi)
	movl	1076(%rcx), %eax
	subl	%eax, 4(%rdi)
	movl	1076(%rcx), %eax
	subl	%eax, 8(%rdi)
	movl	1076(%rcx), %eax
	subl	%eax, 12(%rdi)
	addq	$16, %rdi
	addl	$-4, %ebx
	jne	.LBB10_24
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_11:                              # %for.cond.8.preheader.i
                                        #   in Loop: Header=BB10_10 Depth=1
	testl	%ebx, %ebx
	je	.LBB10_25
# BB#12:                                # %for.body.10.lr.ph.i
                                        #   in Loop: Header=BB10_10 Depth=1
	leal	-1(%rbx), %r9d
	xorl	%ebp, %ebp
	testb	$3, %bl
	je	.LBB10_15
# BB#13:                                # %for.body.10.i.prol.preheader
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	%ebx, %eax
	andl	$3, %eax
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_14:                              # %for.body.10.i.prol
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	subl	1076(%rcx), %edx
	shll	$11, %edx
	movl	%edx, (%rdi)
	addq	$4, %rdi
	incl	%ebp
	cmpl	%ebp, %eax
	jne	.LBB10_14
.LBB10_15:                              # %for.body.10.lr.ph.i.split
                                        #   in Loop: Header=BB10_10 Depth=1
	cmpl	$3, %r9d
	jb	.LBB10_25
# BB#16:                                # %for.body.10.lr.ph.i.split.split
                                        #   in Loop: Header=BB10_10 Depth=1
	subl	%ebp, %ebx
	.align	16, 0x90
.LBB10_17:                              # %for.body.10.i
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %eax
	subl	1076(%rcx), %eax
	shll	$11, %eax
	movl	%eax, (%rdi)
	movl	4(%rdi), %eax
	subl	1076(%rcx), %eax
	shll	$11, %eax
	movl	%eax, 4(%rdi)
	movl	8(%rdi), %eax
	subl	1076(%rcx), %eax
	shll	$11, %eax
	movl	%eax, 8(%rdi)
	movl	12(%rdi), %eax
	subl	1076(%rcx), %eax
	shll	$11, %eax
	movl	%eax, 12(%rdi)
	addq	$16, %rdi
	addl	$-4, %ebx
	jne	.LBB10_17
	.align	16, 0x90
.LBB10_25:                              # %if.end.i
                                        #   in Loop: Header=BB10_10 Depth=1
	addq	$1080, %rcx             # imm = 0x438
	addq	$56, %rsi
	incl	%r10d
	movl	16(%r15), %edi
	cmpl	%edi, %r10d
	jb	.LBB10_10
# BB#26:
	movq	%r13, 56(%rsp)          # 8-byte Spill
	jmp	.LBB10_27
.LBB10_8:                               # %if.end.opj_tcd_dc_level_shift_encode.exit_crit_edge
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movq	24(%r15), %r14
	movq	48(%r12), %r8
	xorl	%edi, %edi
.LBB10_27:                              # %opj_tcd_dc_level_shift_encode.exit
	movl	16(%r8), %eax
	testl	%eax, %eax
	je	.LBB10_43
# BB#28:                                # %opj_tcd_dc_level_shift_encode.exit
	movl	8(%r14), %ecx
	movl	12(%r14), %ebx
	subl	(%r14), %ecx
	subl	4(%r14), %ebx
	imull	%ecx, %ebx
	cmpl	$2, %eax
	jne	.LBB10_40
# BB#29:                                # %if.then.7.i
	cmpq	$0, 5632(%r8)
	je	.LBB10_43
# BB#30:                                # %if.end.11.i
	movl	%edi, %edi
	shlq	$3, %rdi
	callq	malloc
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB10_72
# BB#31:                                # %for.cond.preheader.i
	movl	16(%r15), %ebp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	movl	$0, %ecx
	je	.LBB10_39
# BB#32:                                # %for.body.lr.ph.i.73
	leaq	-1(%rbp), %rcx
	xorl	%edx, %edx
	testb	$3, %bpl
	je	.LBB10_35
# BB#33:                                # %for.body.i.76.prol.preheader
	movl	%ebp, %esi
	andl	$3, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB10_34:                              # %for.body.i.76.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%r14), %rdi
	movq	%rdi, (%rax,%rdx,8)
	addq	$56, %r14
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB10_34
.LBB10_35:                              # %for.body.lr.ph.i.73.split
	cmpq	$3, %rcx
	jb	.LBB10_38
# BB#36:                                # %for.body.lr.ph.i.73.split.split
	movq	%rbp, %rcx
	subq	%rdx, %rcx
	leaq	24(%rax,%rdx,8), %rdx
	addq	$208, %r14
	.align	16, 0x90
.LBB10_37:                              # %for.body.i.76
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%r14), %rsi
	movq	%rsi, -24(%rdx)
	movq	-112(%r14), %rsi
	movq	%rsi, -16(%rdx)
	movq	-56(%r14), %rsi
	movq	%rsi, -8(%rdx)
	movq	(%r14), %rsi
	movq	%rsi, (%rdx)
	addq	$32, %rdx
	addq	$224, %r14
	addq	$-4, %rcx
	jne	.LBB10_37
.LBB10_38:
	movl	%ebp, %ecx
.LBB10_39:                              # %for.end.i
	movq	32(%r12), %rsi
	movq	48(%r12), %rdx
	movq	5632(%rdx), %rdi
	movq	24(%rsi), %rdx
	movl	32(%rdx), %r8d
	movl	%ebx, %esi
	movq	%rax, %rdx
	movq	%rax, %rbx
	callq	opj_mct_encode_custom
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	free
	testl	%ebp, %ebp
	jne	.LBB10_43
	jmp	.LBB10_72
.LBB10_40:                              # %if.else.i
	movq	5584(%r8), %rax
	movq	40(%r14), %rdi
	movq	96(%r14), %rsi
	movq	152(%r14), %rdx
	cmpl	$0, 20(%rax)
	je	.LBB10_41
# BB#42:                                # %if.else.44.i
	movl	%ebx, %ecx
	callq	opj_mct_encode
	jmp	.LBB10_43
.LBB10_41:                              # %if.then.34.i
	movl	%ebx, %ecx
	callq	opj_mct_encode_real
.LBB10_43:                              # %if.end.60
	movq	24(%r12), %rax
	movq	(%rax), %r14
	cmpl	$0, 16(%r14)
	je	.LBB10_51
# BB#44:                                # %for.body.lr.ph.i.87
	movq	48(%r12), %rax
	movq	5584(%rax), %rbx
	movq	24(%r14), %r15
	addq	$20, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_45:                              # %for.body.i.89
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	testl	%eax, %eax
	jne	.LBB10_46
# BB#48:                                # %if.then.7.i.92
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	%r15, %rdi
	callq	opj_dwt_encode_real
	jmp	.LBB10_49
	.align	16, 0x90
.LBB10_46:                              # %for.body.i.89
                                        #   in Loop: Header=BB10_45 Depth=1
	cmpl	$1, %eax
	jne	.LBB10_50
# BB#47:                                # %if.then.i
                                        #   in Loop: Header=BB10_45 Depth=1
	movq	%r15, %rdi
	callq	opj_dwt_encode
.LBB10_49:                              # %if.then.7.i.92
                                        #   in Loop: Header=BB10_45 Depth=1
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB10_72
.LBB10_50:                              # %if.end.13.i
                                        #   in Loop: Header=BB10_45 Depth=1
	addq	$56, %r15
	incl	%ebp
	addq	$1080, %rbx             # imm = 0x438
	cmpl	16(%r14), %ebp
	jb	.LBB10_45
.LBB10_51:                              # %if.end.64
	movq	48(%r12), %r14
	callq	opj_t1_create
	movq	%rax, %rbp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	je	.LBB10_72
# BB#52:                                # %if.end.i.101
	cmpl	$1, 16(%r14)
	jne	.LBB10_57
# BB#53:                                # %if.then.2.i
	movq	5584(%r14), %rax
	cmpl	$0, 20(%rax)
	je	.LBB10_54
# BB#56:                                # %if.else.i.105
	callq	opj_mct_get_mct_norms
	movq	%rax, %rcx
	jmp	.LBB10_58
.LBB10_57:                              # %if.else.8.i
	movq	5616(%r14), %rcx
	jmp	.LBB10_58
.LBB10_54:                              # %if.then.4.i
	callq	opj_mct_get_mct_norms_real
	movq	%rax, %rcx
.LBB10_58:                              # %opj_tcd_t1_encode.exit
	movl	80(%rsp), %r15d         # 4-byte Reload
	movq	24(%r12), %rax
	movq	(%rax), %rsi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	opj_t1_encode_cblks
	movl	%eax, %r14d
	movq	%rbp, %rdi
	callq	opj_t1_destroy
	testl	%r14d, %r14d
	je	.LBB10_72
# BB#59:                                # %if.end.68
	movq	64(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	movq	40(%r12), %rax
	movl	$0, 84(%rsp)
	je	.LBB10_61
# BB#60:                                # %if.then.i.113
	movl	$0, 12(%rbp)
.LBB10_61:                              # %if.end.i.114
	testb	$5, 129(%rax)
	movq	72(%rsp), %r14          # 8-byte Reload
	je	.LBB10_63
# BB#62:                                # %if.then.8.i
	leaq	84(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %ecx
	movq	%rbp, %r8
	callq	opj_tcd_rateallocate
	testl	%eax, %eax
	jne	.LBB10_66
	jmp	.LBB10_72
.LBB10_63:                              # %if.else.i.117
	movq	48(%r12), %rax
	cmpl	$0, 8(%rax)
	je	.LBB10_66
# BB#64:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB10_65:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	opj_tcd_makelayer_fixed
	incl	%ebx
	movq	48(%r12), %rax
	cmpl	8(%rax), %ebx
	jb	.LBB10_65
.LBB10_66:                              # %opj_tcd_rate_allocate_encode.exit
	movq	56(%rsp), %r13          # 8-byte Reload
.LBB10_67:                              # %if.end.73
	movq	%r12, %rax
	movq	%r13, %r12
	testq	%rbp, %rbp
	je	.LBB10_69
# BB#68:                                # %if.then.75
	movl	$1, 12(%rbp)
.LBB10_69:                              # %if.end.76
	movq	%rbp, %r13
	movq	%rax, %rbp
	movq	32(%rbp), %rdi
	movq	40(%rbp), %rsi
	callq	opj_t2_create
	movq	%rax, %rbx
	movb	$1, %al
	testq	%rbx, %rbx
	je	.LBB10_71
# BB#70:                                # %if.end.i.60
	movl	56(%rbp), %esi
	movq	24(%rbp), %rax
	movq	(%rax), %rdx
	movq	48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	(%rbp), %eax
	movl	4(%rbp), %edi
	movl	16(%rbp), %ebp
	movl	%ebp, 32(%rsp)
	movl	%eax, 24(%rsp)
	movl	%edi, 16(%rsp)
	movq	%r13, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$1, 40(%rsp)
	movq	%rbx, %rdi
	movq	%r14, %r8
	movq	%r12, %r9
	callq	opj_t2_encode_packets
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	opj_t2_destroy
	testl	%ebp, %ebp
	sete	%al
.LBB10_71:                              # %opj_tcd_t2_encode.exit
	movzbl	%al, %r13d
	xorl	$1, %r13d
.LBB10_72:                              # %return
	movl	%r13d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	opj_tcd_encode_tile, .Lfunc_end10-opj_tcd_encode_tile
	.cfi_endproc

	.globl	opj_tcd_decode_tile
	.align	16, 0x90
	.type	opj_tcd_decode_tile,@function
opj_tcd_decode_tile:                    # @opj_tcd_decode_tile
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
	subq	$104, %rsp
.Ltmp117:
	.cfi_def_cfa_offset 160
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
	movq	%r8, %r12
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	%ecx, 56(%rbx)
	movl	%ecx, %eax
	movq	40(%rbx), %rsi
	imulq	$5680, %rax, %rax       # imm = 0x1630
	addq	96(%rsi), %rax
	movq	%rax, 48(%rbx)
	movl	$0, 100(%rsp)
	movq	32(%rbx), %rdi
	callq	opj_t2_create
	movq	%rax, %rbp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	je	.LBB11_63
# BB#1:                                 # %opj_tcd_t2_decode.exit
	movl	56(%rbx), %esi
	movq	24(%rbx), %rax
	movq	(%rax), %rdx
	movq	%r12, (%rsp)
	leaq	100(%rsp), %r8
	movq	%rbp, %rdi
	movq	%r15, %rcx
	movl	%r14d, %r9d
	callq	opj_t2_decode_packets
	movl	%eax, %r14d
	movq	%rbp, %rdi
	callq	opj_t2_destroy
	testl	%r14d, %r14d
	je	.LBB11_63
# BB#2:                                 # %if.end
	movq	24(%rbx), %rax
	movq	48(%rbx), %rcx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	(%rax), %r15
	movq	24(%r15), %r12
	movq	5584(%rcx), %rbp
	callq	opj_t1_create
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB11_63
# BB#3:                                 # %for.cond.preheader.i
	cmpl	$0, 16(%r15)
	je	.LBB11_8
# BB#4:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB11_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	opj_t1_decode_cblks
	testl	%eax, %eax
	je	.LBB11_6
# BB#7:                                 # %if.end.5.i
                                        #   in Loop: Header=BB11_5 Depth=1
	addq	$56, %r12
	addq	$1080, %rbp             # imm = 0x438
	incl	%ebx
	cmpl	16(%r15), %ebx
	jb	.LBB11_5
.LBB11_8:                               # %if.end.4
	movq	%r14, %rdi
	callq	opj_t1_destroy
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	24(%rcx), %rax
	movq	(%rax), %r12
	cmpl	$0, 16(%r12)
	je	.LBB11_16
# BB#9:                                 # %for.body.lr.ph.i
	movq	32(%rcx), %rax
	movq	48(%rcx), %rcx
	movq	24(%rax), %r14
	movq	5584(%rcx), %rbp
	movq	24(%r12), %rbx
	addq	$36, %r14
	addq	$20, %rbp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB11_10:                              # %for.body.i.24
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14), %esi
	incl	%esi
	cmpl	$1, (%rbp)
	jne	.LBB11_12
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB11_10 Depth=1
	movq	%rbx, %rdi
	callq	opj_dwt_decode
	jmp	.LBB11_13
	.align	16, 0x90
.LBB11_12:                              # %if.else.i
                                        #   in Loop: Header=BB11_10 Depth=1
	movq	%rbx, %rdi
	callq	opj_dwt_decode_real
.LBB11_13:                              # %if.else.i
                                        #   in Loop: Header=BB11_10 Depth=1
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB11_63
# BB#14:                                # %if.end.10.i
                                        #   in Loop: Header=BB11_10 Depth=1
	addq	$56, %rbx
	incl	%r15d
	addq	$64, %r14
	addq	$1080, %rbp             # imm = 0x438
	cmpl	16(%r12), %r15d
	jb	.LBB11_10
# BB#15:                                # %if.end.8.loopexit
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	24(%rcx), %rax
	movq	(%rax), %r12
.LBB11_16:                              # %if.end.8
	movq	48(%rcx), %rbx
	movq	%rcx, %r15
	movl	16(%rbx), %eax
	testl	%eax, %eax
	je	.LBB11_37
# BB#17:                                # %if.end.i.37
	movl	16(%r12), %edx
	cmpq	$3, %rdx
	jb	.LBB11_36
# BB#18:                                # %lor.lhs.false.i
	movq	24(%r12), %rbp
	movl	8(%rbp), %ecx
	movl	12(%rbp), %r14d
	subl	(%rbp), %ecx
	subl	4(%rbp), %r14d
	imull	%ecx, %r14d
	movq	64(%rbp), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	56(%rbp), %xmm1         # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %ecx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	imull	%ecx, %esi
	cmpl	%r14d, %esi
	jl	.LBB11_20
# BB#19:                                # %lor.lhs.false.34.i
	movq	120(%rbp), %xmm0        # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	112(%rbp), %xmm1        # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %ecx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	imull	%ecx, %esi
	cmpl	%r14d, %esi
	jge	.LBB11_21
.LBB11_20:                              # %if.then.51.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB11_37
.LBB11_6:                               # %if.then.4.i
	movq	%r14, %rdi
	callq	opj_t1_destroy
	xorl	%r13d, %r13d
	jmp	.LBB11_63
.LBB11_36:                              # %if.else.106.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB11_37:                              # %if.end.12
	movq	24(%r15), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	$1, %r13d
	cmpl	$0, 16(%rax)
	je	.LBB11_63
# BB#38:                                # %for.body.lr.ph.i.55
	movq	32(%r15), %rax
	movq	48(%r15), %rcx
	movq	24(%rax), %rdi
	movq	5584(%rcx), %rbx
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rbp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_39:                              # %for.body.i.62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_47 Depth 2
                                        #       Child Loop BB11_59 Depth 3
                                        #     Child Loop BB11_51 Depth 2
                                        #       Child Loop BB11_56 Depth 3
	movq	24(%rbp), %rax
	movl	36(%rdi), %ecx
	imulq	$176, %rcx, %rcx
	movl	8(%rax,%rcx), %r13d
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movl	(%rax,%rcx), %edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	4(%rax,%rcx), %r8d
	movl	12(%rax,%rcx), %r9d
	movl	8(%rbp), %r10d
	subl	(%rbp), %r10d
	movl	%r9d, %eax
	subl	%r8d, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	je	.LBB11_41
# BB#40:                                # %lor.lhs.false.i.63
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	48(%rbp), %eax
	xorl	%edx, %edx
	divl	88(%rsp)                # 4-byte Folded Reload
	cmpl	%eax, %r10d
	ja	.LBB11_64
.LBB11_41:                              # %cond.end.i
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	%r13d, %eax
	subl	76(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$0, 32(%rdi)
	movl	24(%rdi), %ecx
	je	.LBB11_43
# BB#42:                                # %if.then.i.67
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	decl	%ecx
	movl	$1, %r14d
	shll	%cl, %r14d
	movl	%r14d, %r15d
	negl	%r15d
	jmp	.LBB11_44
	.align	16, 0x90
.LBB11_43:                              # %if.else.i.68
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	$1, %r14d
	shll	%cl, %r14d
	xorl	%r15d, %r15d
.LBB11_44:                              # %if.end.i.71
                                        #   in Loop: Header=BB11_39 Depth=1
	subl	72(%rsp), %r10d         # 4-byte Folded Reload
	decl	%r14d
	movq	40(%rbp), %rdi
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$1, 20(%rbx)
	jne	.LBB11_45
# BB#49:                                # %for.cond.20.preheader.i
                                        #   in Loop: Header=BB11_39 Depth=1
	cmpl	%r8d, %r9d
	je	.LBB11_62
# BB#50:                                # %for.cond.23.preheader.lr.ph.i
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	%r10d, %r12d
	leal	-1(%r13), %r9d
	movl	%r9d, %r10d
	movl	76(%rsp), %eax          # 4-byte Reload
	subl	%eax, %r10d
	movl	%r13d, %r11d
	subl	%eax, %r11d
	movl	%r11d, 80(%rsp)         # 4-byte Spill
	andl	$1, %r11d
	xorl	%esi, %esi
	.align	16, 0x90
.LBB11_51:                              # %for.cond.23.preheader.i
                                        #   Parent Loop BB11_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_56 Depth 3
	cmpl	%eax, %r13d
	je	.LBB11_58
# BB#52:                                # %for.body.25.i.preheader
                                        #   in Loop: Header=BB11_51 Depth=2
	xorl	%edx, %edx
	testl	%r11d, %r11d
	movq	%rdi, %rbp
	je	.LBB11_54
# BB#53:                                # %for.body.25.i.prol
                                        #   in Loop: Header=BB11_51 Depth=2
	movl	1076(%rbx), %ecx
	addl	(%rdi), %ecx
	cmpl	%r14d, %ecx
	movl	%ecx, %edx
	cmovgl	%r14d, %edx
	cmpl	%r15d, %ecx
	cmovll	%r15d, %edx
	movl	%edx, (%rdi)
	leaq	4(%rdi), %rbp
	movl	$1, %edx
.LBB11_54:                              # %for.body.25.i.preheader.split
                                        #   in Loop: Header=BB11_51 Depth=2
	movq	%rdi, %r8
	cmpl	%eax, %r9d
	je	.LBB11_57
# BB#55:                                # %for.body.25.i.preheader.split.split
                                        #   in Loop: Header=BB11_51 Depth=2
	movl	80(%rsp), %ecx          # 4-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB11_56:                              # %for.body.25.i
                                        #   Parent Loop BB11_39 Depth=1
                                        #     Parent Loop BB11_51 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	1076(%rbx), %edi
	addl	(%rbp), %edi
	cmpl	%r14d, %edi
	movl	%edi, %edx
	cmovgl	%r14d, %edx
	cmpl	%r15d, %edi
	cmovll	%r15d, %edx
	movl	%edx, (%rbp)
	movl	1076(%rbx), %edx
	addl	4(%rbp), %edx
	cmpl	%r14d, %edx
	movl	%edx, %edi
	cmovgl	%r14d, %edi
	cmpl	%r15d, %edx
	cmovll	%r15d, %edi
	movl	%edi, 4(%rbp)
	addq	$8, %rbp
	addl	$-2, %ecx
	jne	.LBB11_56
.LBB11_57:                              # %for.cond.23.for.end_crit_edge.i
                                        #   in Loop: Header=BB11_51 Depth=2
	movq	%r8, %rdi
	leaq	4(%rdi,%r10,4), %rdi
.LBB11_58:                              # %for.end.i.74
                                        #   in Loop: Header=BB11_51 Depth=2
	leaq	(%rdi,%r12,4), %rdi
	incl	%esi
	cmpl	88(%rsp), %esi          # 4-byte Folded Reload
	jne	.LBB11_51
	jmp	.LBB11_62
	.align	16, 0x90
.LBB11_45:                              # %for.cond.33.preheader.i
                                        #   in Loop: Header=BB11_39 Depth=1
	cmpl	%r8d, %r9d
	je	.LBB11_62
# BB#46:                                # %for.cond.36.preheader.lr.ph.i
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	%r10d, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	-1(%r13), %eax
	subl	76(%rsp), %eax          # 4-byte Folded Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB11_47:                              # %for.cond.36.preheader.i
                                        #   Parent Loop BB11_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_59 Depth 3
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	cmpl	76(%rsp), %r13d         # 4-byte Folded Reload
	movl	72(%rsp), %ebp          # 4-byte Reload
	movq	%rdi, %r13
	jne	.LBB11_59
# BB#48:                                #   in Loop: Header=BB11_47 Depth=2
	movq	80(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB11_61
	.align	16, 0x90
.LBB11_59:                              # %for.body.38.i
                                        #   Parent Loop BB11_39 Depth=1
                                        #     Parent Loop BB11_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%r13), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	lrintf
	addl	1076(%rbx), %eax
	cmpl	%r14d, %eax
	movl	%eax, %ecx
	cmovgl	%r14d, %ecx
	cmpl	%r15d, %eax
	cmovll	%r15d, %ecx
	movl	%ecx, (%r13)
	addq	$4, %r13
	decl	%ebp
	jne	.LBB11_59
# BB#60:                                # %for.cond.36.for.end.47_crit_edge.i
                                        #   in Loop: Header=BB11_47 Depth=2
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	4(%rdi,%rax,4), %rdi
.LBB11_61:                              # %for.end.47.i
                                        #   in Loop: Header=BB11_47 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rdi,%rax,4), %rdi
	incl	%r12d
	cmpl	88(%rsp), %r12d         # 4-byte Folded Reload
	movq	64(%rsp), %r13          # 8-byte Reload
	jne	.LBB11_47
.LBB11_62:                              # %if.end.53.i
                                        #   in Loop: Header=BB11_39 Depth=1
	movq	32(%rsp), %rdi          # 8-byte Reload
	addq	$64, %rdi
	addq	$1080, %rbx             # imm = 0x438
	movq	40(%rsp), %rbp          # 8-byte Reload
	addq	$56, %rbp
	movl	28(%rsp), %esi          # 4-byte Reload
	incl	%esi
	movl	$1, %r13d
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	16(%rax), %esi
	jb	.LBB11_39
	jmp	.LBB11_63
.LBB11_21:                              # %if.else.i.39
	cmpl	$2, %eax
	jne	.LBB11_33
# BB#22:                                # %if.then.54.i
	cmpq	$0, 5624(%rbx)
	je	.LBB11_37
# BB#23:                                # %cond.false.i
	shlq	$3, %rdx
	movq	%rdx, %rdi
	callq	malloc
	movq	%r12, %rcx
	movq	%rax, %r12
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB11_63
# BB#24:                                # %for.cond.preheader.i.40
	movl	16(%rcx), %eax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB11_32
# BB#25:                                # %for.body.lr.ph.i.41
	leaq	-1(%rax), %rcx
	xorl	%edx, %edx
	testb	$3, %al
	je	.LBB11_28
# BB#26:                                # %for.body.i.43.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorl	%edx, %edx
.LBB11_27:                              # %for.body.i.43.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rbp), %rdi
	movq	%rdi, (%r12,%rdx,8)
	addq	$56, %rbp
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB11_27
.LBB11_28:                              # %for.body.lr.ph.i.41.split
	cmpq	$3, %rcx
	jb	.LBB11_31
# BB#29:                                # %for.body.lr.ph.i.41.split.split
	movq	%rax, %rcx
	subq	%rdx, %rcx
	leaq	24(%r12,%rdx,8), %rdx
	addq	$208, %rbp
.LBB11_30:                              # %for.body.i.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rsi
	movq	%rsi, -24(%rdx)
	movq	-112(%rbp), %rsi
	movq	%rsi, -16(%rdx)
	movq	-56(%rbp), %rsi
	movq	%rsi, -8(%rdx)
	movq	(%rbp), %rsi
	movq	%rsi, (%rdx)
	addq	$32, %rdx
	addq	$224, %rbp
	addq	$-4, %rcx
	jne	.LBB11_30
.LBB11_31:
	movl	%eax, %ecx
.LBB11_32:                              # %cleanup.i
	movq	5624(%rbx), %rdi
	movq	32(%r15), %rax
	movq	24(%rax), %rax
	movl	32(%rax), %r8d
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	opj_mct_decode_custom
	movl	%eax, %ebx
	movq	%r12, %rdi
	callq	free
	testl	%ebx, %ebx
	jne	.LBB11_37
.LBB11_63:                              # %cleanup
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_33:                              # %if.else.80.i
	movq	5584(%rbx), %rax
	movq	40(%rbp), %rdi
	cmpl	$1, 20(%rax)
	jne	.LBB11_35
# BB#34:                                # %if.then.83.i
	movq	96(%rbp), %rsi
	movq	152(%rbp), %rdx
	movl	%r14d, %ecx
	callq	opj_mct_decode
	jmp	.LBB11_37
.LBB11_35:                              # %if.else.93.i
	movq	96(%rbp), %rsi
	movq	152(%rbp), %rdx
	movl	%r14d, %ecx
	callq	opj_mct_decode_real
	jmp	.LBB11_37
.LBB11_64:                              # %cond.false.i.64
	movl	$.L.str.9, %edi
	movl	$.L.str.10, %esi
	movl	$1668, %edx             # imm = 0x684
	movl	$.L__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode, %ecx
	callq	__assert_fail
.Lfunc_end11:
	.size	opj_tcd_decode_tile, .Lfunc_end11-opj_tcd_decode_tile
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI12_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	opj_tcd_update_tile_data
	.align	16, 0x90
	.type	opj_tcd_update_tile_data,@function
opj_tcd_update_tile_data:               # @opj_tcd_update_tile_data
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
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsi, %r11
	movq	%rdi, -56(%rsp)         # 8-byte Spill
	movq	32(%rdi), %r8
	movl	16(%r8), %r9d
	testl	%r9d, %r9d
	je	.LBB12_113
# BB#1:                                 # %for.body.lr.ph.i
	movq	24(%r8), %rax
	movq	24(%rdi), %rsi
	movq	(%rsi), %rsi
	movq	24(%rsi), %rsi
	addq	$24, %rsi
	addq	$24, %rax
	xorl	%r14d, %r14d
	movl	$4, %r10d
	movl	%r9d, %r15d
	.align	16, 0x90
.LBB12_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ebx
	movl	%ebx, %ecx
	shrl	$3, %ecx
	andl	$7, %ebx
	cmpl	$1, %ebx
	sbbl	$-1, %ecx
	cmpl	$3, %ecx
	cmovel	%r10d, %ecx
	movq	(%rsi), %rbx
	movl	-4(%rsi), %ebp
	imulq	$176, %rbp, %rbp
	movq	-168(%rbx,%rbp), %xmm0  # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	-176(%rbx,%rbp), %xmm1  # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %ebx
	imull	%ecx, %ebx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ecx
	imull	%ebx, %ecx
	addl	%ecx, %r14d
	addq	$56, %rsi
	addq	$64, %rax
	decl	%r15d
	jne	.LBB12_2
# BB#3:                                 # %opj_tcd_get_decoded_tile_size.exit
	cmpl	%edx, %r14d
	setbe	%al
	movzbl	%al, %eax
	ja	.LBB12_114
# BB#4:                                 # %opj_tcd_get_decoded_tile_size.exit
	testl	%r9d, %r9d
	je	.LBB12_114
# BB#5:                                 # %for.body.lr.ph
	movq	24(%r8), %rbp
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rbx
	xorl	%ecx, %ecx
	movdqa	.LCPI12_0(%rip), %xmm0  # xmm0 = [255,255,255,255]
	jmp	.LBB12_6
.LBB12_13:                              # %for.cond.30.preheader
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	subl	%r8d, %r15d
	je	.LBB12_112
# BB#14:                                # %for.cond.34.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	%eax, %r10d
	leal	-1(%r9), %r12d
	subl	%r14d, %r12d
	leaq	1(%r12), %r8
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r8
	leaq	-8(%r8), %rax
	shrq	$3, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB12_15:                              # %for.cond.34.preheader
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_45 Depth 3
                                        #       Child Loop BB12_50 Depth 3
                                        #       Child Loop BB12_53 Depth 3
	cmpl	%r14d, %r9d
	je	.LBB12_55
# BB#16:                                # %for.body.37.lr.ph
                                        #   in Loop: Header=BB12_15 Depth=2
	xorl	%eax, %eax
	testq	%r8, %r8
	movq	%r13, %rdx
	movq	%r11, %rcx
	movq	%rcx, %rsi
	movl	$0, %ebp
	je	.LBB12_47
# BB#17:                                # %vector.memcheck
                                        #   in Loop: Header=BB12_15 Depth=2
	leaq	(%r13,%r12,4), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	ja	.LBB12_19
# BB#18:                                # %vector.memcheck
                                        #   in Loop: Header=BB12_15 Depth=2
	leaq	(%rcx,%r12), %rdx
	cmpq	%rdx, %r13
	movq	%r13, %rdx
	movq	%rcx, %rsi
	movl	$0, %ebp
	jbe	.LBB12_47
.LBB12_19:                              # %vector.body.preheader
                                        #   in Loop: Header=BB12_15 Depth=2
	cmpq	$0, -64(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB12_21
# BB#20:                                # %vector.body.prol
                                        #   in Loop: Header=BB12_15 Depth=2
	movdqu	(%r13), %xmm1
	movdqu	16(%r13), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rcx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, 4(%rcx)
	movl	$8, %eax
.LBB12_21:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB12_15 Depth=2
	leaq	(%r13,%r8,4), %rdx
	leaq	(%rcx,%r8), %rsi
	cmpq	$0, -48(%rsp)           # 8-byte Folded Reload
	je	.LBB12_22
# BB#44:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB12_15 Depth=2
	movq	%r10, %r11
	movq	%r8, %rbp
	subq	%rax, %rbp
	leaq	12(%rcx,%rax), %rbx
	leaq	48(%r13,%rax,4), %r10
	.align	16, 0x90
.LBB12_45:                              # %vector.body
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%r10), %xmm1
	movdqu	-32(%r10), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -12(%rbx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rbx)
	movdqu	-16(%r10), %xmm1
	movdqu	(%r10), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rbx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rbx)
	addq	$16, %rbx
	addq	$64, %r10
	addq	$-16, %rbp
	jne	.LBB12_45
# BB#46:                                #   in Loop: Header=BB12_15 Depth=2
	movq	%r8, %rax
	movl	%r8d, %ebp
	movq	%r11, %r10
	jmp	.LBB12_47
.LBB12_22:                              #   in Loop: Header=BB12_15 Depth=2
	movq	%r8, %rax
	movl	%r8d, %ebp
	.align	16, 0x90
.LBB12_47:                              # %middle.block
                                        #   in Loop: Header=BB12_15 Depth=2
	incq	%rcx
	movq	%rcx, %r11
	addq	$4, %r13
	cmpq	%rax, -16(%rsp)         # 8-byte Folded Reload
	je	.LBB12_54
# BB#48:                                # %for.body.37.preheader
                                        #   in Loop: Header=BB12_15 Depth=2
	movl	-4(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	movl	%r12d, %ebx
	subl	%ebp, %ebx
	testb	$7, %al
	je	.LBB12_51
# BB#49:                                # %for.body.37.prol.preheader
                                        #   in Loop: Header=BB12_15 Depth=2
	andl	$7, %eax
	negl	%eax
	.align	16, 0x90
.LBB12_50:                              # %for.body.37.prol
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdx), %cl
	addq	$4, %rdx
	movb	%cl, (%rsi)
	incq	%rsi
	incl	%ebp
	incl	%eax
	jne	.LBB12_50
.LBB12_51:                              # %for.body.37.preheader.split
                                        #   in Loop: Header=BB12_15 Depth=2
	cmpl	$7, %ebx
	jb	.LBB12_54
# BB#52:                                # %for.body.37.preheader.split.split
                                        #   in Loop: Header=BB12_15 Depth=2
	movl	-4(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	.align	16, 0x90
.LBB12_53:                              # %for.body.37
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rdx), %cl
	movb	%cl, (%rsi)
	movb	4(%rdx), %cl
	movb	%cl, 1(%rsi)
	movb	8(%rdx), %cl
	movb	%cl, 2(%rsi)
	movb	12(%rdx), %cl
	movb	%cl, 3(%rsi)
	movb	16(%rdx), %cl
	movb	%cl, 4(%rsi)
	movb	20(%rdx), %cl
	movb	%cl, 5(%rsi)
	movb	24(%rdx), %cl
	movb	%cl, 6(%rsi)
	movb	28(%rdx), %cl
	movb	%cl, 7(%rsi)
	addq	$32, %rdx
	addq	$8, %rsi
	addl	$-8, %eax
	jne	.LBB12_53
.LBB12_54:                              # %for.cond.34.for.end.44_crit_edge
                                        #   in Loop: Header=BB12_15 Depth=2
	addq	%r12, %r11
	leaq	(%r13,%r12,4), %r13
.LBB12_55:                              # %for.end.44
                                        #   in Loop: Header=BB12_15 Depth=2
	leaq	(%r13,%r10,4), %r13
	incl	%edi
	cmpl	%r15d, %edi
	jne	.LBB12_15
	jmp	.LBB12_112
	.align	16, 0x90
.LBB12_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_24 Depth 2
                                        #       Child Loop BB12_33 Depth 3
                                        #       Child Loop BB12_38 Depth 3
                                        #       Child Loop BB12_41 Depth 3
                                        #     Child Loop BB12_15 Depth 2
                                        #       Child Loop BB12_45 Depth 3
                                        #       Child Loop BB12_50 Depth 3
                                        #       Child Loop BB12_53 Depth 3
                                        #     Child Loop BB12_59 Depth 2
                                        #       Child Loop BB12_70 Depth 3
                                        #       Child Loop BB12_74 Depth 3
                                        #     Child Loop BB12_67 Depth 2
                                        #       Child Loop BB12_83 Depth 3
                                        #       Child Loop BB12_87 Depth 3
                                        #     Child Loop BB12_92 Depth 2
                                        #       Child Loop BB12_100 Depth 3
                                        #       Child Loop BB12_105 Depth 3
                                        #       Child Loop BB12_108 Depth 3
	movl	24(%rbp), %r10d
	movl	36(%rbp), %eax
	movl	%r10d, %edx
	shrl	$3, %edx
	andl	$7, %r10d
	movq	24(%rbx), %rdi
	imulq	$176, %rax, %rax
	movl	8(%rdi,%rax), %r9d
	movl	(%rdi,%rax), %r14d
	movl	4(%rdi,%rax), %r8d
	movl	%r9d, %esi
	subl	%r14d, %esi
	movl	%esi, -4(%rsp)          # 4-byte Spill
	movl	12(%rdi,%rax), %r15d
	movl	8(%rbx), %eax
	subl	(%rbx), %eax
	subl	%esi, %eax
	cmpl	$1, %r10d
	sbbl	$-1, %edx
	cmpl	$3, %edx
	movl	$4, %esi
	cmovel	%esi, %edx
	cmpl	$4, %edx
	je	.LBB12_90
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB12_6 Depth=1
	cmpl	$2, %edx
	jne	.LBB12_8
# BB#56:                                # %sw.bb.51
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	%r15d, %r12d
	movq	40(%rbx), %r10
	cmpl	$0, 32(%rbp)
	je	.LBB12_65
# BB#57:                                # %for.cond.58.preheader
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	%r14d, %r15d
	movq	%r9, %r14
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	subl	%r8d, %r12d
	movq	%r11, %r8
	je	.LBB12_111
# BB#58:                                # %for.cond.62.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	%eax, %ebp
	movq	%rbp, -64(%rsp)         # 8-byte Spill
	leal	-1(%r14), %r13d
	subl	%r15d, %r13d
	leaq	1(%r13), %r9
	movq	%r9, %r11
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r11
	leaq	-8(%r11), %rax
	shrq	$3, %rax
	movq	%rax, -16(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB12_59:                              # %for.cond.62.preheader
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_70 Depth 3
                                        #       Child Loop BB12_74 Depth 3
	cmpl	%r15d, %r14d
	je	.LBB12_76
# BB#60:                                # %for.body.65.lr.ph
                                        #   in Loop: Header=BB12_59 Depth=2
	xorl	%ecx, %ecx
	testq	%r11, %r11
	movq	%r8, %rax
	movq	%r10, %rbx
	movl	$0, %edi
	je	.LBB12_72
# BB#61:                                # %vector.body367.preheader
                                        #   in Loop: Header=BB12_59 Depth=2
	cmpq	$0, -48(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB12_63
# BB#62:                                # %vector.body367.prol
                                        #   in Loop: Header=BB12_59 Depth=2
	movdqu	(%r10), %xmm1
	movdqu	16(%r10), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, 8(%r8)
	movl	$8, %edx
.LBB12_63:                              # %vector.body367.preheader.split
                                        #   in Loop: Header=BB12_59 Depth=2
	leaq	(%r8,%r11,2), %rax
	leaq	(%r10,%r11,4), %rbx
	cmpq	$0, -16(%rsp)           # 8-byte Folded Reload
	je	.LBB12_64
# BB#69:                                # %vector.body367.preheader.split.split
                                        #   in Loop: Header=BB12_59 Depth=2
	movq	%r11, %rdi
	subq	%rdx, %rdi
	leaq	48(%r10,%rdx,4), %rcx
	movq	%r8, %rbp
	leaq	24(%rbp,%rdx,2), %r8
	movq	%rbp, %rdx
	.align	16, 0x90
.LBB12_70:                              # %vector.body367
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rcx), %xmm1
	movdqu	-32(%rcx), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -24(%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -16(%r8)
	movdqu	-16(%rcx), %xmm1
	movdqu	(%rcx), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%r8)
	addq	$64, %rcx
	addq	$32, %r8
	addq	$-16, %rdi
	jne	.LBB12_70
# BB#71:                                #   in Loop: Header=BB12_59 Depth=2
	movq	%r11, %rcx
	movl	%r11d, %edi
	movq	%rdx, %r8
	movq	-64(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB12_72
.LBB12_64:                              #   in Loop: Header=BB12_59 Depth=2
	movq	%r11, %rcx
	movl	%r11d, %edi
.LBB12_72:                              # %middle.block368
                                        #   in Loop: Header=BB12_59 Depth=2
	addq	$2, %r8
	addq	$4, %r10
	cmpq	%rcx, %r9
	je	.LBB12_75
# BB#73:                                # %for.body.65.preheader
                                        #   in Loop: Header=BB12_59 Depth=2
	movl	-4(%rsp), %ecx          # 4-byte Reload
	subl	%edi, %ecx
	.align	16, 0x90
.LBB12_74:                              # %for.body.65
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	(%rbx), %dx
	addq	$4, %rbx
	movw	%dx, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB12_74
.LBB12_75:                              # %for.cond.62.for.end.71_crit_edge
                                        #   in Loop: Header=BB12_59 Depth=2
	leaq	(%r8,%r13,2), %r8
	leaq	(%r10,%r13,4), %r10
.LBB12_76:                              # %for.end.71
                                        #   in Loop: Header=BB12_59 Depth=2
	leaq	(%r10,%rbp,4), %r10
	incl	%esi
	cmpl	%r12d, %esi
	jne	.LBB12_59
	jmp	.LBB12_111
	.align	16, 0x90
.LBB12_90:                              # %sw.bb.99
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	subl	%r8d, %r15d
	movq	%r11, %r8
	je	.LBB12_111
# BB#91:                                # %for.cond.107.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movq	40(%rcx), %rcx
	movl	%eax, %edx
	leal	-1(%r9), %r11d
	subl	%r14d, %r11d
	leaq	1(%r11), %r12
	movq	%r12, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	leaq	-8(%rbx), %rax
	shrq	$3, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB12_92:                              # %for.cond.107.preheader
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_100 Depth 3
                                        #       Child Loop BB12_105 Depth 3
                                        #       Child Loop BB12_108 Depth 3
	cmpl	%r14d, %r9d
	je	.LBB12_110
# BB#93:                                # %for.body.110.lr.ph
                                        #   in Loop: Header=BB12_92 Depth=2
	xorl	%eax, %eax
	testq	%rbx, %rbx
	movq	%rcx, %rsi
	movq	%r8, %r10
	movl	$0, %ebp
	je	.LBB12_102
# BB#94:                                # %vector.memcheck454
                                        #   in Loop: Header=BB12_92 Depth=2
	leaq	(%rcx,%r11,4), %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %r8
	ja	.LBB12_96
# BB#95:                                # %vector.memcheck454
                                        #   in Loop: Header=BB12_92 Depth=2
	leaq	(%r8,%r11,4), %rsi
	cmpq	%rsi, %rcx
	movq	%rcx, %rsi
	movq	%r8, %r10
	movl	$0, %ebp
	jbe	.LBB12_102
.LBB12_96:                              # %vector.body433.preheader
                                        #   in Loop: Header=BB12_92 Depth=2
	cmpq	$0, -64(%rsp)           # 8-byte Folded Reload
	movl	$0, %edi
	jne	.LBB12_98
# BB#97:                                # %vector.body433.prol
                                        #   in Loop: Header=BB12_92 Depth=2
	movdqu	(%rcx), %xmm1
	movdqu	16(%rcx), %xmm2
	movdqu	%xmm1, (%r8)
	movdqu	%xmm2, 16(%r8)
	movl	$8, %edi
.LBB12_98:                              # %vector.body433.preheader.split
                                        #   in Loop: Header=BB12_92 Depth=2
	leaq	(%rcx,%rbx,4), %rsi
	leaq	(%r8,%rbx,4), %r10
	cmpq	$0, -48(%rsp)           # 8-byte Folded Reload
	je	.LBB12_101
# BB#99:                                # %vector.body433.preheader.split.split
                                        #   in Loop: Header=BB12_92 Depth=2
	movq	%rbx, %rax
	subq	%rdi, %rax
	leaq	48(%r8,%rdi,4), %rbp
	leaq	48(%rcx,%rdi,4), %rdi
	.align	16, 0x90
.LBB12_100:                             # %vector.body433
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rdi), %xmm1
	movups	-32(%rdi), %xmm2
	movups	%xmm1, -48(%rbp)
	movups	%xmm2, -32(%rbp)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	movdqu	%xmm1, -16(%rbp)
	movdqu	%xmm2, (%rbp)
	addq	$64, %rbp
	addq	$64, %rdi
	addq	$-16, %rax
	jne	.LBB12_100
.LBB12_101:                             #   in Loop: Header=BB12_92 Depth=2
	movq	%rbx, %rax
	movl	%ebx, %ebp
.LBB12_102:                             # %middle.block434
                                        #   in Loop: Header=BB12_92 Depth=2
	addq	$4, %r8
	addq	$4, %rcx
	cmpq	%rax, %r12
	je	.LBB12_109
# BB#103:                               # %for.body.110.preheader
                                        #   in Loop: Header=BB12_92 Depth=2
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movl	%r15d, %r8d
	movl	%r14d, %r15d
	movq	%r9, %r14
	movq	%r12, %r9
	movl	-4(%rsp), %r12d         # 4-byte Reload
	subl	%ebp, %r12d
	movl	%r11d, %eax
	subl	%ebp, %eax
	testb	$7, %r12b
	je	.LBB12_106
# BB#104:                               # %for.body.110.prol.preheader
                                        #   in Loop: Header=BB12_92 Depth=2
	andl	$7, %r12d
	negl	%r12d
	.align	16, 0x90
.LBB12_105:                             # %for.body.110.prol
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %edi
	addq	$4, %rsi
	movl	%edi, (%r10)
	addq	$4, %r10
	incl	%ebp
	incl	%r12d
	jne	.LBB12_105
.LBB12_106:                             # %for.body.110.preheader.split
                                        #   in Loop: Header=BB12_92 Depth=2
	cmpl	$7, %eax
	movq	%r9, %r12
	movq	%r14, %r9
	movl	%r15d, %r14d
	movl	%r8d, %r15d
	movq	-16(%rsp), %r8          # 8-byte Reload
	jb	.LBB12_109
# BB#107:                               # %for.body.110.preheader.split.split
                                        #   in Loop: Header=BB12_92 Depth=2
	movl	-4(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	.align	16, 0x90
.LBB12_108:                             # %for.body.110
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rsi), %edi
	movl	%edi, (%r10)
	movl	4(%rsi), %edi
	movl	%edi, 4(%r10)
	movl	8(%rsi), %edi
	movl	%edi, 8(%r10)
	movl	12(%rsi), %edi
	movl	%edi, 12(%r10)
	movl	16(%rsi), %edi
	movl	%edi, 16(%r10)
	movl	20(%rsi), %edi
	movl	%edi, 20(%r10)
	movl	24(%rsi), %edi
	movl	%edi, 24(%r10)
	movl	28(%rsi), %edi
	movl	%edi, 28(%r10)
	addq	$32, %rsi
	addq	$32, %r10
	addl	$-8, %eax
	jne	.LBB12_108
.LBB12_109:                             # %for.cond.107.for.end.115_crit_edge
                                        #   in Loop: Header=BB12_92 Depth=2
	leaq	(%r8,%r11,4), %r8
	leaq	(%rcx,%r11,4), %rcx
.LBB12_110:                             # %for.end.115
                                        #   in Loop: Header=BB12_92 Depth=2
	leaq	(%rcx,%rdx,4), %rcx
	incl	%r13d
	cmpl	%r15d, %r13d
	jne	.LBB12_92
	jmp	.LBB12_111
	.align	16, 0x90
.LBB12_8:                               # %for.body
                                        #   in Loop: Header=BB12_6 Depth=1
	cmpl	$1, %edx
	jne	.LBB12_9
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	40(%rbx), %r13
	cmpl	$0, 32(%rbp)
	je	.LBB12_13
# BB#11:                                # %for.cond.17.preheader
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	subl	%r8d, %r15d
	je	.LBB12_12
# BB#23:                                # %for.cond.20.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	movl	%eax, %r10d
	leal	-1(%r9), %r12d
	subl	%r14d, %r12d
	leaq	1(%r12), %r8
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r8
	leaq	-8(%r8), %rax
	shrq	$3, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB12_24:                              # %for.cond.20.preheader
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_33 Depth 3
                                        #       Child Loop BB12_38 Depth 3
                                        #       Child Loop BB12_41 Depth 3
	cmpl	%r14d, %r9d
	je	.LBB12_43
# BB#25:                                # %for.body.22.lr.ph
                                        #   in Loop: Header=BB12_24 Depth=2
	xorl	%eax, %eax
	testq	%r8, %r8
	movq	%r13, %rbx
	movq	%r11, %rcx
	movq	%rcx, %rsi
	movl	$0, %ebp
	je	.LBB12_35
# BB#26:                                # %vector.memcheck244
                                        #   in Loop: Header=BB12_24 Depth=2
	leaq	(%r13,%r12,4), %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	ja	.LBB12_28
# BB#27:                                # %vector.memcheck244
                                        #   in Loop: Header=BB12_24 Depth=2
	leaq	(%rcx,%r12), %rdx
	cmpq	%rdx, %r13
	movq	%r13, %rbx
	movq	%rcx, %rsi
	movl	$0, %ebp
	jbe	.LBB12_35
.LBB12_28:                              # %vector.body225.preheader
                                        #   in Loop: Header=BB12_24 Depth=2
	cmpq	$0, -64(%rsp)           # 8-byte Folded Reload
	movl	$0, %eax
	jne	.LBB12_30
# BB#29:                                # %vector.body225.prol
                                        #   in Loop: Header=BB12_24 Depth=2
	movdqu	(%r13), %xmm1
	movdqu	16(%r13), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, (%rcx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, 4(%rcx)
	movl	$8, %eax
.LBB12_30:                              # %vector.body225.preheader.split
                                        #   in Loop: Header=BB12_24 Depth=2
	leaq	(%r13,%r8,4), %rbx
	leaq	(%rcx,%r8), %rsi
	cmpq	$0, -48(%rsp)           # 8-byte Folded Reload
	je	.LBB12_31
# BB#32:                                # %vector.body225.preheader.split.split
                                        #   in Loop: Header=BB12_24 Depth=2
	movq	%r10, %r11
	movq	%r8, %rbp
	subq	%rax, %rbp
	leaq	12(%rcx,%rax), %rdx
	leaq	48(%r13,%rax,4), %r10
	.align	16, 0x90
.LBB12_33:                              # %vector.body225
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%r10), %xmm1
	movdqu	-32(%r10), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -12(%rdx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -8(%rdx)
	movdqu	-16(%r10), %xmm1
	movdqu	(%r10), %xmm2
	pand	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rdx)
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdx)
	addq	$16, %rdx
	addq	$64, %r10
	addq	$-16, %rbp
	jne	.LBB12_33
# BB#34:                                #   in Loop: Header=BB12_24 Depth=2
	movq	%r8, %rax
	movl	%r8d, %ebp
	movq	%r11, %r10
	jmp	.LBB12_35
.LBB12_31:                              #   in Loop: Header=BB12_24 Depth=2
	movq	%r8, %rax
	movl	%r8d, %ebp
	.align	16, 0x90
.LBB12_35:                              # %middle.block226
                                        #   in Loop: Header=BB12_24 Depth=2
	incq	%rcx
	movq	%rcx, %r11
	addq	$4, %r13
	cmpq	%rax, -16(%rsp)         # 8-byte Folded Reload
	je	.LBB12_42
# BB#36:                                # %for.body.22.preheader
                                        #   in Loop: Header=BB12_24 Depth=2
	movl	-4(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	movl	%r12d, %edx
	subl	%ebp, %edx
	testb	$7, %al
	je	.LBB12_39
# BB#37:                                # %for.body.22.prol.preheader
                                        #   in Loop: Header=BB12_24 Depth=2
	andl	$7, %eax
	negl	%eax
	.align	16, 0x90
.LBB12_38:                              # %for.body.22.prol
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rbx), %cl
	addq	$4, %rbx
	movb	%cl, (%rsi)
	incq	%rsi
	incl	%ebp
	incl	%eax
	jne	.LBB12_38
.LBB12_39:                              # %for.body.22.preheader.split
                                        #   in Loop: Header=BB12_24 Depth=2
	cmpl	$7, %edx
	jb	.LBB12_42
# BB#40:                                # %for.body.22.preheader.split.split
                                        #   in Loop: Header=BB12_24 Depth=2
	movl	-4(%rsp), %eax          # 4-byte Reload
	subl	%ebp, %eax
	.align	16, 0x90
.LBB12_41:                              # %for.body.22
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rbx), %cl
	movb	%cl, (%rsi)
	movb	4(%rbx), %cl
	movb	%cl, 1(%rsi)
	movb	8(%rbx), %cl
	movb	%cl, 2(%rsi)
	movb	12(%rbx), %cl
	movb	%cl, 3(%rsi)
	movb	16(%rbx), %cl
	movb	%cl, 4(%rsi)
	movb	20(%rbx), %cl
	movb	%cl, 5(%rsi)
	movb	24(%rbx), %cl
	movb	%cl, 6(%rsi)
	movb	28(%rbx), %cl
	movb	%cl, 7(%rsi)
	addq	$32, %rbx
	addq	$8, %rsi
	addl	$-8, %eax
	jne	.LBB12_41
.LBB12_42:                              # %for.cond.20.for.end_crit_edge
                                        #   in Loop: Header=BB12_24 Depth=2
	addq	%r12, %r11
	leaq	(%r13,%r12,4), %r13
.LBB12_43:                              # %for.end
                                        #   in Loop: Header=BB12_24 Depth=2
	leaq	(%r13,%r10,4), %r13
	incl	%edi
	cmpl	%r15d, %edi
	jne	.LBB12_24
	jmp	.LBB12_112
.LBB12_9:                               #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
.LBB12_12:                              #   in Loop: Header=BB12_6 Depth=1
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	jmp	.LBB12_112
.LBB12_65:                              # %for.cond.78.preheader
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	movq	%rbp, -40(%rsp)         # 8-byte Spill
	subl	%r8d, %r12d
	movq	%r11, %r8
	je	.LBB12_111
# BB#66:                                # %for.cond.82.preheader.lr.ph
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	%eax, %r15d
	leal	-1(%r9), %r13d
	subl	%r14d, %r13d
	leaq	1(%r13), %r11
	movq	%r11, -16(%rsp)         # 8-byte Spill
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r11
	leaq	-8(%r11), %rax
	shrq	$3, %rax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, -64(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB12_67:                              # %for.cond.82.preheader
                                        #   Parent Loop BB12_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_83 Depth 3
                                        #       Child Loop BB12_87 Depth 3
	movq	%r9, %rbx
	cmpl	%r14d, %ebx
	jne	.LBB12_77
# BB#68:                                #   in Loop: Header=BB12_67 Depth=2
	movq	%rbx, %r9
	jmp	.LBB12_89
	.align	16, 0x90
.LBB12_77:                              # %for.body.85.lr.ph
                                        #   in Loop: Header=BB12_67 Depth=2
	xorl	%ecx, %ecx
	testq	%r11, %r11
	movq	%r8, %rax
	movq	%r10, %rbp
	movl	$0, %edi
	je	.LBB12_85
# BB#78:                                # %vector.body301.preheader
                                        #   in Loop: Header=BB12_67 Depth=2
	cmpq	$0, -64(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB12_80
# BB#79:                                # %vector.body301.prol
                                        #   in Loop: Header=BB12_67 Depth=2
	movdqu	(%r10), %xmm1
	movdqu	16(%r10), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, 8(%r8)
	movl	$8, %edx
.LBB12_80:                              # %vector.body301.preheader.split
                                        #   in Loop: Header=BB12_67 Depth=2
	leaq	(%r8,%r11,2), %rax
	leaq	(%r10,%r11,4), %rbp
	cmpq	$0, -48(%rsp)           # 8-byte Folded Reload
	je	.LBB12_81
# BB#82:                                # %vector.body301.preheader.split.split
                                        #   in Loop: Header=BB12_67 Depth=2
	movq	%r11, %rdi
	subq	%rdx, %rdi
	leaq	48(%r10,%rdx,4), %rcx
	movq	%r8, %r9
	leaq	24(%r9,%rdx,2), %r8
	movq	%r9, %rdx
	.align	16, 0x90
.LBB12_83:                              # %vector.body301
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rcx), %xmm1
	movdqu	-32(%rcx), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -24(%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -16(%r8)
	movdqu	-16(%rcx), %xmm1
	movdqu	(%rcx), %xmm2
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, -8(%r8)
	pshuflw	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	movq	%xmm1, (%r8)
	addq	$64, %rcx
	addq	$32, %r8
	addq	$-16, %rdi
	jne	.LBB12_83
# BB#84:                                #   in Loop: Header=BB12_67 Depth=2
	movq	%r11, %rcx
	movl	%r11d, %edi
	movq	%rdx, %r8
	jmp	.LBB12_85
.LBB12_81:                              #   in Loop: Header=BB12_67 Depth=2
	movq	%r11, %rcx
	movl	%r11d, %edi
.LBB12_85:                              # %middle.block302
                                        #   in Loop: Header=BB12_67 Depth=2
	movq	%rbx, %r9
	addq	$2, %r8
	addq	$4, %r10
	cmpq	%rcx, -16(%rsp)         # 8-byte Folded Reload
	je	.LBB12_88
# BB#86:                                # %for.body.85.preheader
                                        #   in Loop: Header=BB12_67 Depth=2
	movl	-4(%rsp), %ecx          # 4-byte Reload
	subl	%edi, %ecx
	.align	16, 0x90
.LBB12_87:                              # %for.body.85
                                        #   Parent Loop BB12_6 Depth=1
                                        #     Parent Loop BB12_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	(%rbp), %dx
	addq	$4, %rbp
	movw	%dx, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB12_87
.LBB12_88:                              # %for.cond.82.for.end.92_crit_edge
                                        #   in Loop: Header=BB12_67 Depth=2
	leaq	(%r8,%r13,2), %r8
	leaq	(%r10,%r13,4), %r10
.LBB12_89:                              # %for.end.92
                                        #   in Loop: Header=BB12_67 Depth=2
	leaq	(%r10,%r15,4), %r10
	incl	%esi
	cmpl	%r12d, %esi
	jne	.LBB12_67
	.align	16, 0x90
.LBB12_111:                             # %for.end.120
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	%r8, %r11
.LBB12_112:                             # %sw.epilog
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	-40(%rsp), %rbp         # 8-byte Reload
	addq	$64, %rbp
	movq	-24(%rsp), %rbx         # 8-byte Reload
	addq	$56, %rbx
	movq	-32(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	movq	-56(%rsp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	cmpl	16(%rax), %ecx
	jb	.LBB12_6
.LBB12_113:
	movl	$1, %eax
.LBB12_114:                             # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	opj_tcd_update_tile_data, .Lfunc_end12-opj_tcd_update_tile_data
	.cfi_endproc

	.globl	opj_tcd_get_encoded_tile_size
	.align	16, 0x90
	.type	opj_tcd_get_encoded_tile_size,@function
opj_tcd_get_encoded_tile_size:          # @opj_tcd_get_encoded_tile_size
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rdx
	movl	16(%rdx), %r9d
	xorl	%eax, %eax
	testl	%r9d, %r9d
	je	.LBB13_3
# BB#1:                                 # %for.body.lr.ph
	movq	24(%rdx), %r10
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rsi
	addq	$12, %rsi
	addq	$24, %r10
	xorl	%r11d, %r11d
	movl	$4, %r8d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r10), %edx
	movl	%edx, %ecx
	shrl	$3, %ecx
	andl	$7, %edx
	cmpl	$1, %edx
	sbbl	$-1, %ecx
	cmpl	$3, %ecx
	cmovel	%r8d, %ecx
	movl	-4(%rsi), %edx
	movl	(%rsi), %edi
	subl	-12(%rsi), %edx
	subl	-8(%rsi), %edi
	imull	%edx, %edi
	imull	%ecx, %edi
	addl	%edi, %eax
	incl	%r11d
	addq	$56, %rsi
	addq	$64, %r10
	cmpl	%r9d, %r11d
	jb	.LBB13_2
.LBB13_3:                               # %for.end
	retq
.Lfunc_end13:
	.size	opj_tcd_get_encoded_tile_size, .Lfunc_end13-opj_tcd_get_encoded_tile_size
	.cfi_endproc

	.globl	opj_tcd_copy_tile_data
	.align	16, 0x90
	.type	opj_tcd_copy_tile_data,@function
opj_tcd_copy_tile_data:                 # @opj_tcd_copy_tile_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp140:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 56
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	32(%rdi), %r15
	movl	16(%r15), %r9d
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	je	.LBB14_3
# BB#1:                                 # %for.body.lr.ph.i
	movq	24(%r15), %r11
	movq	24(%rdi), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rbx
	addq	$12, %rbx
	addq	$24, %r11
	xorl	%r8d, %r8d
	movl	$4, %r10d
	movl	%r9d, %r14d
	.align	16, 0x90
.LBB14_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r11), %eax
	movl	%eax, %ebp
	shrl	$3, %ebp
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebp
	cmpl	$3, %ebp
	cmovel	%r10d, %ebp
	movl	-4(%rbx), %eax
	movl	(%rbx), %ecx
	subl	-12(%rbx), %eax
	subl	-8(%rbx), %ecx
	imull	%eax, %ecx
	imull	%ebp, %ecx
	addl	%ecx, %r8d
	addq	$56, %rbx
	addq	$64, %r11
	decl	%r14d
	jne	.LBB14_2
.LBB14_3:                               # %opj_tcd_get_encoded_tile_size.exit
	cmpl	%edx, %r8d
	sete	%al
	movzbl	%al, %eax
	jne	.LBB14_95
# BB#4:                                 # %opj_tcd_get_encoded_tile_size.exit
	testl	%r9d, %r9d
	movq	%r15, %r8
	movq	%r8, -8(%rsp)           # 8-byte Spill
	je	.LBB14_95
# BB#5:                                 # %for.body.lr.ph
	movq	24(%r8), %r15
	movq	24(%rdi), %rax
	movq	(%rax), %rax
	movq	24(%rax), %r10
	xorl	%r11d, %r11d
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movl	$4, %r13d
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_6:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_20 Depth 2
                                        #     Child Loop BB14_26 Depth 2
                                        #     Child Loop BB14_29 Depth 2
                                        #     Child Loop BB14_40 Depth 2
                                        #     Child Loop BB14_45 Depth 2
                                        #     Child Loop BB14_48 Depth 2
                                        #     Child Loop BB14_57 Depth 2
                                        #     Child Loop BB14_61 Depth 2
                                        #     Child Loop BB14_70 Depth 2
                                        #     Child Loop BB14_74 Depth 2
                                        #     Child Loop BB14_85 Depth 2
                                        #     Child Loop BB14_90 Depth 2
                                        #     Child Loop BB14_93 Depth 2
	movl	24(%r15), %edx
	movl	%edx, %ecx
	shrl	$3, %ecx
	andl	$7, %edx
	movl	8(%r10), %edi
	subl	(%r10), %edi
	movl	12(%r10), %eax
	subl	4(%r10), %eax
	imull	%edi, %eax
	cmpl	$1, %edx
	sbbl	$-1, %ecx
	cmpl	$3, %ecx
	cmovel	%r13d, %ecx
	cmpl	$4, %ecx
	je	.LBB14_76
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$2, %ecx
	jne	.LBB14_8
# BB#49:                                # %sw.bb.30
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	40(%r10), %r13
	cmpl	$0, 32(%r15)
	je	.LBB14_62
# BB#50:                                # %for.cond.37.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	testl	%eax, %eax
	je	.LBB14_75
# BB#51:                                # %for.body.40.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	leal	-1(%rax), %r12d
	leaq	1(%r12), %r14
	xorl	%edi, %edi
	movq	%r14, %r9
	andq	%rbp, %r9
	je	.LBB14_52
# BB#53:                                # %vector.body289.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r12), %rcx
	andq	%rbp, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	btq	$3, %rcx
	movl	$0, %ebx
	jb	.LBB14_55
# BB#54:                                # %vector.body289.prol
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movq	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm2
	movdqu	%xmm1, (%r13)
	movdqu	%xmm2, 16(%r13)
	movl	$8, %ebx
.LBB14_55:                              # %vector.body289.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rsi,%r9,2), %rdx
	leaq	(%r13,%r9,4), %rcx
	testq	%rdi, %rdi
	je	.LBB14_58
# BB#56:                                # %vector.body289.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%r12, %rbp
	incq	%rbp
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rbp
	subq	%rbx, %rbp
	leaq	48(%r13,%rbx,4), %rdi
	leaq	24(%rsi,%rbx,2), %rbx
	.align	16, 0x90
.LBB14_57:                              # %vector.body289
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbx), %xmm1        # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movq	-16(%rbx), %xmm2        # xmm2 = mem[0],zero
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm2
	movdqu	%xmm1, -48(%rdi)
	movdqu	%xmm2, -32(%rdi)
	movq	-8(%rbx), %xmm1         # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movq	(%rbx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm2
	movdqu	%xmm1, -16(%rdi)
	movdqu	%xmm2, (%rdi)
	addq	$64, %rdi
	addq	$32, %rbx
	addq	$-16, %rbp
	jne	.LBB14_57
.LBB14_58:                              #   in Loop: Header=BB14_6 Depth=1
	movl	%r9d, %edi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	jmp	.LBB14_59
	.align	16, 0x90
.LBB14_76:                              # %sw.bb.60
                                        #   in Loop: Header=BB14_6 Depth=1
	testl	%eax, %eax
	je	.LBB14_94
# BB#77:                                # %for.body.67.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	40(%r10), %rcx
	leal	-1(%rax), %r14d
	leaq	1(%r14), %r12
	xorl	%edi, %edi
	movq	%r12, %rbx
	andq	%rbp, %rbx
	je	.LBB14_78
# BB#79:                                # %vector.memcheck373
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rsi,%r14,4), %rdx
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	ja	.LBB14_81
# BB#80:                                # %vector.memcheck373
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%r14,4), %rdx
	cmpq	%rdx, %rsi
	ja	.LBB14_81
.LBB14_78:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rsi, %rdx
	xorl	%ebx, %ebx
	jmp	.LBB14_87
	.align	16, 0x90
.LBB14_8:                               # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$1, %ecx
	jne	.LBB14_94
# BB#9:                                 # %sw.bb
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	40(%r10), %rcx
	cmpl	$0, 32(%r15)
	je	.LBB14_31
# BB#10:                                # %for.cond.13.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	testl	%eax, %eax
	je	.LBB14_94
# BB#11:                                # %for.body.15.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	leal	-1(%rax), %r14d
	leaq	1(%r14), %r12
	xorl	%edi, %edi
	movq	%r12, %rbx
	andq	%rbp, %rbx
	je	.LBB14_12
# BB#13:                                # %vector.memcheck166
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rsi,%r14), %rdx
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	ja	.LBB14_15
# BB#14:                                # %vector.memcheck166
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%r14,4), %rdx
	cmpq	%rdx, %rsi
	ja	.LBB14_15
.LBB14_12:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rsi, %rdx
	xorl	%ebx, %ebx
	jmp	.LBB14_23
.LBB14_62:                              # %for.cond.48.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	testl	%eax, %eax
	je	.LBB14_75
# BB#63:                                # %for.body.51.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	leal	-1(%rax), %r12d
	leaq	1(%r12), %r14
	xorl	%ecx, %ecx
	movq	%r14, %r9
	andq	%rbp, %r9
	je	.LBB14_64
# BB#65:                                # %vector.body223.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r12), %rdx
	andq	%rbp, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	btq	$3, %rdx
	movl	$0, %r8d
	jb	.LBB14_67
# BB#66:                                # %vector.body223.prol
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	movq	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, (%r13)
	movdqu	%xmm2, 16(%r13)
	movl	$8, %r8d
.LBB14_67:                              # %vector.body223.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rsi,%r9,2), %rbx
	leaq	(%r13,%r9,4), %rdx
	testq	%rcx, %rcx
	je	.LBB14_68
# BB#69:                                # %vector.body223.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%r12, %rdi
	incq	%rdi
	andq	%rbp, %rdi
	subq	%r8, %rdi
	leaq	48(%r13,%r8,4), %rbp
	leaq	24(%rsi,%r8,2), %rcx
	.align	16, 0x90
.LBB14_70:                              # %vector.body223
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rcx), %xmm2        # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -48(%rbp)
	movdqu	%xmm2, -32(%rbp)
	movq	-8(%rcx), %xmm1         # xmm1 = mem[0],zero
	movq	(%rcx), %xmm2           # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -16(%rbp)
	movdqu	%xmm2, (%rbp)
	addq	$64, %rbp
	addq	$32, %rcx
	addq	$-16, %rdi
	jne	.LBB14_70
# BB#71:                                #   in Loop: Header=BB14_6 Depth=1
	movl	%r9d, %ecx
	movq	-8(%rsp), %r8           # 8-byte Reload
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	jmp	.LBB14_72
.LBB14_81:                              # %vector.body355.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r14), %rdx
	andq	%rbp, %rdx
	movq	%rbp, %r13
	addq	$-8, %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	btq	$3, %rdx
	movl	$0, %r8d
	jb	.LBB14_83
# BB#82:                                # %vector.body355.prol
                                        #   in Loop: Header=BB14_6 Depth=1
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movdqu	%xmm1, (%rcx)
	movdqu	%xmm2, 16(%rcx)
	movl	$8, %r8d
.LBB14_83:                              # %vector.body355.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%rbx,4), %r9
	leaq	(%rsi,%rbx,4), %rdx
	testq	%rdi, %rdi
	je	.LBB14_86
# BB#84:                                # %vector.body355.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r14), %rbp
	andq	%r13, %rbp
	subq	%r8, %rbp
	leaq	48(%rsi,%r8,4), %rdi
	leaq	48(%rcx,%r8,4), %rcx
	.align	16, 0x90
.LBB14_85:                              # %vector.body355
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rdi), %xmm1
	movups	-32(%rdi), %xmm2
	movups	%xmm1, -48(%rcx)
	movups	%xmm2, -32(%rcx)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	movdqu	%xmm1, -16(%rcx)
	movdqu	%xmm2, (%rcx)
	addq	$64, %rdi
	addq	$64, %rcx
	addq	$-16, %rbp
	jne	.LBB14_85
.LBB14_86:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%r9, %rcx
	movq	%rbx, %rdi
	movq	-8(%rsp), %r8           # 8-byte Reload
	movq	%r13, %rbp
	movl	$4, %r13d
.LBB14_87:                              # %middle.block356
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	4(%rsi,%r14,4), %rsi
	cmpq	%rdi, %r12
	je	.LBB14_94
# BB#88:                                # %for.body.67.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	%eax, %edi
	subl	%ebx, %edi
	subl	%ebx, %r14d
	movq	%rbp, %r9
	testb	$7, %dil
	je	.LBB14_91
# BB#89:                                # %for.body.67.prol.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	andl	$7, %edi
	negl	%edi
	.align	16, 0x90
.LBB14_90:                              # %for.body.67.prol
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %ebp
	addq	$4, %rdx
	movl	%ebp, (%rcx)
	addq	$4, %rcx
	incl	%ebx
	incl	%edi
	jne	.LBB14_90
.LBB14_91:                              # %for.body.67.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$7, %r14d
	movq	%r9, %rbp
	jb	.LBB14_94
# BB#92:                                # %for.body.67.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	subl	%ebx, %eax
	.align	16, 0x90
.LBB14_93:                              # %for.body.67
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %edi
	movl	%edi, (%rcx)
	movl	4(%rdx), %edi
	movl	%edi, 4(%rcx)
	movl	8(%rdx), %edi
	movl	%edi, 8(%rcx)
	movl	12(%rdx), %edi
	movl	%edi, 12(%rcx)
	movl	16(%rdx), %edi
	movl	%edi, 16(%rcx)
	movl	20(%rdx), %edi
	movl	%edi, 20(%rcx)
	movl	24(%rdx), %edi
	movl	%edi, 24(%rcx)
	movl	28(%rdx), %edi
	movl	%edi, 28(%rcx)
	addq	$32, %rdx
	addq	$32, %rcx
	addl	$-8, %eax
	jne	.LBB14_93
	jmp	.LBB14_94
.LBB14_31:                              # %for.cond.18.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	testl	%eax, %eax
	je	.LBB14_94
# BB#32:                                # %for.body.21.lr.ph
                                        #   in Loop: Header=BB14_6 Depth=1
	leal	-1(%rax), %r14d
	leaq	1(%r14), %r12
	xorl	%edi, %edi
	movq	%r12, %rbx
	andq	%rbp, %rbx
	je	.LBB14_33
# BB#34:                                # %vector.memcheck
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rsi,%r14), %rdx
	xorl	%edi, %edi
	cmpq	%rdx, %rcx
	ja	.LBB14_36
# BB#35:                                # %vector.memcheck
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%r14,4), %rdx
	cmpq	%rdx, %rsi
	ja	.LBB14_36
.LBB14_33:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rsi, %rdx
	xorl	%ebx, %ebx
	jmp	.LBB14_42
.LBB14_52:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rsi, %rdx
	movq	%r13, %rcx
	xorl	%r9d, %r9d
.LBB14_59:                              # %middle.block290
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	2(%rsi,%r12,2), %rsi
	cmpq	%r9, %r14
	je	.LBB14_75
# BB#60:                                # %for.body.40.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	subl	%edi, %eax
	.align	16, 0x90
.LBB14_61:                              # %for.body.40
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%rdx), %edi
	addq	$2, %rdx
	movl	%edi, (%rcx)
	addq	$4, %rcx
	decl	%eax
	jne	.LBB14_61
	jmp	.LBB14_75
.LBB14_64:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rsi, %rbx
	movq	%r13, %rdx
	xorl	%r9d, %r9d
	jmp	.LBB14_72
.LBB14_15:                              # %vector.body148.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r14), %rdx
	andq	%rbp, %rdx
	addq	$-8, %rdx
	movq	%rdx, %rbp
	shrq	$3, %rbp
	btq	$3, %rdx
	movl	$0, %r13d
	jb	.LBB14_17
# BB#16:                                # %vector.body148.prol
                                        #   in Loop: Header=BB14_6 Depth=1
	movd	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movd	4(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm2
	movdqu	%xmm1, (%rcx)
	movdqu	%xmm2, 16(%rcx)
	movl	$8, %r13d
.LBB14_17:                              # %vector.body148.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%rbx,4), %rdi
	leaq	(%rsi,%rbx), %rdx
	testq	%rbp, %rbp
	je	.LBB14_18
# BB#19:                                # %vector.body148.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	leaq	1(%r14), %rbp
	movabsq	$8589934584, %rdi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rbp
	subq	%r13, %rbp
	leaq	12(%rsi,%r13), %r9
	leaq	48(%rcx,%r13,4), %rcx
	.align	16, 0x90
.LBB14_20:                              # %vector.body148
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%r9), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movd	-8(%r9), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm2
	movdqu	%xmm1, -48(%rcx)
	movdqu	%xmm2, -32(%rcx)
	movd	-4(%r9), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm1
	movd	(%r9), %xmm2            # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	punpcklwd	%xmm2, %xmm2    # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$24, %xmm2
	movdqu	%xmm1, -16(%rcx)
	movdqu	%xmm2, (%rcx)
	addq	$16, %r9
	addq	$64, %rcx
	addq	$-16, %rbp
	jne	.LBB14_20
# BB#21:                                #   in Loop: Header=BB14_6 Depth=1
	movq	-16(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB14_22
.LBB14_68:                              #   in Loop: Header=BB14_6 Depth=1
	movl	%r9d, %ecx
	movq	-8(%rsp), %r8           # 8-byte Reload
.LBB14_72:                              # %middle.block224
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	2(%rsi,%r12,2), %rsi
	cmpq	%r9, %r14
	je	.LBB14_75
# BB#73:                                # %for.body.51.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	subl	%ecx, %eax
	.align	16, 0x90
.LBB14_74:                              # %for.body.51
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx), %ecx
	addq	$2, %rbx
	movl	%ecx, (%rdx)
	addq	$4, %rdx
	decl	%eax
	jne	.LBB14_74
	.align	16, 0x90
.LBB14_75:                              # %if.end.59
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$4, %r13d
	jmp	.LBB14_94
.LBB14_36:                              # %vector.body.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r14), %rdx
	andq	%rbp, %rdx
	movq	%rbp, %r9
	addq	$-8, %rdx
	movq	%rdx, %rdi
	shrq	$3, %rdi
	btq	$3, %rdx
	movl	$0, %r8d
	jb	.LBB14_38
# BB#37:                                # %vector.body.prol
                                        #   in Loop: Header=BB14_6 Depth=1
	movd	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movd	4(%rsi), %xmm2          # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, (%rcx)
	movdqu	%xmm2, 16(%rcx)
	movl	$8, %r8d
.LBB14_38:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	(%rcx,%rbx,4), %r13
	leaq	(%rsi,%rbx), %rdx
	testq	%rdi, %rdi
	je	.LBB14_41
# BB#39:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%r14), %rbp
	andq	%r9, %rbp
	subq	%r8, %rbp
	leaq	12(%rsi,%r8), %rdi
	leaq	48(%rcx,%r8,4), %rcx
	.align	16, 0x90
.LBB14_40:                              # %vector.body
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-12(%rdi), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movd	-8(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -48(%rcx)
	movdqu	%xmm2, -32(%rcx)
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -16(%rcx)
	movdqu	%xmm2, (%rcx)
	addq	$16, %rdi
	addq	$64, %rcx
	addq	$-16, %rbp
	jne	.LBB14_40
.LBB14_41:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%r13, %rcx
	movq	%rbx, %rdi
	movq	-8(%rsp), %r8           # 8-byte Reload
	movq	%r9, %rbp
	movl	$4, %r13d
.LBB14_42:                              # %middle.block
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpq	%rdi, %r12
	je	.LBB14_30
# BB#43:                                # %for.body.21.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%r8, %r9
	movl	%eax, %edi
	subl	%ebx, %edi
	movl	%r14d, %r8d
	subl	%ebx, %r8d
	movq	%rbp, %r12
	testb	$3, %dil
	je	.LBB14_46
# BB#44:                                # %for.body.21.prol.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB14_45:                              # %for.body.21.prol
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %ebp
	incq	%rdx
	movl	%ebp, (%rcx)
	addq	$4, %rcx
	incl	%ebx
	incl	%edi
	jne	.LBB14_45
.LBB14_46:                              # %for.body.21.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$3, %r8d
	movq	%r9, %r8
	movq	%r12, %rbp
	jb	.LBB14_30
# BB#47:                                # %for.body.21.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	subl	%ebx, %eax
	.align	16, 0x90
.LBB14_48:                              # %for.body.21
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx), %edi
	movl	%edi, (%rcx)
	movzbl	1(%rdx), %edi
	movl	%edi, 4(%rcx)
	movzbl	2(%rdx), %edi
	movl	%edi, 8(%rcx)
	movzbl	3(%rdx), %edi
	movl	%edi, 12(%rcx)
	addq	$4, %rdx
	addq	$16, %rcx
	addl	$-4, %eax
	jne	.LBB14_48
	jmp	.LBB14_30
.LBB14_18:                              #   in Loop: Header=BB14_6 Depth=1
	movq	%rdi, %rcx
.LBB14_22:                              # %middle.block149
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rbx, %rdi
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	movl	$4, %r13d
.LBB14_23:                              # %middle.block149
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpq	%rdi, %r12
	je	.LBB14_30
# BB#24:                                # %for.body.15.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rbp, %r12
	movq	%r8, %r9
	movl	%eax, %edi
	subl	%ebx, %edi
	movl	%r14d, %r8d
	subl	%ebx, %r8d
	testb	$3, %dil
	je	.LBB14_27
# BB#25:                                # %for.body.15.prol.preheader
                                        #   in Loop: Header=BB14_6 Depth=1
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB14_26:                              # %for.body.15.prol
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rdx), %ebp
	incq	%rdx
	movl	%ebp, (%rcx)
	addq	$4, %rcx
	incl	%ebx
	incl	%edi
	jne	.LBB14_26
.LBB14_27:                              # %for.body.15.preheader.split
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$3, %r8d
	movq	%r9, %r8
	movq	%r12, %rbp
	jb	.LBB14_30
# BB#28:                                # %for.body.15.preheader.split.split
                                        #   in Loop: Header=BB14_6 Depth=1
	subl	%ebx, %eax
	.align	16, 0x90
.LBB14_29:                              # %for.body.15
                                        #   Parent Loop BB14_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rdx), %edi
	movl	%edi, (%rcx)
	movsbl	1(%rdx), %edi
	movl	%edi, 4(%rcx)
	movsbl	2(%rdx), %edi
	movl	%edi, 8(%rcx)
	movsbl	3(%rdx), %edi
	movl	%edi, 12(%rcx)
	addq	$4, %rdx
	addq	$16, %rcx
	addl	$-4, %eax
	jne	.LBB14_29
.LBB14_30:                              # %for.cond.13.sw.epilog.loopexit55_crit_edge
                                        #   in Loop: Header=BB14_6 Depth=1
	leaq	1(%rsi,%r14), %rsi
	.align	16, 0x90
.LBB14_94:                              # %sw.epilog
                                        #   in Loop: Header=BB14_6 Depth=1
	addq	$64, %r15
	addq	$56, %r10
	incl	%r11d
	movl	$1, %eax
	cmpl	16(%r8), %r11d
	jb	.LBB14_6
.LBB14_95:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	opj_tcd_copy_tile_data, .Lfunc_end14-opj_tcd_copy_tile_data
	.cfi_endproc

	.align	16, 0x90
	.type	opj_tcd_code_block_dec_deallocate,@function
opj_tcd_code_block_dec_deallocate:      # @opj_tcd_code_block_dec_deallocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 32
.Ltmp151:
	.cfi_offset %rbx, -32
.Ltmp152:
	.cfi_offset %r14, -24
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB15_10
# BB#1:                                 # %if.then
	movl	32(%r14), %ebp
	testl	$-64, %ebp
	je	.LBB15_9
# BB#2:                                 # %for.body.preheader
	addq	$8, %rbx
	shrl	$6, %ebp
	.align	16, 0x90
.LBB15_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB15_3 Depth=1
	callq	free
	movq	$0, -8(%rbx)
.LBB15_5:                               # %if.end
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB15_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB15_3 Depth=1
	callq	free
	movq	$0, (%rbx)
.LBB15_7:                               # %if.end.11
                                        #   in Loop: Header=BB15_3 Depth=1
	addq	$64, %rbx
	decl	%ebp
	jne	.LBB15_3
# BB#8:                                 # %for.cond.for.end_crit_edge
	movq	24(%r14), %rbx
.LBB15_9:                               # %for.end
	movq	%rbx, %rdi
	callq	free
	movq	$0, 24(%r14)
.LBB15_10:                              # %if.end.16
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	opj_tcd_code_block_dec_deallocate, .Lfunc_end15-opj_tcd_code_block_dec_deallocate
	.cfi_endproc

	.align	16, 0x90
	.type	opj_tcd_code_block_enc_deallocate,@function
opj_tcd_code_block_enc_deallocate:      # @opj_tcd_code_block_enc_deallocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 32
.Ltmp157:
	.cfi_offset %rbx, -32
.Ltmp158:
	.cfi_offset %r14, -24
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB16_12
# BB#1:                                 # %if.then
	movl	32(%r14), %ebp
	testl	$-64, %ebp
	je	.LBB16_11
# BB#2:                                 # %for.body.preheader
	addq	$16, %rbx
	shrl	$6, %ebp
	.align	16, 0x90
.LBB16_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB16_3 Depth=1
	decq	%rdi
	callq	free
	movq	$0, -16(%rbx)
.LBB16_5:                               # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	-8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB16_3 Depth=1
	callq	free
	movq	$0, -8(%rbx)
.LBB16_7:                               # %if.end.11
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB16_3 Depth=1
	callq	free
	movq	$0, (%rbx)
.LBB16_9:                               # %if.end.16
                                        #   in Loop: Header=BB16_3 Depth=1
	addq	$64, %rbx
	decl	%ebp
	jne	.LBB16_3
# BB#10:                                # %for.cond.for.end_crit_edge
	movq	24(%r14), %rbx
.LBB16_11:                              # %for.end
	movq	%rbx, %rdi
	callq	free
	movq	$0, 24(%r14)
.LBB16_12:                              # %if.end.21
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	opj_tcd_code_block_enc_deallocate, .Lfunc_end16-opj_tcd_code_block_enc_deallocate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tiles require at least one resolution\n"
	.size	.L.str, 39

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Not enough memory to handle tile data\n"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Not enough memory to tile resolutions\n"
	.size	.L.str.2, 39

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Not enough memory to handle band precints\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Not enough memory for current precinct codeblock element\n"
	.size	.L.str.4, 58

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"WARNING: No incltree created.\n"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"WARNING: No imsbtree created.\n"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Tiles don't all have the same dimension. Skip the MCT step.\n"
	.size	.L.str.7, 61

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Number of components (%d) is inconsistent with a MCT. Skip the MCT step.\n"
	.size	.L.str.8, 74

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"l_height == 0 || l_width + l_stride <= l_tile_comp->data_size / l_height"
	.size	.L.str.9, 73

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"./openjpeg/libopenjpeg/tcd.c"
	.size	.L.str.10, 29

	.type	.L__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode,@object # @__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode
.L__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode:
	.asciz	"OPJ_BOOL opj_tcd_dc_level_shift_decode(opj_tcd_t *)"
	.size	.L__PRETTY_FUNCTION__.opj_tcd_dc_level_shift_decode, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
