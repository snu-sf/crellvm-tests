	.text
	.file	"tile-manager-preview.bc"
	.globl	tile_manager_get_preview
	.align	16, 0x90
	.type	tile_manager_get_preview,@function
tile_manager_get_preview:               # @tile_manager_get_preview
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_preview, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_12
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jle	.LBB0_9
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB0_9
# BB#8:                                 # %if.then.4
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_preview, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_12
.LBB0_10:                               # %if.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.end.7
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_manager_width
	movq	-16(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	xorl	%ecx, %ecx
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	tile_manager_create_preview
	movq	%rax, -8(%rbp)
.LBB0_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_manager_get_preview, .Lfunc_end0-tile_manager_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	tile_manager_create_preview,@function
tile_manager_create_preview:            # @tile_manager_create_preview
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
	subq	$208, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	$1, -172(%rbp)
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movq	-8(%rbp), %r10
	movl	%edi, -176(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -180(%rbp)        # 4-byte Spill
	callq	tile_manager_bpp
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-176(%rbp), %edi        # 4-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	-184(%rbp), %r8d        # 4-byte Reload
	callq	temp_buf_new
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r11d
	movl	-24(%rbp), %r9d
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%ecx, %edx
	callq	pixel_region_init_temp_buf
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	movl	-172(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %eax
	shll	$1, %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -189(%rbp)         # 1-byte Spill
	jge	.LBB1_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-32(%rbp), %eax
	movl	-172(%rbp), %ecx
	addl	$1, %ecx
	imull	%ecx, %eax
	shll	$1, %eax
	cmpl	-24(%rbp), %eax
	setl	%dl
	movb	%dl, -189(%rbp)         # 1-byte Spill
.LBB1_3:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	-189(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB1_1
.LBB1_5:                                # %while.end
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movl	-172(%rbp), %edx
	callq	subsample_region
	movq	-40(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_manager_create_preview, .Lfunc_end1-tile_manager_create_preview
	.cfi_endproc

	.globl	tile_manager_get_sub_preview
	.align	16, 0x90
	.type	tile_manager_get_sub_preview,@function
tile_manager_get_sub_preview:           # @tile_manager_get_sub_preview
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
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpl	$0, -20(%rbp)
	jl	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_9
# BB#8:                                 # %if.then.4
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_10:                               # %if.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.7
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.8
	cmpl	$0, -24(%rbp)
	jl	.LBB2_15
# BB#13:                                # %land.lhs.true.10
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-48(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpl	$0, -28(%rbp)
	jle	.LBB2_21
# BB#19:                                # %land.lhs.true.19
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	tile_manager_width
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_21
# BB#20:                                # %if.then.22
	jmp	.LBB2_22
.LBB2_21:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_22:                               # %if.end.24
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.25
	jmp	.LBB2_24
.LBB2_24:                               # %do.body.26
	cmpl	$0, -32(%rbp)
	jle	.LBB2_27
# BB#25:                                # %land.lhs.true.28
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	tile_manager_height
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_27
# BB#26:                                # %if.then.32
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.33
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_28:                               # %if.end.34
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.35
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.36
	cmpl	$0, -36(%rbp)
	jle	.LBB2_33
# BB#31:                                # %land.lhs.true.38
	cmpl	$0, -40(%rbp)
	jle	.LBB2_33
# BB#32:                                # %if.then.40
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.41
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_manager_get_sub_preview, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_36
.LBB2_34:                               # %if.end.42
	jmp	.LBB2_35
.LBB2_35:                               # %do.end.43
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %eax
	movl	%eax, (%rsp)
	callq	tile_manager_create_preview
	movq	%rax, -8(%rbp)
.LBB2_36:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_manager_get_sub_preview, .Lfunc_end2-tile_manager_get_sub_preview
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.tile_manager_get_preview,@object # @__func__.tile_manager_get_preview
.L__func__.tile_manager_get_preview:
	.asciz	"tile_manager_get_preview"
	.size	.L__func__.tile_manager_get_preview, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tiles != NULL"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.2, 24

	.type	.L__func__.tile_manager_get_sub_preview,@object # @__func__.tile_manager_get_sub_preview
.L__func__.tile_manager_get_sub_preview:
	.asciz	"tile_manager_get_sub_preview"
	.size	.L__func__.tile_manager_get_sub_preview, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"src_x >= 0 && src_x < tile_manager_width (tiles)"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"src_y >= 0 && src_y < tile_manager_height (tiles)"
	.size	.L.str.4, 50

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"src_width > 0 && src_x + src_width <= tile_manager_width (tiles)"
	.size	.L.str.5, 65

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"src_height > 0 && src_y + src_height <= tile_manager_height (tiles)"
	.size	.L.str.6, 68

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dest_width > 0 && dest_height > 0"
	.size	.L.str.7, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
