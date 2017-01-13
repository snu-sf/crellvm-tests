	.text
	.file	"gimpregioniterator.bc"
	.globl	gimp_rgn_iterator_new
	.align	16, 0x90
	.type	gimp_rgn_iterator_new,@function
gimp_rgn_iterator_new:                  # @gimp_rgn_iterator_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterator_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$12, %rcx
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	-32(%rbp), %rsi
	addq	$20, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	gimp_drawable_mask_bounds@PLT
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rgn_iterator_new, .Lfunc_end0-gimp_rgn_iterator_new
	.cfi_endproc

	.globl	gimp_rgn_iterator_free
	.align	16, 0x90
	.type	gimp_rgn_iterator_free,@function
gimp_rgn_iterator_free:                 # @gimp_rgn_iterator_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterator_free(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_7
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB1_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rgn_iterator_free, .Lfunc_end1-gimp_rgn_iterator_free
	.cfi_endproc

	.globl	gimp_rgn_iterator_src
	.align	16, 0x90
	.type	gimp_rgn_iterator_src,@function
gimp_rgn_iterator_src:                  # @gimp_rgn_iterator_src
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterator_src(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	16(%r8), %r9d
	movq	-8(%rbp), %r8
	subl	8(%r8), %r9d
	movq	-8(%rbp), %r8
	movl	20(%r8), %r10d
	movq	-8(%rbp), %r8
	subl	12(%r8), %r10d
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	gimp_rgn_iterator_iter_single
.LBB2_6:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rgn_iterator_src, .Lfunc_end2-gimp_rgn_iterator_src
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgn_iterator_iter_single,@function
gimp_rgn_iterator_iter_single:          # @gimp_rgn_iterator_iter_single
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %r8d
	movq	-8(%rbp), %rcx
	subl	8(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %r9d
	movq	-8(%rbp), %rcx
	subl	12(%rcx), %r9d
	imull	%r9d, %r8d
	movl	%r8d, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -52(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #       Child Loop BB3_5 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB3_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB3_3:                                # %for.cond.4
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_5 Depth 3
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	36(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_10
# BB#4:                                 # %for.body.7
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -84(%rbp)
.LBB3_5:                                # %for.cond.9
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	32(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_8
# BB#6:                                 # %for.body.13
                                        #   in Loop: Header=BB3_5 Depth=3
	movq	-24(%rbp), %rax
	movl	-84(%rbp), %edi
	movl	-68(%rbp), %esi
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-32(%rbp), %r8
	callq	*%rax
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-80(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=3
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_5
.LBB3_8:                                # %for.end
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
# BB#9:                                 # %for.inc.17
                                        #   in Loop: Header=BB3_3 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_3
.LBB3_10:                               # %for.end.19
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	$16, %eax
	movq	-16(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	-16(%rbp), %rcx
	imull	36(%rcx), %edx
	addl	-48(%rbp), %edx
	movl	%edx, -48(%rbp)
	movl	-52(%rbp), %edx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-88(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB3_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB3_12:                               # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %for.inc.27
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB3_1
.LBB3_14:                               # %for.end.30
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rgn_iterator_iter_single, .Lfunc_end3-gimp_rgn_iterator_iter_single
	.cfi_endproc

	.globl	gimp_rgn_iterator_src_dest
	.align	16, 0x90
	.type	gimp_rgn_iterator_src_dest,@function
gimp_rgn_iterator_src_dest:             # @gimp_rgn_iterator_src_dest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterator_src_dest(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_20
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	leaq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -124(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	movl	%edx, -128(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	movl	%edx, -132(%rbp)
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %edx
	movl	%edx, -136(%rbp)
	movl	-132(%rbp), %edx
	subl	-124(%rbp), %edx
	movl	-136(%rbp), %esi
	subl	-128(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, -156(%rbp)
	movl	$0, -160(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	movl	$2, %edi
	leaq	-72(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movl	-56(%rbp), %eax
	movl	%eax, -140(%rbp)
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -152(%rbp)
	movl	$0, -144(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_10 Depth 3
	cmpq	$0, -152(%rbp)
	je	.LBB4_19
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -176(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -180(%rbp)
.LBB4_8:                                # %for.cond.16
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_10 Depth 3
	movl	-180(%rbp), %eax
	movl	-44(%rbp), %ecx
	addl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_15
# BB#9:                                 # %for.body.19
                                        #   in Loop: Header=BB4_8 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)
	movl	-48(%rbp), %ecx
	movl	%ecx, -204(%rbp)
.LBB4_10:                               # %for.cond.21
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-204(%rbp), %eax
	movl	-48(%rbp), %ecx
	addl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_13
# BB#11:                                # %for.body.25
                                        #   in Loop: Header=BB4_10 Depth=3
	movq	-16(%rbp), %rax
	movl	-204(%rbp), %edi
	movl	-180(%rbp), %esi
	movq	-192(%rbp), %rdx
	movq	-200(%rbp), %rcx
	movl	-140(%rbp), %r8d
	movq	-24(%rbp), %r9
	callq	*%rax
	movl	-140(%rbp), %esi
	movq	-192(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
	movl	-140(%rbp), %esi
	movq	-200(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -200(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=3
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB4_10
.LBB4_13:                               # %for.end
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-52(%rbp), %eax
	movq	-168(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -168(%rbp)
	movl	-100(%rbp), %eax
	movq	-176(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -176(%rbp)
# BB#14:                                # %for.inc.33
                                        #   in Loop: Header=BB4_8 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB4_8
.LBB4_15:                               # %for.end.35
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$16, %eax
	movl	-40(%rbp), %ecx
	imull	-36(%rbp), %ecx
	addl	-160(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movl	-144(%rbp), %ecx
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-216(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_17
# BB#16:                                # %if.then.41
                                        #   in Loop: Header=BB4_6 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	cvtsi2sdl	-156(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB4_17:                               # %if.end.44
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               # %for.inc.45
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -152(%rbp)
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -144(%rbp)
	jmp	.LBB4_6
.LBB4_19:                               # %for.end.48
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_drawable_flush@PLT
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_merge_shadow@PLT
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %edi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %r8d
	subl	-124(%rbp), %r8d
	movl	-136(%rbp), %r9d
	subl	-128(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update@PLT
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB4_20:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rgn_iterator_src_dest, .Lfunc_end4-gimp_rgn_iterator_src_dest
	.cfi_endproc

	.globl	gimp_rgn_iterator_dest
	.align	16, 0x90
	.type	gimp_rgn_iterator_dest,@function
gimp_rgn_iterator_dest:                 # @gimp_rgn_iterator_dest
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterator_dest(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	leaq	-72(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	16(%r8), %r9d
	movq	-8(%rbp), %r8
	subl	8(%r8), %r9d
	movq	-8(%rbp), %r8
	movl	20(%r8), %r10d
	movq	-8(%rbp), %r8
	subl	12(%r8), %r10d
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	gimp_rgn_iterator_iter_single
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gimp_drawable_flush@PLT
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_merge_shadow@PLT
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	(%rcx), %edi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %r8d
	movq	-8(%rbp), %rcx
	subl	8(%rcx), %r8d
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %r9d
	movq	-8(%rbp), %rcx
	subl	12(%rcx), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB5_6:                                # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rgn_iterator_dest, .Lfunc_end5-gimp_rgn_iterator_dest
	.cfi_endproc

	.globl	gimp_rgn_iterate1
	.align	16, 0x90
	.type	gimp_rgn_iterate1,@function
gimp_rgn_iterate1:                      # @gimp_rgn_iterate1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterate1(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_21
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds@PLT
	movl	-92(%rbp), %edi
	subl	-84(%rbp), %edi
	movl	-96(%rbp), %r9d
	subl	-88(%rbp), %r9d
	imull	%r9d, %edi
	movl	%edi, -108(%rbp)
	movl	$0, -112(%rbp)
	cmpl	$0, -108(%rbp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jg	.LBB6_7
# BB#6:                                 # %if.then.3
	jmp	.LBB6_21
.LBB6_7:                                # %if.end.4
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-84(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-92(%rbp), %r8d
	subl	-84(%rbp), %r8d
	movl	-96(%rbp), %r9d
	subl	-88(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -104(%rbp)
	movl	$0, -116(%rbp)
.LBB6_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
                                        #       Child Loop BB6_12 Depth 3
	cmpq	$0, -104(%rbp)
	je	.LBB6_21
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB6_8 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -132(%rbp)
.LBB6_10:                               # %for.cond.10
                                        #   Parent Loop BB6_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_12 Depth 3
	movl	-132(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_17
# BB#11:                                # %for.body.12
                                        #   in Loop: Header=BB6_10 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -148(%rbp)
.LBB6_12:                               # %for.cond.13
                                        #   Parent Loop BB6_8 Depth=1
                                        #     Parent Loop BB6_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-148(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB6_15
# BB#13:                                # %for.body.15
                                        #   in Loop: Header=BB6_12 Depth=3
	movq	-24(%rbp), %rax
	movq	-144(%rbp), %rdi
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	-64(%rbp), %esi
	movq	-144(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -144(%rbp)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB6_12 Depth=3
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_12
.LBB6_15:                               # %for.end
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-60(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
# BB#16:                                # %for.inc.19
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB6_10
.LBB6_17:                               # %for.end.21
                                        #   in Loop: Header=BB6_8 Depth=1
	movl	$16, %eax
	movl	-48(%rbp), %ecx
	imull	-44(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-116(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-160(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_19
# BB#18:                                # %if.then.26
                                        #   in Loop: Header=BB6_8 Depth=1
	cvtsi2sdl	-112(%rbp), %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB6_19:                               # %if.end.29
                                        #   in Loop: Header=BB6_8 Depth=1
	jmp	.LBB6_20
.LBB6_20:                               # %for.inc.30
                                        #   in Loop: Header=BB6_8 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
	jmp	.LBB6_8
.LBB6_21:                               # %for.end.33
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rgn_iterate1, .Lfunc_end6-gimp_rgn_iterate1
	.cfi_endproc

	.globl	gimp_rgn_iterate2
	.align	16, 0x90
	.type	gimp_rgn_iterate2,@function
gimp_rgn_iterate2:                      # @gimp_rgn_iterate2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgn_iterate2(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_14
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	leaq	-144(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds@PLT
	movl	-140(%rbp), %edi
	subl	-132(%rbp), %edi
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	imull	%r9d, %edi
	movl	%edi, -156(%rbp)
	movl	$0, -160(%rbp)
	cmpl	$0, -156(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jg	.LBB7_7
# BB#6:                                 # %if.then.3
	jmp	.LBB7_14
.LBB7_7:                                # %if.end.4
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	leaq	-128(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init@PLT
	movl	$2, %edi
	leaq	-80(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register@PLT
	movq	%rax, -152(%rbp)
	movl	$0, -164(%rbp)
.LBB7_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB7_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB7_8 Depth=1
	leaq	-80(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	gimp_rgn_render_region
	movl	$16, %eax
	movl	-48(%rbp), %r8d
	imull	-44(%rbp), %r8d
	addl	-160(%rbp), %r8d
	movl	%r8d, -160(%rbp)
	movl	-164(%rbp), %r8d
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-180(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB7_11
# BB#10:                                # %if.then.13
                                        #   in Loop: Header=BB7_8 Depth=1
	cvtsi2sdl	-160(%rbp), %xmm0
	cvtsi2sdl	-156(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update@PLT
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB7_11:                               # %if.end.16
                                        #   in Loop: Header=BB7_8 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_pixel_rgns_process@PLT
	movq	%rax, -152(%rbp)
	movl	-164(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -164(%rbp)
	jmp	.LBB7_8
.LBB7_13:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush@PLT
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow@PLT
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %r8d
	subl	-132(%rbp), %r8d
	movl	-144(%rbp), %r9d
	subl	-136(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update@PLT
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB7_14:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rgn_iterate2, .Lfunc_end7-gimp_rgn_iterate2
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgn_render_region,@function
gimp_rgn_render_region:                 # @gimp_rgn_render_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB8_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	gimp_rgn_render_row
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -48(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_1
.LBB8_4:                                # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rgn_render_region, .Lfunc_end8-gimp_rgn_render_region
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgn_render_row,@function
gimp_rgn_render_row:                    # @gimp_rgn_render_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	*%rax
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movl	-24(%rbp), %edx
	movq	-16(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_1
.LBB9_3:                                # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rgn_render_row, .Lfunc_end9-gimp_rgn_render_row
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_rgn_iterator_new,@object # @__func__.gimp_rgn_iterator_new
.L__func__.gimp_rgn_iterator_new:
	.asciz	"gimp_rgn_iterator_new"
	.size	.L__func__.gimp_rgn_iterator_new, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"drawable != NULL"
	.size	.L.str.1, 17

	.type	.L__func__.gimp_rgn_iterator_free,@object # @__func__.gimp_rgn_iterator_free
.L__func__.gimp_rgn_iterator_free:
	.asciz	"gimp_rgn_iterator_free"
	.size	.L__func__.gimp_rgn_iterator_free, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"iter != NULL"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_rgn_iterator_src,@object # @__func__.gimp_rgn_iterator_src
.L__func__.gimp_rgn_iterator_src:
	.asciz	"gimp_rgn_iterator_src"
	.size	.L__func__.gimp_rgn_iterator_src, 22

	.type	.L__func__.gimp_rgn_iterator_src_dest,@object # @__func__.gimp_rgn_iterator_src_dest
.L__func__.gimp_rgn_iterator_src_dest:
	.asciz	"gimp_rgn_iterator_src_dest"
	.size	.L__func__.gimp_rgn_iterator_src_dest, 27

	.type	.L__func__.gimp_rgn_iterator_dest,@object # @__func__.gimp_rgn_iterator_dest
.L__func__.gimp_rgn_iterator_dest:
	.asciz	"gimp_rgn_iterator_dest"
	.size	.L__func__.gimp_rgn_iterator_dest, 23

	.type	.L__func__.gimp_rgn_iterate1,@object # @__func__.gimp_rgn_iterate1
.L__func__.gimp_rgn_iterate1:
	.asciz	"gimp_rgn_iterate1"
	.size	.L__func__.gimp_rgn_iterate1, 18

	.type	.L__func__.gimp_rgn_iterate2,@object # @__func__.gimp_rgn_iterate2
.L__func__.gimp_rgn_iterate2:
	.asciz	"gimp_rgn_iterate2"
	.size	.L__func__.gimp_rgn_iterate2, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
