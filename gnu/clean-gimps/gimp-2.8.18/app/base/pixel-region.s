	.text
	.file	"pixel-region.bc"
	.globl	pixel_region_init
	.align	16, 0x90
	.type	pixel_region_init,@function
pixel_region_init:                      # @pixel_region_init
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	$0, (%rsi)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 24(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 28(%rsi)
	movq	-16(%rbp), %rdi
	callq	tile_manager_bpp
	movq	-8(%rbp), %rsi
	movl	%eax, 52(%rsi)
	movq	-8(%rbp), %rsi
	movl	52(%rsi), %eax
	shll	$6, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 32(%rsi)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 36(%rsi)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 40(%rsi)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 44(%rsi)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 48(%rsi)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 56(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 60(%rsi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pixel_region_init, .Lfunc_end0-pixel_region_init
	.cfi_endproc

	.globl	pixel_region_init_temp_buf
	.align	16, 0x90
	.type	pixel_region_init_temp_buf,@function
pixel_region_init_temp_buf:             # @pixel_region_init_temp_buf
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	temp_buf_get_data
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 32(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 36(%rax)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 44(%rax)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 60(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pixel_region_init_temp_buf, .Lfunc_end1-pixel_region_init_temp_buf
	.cfi_endproc

	.globl	pixel_region_init_data
	.align	16, 0x90
	.type	pixel_region_init_data,@function
pixel_region_init_data:                 # @pixel_region_init_data
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
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 8(%rsi)
	movq	-8(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 24(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 28(%rsi)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 52(%rsi)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 32(%rsi)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 36(%rsi)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 40(%rsi)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 44(%rsi)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 48(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 56(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 60(%rsi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pixel_region_init_data, .Lfunc_end2-pixel_region_init_data
	.cfi_endproc

	.globl	pixel_region_resize
	.align	16, 0x90
	.type	pixel_region_resize,@function
pixel_region_resize:                    # @pixel_region_resize
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 36(%rdi)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 40(%rdi)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 44(%rdi)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pixel_region_resize, .Lfunc_end3-pixel_region_resize
	.cfi_endproc

	.globl	pixel_region_get_row
	.align	16, 0x90
	.type	pixel_region_get_row,@function
pixel_region_get_row:                   # @pixel_region_get_row
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %ecx
	movl	%ecx, -80(%rbp)
	movl	-36(%rbp), %ecx
	imull	-80(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB4_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	movl	-16(%rbp), %r8d
	movq	-32(%rbp), %r9
	movq	-8(%rbp), %rax
	movl	52(%rax), %r10d
	movl	%r10d, (%rsp)
	callq	tile_manager_read_pixel_data
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %ecx
	imull	-80(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	32(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-20(%rbp), %ecx
	imull	-80(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
.LBB4_4:                                # %if.end
	jmp	.LBB4_19
.LBB4_5:                                # %if.else.10
	jmp	.LBB4_6
.LBB4_6:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_12 Depth 3
	movl	-12(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB4_18
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	tile_ewidth
	movl	$64, %ecx
	movl	-12(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-12(%rbp), %ecx
	addl	-76(%rbp), %ecx
	cmpl	-64(%rbp), %ecx
	jle	.LBB4_9
# BB#8:                                 # %if.then.20
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-64(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB4_9:                                # %if.end.22
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-12(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB4_10:                               # %for.cond
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
	movl	-12(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB4_17
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	$0, -72(%rbp)
.LBB4_12:                               # %for.cond.26
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-72(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB4_15
# BB#13:                                # %for.body.29
                                        #   in Loop: Header=BB4_12 Depth=3
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_12 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB4_12
.LBB4_15:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#16:                                # %for.inc.33
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-36(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB4_10
.LBB4_17:                               # %for.end.35
                                        #   in Loop: Header=BB4_6 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
	jmp	.LBB4_6
.LBB4_18:                               # %while.end
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.36
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pixel_region_get_row, .Lfunc_end4-pixel_region_get_row
	.cfi_endproc

	.globl	pixel_region_set_row
	.align	16, 0x90
	.type	pixel_region_set_row,@function
pixel_region_set_row:                   # @pixel_region_set_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	-16(%rbp), %r8d
	movq	-32(%rbp), %r9
	movq	-8(%rbp), %rcx
	movl	52(%rcx), %r10d
	movl	%eax, %ecx
	movl	%r10d, (%rsp)
	callq	tile_manager_write_pixel_data
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	52(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	32(%rdx), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	52(%rdx), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB5_3:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pixel_region_set_row, .Lfunc_end5-pixel_region_set_row
	.cfi_endproc

	.globl	pixel_region_get_col
	.align	16, 0x90
	.type	pixel_region_get_col,@function
pixel_region_get_col:                   # @pixel_region_get_col
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	-16(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %ecx
	movl	%ecx, -60(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #       Child Loop BB6_7 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB6_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_data_pointer
	movq	%rax, -56(%rbp)
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	callq	tile_eheight
	movl	$64, %ecx
	movl	-16(%rbp), %edx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	subl	%edx, %ecx
	movl	-80(%rbp), %edx         # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %ecx
	cmpl	-68(%rbp), %ecx
	jle	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	imull	-60(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	tile_ewidth
	movl	-88(%rbp), %ecx         # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, -64(%rbp)
.LBB6_5:                                # %for.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_7 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB6_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	$0, -76(%rbp)
.LBB6_7:                                # %for.cond.8
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_10
# BB#8:                                 # %for.body.10
                                        #   in Loop: Header=BB6_7 Depth=3
	movslq	-76(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
# BB#11:                                # %for.inc.12
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-36(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_5
.LBB6_12:                               # %for.end.14
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tile_release
	jmp	.LBB6_1
.LBB6_13:                               # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pixel_region_get_col, .Lfunc_end6-pixel_region_get_col
	.cfi_endproc

	.globl	pixel_region_set_col
	.align	16, 0x90
	.type	pixel_region_set_col,@function
pixel_region_set_col:                   # @pixel_region_set_col
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movl	-16(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	52(%rdi), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movq	-32(%rbp), %r9
	movl	-40(%rbp), %r10d
	movl	%eax, %r8d
	movl	%r10d, (%rsp)
	callq	tile_manager_write_pixel_data
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pixel_region_set_col, .Lfunc_end7-pixel_region_set_col
	.cfi_endproc

	.globl	pixel_region_has_alpha
	.align	16, 0x90
	.type	pixel_region_has_alpha,@function
pixel_region_has_alpha:                 # @pixel_region_has_alpha
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$2, 52(%rdi)
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$4, 52(%rax)
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movl	$0, -4(%rbp)
.LBB8_4:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pixel_region_has_alpha, .Lfunc_end8-pixel_region_has_alpha
	.cfi_endproc

	.globl	pixel_regions_register
	.align	16, 0x90
	.type	pixel_regions_register,@function
pixel_regions_register:                 # @pixel_regions_register
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
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -272(%rbp)       # 16-byte Spill
	movaps	%xmm6, -288(%rbp)       # 16-byte Spill
	movaps	%xmm5, -304(%rbp)       # 16-byte Spill
	movaps	%xmm4, -320(%rbp)       # 16-byte Spill
	movaps	%xmm3, -336(%rbp)       # 16-byte Spill
	movaps	%xmm2, -352(%rbp)       # 16-byte Spill
	movaps	%xmm1, -368(%rbp)       # 16-byte Spill
	movaps	%xmm0, -384(%rbp)       # 16-byte Spill
	movl	%edi, -388(%rbp)        # 4-byte Spill
	movq	%r9, -400(%rbp)         # 8-byte Spill
	movq	%r8, -408(%rbp)         # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	je	.LBB9_17
# BB#16:                                # %entry
	movaps	-384(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -208(%rbp)
	movaps	-368(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -192(%rbp)
	movaps	-352(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -176(%rbp)
	movaps	-336(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -160(%rbp)
	movaps	-320(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -144(%rbp)
	movaps	-304(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -128(%rbp)
	movaps	-288(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -112(%rbp)
	movaps	-272(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -96(%rbp)
.LBB9_17:                               # %entry
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -224(%rbp)
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -232(%rbp)
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -240(%rbp)
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -248(%rbp)
	movl	-388(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jge	.LBB9_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_2:                                # %if.end
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	leaq	-64(%rbp), %rdi
	movq	%rax, -24(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, 16(%rdi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rdi)
	movl	$48, 4(%rdi)
	movl	$8, (%rdi)
	movl	$0, -28(%rbp)
.LBB9_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB9_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-64(%rbp), %rax
	movl	-64(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	ja	.LBB9_6
# BB#5:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-444(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB9_7
.LBB9_6:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -456(%rbp)        # 8-byte Spill
.LBB9_7:                                # %vaarg.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$32, %ecx
	movl	%ecx, %edi
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	g_slice_alloc0
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, -80(%rbp)
	je	.LBB9_13
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-80(%rbp), %rax
	movq	$0, 8(%rax)
.LBB9_10:                               # %if.end.9
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-80(%rbp), %rax
	movl	36(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-80(%rbp), %rax
	movl	40(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 60(%rax)
	cmpl	$0, -28(%rbp)
	jne	.LBB9_12
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$1, -28(%rbp)
	movq	-80(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
.LBB9_12:                               # %if.end.14
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.15
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB9_3
.LBB9_14:                               # %while.end
	leaq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	pixel_regions_configure
	movq	%rax, -8(%rbp)
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pixel_regions_register, .Lfunc_end9-pixel_regions_register
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_regions_configure,@function
pixel_regions_configure:                # @pixel_regions_configure
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_portion_width
	movq	-16(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	get_portion_height
	movq	-16(%rbp), %rdi
	movl	%eax, 20(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$0, 16(%rdi)
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB10_3
.LBB10_2:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	pixel_regions_free
	movq	$0, -8(%rbp)
	jmp	.LBB10_14
.LBB10_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB10_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	.LBB10_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 60(%rax)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pixel_region_configure
.LBB10_8:                               # %if.end.14
                                        #   in Loop: Header=BB10_4 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc
                                        #   in Loop: Header=BB10_4 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false
                                        #   in Loop: Header=BB10_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_12:                              # %cond.end
                                        #   in Loop: Header=BB10_4 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_4
.LBB10_13:                              # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pixel_regions_configure, .Lfunc_end10-pixel_regions_configure
	.cfi_endproc

	.globl	pixel_regions_process
	.align	16, 0x90
	.type	pixel_regions_process,@function
pixel_regions_process:                  # @pixel_regions_process
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	.LBB11_9
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 60(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	56(%rax), %esi
	callq	tile_release
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
.LBB11_6:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addl	36(%rax), %ecx
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %ecx
	movq	-24(%rbp), %rax
	subl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	8(%rax), %ecx
	jl	.LBB11_8
# BB#7:                                 # %if.then.19
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 36(%rax)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addl	40(%rax), %ecx
	movl	%ecx, 40(%rax)
.LBB11_8:                               # %if.end.25
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.26
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_10
.LBB11_10:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB11_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB11_13
.LBB11_12:                              # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB11_13
.LBB11_13:                              # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_14:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	pixel_regions_configure
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	pixel_regions_process, .Lfunc_end11-pixel_regions_process
	.cfi_endproc

	.globl	pixel_regions_process_stop
	.align	16, 0x90
	.type	pixel_regions_process_stop,@function
pixel_regions_process_stop:             # @pixel_regions_process_stop
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB12_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	24(%rax), %ecx
	je	.LBB12_7
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	60(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 60(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB12_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	56(%rax), %esi
	callq	tile_release
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 16(%rax)
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.15
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB12_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_11
.LBB12_11:                              # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB12_1
.LBB12_12:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	pixel_regions_free
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pixel_regions_process_stop, .Lfunc_end12-pixel_regions_process_stop
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_regions_free,@function
pixel_regions_free:                     # @pixel_regions_free
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB13_13
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB13_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB13_2 Depth=1
	jmp	.LBB13_4
.LBB13_4:                               # %do.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB13_2 Depth=1
	jmp	.LBB13_6
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB13_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
                                        #   in Loop: Header=BB13_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB13_2
.LBB13_10:                              # %for.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_slist_free
# BB#11:                                # %do.body.5
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#12:                                # %do.end.6
	jmp	.LBB13_13
.LBB13_13:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pixel_regions_free, .Lfunc_end13-pixel_regions_free
	.cfi_endproc

	.align	16, 0x90
	.type	get_portion_width,@function
get_portion_width:                      # @get_portion_width
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
	movq	%rdi, -16(%rbp)
	movl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_22
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
	movl	36(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jl	.LBB14_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB14_23
.LBB14_5:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB14_13
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	$64, %eax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	36(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%edx, %esi
	movl	%esi, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	36(%rcx), %edi
	movq	-40(%rbp), %rcx
	subl	16(%rcx), %edi
	subl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB14_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB14_12
.LBB14_8:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB14_10
# BB#9:                                 # %cond.true.24
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.25
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB14_11:                              # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB14_12:                              # %cond.end.26
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB14_14
.LBB14_13:                              # %if.else
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %edx
	movq	-40(%rbp), %rax
	subl	16(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)
.LBB14_14:                              # %if.end.34
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB14_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB14_16:                              # %if.end.37
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_17
.LBB14_17:                              # %if.end.38
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_18
.LBB14_18:                              # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_20
# BB#19:                                # %cond.true.40
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB14_21
.LBB14_20:                              # %cond.false.41
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB14_21
.LBB14_21:                              # %cond.end.42
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB14_1
.LBB14_22:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_23:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	get_portion_width, .Lfunc_end14-get_portion_width
	.cfi_endproc

	.align	16, 0x90
	.type	get_portion_height,@function
get_portion_height:                     # @get_portion_height
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
	movq	%rdi, -16(%rbp)
	movl	$2147483647, -28(%rbp)  # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_22
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
	movl	40(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %ecx
	jl	.LBB15_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB15_23
.LBB15_5:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB15_13
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$64, %eax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	40(%rcx), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	subl	%edx, %esi
	movl	%esi, -32(%rbp)
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	40(%rcx), %edi
	movq	-40(%rbp), %rcx
	subl	20(%rcx), %edi
	subl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB15_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	movq	-40(%rbp), %rax
	subl	20(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB15_12
.LBB15_8:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -32(%rbp)
	jge	.LBB15_10
# BB#9:                                 # %cond.true.24
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false.25
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB15_11:                              # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB15_12:                              # %cond.end.26
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	jmp	.LBB15_14
.LBB15_13:                              # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	movq	-40(%rbp), %rax
	subl	20(%rax), %edx
	subl	%edx, %ecx
	movl	%ecx, -32(%rbp)
.LBB15_14:                              # %if.end.34
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB15_16
# BB#15:                                # %if.then.36
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB15_16:                              # %if.end.37
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.38
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_18
.LBB15_18:                              # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_20
# BB#19:                                # %cond.true.40
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_21
.LBB15_20:                              # %cond.false.41
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_21
.LBB15_21:                              # %cond.end.42
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_22:                              # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB15_23:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_portion_height, .Lfunc_end15-get_portion_height
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_region_configure,@function
pixel_region_configure:                 # @pixel_region_configure
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	40(%rax), %edx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	56(%rax), %r8d
	callq	tile_manager_get_tile
	movl	$64, %ecx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	36(%rax), %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%edx, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	40(%rdi), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%edx, 28(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	16(%rdi), %rdi
	callq	tile_ewidth
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	imull	52(%rdi), %eax
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	(%r9), %r9
	movl	24(%r9), %esi
	movq	-8(%rbp), %r9
	movq	(%r9), %r9
	movl	28(%r9), %edx
	callq	tile_data_pointer
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	40(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	32(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	imull	52(%rcx), %edx
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
	movl	%ecx, 44(%rax)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pixel_region_configure, .Lfunc_end16-pixel_region_configure
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
