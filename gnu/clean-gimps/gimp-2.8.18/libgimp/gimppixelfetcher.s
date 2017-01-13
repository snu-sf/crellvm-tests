	.text
	.file	"gimppixelfetcher.bc"
	.globl	gimp_pixel_fetcher_new
	.align	16, 0x90
	.type	gimp_pixel_fetcher_new,@function
gimp_pixel_fetcher_new:                 # @gimp_pixel_fetcher_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_width@PLT
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_height@PLT
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp@PLT
	movl	%eax, -44(%rbp)
# BB#6:                                 # %do.body.5
	cmpl	$0, -36(%rbp)
	jle	.LBB0_10
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -40(%rbp)
	jle	.LBB0_10
# BB#8:                                 # %land.lhs.true.8
	cmpl	$0, -44(%rbp)
	jle	.LBB0_10
# BB#9:                                 # %if.then.10
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.11
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.12
	jmp	.LBB0_12
.LBB0_12:                               # %do.end.13
	movl	$80, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rcx
	addq	$20, %rcx
	movq	-32(%rbp), %rdx
	addq	$24, %rdx
	movq	-32(%rbp), %rsi
	addq	$28, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	gimp_drawable_mask_bounds@PLT
	movq	-32(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-32(%rbp), %rcx
	movl	$-1, 4(%rcx)
	movl	-36(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	%edi, 8(%rcx)
	movl	-40(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	%edi, 12(%rcx)
	movl	-44(%rbp), %edi
	movq	-32(%rbp), %rcx
	movl	%edi, 32(%rcx)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_tile_width@PLT
	movq	-32(%rbp), %rcx
	movl	%eax, 36(%rcx)
	callq	gimp_tile_height@PLT
	movq	-32(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-32(%rbp), %rcx
	movb	$0, 44(%rcx)
	movq	-32(%rbp), %rcx
	movb	$0, 45(%rcx)
	movq	-32(%rbp), %rcx
	movb	$0, 46(%rcx)
	movq	-32(%rbp), %rcx
	movb	$-1, 47(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 48(%rcx)
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, 56(%rdx)
	movq	-32(%rbp), %rcx
	movq	$0, 64(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 72(%rcx)
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB0_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pixel_fetcher_new, .Lfunc_end0-gimp_pixel_fetcher_new
	.cfi_endproc

	.globl	gimp_pixel_fetcher_destroy
	.align	16, 0x90
	.type	gimp_pixel_fetcher_destroy,@function
gimp_pixel_fetcher_destroy:             # @gimp_pixel_fetcher_destroy
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
	leaq	.L__func__.gimp_pixel_fetcher_destroy(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	72(%rax), %esi
	callq	gimp_tile_unref@PLT
.LBB1_7:                                # %if.end.3
	jmp	.LBB1_8
.LBB1_8:                                # %do.body.4
	movl	$80, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
.LBB1_9:                                # %do.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pixel_fetcher_destroy, .Lfunc_end1-gimp_pixel_fetcher_destroy
	.cfi_endproc

	.globl	gimp_pixel_fetcher_set_edge_mode
	.align	16, 0x90
	.type	gimp_pixel_fetcher_set_edge_mode,@function
gimp_pixel_fetcher_set_edge_mode:       # @gimp_pixel_fetcher_set_edge_mode
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_set_edge_mode(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB2_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_pixel_fetcher_set_edge_mode, .Lfunc_end2-gimp_pixel_fetcher_set_edge_mode
	.cfi_endproc

	.globl	gimp_pixel_fetcher_set_bg_color
	.align	16, 0x90
	.type	gimp_pixel_fetcher_set_bg_color,@function
gimp_pixel_fetcher_set_bg_color:        # @gimp_pixel_fetcher_set_bg_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_set_bg_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_15
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_set_bg_color(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_15
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB3_15
# BB#16:                                # %do.end.6
	leaq	.LJTI3_0(%rip), %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB3_11:                               # %sw.bb
	movq	-8(%rbp), %rax
	movb	$-1, 45(%rax)
.LBB3_12:                               # %sw.bb.7
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar@PLT
	movq	-8(%rbp), %rdi
	movb	%al, 44(%rdi)
	jmp	.LBB3_15
.LBB3_13:                               # %sw.bb.10
	movq	-8(%rbp), %rax
	movb	$-1, 47(%rax)
.LBB3_14:                               # %sw.bb.13
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$44, %rax
	movq	-8(%rbp), %rcx
	addq	$44, %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rdx
	addq	$44, %rdx
	addq	$2, %rdx
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	gimp_rgb_get_uchar@PLT
.LBB3_15:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_pixel_fetcher_set_bg_color, .Lfunc_end3-gimp_pixel_fetcher_set_bg_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI3_0:
	.long	.LBB3_12-.LJTI3_0
	.long	.LBB3_11-.LJTI3_0
	.long	.LBB3_14-.LJTI3_0
	.long	.LBB3_13-.LJTI3_0

	.text
	.globl	gimp_pixel_fetcher_get_pixel
	.align	16, 0x90
	.type	gimp_pixel_fetcher_get_pixel,@function
gimp_pixel_fetcher_get_pixel:           # @gimp_pixel_fetcher_get_pixel
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_get_pixel(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_60
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_get_pixel(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_60
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB4_16
# BB#11:                                # %land.lhs.true
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	.LBB4_15
# BB#12:                                # %lor.lhs.false
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB4_15
# BB#13:                                # %lor.lhs.false.10
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jl	.LBB4_15
# BB#14:                                # %lor.lhs.false.12
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jl	.LBB4_16
.LBB4_15:                               # %if.then.14
	jmp	.LBB4_60
.LBB4_16:                               # %if.end.15
	cmpl	$0, -12(%rbp)
	jl	.LBB4_20
# BB#17:                                # %lor.lhs.false.17
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB4_20
# BB#18:                                # %lor.lhs.false.19
	cmpl	$0, -16(%rbp)
	jl	.LBB4_20
# BB#19:                                # %lor.lhs.false.21
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB4_57
.LBB4_20:                               # %if.then.23
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB4_55
# BB#61:                                # %if.then.23
	leaq	.LJTI4_0(%rip), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB4_21:                               # %sw.bb
	cmpl	$0, -12(%rbp)
	jl	.LBB4_23
# BB#22:                                # %lor.lhs.false.26
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB4_26
.LBB4_23:                               # %if.then.29
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB4_25
# BB#24:                                # %if.then.32
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -12(%rbp)
.LBB4_25:                               # %if.end.34
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.35
	cmpl	$0, -16(%rbp)
	jl	.LBB4_28
# BB#27:                                # %lor.lhs.false.37
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB4_31
.LBB4_28:                               # %if.then.40
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movl	-16(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jge	.LBB4_30
# BB#29:                                # %if.then.44
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
.LBB4_30:                               # %if.end.47
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.48
	jmp	.LBB4_56
.LBB4_32:                               # %sw.bb.49
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_34
# BB#33:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB4_38
.LBB4_34:                               # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB4_36
# BB#35:                                # %cond.true.55
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB4_37
.LBB4_36:                               # %cond.false.56
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_37:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB4_38:                               # %cond.end.57
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB4_40
# BB#39:                                # %cond.true.62
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB4_44
.LBB4_40:                               # %cond.false.65
	cmpl	$0, -16(%rbp)
	jge	.LBB4_42
# BB#41:                                # %cond.true.67
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB4_43
.LBB4_42:                               # %cond.false.68
	movl	-16(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB4_43:                               # %cond.end.69
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB4_44:                               # %cond.end.71
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	jmp	.LBB4_56
.LBB4_45:                               # %sw.bb.73
	movl	$0, -36(%rbp)
.LBB4_46:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB4_49
# BB#47:                                # %for.body
                                        #   in Loop: Header=BB4_46 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	$0, (%rcx,%rax)
# BB#48:                                # %for.inc
                                        #   in Loop: Header=BB4_46 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_46
.LBB4_49:                               # %for.end
	jmp	.LBB4_60
.LBB4_50:                               # %sw.bb.75
	movl	$0, -36(%rbp)
.LBB4_51:                               # %for.cond.76
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB4_54
# BB#52:                                # %for.body.79
                                        #   in Loop: Header=BB4_51 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	44(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#53:                                # %for.inc.84
                                        #   in Loop: Header=BB4_51 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_51
.LBB4_54:                               # %for.end.86
	jmp	.LBB4_60
.LBB4_55:                               # %sw.default
	jmp	.LBB4_60
.LBB4_56:                               # %sw.epilog
	jmp	.LBB4_57
.LBB4_57:                               # %if.end.87
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_pixel_fetcher_provide_tile
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movl	%edx, -36(%rbp)
.LBB4_58:                               # %do.body.89
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
# BB#59:                                # %do.cond
                                        #   in Loop: Header=BB4_58 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jne	.LBB4_58
.LBB4_60:                               # %do.end.91
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pixel_fetcher_get_pixel, .Lfunc_end4-gimp_pixel_fetcher_get_pixel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI4_0:
	.long	.LBB4_21-.LJTI4_0
	.long	.LBB4_32-.LJTI4_0
	.long	.LBB4_45-.LJTI4_0
	.long	.LBB4_50-.LJTI4_0

	.text
	.align	16, 0x90
	.type	gimp_pixel_fetcher_provide_tile,@function
gimp_pixel_fetcher_provide_tile:        # @gimp_pixel_fetcher_provide_tile
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	36(%rdi)
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	36(%rdi)
	movl	%edx, -28(%rbp)
	movl	-16(%rbp), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, %eax
	cltd
	idivl	40(%rdi)
	movl	%eax, -24(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	cltd
	idivl	40(%rdi)
	movl	%edx, -32(%rbp)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	cmpl	(%rdi), %edx
	jne	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB5_3
# BB#2:                                 # %lor.lhs.false.8
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB5_6
.LBB5_3:                                # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB5_5
# BB#4:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	72(%rax), %esi
	callq	gimp_tile_unref@PLT
.LBB5_5:                                # %if.end
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	76(%rax), %esi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	gimp_drawable_get_tile@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gimp_tile_ref@PLT
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB5_6:                                # %if.end.19
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movl	(%rcx), %esi
	imull	-32(%rbp), %esi
	addl	-28(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_pixel_fetcher_provide_tile, .Lfunc_end5-gimp_pixel_fetcher_provide_tile
	.cfi_endproc

	.globl	gimp_pixel_fetcher_put_pixel
	.align	16, 0x90
	.type	gimp_pixel_fetcher_put_pixel,@function
gimp_pixel_fetcher_put_pixel:           # @gimp_pixel_fetcher_put_pixel
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_put_pixel(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_pixel_fetcher_put_pixel(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.6
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	.LBB6_14
# BB#11:                                # %lor.lhs.false
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB6_14
# BB#12:                                # %lor.lhs.false.9
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jl	.LBB6_14
# BB#13:                                # %lor.lhs.false.11
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jl	.LBB6_15
.LBB6_14:                               # %if.then.13
	jmp	.LBB6_19
.LBB6_15:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_pixel_fetcher_provide_tile
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movl	%edx, -36(%rbp)
.LBB6_16:                               # %do.body.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
# BB#17:                                # %do.cond
                                        #   in Loop: Header=BB6_16 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, %eax
	jne	.LBB6_16
# BB#18:                                # %do.end.17
	movq	-8(%rbp), %rax
	movl	$1, 72(%rax)
.LBB6_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_pixel_fetcher_put_pixel, .Lfunc_end6-gimp_pixel_fetcher_put_pixel
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L__func__.gimp_pixel_fetcher_new,@object # @__func__.gimp_pixel_fetcher_new
.L__func__.gimp_pixel_fetcher_new:
	.asciz	"gimp_pixel_fetcher_new"
	.size	.L__func__.gimp_pixel_fetcher_new, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"drawable != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"width > 0 && height > 0 && bpp > 0"
	.size	.L.str.2, 35

	.type	.L__func__.gimp_pixel_fetcher_destroy,@object # @__func__.gimp_pixel_fetcher_destroy
.L__func__.gimp_pixel_fetcher_destroy:
	.asciz	"gimp_pixel_fetcher_destroy"
	.size	.L__func__.gimp_pixel_fetcher_destroy, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pf != NULL"
	.size	.L.str.3, 11

	.type	.L__func__.gimp_pixel_fetcher_set_edge_mode,@object # @__func__.gimp_pixel_fetcher_set_edge_mode
.L__func__.gimp_pixel_fetcher_set_edge_mode:
	.asciz	"gimp_pixel_fetcher_set_edge_mode"
	.size	.L__func__.gimp_pixel_fetcher_set_edge_mode, 33

	.type	.L__func__.gimp_pixel_fetcher_set_bg_color,@object # @__func__.gimp_pixel_fetcher_set_bg_color
.L__func__.gimp_pixel_fetcher_set_bg_color:
	.asciz	"gimp_pixel_fetcher_set_bg_color"
	.size	.L__func__.gimp_pixel_fetcher_set_bg_color, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"color != NULL"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_pixel_fetcher_get_pixel,@object # @__func__.gimp_pixel_fetcher_get_pixel
.L__func__.gimp_pixel_fetcher_get_pixel:
	.asciz	"gimp_pixel_fetcher_get_pixel"
	.size	.L__func__.gimp_pixel_fetcher_get_pixel, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pixel != NULL"
	.size	.L.str.5, 14

	.type	.L__func__.gimp_pixel_fetcher_put_pixel,@object # @__func__.gimp_pixel_fetcher_put_pixel
.L__func__.gimp_pixel_fetcher_put_pixel:
	.asciz	"gimp_pixel_fetcher_put_pixel"
	.size	.L__func__.gimp_pixel_fetcher_put_pixel, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
