	.text
	.file	"gimpimage-colorhash.bc"
	.globl	gimp_image_color_hash_init
	.align	16, 0x90
	.type	gimp_image_color_hash_init,@function
gimp_image_color_hash_init:             # @gimp_image_color_hash_init
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
	movl	$0, -4(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1021, -4(%rbp)         # imm = 0x3FD
	jge	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, (%rdx)
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, 4(%rdx)
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movl	$0, color_hash_misses
	movl	$0, color_hash_hits
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_color_hash_init, .Lfunc_end0-gimp_image_color_hash_init
	.cfi_endproc

	.globl	gimp_image_color_hash_exit
	.align	16, 0x90
	.type	gimp_image_color_hash_exit,@function
gimp_image_color_hash_exit:             # @gimp_image_color_hash_exit
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
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_color_hash_exit, .Lfunc_end1-gimp_image_color_hash_exit
	.cfi_endproc

	.globl	gimp_image_color_hash_invalidate
	.align	16, 0x90
	.type	gimp_image_color_hash_invalidate,@function
gimp_image_color_hash_invalidate:       # @gimp_image_color_hash_invalidate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_color_hash_invalidate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_28
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	cmpl	$-1, -12(%rbp)
	jne	.LBB2_20
# BB#13:                                # %if.then.12
	movl	$0, -16(%rbp)
.LBB2_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1021, -16(%rbp)        # imm = 0x3FD
	jge	.LBB2_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB2_14 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB2_17
# BB#16:                                # %if.then.16
                                        #   in Loop: Header=BB2_14 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, (%rdx)
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, 4(%rdx)
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
.LBB2_17:                               # %if.end.25
                                        #   in Loop: Header=BB2_14 Depth=1
	jmp	.LBB2_18
.LBB2_18:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_14
.LBB2_19:                               # %for.end
	jmp	.LBB2_28
.LBB2_20:                               # %if.else.26
	movl	$0, -16(%rbp)
.LBB2_21:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1021, -16(%rbp)        # imm = 0x3FD
	jge	.LBB2_27
# BB#22:                                # %for.body.29
                                        #   in Loop: Header=BB2_21 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB2_25
# BB#23:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB2_21 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB2_25
# BB#24:                                # %if.then.39
                                        #   in Loop: Header=BB2_21 Depth=1
	movabsq	$color_hash_table, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, (%rdx)
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$0, 4(%rdx)
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
.LBB2_25:                               # %if.end.49
                                        #   in Loop: Header=BB2_21 Depth=1
	jmp	.LBB2_26
.LBB2_26:                               # %for.inc.50
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_21
.LBB2_27:                               # %for.end.52
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.53
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_color_hash_invalidate, .Lfunc_end2-gimp_image_color_hash_invalidate
	.cfi_endproc

	.globl	gimp_image_color_hash_rgb_to_indexed
	.align	16, 0x90
	.type	gimp_image_color_hash_rgb_to_indexed,@function
gimp_image_color_hash_rgb_to_indexed:   # @gimp_image_color_hash_rgb_to_indexed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_colormap
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movabsq	$color_hash_table, %rdi
	movl	$1021, %ecx             # imm = 0x3FD
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	shll	$16, %eax
	movl	-16(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %eax
	orl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -44(%rbp)
	movslq	-44(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rdi
	movq	8(%rdi), %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movabsq	$color_hash_table, %rax
	movslq	-44(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	cmpl	-40(%rbp), %edx
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movabsq	$color_hash_table, %rax
	movslq	-44(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %edx
	movl	%edx, -48(%rbp)
	movl	color_hash_hits, %edx
	addl	$1, %edx
	movl	%edx, color_hash_hits
	jmp	.LBB3_10
.LBB3_3:                                # %if.else
	movl	$195076, -68(%rbp)      # imm = 0x2FA04
	movl	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -72(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB3_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-12(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	imull	-60(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB3_7
# BB#6:                                 # %if.then.23
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB3_4
.LBB3_9:                                # %for.end
	movabsq	$color_hash_table, %rax
	movl	-40(%rbp), %ecx
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, (%rsi)
	movl	-48(%rbp), %ecx
	movslq	-44(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, 4(%rsi)
	movq	-8(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rdx, 8(%rax)
	movl	color_hash_misses, %ecx
	addl	$1, %ecx
	movl	%ecx, color_hash_misses
.LBB3_10:                               # %if.end.35
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_color_hash_rgb_to_indexed, .Lfunc_end3-gimp_image_color_hash_rgb_to_indexed
	.cfi_endproc

	.type	color_hash_table,@object # @color_hash_table
	.local	color_hash_table
	.comm	color_hash_table,16336,16
	.type	color_hash_misses,@object # @color_hash_misses
	.local	color_hash_misses
	.comm	color_hash_misses,4,4
	.type	color_hash_hits,@object # @color_hash_hits
	.local	color_hash_hits
	.comm	color_hash_hits,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_color_hash_invalidate,@object # @__func__.gimp_image_color_hash_invalidate
.L__func__.gimp_image_color_hash_invalidate:
	.asciz	"gimp_image_color_hash_invalidate"
	.size	.L__func__.gimp_image_color_hash_invalidate, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
