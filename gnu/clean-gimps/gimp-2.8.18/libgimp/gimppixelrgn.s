	.text
	.file	"gimppixelrgn.bc"
	.globl	gimp_pixel_rgn_init
	.align	16, 0x90
	.type	gimp_pixel_rgn_init,@function
gimp_pixel_rgn_init:                    # @gimp_pixel_rgn_init
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
	subq	$48, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_init(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_23
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_init(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_23
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpl	$0, -20(%rbp)
	jl	.LBB0_14
# BB#12:                                # %land.lhs.true
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB0_14
# BB#13:                                # %if.then.11
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.12
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_init(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_23
.LBB0_15:                               # %if.end.13
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.14
	jmp	.LBB0_17
.LBB0_17:                               # %do.body.15
	cmpl	$0, -24(%rbp)
	jl	.LBB0_20
# BB#18:                                # %land.lhs.true.17
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB0_20
# BB#19:                                # %if.then.21
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.22
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_init(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB0_23
.LBB0_21:                               # %if.end.23
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.24
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rax
	movb	%dl, %sil
	movb	40(%rax), %dil
	andb	$1, %sil
	andb	$-2, %dil
	orb	%sil, %dil
	movb	%dil, 40(%rax)
	movl	-40(%rbp), %edx
	movq	-8(%rbp), %rax
	movb	%dl, %sil
	movb	40(%rax), %dil
	andb	$1, %sil
	shlb	$1, %sil
	andb	$-3, %dil
	orb	%sil, %dil
	movb	%dil, 40(%rax)
.LBB0_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pixel_rgn_init, .Lfunc_end0-gimp_pixel_rgn_init
	.cfi_endproc

	.globl	gimp_pixel_rgn_resize
	.align	16, 0x90
	.type	gimp_pixel_rgn_resize,@function
gimp_pixel_rgn_resize:                  # @gimp_pixel_rgn_resize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_resize(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_19
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.end
	jmp	.LBB1_7
.LBB1_7:                                # %do.body.2
	cmpl	$0, -12(%rbp)
	jl	.LBB1_10
# BB#8:                                 # %land.lhs.true.4
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_resize(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_19
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end.11
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.12
	cmpl	$0, -16(%rbp)
	jl	.LBB1_16
# BB#14:                                # %land.lhs.true.14
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB1_16
# BB#15:                                # %if.then.19
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.20
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_resize(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_19
.LBB1_17:                               # %if.end.21
	jmp	.LBB1_18
.LBB1_18:                               # %do.end.22
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 36(%rcx)
.LBB1_19:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pixel_rgn_resize, .Lfunc_end1-gimp_pixel_rgn_resize
	.cfi_endproc

	.globl	gimp_pixel_rgn_get_pixel
	.align	16, 0x90
	.type	gimp_pixel_rgn_get_pixel,@function
gimp_pixel_rgn_get_pixel:               # @gimp_pixel_rgn_get_pixel
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_pixel(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_23
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	jmp	.LBB2_7
.LBB2_7:                                # %do.body.2
	cmpl	$0, -20(%rbp)
	jl	.LBB2_10
# BB#8:                                 # %land.lhs.true.4
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB2_10
# BB#9:                                 # %if.then.7
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.8
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_pixel(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_23
.LBB2_11:                               # %if.end.9
	jmp	.LBB2_12
.LBB2_12:                               # %do.end.10
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpl	$0, -24(%rbp)
	jl	.LBB2_16
# BB#14:                                # %land.lhs.true.13
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB2_16
# BB#15:                                # %if.then.16
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.17
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_pixel(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_23
.LBB2_17:                               # %if.end.18
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.19
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-72(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-64(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-84(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-76(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-60(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-56(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB2_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB2_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB2_19
.LBB2_22:                               # %for.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_tile_unref@PLT
.LBB2_23:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pixel_rgn_get_pixel, .Lfunc_end2-gimp_pixel_rgn_get_pixel
	.cfi_endproc

	.globl	gimp_pixel_rgn_get_row
	.align	16, 0x90
	.type	gimp_pixel_rgn_get_row,@function
gimp_pixel_rgn_get_row:                 # @gimp_pixel_rgn_get_row
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_row(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_34
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	jmp	.LBB3_7
.LBB3_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.4
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_row(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_34
.LBB3_10:                               # %if.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.end.7
	jmp	.LBB3_12
.LBB3_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB3_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_row(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_34
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.18
	cmpl	$0, -24(%rbp)
	jl	.LBB3_21
# BB#19:                                # %land.lhs.true.20
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_21
# BB#20:                                # %if.then.23
	jmp	.LBB3_22
.LBB3_21:                               # %if.else.24
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_row(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_34
.LBB3_22:                               # %if.end.25
	jmp	.LBB3_23
.LBB3_23:                               # %do.end.26
	jmp	.LBB3_24
.LBB3_24:                               # %do.body.27
	cmpl	$0, -28(%rbp)
	jl	.LBB3_26
# BB#25:                                # %if.then.29
	jmp	.LBB3_27
.LBB3_26:                               # %if.else.30
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_row(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_34
.LBB3_27:                               # %if.end.31
	jmp	.LBB3_28
.LBB3_28:                               # %do.end.32
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB3_29:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB3_34
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-80(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-76(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -48(%rbp)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %r8d
	movl	-20(%rbp), %r10d
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	%r8d, %edx
	movl	%edx, -60(%rbp)
	movl	-32(%rbp), %edx
	cmpl	-60(%rbp), %edx
	jge	.LBB3_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB3_33
.LBB3_32:                               # %cond.false
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB3_33:                               # %cond.end
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	xorl	%esi, %esi
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	-56(%rbp), %edx
	subl	-20(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	callq	memcpy@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movq	-40(%rbp), %rdi
	movl	-124(%rbp), %esi        # 4-byte Reload
	callq	gimp_tile_unref@PLT
	jmp	.LBB3_29
.LBB3_34:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pixel_rgn_get_row, .Lfunc_end3-gimp_pixel_rgn_get_row
	.cfi_endproc

	.globl	gimp_pixel_rgn_get_col
	.align	16, 0x90
	.type	gimp_pixel_rgn_get_col,@function
gimp_pixel_rgn_get_col:                 # @gimp_pixel_rgn_get_col
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_col(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_41
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.end
	jmp	.LBB4_7
.LBB4_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.4
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_col(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_41
.LBB4_10:                               # %if.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.end.7
	jmp	.LBB4_12
.LBB4_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB4_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_col(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_41
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jl	.LBB4_21
# BB#19:                                # %land.lhs.true.19
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB4_21
# BB#20:                                # %if.then.23
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.24
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_col(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_41
.LBB4_22:                               # %if.end.25
	jmp	.LBB4_23
.LBB4_23:                               # %do.end.26
	jmp	.LBB4_24
.LBB4_24:                               # %do.body.27
	cmpl	$0, -28(%rbp)
	jl	.LBB4_26
# BB#25:                                # %if.then.29
	jmp	.LBB4_27
.LBB4_26:                               # %if.else.30
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_col(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_41
.LBB4_27:                               # %if.end.31
	jmp	.LBB4_28
.LBB4_28:                               # %do.end.32
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB4_29:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_31 Depth 2
                                        #       Child Loop BB4_35 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_41
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-80(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-76(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -48(%rbp)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %r8d
	movl	-24(%rbp), %r10d
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	%r8d, %edx
	movl	%edx, -56(%rbp)
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %edx
	movq	-40(%rbp), %rdi
	imull	(%rdi), %edx
	movl	%edx, -52(%rbp)
.LBB4_31:                               # %for.cond
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_35 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	movb	%cl, -117(%rbp)         # 1-byte Spill
	jge	.LBB4_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	setl	%cl
	movb	%cl, -117(%rbp)         # 1-byte Spill
.LBB4_33:                               # %land.end
                                        #   in Loop: Header=BB4_31 Depth=2
	movb	-117(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_34
	jmp	.LBB4_40
.LBB4_34:                               # %for.body
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	$0, -60(%rbp)
.LBB4_35:                               # %for.cond.49
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB4_38
# BB#36:                                # %for.body.52
                                        #   in Loop: Header=BB4_35 Depth=3
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	%dl, (%rax)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB4_35 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_35
.LBB4_38:                               # %for.end
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#39:                                # %for.inc.56
                                        #   in Loop: Header=BB4_31 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB4_31
.LBB4_40:                               # %for.end.58
                                        #   in Loop: Header=BB4_29 Depth=1
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_tile_unref@PLT
	jmp	.LBB4_29
.LBB4_41:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pixel_rgn_get_col, .Lfunc_end4-gimp_pixel_rgn_get_col
	.cfi_endproc

	.globl	gimp_pixel_rgn_get_rect
	.align	16, 0x90
	.type	gimp_pixel_rgn_get_rect,@function
gimp_pixel_rgn_get_rect:                # @gimp_pixel_rgn_get_rect
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_5
.LBB5_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.end
	jmp	.LBB5_7
.LBB5_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB5_9
# BB#8:                                 # %if.then.4
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_10:                               # %if.end.6
	jmp	.LBB5_11
.LBB5_11:                               # %do.end.7
	jmp	.LBB5_12
.LBB5_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB5_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB5_15
# BB#14:                                # %if.then.14
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_16:                               # %if.end.16
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.18
	cmpl	$0, -24(%rbp)
	jl	.LBB5_21
# BB#19:                                # %land.lhs.true.20
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB5_21
# BB#20:                                # %if.then.25
	jmp	.LBB5_22
.LBB5_21:                               # %if.else.26
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_22:                               # %if.end.27
	jmp	.LBB5_23
.LBB5_23:                               # %do.end.28
	jmp	.LBB5_24
.LBB5_24:                               # %do.body.29
	cmpl	$0, -28(%rbp)
	jl	.LBB5_26
# BB#25:                                # %if.then.31
	jmp	.LBB5_27
.LBB5_26:                               # %if.else.32
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_27:                               # %if.end.33
	jmp	.LBB5_28
.LBB5_28:                               # %do.end.34
	jmp	.LBB5_29
.LBB5_29:                               # %do.body.35
	cmpl	$0, -32(%rbp)
	jl	.LBB5_31
# BB#30:                                # %if.then.37
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.38
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_get_rect(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_49
.LBB5_32:                               # %if.end.39
	jmp	.LBB5_33
.LBB5_33:                               # %do.end.40
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB5_34:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_36 Depth 2
                                        #       Child Loop BB5_44 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_49
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB5_34 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB5_36:                               # %while.cond.46
                                        #   Parent Loop BB5_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_44 Depth 3
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_48
# BB#37:                                # %while.body.49
                                        #   in Loop: Header=BB5_36 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	%r8d, -68(%rbp)
	movq	-88(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	-24(%rbp), %r8d
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-128(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-120(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	%r8d, -72(%rbp)
	movl	-20(%rbp), %edx
	addl	-68(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-24(%rbp), %edx
	addl	-72(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-60(%rbp), %edx
	cmpl	-52(%rbp), %edx
	jge	.LBB5_39
# BB#38:                                # %cond.true
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB5_40
.LBB5_39:                               # %cond.false
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB5_40:                               # %cond.end
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_42
# BB#41:                                # %cond.true.61
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB5_43
.LBB5_42:                               # %cond.false.62
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB5_43:                               # %cond.end.63
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB5_44:                               # %for.cond
                                        #   Parent Loop BB5_34 Depth=1
                                        #     Parent Loop BB5_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB5_47
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB5_44 Depth=3
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-88(%rbp), %rcx
	movl	(%rcx), %esi
	movl	-76(%rbp), %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%edi, -156(%rbp)        # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-156(%rbp), %edx        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-160(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-152(%rbp), %edi        # 4-byte Reload
	imull	%edx, %edi
	movl	-20(%rbp), %edx
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movl	%edx, -168(%rbp)        # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-172(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-164(%rbp), %edi        # 4-byte Reload
	addl	%edx, %edi
	movl	-148(%rbp), %edx        # 4-byte Reload
	imull	%edi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-144(%rbp), %r8         # 8-byte Reload
	addq	%rcx, %r8
	movq	%r8, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %r8
	movl	-76(%rbp), %edx
	subl	-48(%rbp), %edx
	movslq	%edx, %r9
	imulq	%r9, %r8
	addq	%r8, %rcx
	movl	-80(%rbp), %edx
	movl	-20(%rbp), %edi
	subl	-44(%rbp), %edi
	imull	%edi, %edx
	movslq	%edx, %r8
	addq	%r8, %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-60(%rbp), %edx
	subl	-20(%rbp), %edx
	imull	-80(%rbp), %edx
	movslq	%edx, %rdx
	callq	memcpy@PLT
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB5_44 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_44
.LBB5_47:                               # %for.end
                                        #   in Loop: Header=BB5_36 Depth=2
	xorl	%esi, %esi
	movq	-88(%rbp), %rdi
	callq	gimp_tile_unref@PLT
	movl	-68(%rbp), %esi
	addl	-20(%rbp), %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB5_36
.LBB5_48:                               # %while.end
                                        #   in Loop: Header=BB5_34 Depth=1
	movl	-72(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_34
.LBB5_49:                               # %while.end.89
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pixel_rgn_get_rect, .Lfunc_end5-gimp_pixel_rgn_get_rect
	.cfi_endproc

	.globl	gimp_pixel_rgn_set_pixel
	.align	16, 0x90
	.type	gimp_pixel_rgn_set_pixel,@function
gimp_pixel_rgn_set_pixel:               # @gimp_pixel_rgn_set_pixel
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_pixel(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.4
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_pixel(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_10:                               # %if.end.6
	jmp	.LBB6_11
.LBB6_11:                               # %do.end.7
	jmp	.LBB6_12
.LBB6_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB6_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_pixel(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jl	.LBB6_21
# BB#19:                                # %land.lhs.true.19
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_21
# BB#20:                                # %if.then.22
	jmp	.LBB6_22
.LBB6_21:                               # %if.else.23
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_pixel(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_28
.LBB6_22:                               # %if.end.24
	jmp	.LBB6_23
.LBB6_23:                               # %do.end.25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-72(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-64(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-80(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-84(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-76(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-60(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-56(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB6_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_27
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_24
.LBB6_27:                               # %for.end
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_tile_unref@PLT
.LBB6_28:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pixel_rgn_set_pixel, .Lfunc_end6-gimp_pixel_rgn_set_pixel
	.cfi_endproc

	.globl	gimp_pixel_rgn_set_row
	.align	16, 0x90
	.type	gimp_pixel_rgn_set_row,@function
gimp_pixel_rgn_set_row:                 # @gimp_pixel_rgn_set_row
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_row(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_34
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB7_9
# BB#8:                                 # %if.then.4
	jmp	.LBB7_10
.LBB7_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_row(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_34
.LBB7_10:                               # %if.end.6
	jmp	.LBB7_11
.LBB7_11:                               # %do.end.7
	jmp	.LBB7_12
.LBB7_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB7_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB7_15
# BB#14:                                # %if.then.14
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_row(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_34
.LBB7_16:                               # %if.end.16
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.17
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.18
	cmpl	$0, -24(%rbp)
	jl	.LBB7_21
# BB#19:                                # %land.lhs.true.20
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB7_21
# BB#20:                                # %if.then.23
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.24
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_row(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_34
.LBB7_22:                               # %if.end.25
	jmp	.LBB7_23
.LBB7_23:                               # %do.end.26
	jmp	.LBB7_24
.LBB7_24:                               # %do.body.27
	cmpl	$0, -28(%rbp)
	jl	.LBB7_26
# BB#25:                                # %if.then.29
	jmp	.LBB7_27
.LBB7_26:                               # %if.else.30
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_row(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB7_34
.LBB7_27:                               # %if.end.31
	jmp	.LBB7_28
.LBB7_28:                               # %do.end.32
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB7_29:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB7_34
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB7_29 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-80(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-76(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -48(%rbp)
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %r8d
	movl	-20(%rbp), %r10d
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	%r8d, %edx
	movl	%edx, -64(%rbp)
	movl	-60(%rbp), %edx
	cmpl	-64(%rbp), %edx
	jge	.LBB7_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB7_29 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %cond.false
                                        #   in Loop: Header=BB7_29 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB7_33:                               # %cond.end
                                        #   in Loop: Header=BB7_29 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	$1, %esi
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	-56(%rbp), %edx
	subl	-20(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	callq	memcpy@PLT
	movl	-56(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movq	-40(%rbp), %rdi
	movl	-124(%rbp), %esi        # 4-byte Reload
	callq	gimp_tile_unref@PLT
	jmp	.LBB7_29
.LBB7_34:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_pixel_rgn_set_row, .Lfunc_end7-gimp_pixel_rgn_set_row
	.cfi_endproc

	.globl	gimp_pixel_rgn_set_col
	.align	16, 0x90
	.type	gimp_pixel_rgn_set_col,@function
gimp_pixel_rgn_set_col:                 # @gimp_pixel_rgn_set_col
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_col(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_41
.LBB8_5:                                # %if.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB8_9
# BB#8:                                 # %if.then.4
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_col(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_41
.LBB8_10:                               # %if.end.6
	jmp	.LBB8_11
.LBB8_11:                               # %do.end.7
	jmp	.LBB8_12
.LBB8_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB8_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_col(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_41
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jl	.LBB8_21
# BB#19:                                # %land.lhs.true.19
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB8_21
# BB#20:                                # %if.then.23
	jmp	.LBB8_22
.LBB8_21:                               # %if.else.24
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_col(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_41
.LBB8_22:                               # %if.end.25
	jmp	.LBB8_23
.LBB8_23:                               # %do.end.26
	jmp	.LBB8_24
.LBB8_24:                               # %do.body.27
	cmpl	$0, -28(%rbp)
	jl	.LBB8_26
# BB#25:                                # %if.then.29
	jmp	.LBB8_27
.LBB8_26:                               # %if.else.30
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_col(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_41
.LBB8_27:                               # %if.end.31
	jmp	.LBB8_28
.LBB8_28:                               # %do.end.32
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB8_29:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_31 Depth 2
                                        #       Child Loop BB8_35 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_41
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB8_29 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-40(%rbp), %rdi
	movl	(%rdi), %edx
	movl	-24(%rbp), %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-88(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-80(%rbp), %r8d         # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%edx, -96(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-100(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-92(%rbp), %r8d         # 4-byte Reload
	addl	%edx, %r8d
	movl	-76(%rbp), %edx         # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %edi
	movq	-72(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	movq	%r9, -48(%rbp)
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rdi
	movl	4(%rdi), %r8d
	movl	-24(%rbp), %r10d
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	-104(%rbp), %edx        # 4-byte Reload
	addl	%r8d, %edx
	movl	%edx, -56(%rbp)
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %edx
	movq	-40(%rbp), %rdi
	imull	(%rdi), %edx
	movl	%edx, -52(%rbp)
.LBB8_31:                               # %for.cond
                                        #   Parent Loop BB8_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_35 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	movb	%cl, -117(%rbp)         # 1-byte Spill
	jge	.LBB8_33
# BB#32:                                # %land.rhs
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	setl	%cl
	movb	%cl, -117(%rbp)         # 1-byte Spill
.LBB8_33:                               # %land.end
                                        #   in Loop: Header=BB8_31 Depth=2
	movb	-117(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_34
	jmp	.LBB8_40
.LBB8_34:                               # %for.body
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	$0, -60(%rbp)
.LBB8_35:                               # %for.cond.49
                                        #   Parent Loop BB8_29 Depth=1
                                        #     Parent Loop BB8_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB8_38
# BB#36:                                # %for.body.52
                                        #   in Loop: Header=BB8_35 Depth=3
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movslq	-60(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB8_35 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB8_35
.LBB8_38:                               # %for.end
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
# BB#39:                                # %for.inc.56
                                        #   in Loop: Header=BB8_31 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB8_31
.LBB8_40:                               # %for.end.58
                                        #   in Loop: Header=BB8_29 Depth=1
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_tile_unref@PLT
	jmp	.LBB8_29
.LBB8_41:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_pixel_rgn_set_col, .Lfunc_end8-gimp_pixel_rgn_set_col
	.cfi_endproc

	.globl	gimp_pixel_rgn_set_rect
	.align	16, 0x90
	.type	gimp_pixel_rgn_set_rect,@function
gimp_pixel_rgn_set_rect:                # @gimp_pixel_rgn_set_rect
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.end
	jmp	.LBB9_7
.LBB9_7:                                # %do.body.2
	cmpq	$0, -16(%rbp)
	je	.LBB9_9
# BB#8:                                 # %if.then.4
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_10:                               # %if.end.6
	jmp	.LBB9_11
.LBB9_11:                               # %do.end.7
	jmp	.LBB9_12
.LBB9_12:                               # %do.body.8
	cmpl	$0, -20(%rbp)
	jl	.LBB9_15
# BB#13:                                # %land.lhs.true.10
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	4(%rcx), %eax
	ja	.LBB9_15
# BB#14:                                # %if.then.14
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.15
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_16:                               # %if.end.16
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.17
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.18
	cmpl	$0, -24(%rbp)
	jl	.LBB9_21
# BB#19:                                # %land.lhs.true.20
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB9_21
# BB#20:                                # %if.then.25
	jmp	.LBB9_22
.LBB9_21:                               # %if.else.26
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_22:                               # %if.end.27
	jmp	.LBB9_23
.LBB9_23:                               # %do.end.28
	jmp	.LBB9_24
.LBB9_24:                               # %do.body.29
	cmpl	$0, -28(%rbp)
	jl	.LBB9_26
# BB#25:                                # %if.then.31
	jmp	.LBB9_27
.LBB9_26:                               # %if.else.32
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_27:                               # %if.end.33
	jmp	.LBB9_28
.LBB9_28:                               # %do.end.34
	jmp	.LBB9_29
.LBB9_29:                               # %do.body.35
	cmpl	$0, -32(%rbp)
	jl	.LBB9_31
# BB#30:                                # %if.then.37
	jmp	.LBB9_32
.LBB9_31:                               # %if.else.38
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgn_set_rect(%rip), %rsi
	leaq	.L.str.12(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_49
.LBB9_32:                               # %if.end.39
	jmp	.LBB9_33
.LBB9_33:                               # %do.end.40
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	imull	-28(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -44(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-24(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB9_34:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_36 Depth 2
                                        #       Child Loop BB9_44 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB9_49
# BB#35:                                # %while.body
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB9_36:                               # %while.cond.46
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_44 Depth 3
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB9_48
# BB#37:                                # %while.body.49
                                        #   in Loop: Header=BB9_36 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %eax
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-112(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-116(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	%r8d, -68(%rbp)
	movq	-88(%rbp), %rdi
	movl	4(%rdi), %edx
	movl	-24(%rbp), %r8d
	movl	%edx, -120(%rbp)        # 4-byte Spill
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-128(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	-120(%rbp), %r8d        # 4-byte Reload
	subl	%edx, %r8d
	movl	%r8d, -72(%rbp)
	movl	-20(%rbp), %edx
	addl	-68(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-24(%rbp), %edx
	addl	-72(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-60(%rbp), %edx
	cmpl	-52(%rbp), %edx
	jge	.LBB9_39
# BB#38:                                # %cond.true
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB9_40
.LBB9_39:                               # %cond.false
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB9_40:                               # %cond.end
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB9_42
# BB#41:                                # %cond.true.61
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-64(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false.62
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB9_43:                               # %cond.end.63
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB9_44:                               # %for.cond
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB9_47
# BB#45:                                # %for.body
                                        #   in Loop: Header=BB9_44 Depth=3
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	-76(%rbp), %edx
	subl	-48(%rbp), %edx
	movslq	%edx, %rsi
	imulq	%rsi, %rcx
	addq	%rcx, %rax
	movl	-80(%rbp), %edx
	movl	-20(%rbp), %edi
	subl	-44(%rbp), %edi
	imull	%edi, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %edx
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-76(%rbp), %r8d
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%edi, -152(%rbp)        # 4-byte Spill
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-156(%rbp), %edx        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-160(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	-152(%rbp), %r8d        # 4-byte Reload
	imull	%edx, %r8d
	movl	-20(%rbp), %edx
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%edx, -168(%rbp)        # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-172(%rbp), %edi        # 4-byte Reload
	divl	%edi
	movl	-164(%rbp), %r8d        # 4-byte Reload
	addl	%edx, %r8d
	movl	-148(%rbp), %edx        # 4-byte Reload
	imull	%r8d, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rcx, %rsi
	movq	%rsi, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-60(%rbp), %edx
	subl	-20(%rbp), %edx
	imull	-80(%rbp), %edx
	movslq	%edx, %rdx
	callq	memcpy@PLT
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB9_44 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_44
.LBB9_47:                               # %for.end
                                        #   in Loop: Header=BB9_36 Depth=2
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	gimp_tile_unref@PLT
	movl	-68(%rbp), %esi
	addl	-20(%rbp), %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB9_36
.LBB9_48:                               # %while.end
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-72(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_34
.LBB9_49:                               # %while.end.89
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_pixel_rgn_set_rect, .Lfunc_end9-gimp_pixel_rgn_set_rect
	.cfi_endproc

	.globl	gimp_pixel_rgns_register2
	.align	16, 0x90
	.type	gimp_pixel_rgns_register2,@function
gimp_pixel_rgns_register2:              # @gimp_pixel_rgns_register2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgns_register2(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_20
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.3
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgns_register2(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_20
.LBB10_9:                               # %if.end.5
	jmp	.LBB10_10
.LBB10_10:                              # %do.end.6
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB10_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB10_19
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	$32, %eax
	movl	%eax, %edi
	movslq	-12(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	callq	g_slice_alloc0@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB10_18
# BB#13:                                # %if.then.10
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_15
# BB#14:                                # %if.then.12
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
.LBB10_15:                              # %if.end.13
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-48(%rbp), %rax
	movl	28(%rax), %edx
	movq	-56(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 44(%rax)
	cmpl	$0, -36(%rbp)
	jne	.LBB10_17
# BB#16:                                # %if.then.17
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	$1, -36(%rbp)
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB10_17:                              # %if.end.18
                                        #   in Loop: Header=BB10_11 Depth=1
	jmp	.LBB10_18
.LBB10_18:                              # %if.end.19
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB10_11
.LBB10_19:                              # %while.end
	movq	-32(%rbp), %rdi
	callq	gimp_pixel_rgns_configure
	movq	%rax, -8(%rbp)
.LBB10_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_pixel_rgns_register2, .Lfunc_end10-gimp_pixel_rgns_register2
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pixel_rgns_configure,@function
gimp_pixel_rgns_configure:              # @gimp_pixel_rgns_configure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_portion_width
	movq	-16(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_get_portion_height
	movq	-16(%rbp), %rdi
	movl	%eax, 20(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$0, 16(%rdi)
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB11_11
.LBB11_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %do.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$32, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1@PLT
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_3
.LBB11_8:                               # %for.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_slist_free@PLT
# BB#9:                                 # %do.body.6
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#10:                                # %do.end.7
	movq	$0, -8(%rbp)
	jmp	.LBB11_19
.LBB11_11:                              # %if.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB11_12:                              # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB11_18
# BB#13:                                # %for.body.11
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_16
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	.LBB11_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_pixel_rgn_configure
.LBB11_16:                              # %if.end.22
                                        #   in Loop: Header=BB11_12 Depth=1
	jmp	.LBB11_17
.LBB11_17:                              # %for.inc.23
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB11_12
.LBB11_18:                              # %for.end.25
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_pixel_rgns_configure, .Lfunc_end11-gimp_pixel_rgns_configure
	.cfi_endproc

	.globl	gimp_pixel_rgns_register
	.align	16, 0x90
	.type	gimp_pixel_rgns_register,@function
gimp_pixel_rgns_register:               # @gimp_pixel_rgns_register
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$448, %rsp              # imm = 0x1C0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movl	%edi, -372(%rbp)        # 4-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB12_14
# BB#13:                                # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB12_14:                              # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -232(%rbp)
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgns_register(%rip), %rsi
	leaq	.L.str.13(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_12
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	leaq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	leaq	15(,%rcx,8), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -24(%rbp)
	leaq	-240(%rbp), %rcx
	movq	%rcx, 16(%rax)
	leaq	16(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movl	$48, 4(%rax)
	movl	$8, (%rax)
	movl	-12(%rbp), %esi
	movl	%esi, -28(%rbp)
.LBB12_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB12_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB12_6 Depth=1
	leaq	-64(%rbp), %rax
	movl	-64(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	ja	.LBB12_9
# BB#8:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB12_6 Depth=1
	movl	-428(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-424(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -440(%rbp)        # 8-byte Spill
.LBB12_10:                              # %vaarg.end
                                        #   in Loop: Header=BB12_6 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB12_6
.LBB12_11:                              # %for.end
	leaq	-64(%rbp), %rax
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgns_register2@PLT
	movq	%rax, -8(%rbp)
.LBB12_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_pixel_rgns_register, .Lfunc_end12-gimp_pixel_rgns_register
	.cfi_endproc

	.globl	gimp_pixel_rgns_process
	.align	16, 0x90
	.type	gimp_pixel_rgns_process,@function
gimp_pixel_rgns_process:                # @gimp_pixel_rgns_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_rgns_process(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_17
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB13_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_16
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_14
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	.LBB13_14
# BB#9:                                 # %if.then.6
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 44(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movb	40(%rax), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gimp_tile_unref@PLT
.LBB13_11:                              # %if.end.22
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addl	24(%rax), %ecx
	movl	%ecx, 24(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	8(%rax), %ecx
	jl	.LBB13_13
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addl	28(%rax), %ecx
	movl	%ecx, 28(%rax)
.LBB13_13:                              # %if.end.35
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_14
.LBB13_14:                              # %if.end.36
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_6
.LBB13_16:                              # %for.end
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_rgns_configure
	movq	%rax, -8(%rbp)
.LBB13_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_pixel_rgns_process, .Lfunc_end13-gimp_pixel_rgns_process
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_portion_width,@function
gimp_get_portion_width:                 # @gimp_get_portion_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_17
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jl	.LBB14_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB14_20
.LBB14_5:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB14_13
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB14_1 Depth=1
	callq	gimp_tile_width@PLT
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	24(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-44(%rbp), %edi         # 4-byte Reload
	subl	%edx, %edi
	movl	%edi, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	24(%rcx), %r8d
	movq	-40(%rbp), %rcx
	subl	16(%rcx), %r8d
	subl	%r8d, %edi
	cmpl	%edi, %edx
	jle	.LBB14_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB14_12
.LBB14_8:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB14_10
# BB#9:                                 # %cond.true.25
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.26
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB14_11:                              # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB14_12:                              # %cond.end.27
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB14_14
.LBB14_13:                              # %if.else
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)
.LBB14_14:                              # %if.end.35
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB14_16:                              # %if.end.38
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.39
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_18
.LBB14_18:                              # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_1
.LBB14_19:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_get_portion_width, .Lfunc_end14-gimp_get_portion_width
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_portion_height,@function
gimp_get_portion_height:                # @gimp_get_portion_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_17
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB15_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB15_20
.LBB15_5:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB15_13
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB15_1 Depth=1
	callq	gimp_tile_height@PLT
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	28(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-48(%rbp), %edx         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-52(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-44(%rbp), %edi         # 4-byte Reload
	subl	%edx, %edi
	movl	%edi, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	28(%rcx), %r8d
	movq	-40(%rbp), %rcx
	subl	20(%rcx), %r8d
	subl	%r8d, %edi
	cmpl	%edi, %edx
	jle	.LBB15_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-40(%rbp), %rax
	subl	20(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB15_12
.LBB15_8:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB15_10
# BB#9:                                 # %cond.true.25
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB15_11:                              # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB15_12:                              # %cond.end.27
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB15_14
.LBB15_13:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %edx
	movq	-40(%rbp), %rax
	subl	20(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)
.LBB15_14:                              # %if.end.35
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_16
# BB#15:                                # %if.then.37
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB15_16:                              # %if.end.38
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.39
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_19:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB15_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_get_portion_height, .Lfunc_end15-gimp_get_portion_height
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pixel_rgn_configure,@function
gimp_pixel_rgn_configure:               # @gimp_pixel_rgn_configure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movb	40(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	28(%rax), %ecx
	callq	gimp_drawable_get_tile2@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_tile_ref@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	24(%rax), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-40(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%edx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	28(%rdi), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	callq	gimp_tile_height@PLT
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-48(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	imull	16(%rdi), %edx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%edx, 20(%rdi)
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	-32(%rbp), %edx
	movq	-8(%rbp), %r8
	movq	(%r8), %r8
	imull	20(%r8), %edx
	movslq	%edx, %r8
	addq	%r8, %rdi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %r8
	movq	(%r8), %r8
	imull	16(%r8), %edx
	movslq	%edx, %r8
	addq	%r8, %rdi
	movq	-8(%rbp), %r8
	movq	(%r8), %r8
	movq	%rdi, (%r8)
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	28(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	20(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	24(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	16(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB16_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 36(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_pixel_rgn_configure, .Lfunc_end16-gimp_pixel_rgn_configure
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_pixel_rgn_init,@object # @__func__.gimp_pixel_rgn_init
.L__func__.gimp_pixel_rgn_init:
	.asciz	"gimp_pixel_rgn_init"
	.size	.L__func__.gimp_pixel_rgn_init, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"pr != NULL"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x >= 0 && x + width <= drawable->width"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"y >= 0 && y + height <= drawable->height"
	.size	.L.str.4, 41

	.type	.L__func__.gimp_pixel_rgn_resize,@object # @__func__.gimp_pixel_rgn_resize
.L__func__.gimp_pixel_rgn_resize:
	.asciz	"gimp_pixel_rgn_resize"
	.size	.L__func__.gimp_pixel_rgn_resize, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pr != NULL && pr->drawable != NULL"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x >= 0 && x + width <= pr->drawable->width"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"y >= 0 && y + height <= pr->drawable->height"
	.size	.L.str.7, 45

	.type	.L__func__.gimp_pixel_rgn_get_pixel,@object # @__func__.gimp_pixel_rgn_get_pixel
.L__func__.gimp_pixel_rgn_get_pixel:
	.asciz	"gimp_pixel_rgn_get_pixel"
	.size	.L__func__.gimp_pixel_rgn_get_pixel, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"x >= 0 && x < pr->drawable->width"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"y >= 0 && y < pr->drawable->height"
	.size	.L.str.9, 35

	.type	.L__func__.gimp_pixel_rgn_get_row,@object # @__func__.gimp_pixel_rgn_get_row
.L__func__.gimp_pixel_rgn_get_row:
	.asciz	"gimp_pixel_rgn_get_row"
	.size	.L__func__.gimp_pixel_rgn_get_row, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"buf != NULL"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"width >= 0"
	.size	.L.str.11, 11

	.type	.L__func__.gimp_pixel_rgn_get_col,@object # @__func__.gimp_pixel_rgn_get_col
.L__func__.gimp_pixel_rgn_get_col:
	.asciz	"gimp_pixel_rgn_get_col"
	.size	.L__func__.gimp_pixel_rgn_get_col, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"height >= 0"
	.size	.L.str.12, 12

	.type	.L__func__.gimp_pixel_rgn_get_rect,@object # @__func__.gimp_pixel_rgn_get_rect
.L__func__.gimp_pixel_rgn_get_rect:
	.asciz	"gimp_pixel_rgn_get_rect"
	.size	.L__func__.gimp_pixel_rgn_get_rect, 24

	.type	.L__func__.gimp_pixel_rgn_set_pixel,@object # @__func__.gimp_pixel_rgn_set_pixel
.L__func__.gimp_pixel_rgn_set_pixel:
	.asciz	"gimp_pixel_rgn_set_pixel"
	.size	.L__func__.gimp_pixel_rgn_set_pixel, 25

	.type	.L__func__.gimp_pixel_rgn_set_row,@object # @__func__.gimp_pixel_rgn_set_row
.L__func__.gimp_pixel_rgn_set_row:
	.asciz	"gimp_pixel_rgn_set_row"
	.size	.L__func__.gimp_pixel_rgn_set_row, 23

	.type	.L__func__.gimp_pixel_rgn_set_col,@object # @__func__.gimp_pixel_rgn_set_col
.L__func__.gimp_pixel_rgn_set_col:
	.asciz	"gimp_pixel_rgn_set_col"
	.size	.L__func__.gimp_pixel_rgn_set_col, 23

	.type	.L__func__.gimp_pixel_rgn_set_rect,@object # @__func__.gimp_pixel_rgn_set_rect
.L__func__.gimp_pixel_rgn_set_rect:
	.asciz	"gimp_pixel_rgn_set_rect"
	.size	.L__func__.gimp_pixel_rgn_set_rect, 24

	.type	.L__func__.gimp_pixel_rgns_register2,@object # @__func__.gimp_pixel_rgns_register2
.L__func__.gimp_pixel_rgns_register2:
	.asciz	"gimp_pixel_rgns_register2"
	.size	.L__func__.gimp_pixel_rgns_register2, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nrgns > 0"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"prs != NULL"
	.size	.L.str.14, 12

	.type	.L__func__.gimp_pixel_rgns_register,@object # @__func__.gimp_pixel_rgns_register
.L__func__.gimp_pixel_rgns_register:
	.asciz	"gimp_pixel_rgns_register"
	.size	.L__func__.gimp_pixel_rgns_register, 25

	.type	.L__func__.gimp_pixel_rgns_process,@object # @__func__.gimp_pixel_rgns_process
.L__func__.gimp_pixel_rgns_process:
	.asciz	"gimp_pixel_rgns_process"
	.size	.L__func__.gimp_pixel_rgns_process, 24

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pri_ptr != NULL"
	.size	.L.str.15, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
