	.text
	.file	"image.bc"
	.globl	x_bitmap_pixmap
	.align	16, 0x90
	.type	x_bitmap_pixmap,@function
x_bitmap_pixmap:                        # @x_bitmap_pixmap
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	imulq	$48, %rsi, %rsi
	addq	280(%rdi), %rsi
	movq	(%rsi), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_bitmap_pixmap, .Lfunc_end0-x_bitmap_pixmap
	.cfi_endproc

	.globl	x_bitmap_mask
	.align	16, 0x90
	.type	x_bitmap_mask,@function
x_bitmap_mask:                          # @x_bitmap_mask
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	imulq	$48, %rsi, %rsi
	addq	280(%rdi), %rsi
	movq	16(%rsi), %rsi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_bitmap_mask, .Lfunc_end1-x_bitmap_mask
	.cfi_endproc

	.globl	x_reference_bitmap
	.align	16, 0x90
	.type	x_reference_bitmap,@function
x_reference_bitmap:                     # @x_reference_bitmap
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	imulq	$48, %rsi, %rsi
	addq	280(%rdi), %rsi
	movl	32(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 32(%rsi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	x_reference_bitmap, .Lfunc_end2-x_reference_bitmap
	.cfi_endproc

	.globl	x_create_bitmap_from_data
	.align	16, 0x90
	.type	x_create_bitmap_from_data,@function
x_create_bitmap_from_data:              # @x_create_bitmap_from_data
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	XCreateBitmapFromData
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$-1, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	x_allocate_bitmap_record
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	imulq	$48, %rax, %rax
	addq	280(%rdi), %rax
	movq	$0, 24(%rax)
	movl	-32(%rbp), %ecx
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	imulq	$48, %rax, %rax
	addq	280(%rdi), %rax
	movl	%ecx, 36(%rax)
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	imulq	$48, %rax, %rax
	addq	280(%rdi), %rax
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdi
	imulq	$48, %rax, %rax
	addq	280(%rdi), %rax
	movl	$1, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rdi
	subq	$1, %rdi
	movq	-40(%rbp), %rdx
	imulq	$48, %rdi, %rdi
	addq	280(%rdx), %rdi
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	280(%rdx), %rax
	movb	$0, 8(%rax)
	movq	-48(%rbp), %rax
	subq	$1, %rax
	movq	-40(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	280(%rdx), %rax
	movl	$1, 44(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	x_create_bitmap_from_data, .Lfunc_end3-x_create_bitmap_from_data
	.cfi_endproc

	.align	16, 0x90
	.type	x_allocate_bitmap_record,@function
x_allocate_bitmap_record:               # @x_allocate_bitmap_record
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	296(%rdi), %rdi
	movq	-24(%rbp), %rax
	cmpq	288(%rax), %rdi
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	296(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 296(%rax)
	movq	%rcx, -8(%rbp)
	jmp	.LBB4_9
.LBB4_2:                                # %if.end
	movq	$0, -32(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	288(%rcx), %rax
	jge	.LBB4_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB4_6
# BB#5:                                 # %if.then.5
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_9
.LBB4_6:                                # %if.end.6
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
	movl	$10, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$48, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rsi
	movq	280(%rsi), %rsi
	movq	-24(%rbp), %rdi
	addq	$288, %rdi              # imm = 0x120
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	-24(%rbp), %rax
	movq	296(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 296(%rax)
	movq	%rcx, -8(%rbp)
.LBB4_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	x_allocate_bitmap_record, .Lfunc_end4-x_allocate_bitmap_record
	.cfi_endproc

	.globl	x_create_bitmap_from_file
	.align	16, 0x90
	.type	x_create_bitmap_from_file,@function
x_create_bitmap_from_file:              # @x_create_bitmap_from_file
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	$0, -72(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	296(%rcx), %rax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	cmpl	$0, 32(%rax)
	je	.LBB5_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	cmpq	$0, 24(%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movl	32(%rax), %edx
	addl	$1, %edx
	movl	%edx, 32(%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_13
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	xorl	%edi, %edi
	movq	globals+2744, %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-80(%rbp), %rcx
	movl	$18, %edi
	movl	%edi, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	openp
	cmpl	$0, %eax
	jge	.LBB5_10
# BB#9:                                 # %if.then.18
	movq	$-1, -8(%rbp)
	jmp	.LBB5_13
.LBB5_10:                               # %if.end.19
	movq	-80(%rbp), %rdi
	callq	SSDATA
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	-48(%rbp), %r9
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movq	-88(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	XReadBitmapFile
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.28
	movq	$-1, -8(%rbp)
	jmp	.LBB5_13
.LBB5_12:                               # %if.end.29
	movq	-16(%rbp), %rdi
	callq	x_allocate_bitmap_record
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdi
	subq	$1, %rdi
	movq	-32(%rbp), %rcx
	imulq	$48, %rdi, %rdi
	addq	280(%rcx), %rdi
	movq	%rax, (%rdi)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movb	$0, 8(%rax)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movl	$1, 32(%rax)
	movq	-24(%rbp), %rdi
	callq	xlispstrdup
	movq	-72(%rbp), %rcx
	subq	$1, %rcx
	movq	-32(%rbp), %rdi
	imulq	$48, %rcx, %rcx
	addq	280(%rdi), %rcx
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movl	$1, 44(%rax)
	movl	-40(%rbp), %edx
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movl	%edx, 36(%rax)
	movl	-36(%rbp), %edx
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	-32(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movl	%edx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	x_create_bitmap_from_file, .Lfunc_end5-x_create_bitmap_from_file
	.cfi_endproc

	.globl	x_destroy_bitmap
	.align	16, 0x90
	.type	x_destroy_bitmap,@function
x_destroy_bitmap:                       # @x_destroy_bitmap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jle	.LBB6_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-24(%rbp), %rcx
	imulq	$48, %rax, %rax
	addq	280(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 32(%rax)
	cmpl	$0, %edx
	jne	.LBB6_3
# BB#2:                                 # %if.then.2
	callq	block_input
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	free_bitmap_record
	callq	unblock_input
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.3
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	x_destroy_bitmap, .Lfunc_end6-x_destroy_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	free_bitmap_record,@function
free_bitmap_record:                     # @free_bitmap_record
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	XFreePixmap
	movq	-16(%rbp), %rsi
	testb	$1, 8(%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	XFreePixmap
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB7_4:                                # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	free_bitmap_record, .Lfunc_end7-free_bitmap_record
	.cfi_endproc

	.globl	x_destroy_all_bitmaps
	.align	16, 0x90
	.type	x_destroy_all_bitmaps,@function
x_destroy_all_bitmaps:                  # @x_destroy_all_bitmaps
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	296(%rcx), %rax
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	jle	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	free_bitmap_record
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	movq	-8(%rbp), %rax
	movq	$0, 296(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	x_destroy_all_bitmaps, .Lfunc_end8-x_destroy_all_bitmaps
	.cfi_endproc

	.globl	x_create_bitmap_mask
	.align	16, 0x90
	.type	x_create_bitmap_mask,@function
x_create_bitmap_mask:                   # @x_create_bitmap_mask
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
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -152(%rbp)
	cmpq	$0, -24(%rbp)
	jg	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_38
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_bitmap_pixmap
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_bitmap_width
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_bitmap_height
	movslq	%eax, %rsi
	movq	%rsi, -72(%rbp)
	callq	block_input
	xorl	%eax, %eax
	movq	$-1, %rsi
	movl	$2, %ecx
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %r8
	movl	%r8d, %r9d
	movq	-72(%rbp), %r8
	movl	%r8d, %r10d
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	$-1, (%rsp)
	movl	$2, 8(%rsp)
	callq	XGetImage
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.11
	callq	unblock_input
	jmp	.LBB9_38
.LBB9_4:                                # %if.end.12
	movl	$1, %ecx
	leaq	-56(%rbp), %r8
	leaq	-40(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movq	-72(%rbp), %rax
	movl	%eax, %esi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-168(%rbp), %edx        # 4-byte Reload
	callq	x_create_x_image_and_pixmap
	andb	$1, %al
	movb	%al, -73(%rbp)
	callq	unblock_input
	testb	$1, -73(%rbp)
	jne	.LBB9_6
# BB#5:                                 # %if.then.17
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB9_38
.LBB9_6:                                # %if.end.20
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	four_corners_best
	movq	%rax, -88(%rbp)
	movq	$0, -104(%rbp)
.LBB9_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	4(%rcx), %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_37
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	$0, -96(%rbp)
.LBB9_9:                                # %for.cond.26
                                        #   Parent Loop BB9_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_35
# BB#10:                                # %for.body.31
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-96(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	je	.LBB9_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %cond.false
                                        #   in Loop: Header=BB9_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB9_13
.LBB9_13:                               # %cond.end
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB9_15
# BB#14:                                # %cond.true.38
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-96(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_16
.LBB9_15:                               # %cond.false.40
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_16:                               # %cond.end.44
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	je	.LBB9_18
# BB#17:                                # %cond.true.51
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.53
                                        #   in Loop: Header=BB9_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_19
.LBB9_19:                               # %cond.end.54
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB9_21
# BB#20:                                # %cond.true.58
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-104(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB9_22
.LBB9_21:                               # %cond.false.60
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB9_22:                               # %cond.end.64
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	movq	-104(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-212(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-216(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#24:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -220(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-220(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#25:                                # %land.lhs.true.87
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	%ecx, %edx
	movq	-104(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -224(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-224(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#26:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-228(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#27:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -232(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-232(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#28:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movl	%ecx, %edx
	movq	-104(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -236(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-236(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#29:                                # %land.lhs.true.119
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -240(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-240(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#30:                                # %land.lhs.true.127
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-120(%rbp), %rcx
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx
	movl	%ecx, %esi
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-244(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	cmpq	-88(%rbp), %rax
	jne	.LBB9_32
# BB#31:                                # %if.then.135
                                        #   in Loop: Header=BB9_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	%esi, %eax
	movq	-104(%rbp), %rsi
	movl	%esi, %r8d
	movl	%eax, %esi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	-256(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %if.else
                                        #   in Loop: Header=BB9_9 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	%esi, %eax
	movq	-104(%rbp), %rsi
	movl	%esi, %r8d
	movl	%eax, %esi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	-272(%rbp), %r9         # 8-byte Reload
	callq	*%r9
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB9_33:                               # %if.end.145
                                        #   in Loop: Header=BB9_9 Depth=2
	jmp	.LBB9_34
.LBB9_34:                               # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=2
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB9_9
.LBB9_35:                               # %for.end
                                        #   in Loop: Header=BB9_7 Depth=1
	jmp	.LBB9_36
.LBB9_36:                               # %for.inc.146
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB9_7
.LBB9_37:                               # %for.end.148
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-40(%rbp), %rsi
	movq	%rcx, %rdx
	callq	XCreateGC
	xorl	%r8d, %r8d
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rax
	movl	%eax, %r9d
	movq	-72(%rbp), %rax
	movl	%eax, %r10d
	movl	%r8d, -280(%rbp)        # 4-byte Spill
	movl	-280(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -284(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	-284(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 16(%rsp)
	movl	%r10d, 24(%rsp)
	callq	XPutImage
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-144(%rbp), %rsi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	XFreeGC
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-152(%rbp), %rdx
	imulq	$48, %rcx, %rcx
	addq	280(%rdx), %rcx
	movb	$1, 8(%rcx)
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	-152(%rbp), %rsi
	imulq	$48, %rdx, %rdx
	addq	280(%rsi), %rdx
	movq	%rcx, 16(%rdx)
	movq	-48(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	-48(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	*%rcx
	movq	-56(%rbp), %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	x_destroy_x_image
.LBB9_38:                               # %return
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	x_create_bitmap_mask, .Lfunc_end9-x_create_bitmap_mask
	.cfi_endproc

	.align	16, 0x90
	.type	x_bitmap_width,@function
x_bitmap_width:                         # @x_bitmap_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	imulq	$48, %rsi, %rsi
	addq	280(%rdi), %rsi
	movl	40(%rsi), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_bitmap_width, .Lfunc_end10-x_bitmap_width
	.cfi_endproc

	.align	16, 0x90
	.type	x_bitmap_height,@function
x_bitmap_height:                        # @x_bitmap_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$1, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	imulq	$48, %rsi, %rsi
	addq	280(%rdi), %rsi
	movl	36(%rsi), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_bitmap_height, .Lfunc_end11-x_bitmap_height
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_x_image_and_pixmap,@function
x_create_x_image_and_pixmap:            # @x_create_x_image_and_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -72(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB12_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB12_2:                               # %if.end
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rsi
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	cmpl	$16, -28(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	jle	.LBB12_4
# BB#3:                                 # %cond.true
	movl	$32, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	movl	$8, %eax
	movl	$16, %ecx
	cmpl	$8, -28(%rbp)
	cmovgl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB12_5:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	XCreateImage
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_7
# BB#6:                                 # %if.then.12
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB12_12
.LBB12_7:                               # %if.end.13
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	x_check_image_size
	testb	$1, %al
	jne	.LBB12_9
# BB#8:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	x_destroy_x_image
	movabsq	$.L.str.13, %rdi
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-24(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB12_12
.LBB12_9:                               # %if.end.19
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	44(%rax), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	xmalloc
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	XCreatePixmap
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_11
# BB#10:                                # %if.then.25
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	x_destroy_x_image
	movabsq	$.L.str.14, %rdi
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB12_12
.LBB12_11:                              # %if.end.26
	movb	$1, -1(%rbp)
.LBB12_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	x_create_x_image_and_pixmap, .Lfunc_end12-x_create_x_image_and_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	four_corners_best,@function
four_corners_best:                      # @four_corners_best
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jl	.LBB13_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rcx
	movl	(%rcx), %esi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-92(%rbp), %edx         # 4-byte Reload
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %esi
	subl	$1, %esi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-96(%rbp), %edx         # 4-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	callq	*%rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	*%rcx
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movl	%ecx, %esi
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	subq	$1, %rcx
	movl	%ecx, %esi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-100(%rbp), %edx        # 4-byte Reload
	callq	*%rax
	xorl	%esi, %esi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	subq	$1, %rcx
	movl	%ecx, %edx
	callq	*%rax
	movq	%rax, -40(%rbp)
.LBB13_4:                               # %if.end
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
.LBB13_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	cmpl	$4, -76(%rbp)
	jge	.LBB13_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB13_7:                               # %for.cond.50
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -84(%rbp)
	jge	.LBB13_12
# BB#8:                                 # %for.body.53
                                        #   in Loop: Header=BB13_7 Depth=2
	movslq	-76(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rax
	movslq	-84(%rbp), %rcx
	cmpq	-64(%rbp,%rcx,8), %rax
	jne	.LBB13_10
# BB#9:                                 # %if.then.59
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
.LBB13_10:                              # %if.end.60
                                        #   in Loop: Header=BB13_7 Depth=2
	jmp	.LBB13_11
.LBB13_11:                              # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB13_7
.LBB13_12:                              # %for.end
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jle	.LBB13_14
# BB#13:                                # %if.then.64
                                        #   in Loop: Header=BB13_5 Depth=1
	movslq	-76(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movl	-88(%rbp), %ecx
	movl	%ecx, -80(%rbp)
.LBB13_14:                              # %if.end.67
                                        #   in Loop: Header=BB13_5 Depth=1
	jmp	.LBB13_15
.LBB13_15:                              # %for.inc.68
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB13_5
.LBB13_16:                              # %for.end.70
	movq	-72(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	four_corners_best, .Lfunc_end13-four_corners_best
	.cfi_endproc

	.align	16, 0x90
	.type	x_destroy_x_image,@function
x_destroy_x_image:                      # @x_destroy_x_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	x_destroy_x_image, .Lfunc_end14-x_destroy_x_image
	.cfi_endproc

	.globl	valid_image_p
	.align	16, 0x90
	.type	valid_image_p,@function
valid_image_p:                          # @valid_image_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	IMAGEP
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_13
.LBB15_1:                               # %if.then
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_12
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	$131, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_10
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_9
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_9
# BB#6:                                 # %if.then.20
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	lookup_image_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_8
# BB#7:                                 # %if.then.24
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	andb	$1, %al
	movb	%al, -9(%rbp)
.LBB15_8:                               # %if.end
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.27
	jmp	.LBB15_12
.LBB15_10:                              # %if.end.28
                                        #   in Loop: Header=BB15_2 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_2
.LBB15_12:                              # %for.end
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.32
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	valid_image_p, .Lfunc_end15-valid_image_p
	.cfi_endproc

	.align	16, 0x90
	.type	lookup_image_type,@function
lookup_image_type:                      # @lookup_image_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$743, %eax              # imm = 0x2E7
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$pbm_type, %rdi
	callq	define_image_type
	movq	%rax, -8(%rbp)
	jmp	.LBB16_9
.LBB16_2:                               # %if.end
	movl	$1062, %edi             # imm = 0x426
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_4
# BB#3:                                 # %if.then.4
	movabsq	$xbm_type, %rdi
	callq	define_image_type
	movq	%rax, -8(%rbp)
	jmp	.LBB16_9
.LBB16_4:                               # %if.end.6
	movl	$754, %edi              # imm = 0x2F2
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_6
# BB#5:                                 # %if.then.9
	movabsq	$png_type, %rdi
	callq	define_image_type
	movq	%rax, -8(%rbp)
	jmp	.LBB16_9
.LBB16_6:                               # %if.end.11
	movl	$765, %edi              # imm = 0x2FD
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_8
# BB#7:                                 # %if.then.14
	movabsq	$gs_type, %rdi
	callq	define_image_type
	movq	%rax, -8(%rbp)
	jmp	.LBB16_9
.LBB16_8:                               # %if.end.16
	movq	$0, -8(%rbp)
.LBB16_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lookup_image_type, .Lfunc_end16-lookup_image_type
	.cfi_endproc

	.globl	Fimage_size
	.align	16, 0x90
	.type	Fimage_size,@function
Fimage_size:                            # @Fimage_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	valid_image_p
	testb	$1, %al
	jne	.LBB17_1
	jmp	.LBB17_9
.LBB17_1:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lookup_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jl	.LBB17_4
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB17_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB17_5
.LBB17_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	140(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	144(%rax), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_7
# BB#6:                                 # %if.then.13
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-40(%rbp), %rax
	cvtsi2sdl	364(%rax), %xmm1
	divsd	%xmm1, %xmm0
	callq	make_float
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-40(%rbp), %rcx
	cvtsi2sdl	368(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	make_float
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
	jmp	.LBB17_8
.LBB17_7:                               # %if.else
	movslq	-60(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
.LBB17_8:                               # %if.end
	jmp	.LBB17_10
.LBB17_9:                               # %if.else.27
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_10:                              # %if.end.28
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fimage_size, .Lfunc_end17-Fimage_size
	.cfi_endproc

	.globl	lookup_image
	.align	16, 0x90
	.type	lookup_image,@function
lookup_image:                           # @lookup_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	sxhash
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	search_image_cache
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	testb	$1, 160(%rax)
	je	.LBB18_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	free_image
	movq	$0, -24(%rbp)
.LBB18_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB18_41
# BB#4:                                 # %if.then.3
	callq	block_input
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	cache_image
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	xorb	$-1, %al
	movq	-24(%rbp), %rsi
	andb	$1, %al
	movb	%al, 160(%rsi)
	movq	-8(%rbp), %rsi
	movq	480(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	movq	-8(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	movq	-24(%rbp), %rsi
	testb	$1, 160(%rsi)
	je	.LBB18_12
# BB#5:                                 # %if.then.9
	movl	$139, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_7
# BB#6:                                 # %cond.true
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_8:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$58, %edi
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_10
# BB#9:                                 # %cond.true.23
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB18_11
.LBB18_10:                              # %cond.false.25
	movl	$30, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB18_11
.LBB18_11:                              # %cond.end.26
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 96(%rax)
	jmp	.LBB18_40
.LBB18_12:                              # %if.else
	movl	$9, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_14
# BB#13:                                # %if.then.36
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 116(%rax)
	jmp	.LBB18_17
.LBB18_14:                              # %if.else.40
	movl	$251, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB18_16
# BB#15:                                # %if.then.44
	movq	-24(%rbp), %rax
	movl	$-1, 116(%rax)
.LBB18_16:                              # %if.end.46
	jmp	.LBB18_17
.LBB18_17:                              # %if.end.47
	movl	$80, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB18_19
# BB#18:                                # %if.then.55
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 140(%rax)
	movq	-24(%rbp), %rax
	movl	%ecx, 144(%rax)
	jmp	.LBB18_22
.LBB18_19:                              # %if.else.58
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB18_21
# BB#20:                                # %if.then.63
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 140(%rax)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 144(%rax)
.LBB18_21:                              # %if.end.71
	jmp	.LBB18_22
.LBB18_22:                              # %if.end.72
	movl	$107, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	140(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	144(%rax), %ecx
	jle	.LBB18_24
# BB#23:                                # %cond.true.79
	movq	-24(%rbp), %rax
	movl	140(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB18_25
.LBB18_24:                              # %cond.false.81
	movq	-24(%rbp), %rax
	movl	144(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
.LBB18_25:                              # %cond.end.83
	movl	-164(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	subl	%eax, %edx
	movl	%edx, -76(%rbp)
	subl	-76(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	-64(%rbp), %rsi
	movslq	-76(%rbp), %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB18_26
	jmp	.LBB18_33
.LBB18_26:                              # %if.then.90
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 136(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 136(%rax)
	jge	.LBB18_28
# BB#27:                                # %cond.true.97
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	subl	136(%rcx), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB18_29
.LBB18_28:                              # %cond.false.100
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -168(%rbp)        # 4-byte Spill
.LBB18_29:                              # %cond.end.102
	movl	-168(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	addl	140(%rcx), %eax
	movl	%eax, 140(%rcx)
	movq	-24(%rbp), %rcx
	cmpl	$0, 136(%rcx)
	jge	.LBB18_31
# BB#30:                                # %cond.true.108
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	subl	136(%rcx), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB18_32
.LBB18_31:                              # %cond.false.111
	movq	-24(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB18_32:                              # %cond.end.113
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	addl	144(%rcx), %eax
	movl	%eax, 144(%rcx)
.LBB18_33:                              # %if.end.117
	movq	-24(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB18_37
# BB#34:                                # %if.then.118
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB18_36
# BB#35:                                # %if.then.125
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	472(%rax), %rcx
	callq	x_alloc_image_color
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	movb	88(%rax), %r8b
	andb	$-3, %r8b
	orb	$2, %r8b
	movb	%r8b, 88(%rax)
.LBB18_36:                              # %if.end.131
	jmp	.LBB18_37
.LBB18_37:                              # %if.end.132
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	(%rax), %edi
	callq	builtin_lisp_symbol
	movl	$765, %edi              # imm = 0x2FD
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_39
# BB#38:                                # %if.then.139
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	postprocess_image
.LBB18_39:                              # %if.end.140
	jmp	.LBB18_40
.LBB18_40:                              # %if.end.141
	callq	unblock_input
.LBB18_41:                              # %if.end.142
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	current_timespec
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	lookup_image, .Lfunc_end18-lookup_image
	.cfi_endproc

	.globl	Fimage_mask_p
	.align	16, 0x90
	.type	Fimage_mask_p,@function
Fimage_mask_p:                          # @Fimage_mask_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	valid_image_p
	testb	$1, %al
	jne	.LBB19_1
	jmp	.LBB19_8
.LBB19_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lookup_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB19_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB19_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_5
.LBB19_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB19_7
# BB#6:                                 # %if.then.8
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_9
.LBB19_8:                               # %if.else
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB19_9:                               # %if.end.10
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fimage_mask_p, .Lfunc_end19-Fimage_mask_p
	.cfi_endproc

	.globl	Fimage_metadata
	.align	16, 0x90
	.type	Fimage_metadata,@function
Fimage_metadata:                        # @Fimage_metadata
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	valid_image_p
	testb	$1, %al
	jne	.LBB20_1
	jmp	.LBB20_6
.LBB20_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lookup_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB20_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB20_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_5
.LBB20_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB20_5
.LBB20_5:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB20_6:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fimage_metadata, .Lfunc_end20-Fimage_metadata
	.cfi_endproc

	.globl	prepare_image_for_display
	.align	16, 0x90
	.type	prepare_image_for_display,@function
prepare_image_for_display:              # @prepare_image_for_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	current_timespec
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	testb	$1, 160(%rax)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	xorb	$-1, %al
	movq	-16(%rbp), %rsi
	andb	$1, %al
	movb	%al, 160(%rsi)
.LBB21_3:                               # %if.end
	movq	-16(%rbp), %rax
	testb	$1, 160(%rax)
	jne	.LBB21_5
# BB#4:                                 # %if.then.5
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	image_sync_to_pixmaps
	callq	unblock_input
.LBB21_5:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	prepare_image_for_display, .Lfunc_end21-prepare_image_for_display
	.cfi_endproc

	.align	16, 0x90
	.type	image_sync_to_pixmaps,@function
image_sync_to_pixmaps:                  # @image_sync_to_pixmaps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	96(%rax), %r8d
	callq	x_put_x_image
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB22_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	96(%rax), %r8d
	callq	x_put_x_image
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB22_4:                               # %if.end.11
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	image_sync_to_pixmaps, .Lfunc_end22-image_sync_to_pixmaps
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	image_ascent
	.align	16, 0x90
	.type	image_ascent,@function
image_ascent:                           # @image_ascent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	shrq	$48, %rdx
	movl	%edx, %eax
	movq	-8(%rbp), %rdx
	cmpl	96(%rdx), %eax
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	144(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB23_6
.LBB23_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shrq	$16, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB23_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	addl	144(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.else.13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shrq	$48, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB23_5:                               # %if.end
	jmp	.LBB23_6
.LBB23_6:                               # %if.end.17
	movq	-8(%rbp), %rax
	cmpl	$-1, 116(%rax)
	jne	.LBB23_11
# BB#7:                                 # %if.then.20
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB23_9
# BB#8:                                 # %if.then.21
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	224(%rdx), %rdx
	addl	168(%rdx), %ecx
	movq	-16(%rbp), %rdx
	movq	224(%rdx), %rdx
	subl	172(%rdx), %ecx
	addl	$1, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -32(%rbp)
	jmp	.LBB23_10
.LBB23_9:                               # %if.else.27
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -32(%rbp)
.LBB23_10:                              # %if.end.29
	jmp	.LBB23_12
.LBB23_11:                              # %if.else.30
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	116(%rax), %xmm2
	divsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -32(%rbp)
.LBB23_12:                              # %if.end.35
	movl	-32(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	image_ascent, .Lfunc_end23-image_ascent
	.cfi_endproc

	.globl	image_background
	.align	16, 0x90
	.type	image_background,@function
image_background:                       # @image_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movb	88(%rdx), %al
	shrb	$1, %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB24_6
# BB#1:                                 # %if.then
	cmpq	$0, -24(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB24_3
# BB#2:                                 # %if.then.2
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	image_get_x_image
	movq	%rax, -24(%rbp)
.LBB24_3:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movq	-8(%rbp), %rcx
	movslq	92(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movslq	96(%rcx), %rcx
	movq	%rax, %rsi
	callq	four_corners_best
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	testb	$1, -25(%rbp)
	je	.LBB24_5
# BB#4:                                 # %if.then.6
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	image_unget_x_image
.LBB24_5:                               # %if.end.7
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 88(%rax)
.LBB24_6:                               # %if.end.11
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	image_background, .Lfunc_end24-image_background
	.cfi_endproc

	.align	16, 0x90
	.type	image_get_x_image,@function
image_get_x_image:                      # @image_get_x_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB25_3
.LBB25_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB25_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB25_5
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_9
.LBB25_5:                               # %if.else
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	testb	$1, -25(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB25_7
# BB#6:                                 # %cond.true.3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false.4
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB25_8:                               # %cond.end.5
	movq	-64(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	$-1, %rdx
	movl	$2, %esi
	movq	-24(%rbp), %rdi
	movl	92(%rdi), %r8d
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	$-1, (%rsp)
	movl	$2, 8(%rsp)
	callq	XGetImage
	movq	%rax, -8(%rbp)
.LBB25_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	image_get_x_image, .Lfunc_end25-image_get_x_image
	.cfi_endproc

	.align	16, 0x90
	.type	image_unget_x_image,@function
image_unget_x_image:                    # @image_unget_x_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	testb	$1, -9(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB26_3
.LBB26_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB26_3:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB26_5
# BB#4:                                 # %if.then
	jmp	.LBB26_6
.LBB26_5:                               # %if.else
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB26_6:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	image_unget_x_image, .Lfunc_end26-image_unget_x_image
	.cfi_endproc

	.globl	image_background_transparent
	.align	16, 0x90
	.type	image_background_transparent,@function
image_background_transparent:           # @image_background_transparent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movb	88(%rdx), %al
	shrb	$2, %al
	andb	$1, %al
	testb	$1, %al
	jne	.LBB27_9
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB27_7
# BB#2:                                 # %if.then.2
	cmpq	$0, -24(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB27_4
# BB#3:                                 # %if.then.5
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	image_get_x_image
	movq	%rax, -24(%rbp)
.LBB27_4:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	addq	$100, %rax
	movq	-8(%rbp), %rcx
	movslq	92(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movslq	96(%rcx), %rcx
	movq	%rax, %rsi
	callq	four_corners_best
	cmpq	$0, %rax
	sete	%r8b
	movq	-8(%rbp), %rax
	andb	$1, %r8b
	movb	88(%rax), %r9b
	andb	$-2, %r9b
	orb	%r8b, %r9b
	movb	%r9b, 88(%rax)
	testb	$1, -25(%rbp)
	je	.LBB27_6
# BB#5:                                 # %if.then.13
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	image_unget_x_image
.LBB27_6:                               # %if.end.14
	jmp	.LBB27_8
.LBB27_7:                               # %if.else
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 88(%rax)
.LBB27_8:                               # %if.end.18
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 88(%rax)
.LBB27_9:                               # %if.end.23
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	image_background_transparent, .Lfunc_end27-image_background_transparent
	.cfi_endproc

	.globl	make_image_cache
	.align	16, 0x90
	.type	make_image_cache,@function
make_image_cache:                       # @make_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$40, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$50, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$8008, %ecx             # imm = 0x1F48
	movl	%ecx, %edi
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	callq	xzalloc
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	make_image_cache, .Lfunc_end28-make_image_cache
	.cfi_endproc

	.globl	free_image_cache
	.align	16, 0x90
	.type	free_image_cache,@function
free_image_cache:                       # @free_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	376(%rdi), %rdi
	movq	80(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB29_6
# BB#1:                                 # %if.then
	movq	$0, -24(%rbp)
.LBB29_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB29_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	free_image
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB29_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB29_2
.LBB29_5:                               # %for.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	$0, 80(%rax)
.LBB29_6:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	free_image_cache, .Lfunc_end29-free_image_cache
	.cfi_endproc

	.align	16, 0x90
	.type	free_image,@function
free_image:                             # @free_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB30_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB30_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rax, 192(%rcx)
	jmp	.LBB30_4
.LBB30_3:                               # %if.else
	movl	$1001, %eax             # imm = 0x3E9
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	192(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	176(%rsi), %rax
	xorl	%edi, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%edi, %edx
	divq	%rcx
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rcx,%rdx,8)
.LBB30_4:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB30_6
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rax, 200(%rcx)
.LBB30_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB30_7:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	free_image, .Lfunc_end30-free_image
	.cfi_endproc

	.globl	clear_image_caches
	.align	16, 0x90
	.type	clear_image_caches,@function
clear_image_caches:                     # @clear_image_caches
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	Vframe_list, %rdi
	movq	%rdi, -16(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB31_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB31_3:                               # %land.end
                                        #   in Loop: Header=BB31_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_4
	jmp	.LBB31_8
.LBB31_4:                               # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	clear_image_cache
.LBB31_6:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_7
.LBB31_7:                               # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB31_1
.LBB31_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	clear_image_caches, .Lfunc_end31-clear_image_caches
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_0:
	.quad	4654751689864118272     # double 1600
.LCPI32_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	clear_image_cache,@function
clear_image_cache:                      # @clear_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB32_43
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	callq	block_input
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_11
# BB#2:                                 # %if.then.1
	movq	$0, -32(%rbp)
.LBB32_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB32_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB32_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_3 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	cmpq	-16(%rbp), %rax
	je	.LBB32_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	128(%rax), %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB32_8
.LBB32_7:                               # %if.then.9
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	free_image
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
.LBB32_8:                               # %if.end
                                        #   in Loop: Header=BB32_3 Depth=1
	jmp	.LBB32_9
.LBB32_9:                               # %for.inc
                                        #   in Loop: Header=BB32_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB32_3
.LBB32_10:                              # %for.end
	jmp	.LBB32_32
.LBB32_11:                              # %if.else
	movq	globals+1040, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB32_31
# BB#12:                                # %if.then.14
	movq	$0, -96(%rbp)
	movq	$0, -32(%rbp)
.LBB32_13:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB32_18
# BB#14:                                # %for.body.19
                                        #   in Loop: Header=BB32_13 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB32_16
# BB#15:                                # %if.then.23
                                        #   in Loop: Header=BB32_13 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
.LBB32_16:                              # %if.end.25
                                        #   in Loop: Header=BB32_13 Depth=1
	jmp	.LBB32_17
.LBB32_17:                              # %for.inc.26
                                        #   in Loop: Header=BB32_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB32_13
.LBB32_18:                              # %for.end.28
	movq	globals+1040, %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)
	cmpq	$40, -96(%rbp)
	jle	.LBB32_20
# BB#19:                                # %if.then.32
	movsd	.LCPI32_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-88(%rbp), %xmm0
	cvtsi2sdq	-96(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdq	-96(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB32_20:                              # %if.end.36
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB32_22
# BB#21:                                # %cond.true
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB32_23
.LBB32_22:                              # %cond.false
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB32_23
.LBB32_23:                              # %cond.end
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	callq	current_timespec
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	dtotimespec
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-128(%rbp), %rdx
	movq	-120(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -32(%rbp)
.LBB32_24:                              # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB32_30
# BB#25:                                # %for.body.47
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB32_28
# BB#26:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB32_28
# BB#27:                                # %if.then.56
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	-8(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	free_image
	movq	-40(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
.LBB32_28:                              # %if.end.58
                                        #   in Loop: Header=BB32_24 Depth=1
	jmp	.LBB32_29
.LBB32_29:                              # %for.inc.59
                                        #   in Loop: Header=BB32_24 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB32_24
.LBB32_30:                              # %for.end.61
	jmp	.LBB32_31
.LBB32_31:                              # %if.end.62
	jmp	.LBB32_32
.LBB32_32:                              # %if.end.63
	cmpq	$0, -40(%rbp)
	je	.LBB32_42
# BB#33:                                # %if.then.65
	movq	Vframe_list, %rax
	movq	%rax, -160(%rbp)
.LBB32_34:                              # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jne	.LBB32_36
# BB#35:                                # %land.rhs
                                        #   in Loop: Header=BB32_34 Depth=1
	movb	$1, %al
	movq	-160(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB32_36:                              # %land.end
                                        #   in Loop: Header=BB32_34 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB32_37
	jmp	.LBB32_41
.LBB32_37:                              # %for.body.71
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-168(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB32_39
# BB#38:                                # %if.then.77
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-176(%rbp), %rdi
	callq	clear_current_matrices
.LBB32_39:                              # %if.end.78
                                        #   in Loop: Header=BB32_34 Depth=1
	jmp	.LBB32_40
.LBB32_40:                              # %for.inc.79
                                        #   in Loop: Header=BB32_34 Depth=1
	movq	-160(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB32_34
.LBB32_41:                              # %for.end.81
	movl	$19, windows_or_buffers_changed
.LBB32_42:                              # %if.end.82
	callq	unblock_input
.LBB32_43:                              # %if.end.83
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	clear_image_cache, .Lfunc_end32-clear_image_cache
	.cfi_endproc

	.globl	Fclear_image_cache
	.align	16, 0x90
	.type	Fclear_image_cache,@function
Fclear_image_cache:                     # @Fclear_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB33_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	clear_image_caches
	jmp	.LBB33_4
.LBB33_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	clear_image_cache
.LBB33_4:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fclear_image_cache, .Lfunc_end33-Fclear_image_cache
	.cfi_endproc

	.globl	Fimage_flush
	.align	16, 0x90
	.type	Fimage_flush,@function
Fimage_flush:                           # @Fimage_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	valid_image_p
	testb	$1, %al
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB34_2:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_12
# BB#3:                                 # %if.then.2
	movq	Vframe_list, %rax
	movq	%rax, -24(%rbp)
.LBB34_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB34_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB34_4 Depth=1
	movb	$1, %al
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB34_6:                               # %land.end
                                        #   in Loop: Header=BB34_4 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB34_7
	jmp	.LBB34_11
.LBB34_7:                               # %for.body
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB34_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	uncache_image
.LBB34_9:                               # %if.end.9
                                        #   in Loop: Header=BB34_4 Depth=1
	jmp	.LBB34_10
.LBB34_10:                              # %for.inc
                                        #   in Loop: Header=BB34_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB34_4
.LBB34_11:                              # %for.end
	jmp	.LBB34_13
.LBB34_12:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	uncache_image
.LBB34_13:                              # %if.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fimage_flush, .Lfunc_end34-Fimage_flush
	.cfi_endproc

	.align	16, 0x90
	.type	uncache_image,@function
uncache_image:                          # @uncache_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	callq	sxhash
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	search_image_cache
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	free_image
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rsi)
.LBB35_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	uncache_image, .Lfunc_end35-uncache_image
	.cfi_endproc

	.align	16, 0x90
	.type	search_image_cache,@function
search_image_cache:                     # @search_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1001, %eax             # imm = 0x3E9
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	376(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	%rcx
	movl	%edx, %r8d
	movl	%r8d, -52(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB36_12
.LBB36_2:                               # %if.end
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
.LBB36_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB36_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB36_3 Depth=1
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB36_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB36_3 Depth=1
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB36_9
# BB#6:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB36_3 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	480(%rcx), %rax
	jne	.LBB36_9
# BB#7:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB36_3 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	472(%rcx), %rax
	jne	.LBB36_9
# BB#8:                                 # %if.then.14
	jmp	.LBB36_11
.LBB36_9:                               # %if.end.15
                                        #   in Loop: Header=BB36_3 Depth=1
	jmp	.LBB36_10
.LBB36_10:                              # %for.inc
                                        #   in Loop: Header=BB36_3 Depth=1
	movq	-40(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB36_3
.LBB36_11:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB36_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	search_image_cache, .Lfunc_end36-search_image_cache
	.cfi_endproc

	.align	16, 0x90
	.type	make_image,@function
make_image:                             # @make_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$208, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	xzalloc
	movl	$41, %edi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB37_3
.LBB37_2:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	list1
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB37_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$131, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, %rdi
	callq	lookup_image_type
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-24(%rbp), %rax
	movl	$50, 116(%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-24(%rbp), %rax
	movl	$-1, 108(%rax)
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	make_image, .Lfunc_end37-make_image
	.cfi_endproc

	.align	16, 0x90
	.type	cache_image,@function
cache_image:                            # @cache_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB38_2
# BB#1:                                 # %if.then
	callq	make_image_cache
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	%rax, 80(%rcx)
	movq	%rax, -24(%rbp)
.LBB38_2:                               # %if.end
	movq	$0, -32(%rbp)
.LBB38_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB38_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB38_6
# BB#5:                                 # %if.then.4
	jmp	.LBB38_8
.LBB38_6:                               # %if.end.5
                                        #   in Loop: Header=BB38_3 Depth=1
	jmp	.LBB38_7
.LBB38_7:                               # %for.inc
                                        #   in Loop: Header=BB38_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB38_3
.LBB38_8:                               # %for.end
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB38_11
# BB#9:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB38_11
# BB#10:                                # %if.then.10
	movl	$1, %eax
	movl	%eax, %edx
	movq	$-1, %rcx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-24(%rbp), %rdi
	addq	$16, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB38_11:                              # %if.end.15
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB38_13
# BB#12:                                # %if.then.20
	movq	-24(%rbp), %rax
	movq	24(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 24(%rax)
.LBB38_13:                              # %if.end.23
	movl	$1001, %eax             # imm = 0x3E9
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	176(%rdx), %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	divq	%rcx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 192(%rdx)
	movq	-16(%rbp), %rcx
	cmpq	$0, 192(%rcx)
	je	.LBB38_15
# BB#14:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rax, 200(%rcx)
.LBB38_15:                              # %if.end.29
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	cache_image, .Lfunc_end38-cache_image
	.cfi_endproc

	.align	16, 0x90
	.type	image_spec_value,@function
image_spec_value:                       # @image_spec_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	subq	$3, %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
.LBB39_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB39_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB39_3:                               # %land.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_4
	jmp	.LBB39_10
.LBB39_4:                               # %for.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB39_8
# BB#5:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB39_7
# BB#6:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movb	$1, (%rax)
.LBB39_7:                               # %if.end
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_13
.LBB39_8:                               # %if.end.18
                                        #   in Loop: Header=BB39_1 Depth=1
	jmp	.LBB39_9
.LBB39_9:                               # %for.inc
                                        #   in Loop: Header=BB39_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB39_1
.LBB39_10:                              # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB39_12
# BB#11:                                # %if.then.26
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
.LBB39_12:                              # %if.end.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB39_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	image_spec_value, .Lfunc_end39-image_spec_value
	.cfi_endproc

	.align	16, 0x90
	.type	x_alloc_image_color,@function
x_alloc_image_color:                    # @x_alloc_image_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	SSDATA
	leaq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_defined_color
	testb	$1, %al
	jne	.LBB40_1
	jmp	.LBB40_3
.LBB40_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movslq	56(%rax), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jae	.LBB40_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	-64(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	xrealloc
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rdx
	subq	$1, %rdx
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB40_4
.LBB40_3:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB40_4:                               # %if.end
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	x_alloc_image_color, .Lfunc_end40-x_alloc_image_color
	.cfi_endproc

	.align	16, 0x90
	.type	postprocess_image,@function
postprocess_image:                      # @postprocess_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 16(%rsi)
	je	.LBB41_33
# BB#1:                                 # %if.then
	movl	$60, %edi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB41_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	x_build_heuristic_mask
	jmp	.LBB41_18
.LBB41_3:                               # %if.else
	movl	$81, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-41(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movl	$518, %edi              # imm = 0x206
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB41_5
# BB#4:                                 # %if.then.9
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	x_build_heuristic_mask
	jmp	.LBB41_17
.LBB41_5:                               # %if.else.11
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_11
# BB#6:                                 # %land.lhs.true
	movl	$518, %edi              # imm = 0x206
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_11
# BB#7:                                 # %if.then.17
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_9
# BB#8:                                 # %if.then.23
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdx
	callq	x_build_heuristic_mask
	jmp	.LBB41_10
.LBB41_9:                               # %if.else.29
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdx
	callq	x_build_heuristic_mask
.LBB41_10:                              # %if.end
	jmp	.LBB41_16
.LBB41_11:                              # %if.else.33
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_15
# BB#12:                                # %land.lhs.true.37
	testb	$1, -41(%rbp)
	je	.LBB41_15
# BB#13:                                # %land.lhs.true.40
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB41_15
# BB#14:                                # %if.then.43
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image_1
.LBB41_15:                              # %if.end.44
	jmp	.LBB41_16
.LBB41_16:                              # %if.end.45
	jmp	.LBB41_17
.LBB41_17:                              # %if.end.46
	jmp	.LBB41_18
.LBB41_18:                              # %if.end.47
	movl	$27, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movl	$343, %edi              # imm = 0x157
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB41_20
# BB#19:                                # %if.then.53
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_disable_image
	jmp	.LBB41_32
.LBB41_20:                              # %if.else.54
	movl	$601, %edi              # imm = 0x259
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_22
# BB#21:                                # %if.then.58
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_laplace
	jmp	.LBB41_31
.LBB41_22:                              # %if.else.59
	movl	$362, %edi              # imm = 0x16A
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_24
# BB#23:                                # %if.then.63
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_emboss
	jmp	.LBB41_30
.LBB41_24:                              # %if.else.64
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_29
# BB#25:                                # %land.lhs.true.69
	movl	$357, %edi              # imm = 0x165
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_29
# BB#26:                                # %if.then.75
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB41_28
# BB#27:                                # %if.then.83
	movl	$82, %edi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$22, %edi
	movq	-56(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	x_edge_detection
.LBB41_28:                              # %if.end.88
	jmp	.LBB41_29
.LBB41_29:                              # %if.end.89
	jmp	.LBB41_30
.LBB41_30:                              # %if.end.90
	jmp	.LBB41_31
.LBB41_31:                              # %if.end.91
	jmp	.LBB41_32
.LBB41_32:                              # %if.end.92
	jmp	.LBB41_33
.LBB41_33:                              # %if.end.93
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	postprocess_image, .Lfunc_end41-postprocess_image
	.cfi_endproc

	.globl	mark_image_cache
	.align	16, 0x90
	.type	mark_image_cache,@function
mark_image_cache:                       # @mark_image_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB42_8
# BB#1:                                 # %if.then
	movq	$0, -16(%rbp)
.LBB42_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB42_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB42_2 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB42_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB42_2 Depth=1
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	mark_image
.LBB42_5:                               # %if.end
                                        #   in Loop: Header=BB42_2 Depth=1
	jmp	.LBB42_6
.LBB42_6:                               # %for.inc
                                        #   in Loop: Header=BB42_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB42_2
.LBB42_7:                               # %for.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	mark_image_cache, .Lfunc_end42-mark_image_cache
	.cfi_endproc

	.align	16, 0x90
	.type	mark_image,@function
mark_image:                             # @mark_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	callq	mark_object
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	callq	mark_object
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	mark_object
.LBB43_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	mark_image, .Lfunc_end43-mark_image
	.cfi_endproc

	.globl	x_find_image_file
	.align	16, 0x90
	.type	x_find_image_file,@function
x_find_image_file:                      # @x_find_image_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	x_find_image_fd
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	x_find_image_file, .Lfunc_end44-x_find_image_file
	.cfi_endproc

	.align	16, 0x90
	.type	x_find_image_fd,@function
x_find_image_fd:                        # @x_find_image_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movabsq	$.L.str.15, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rax, %rdi
	callq	build_string
	movq	globals+408, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	globals+2744, %rsi
	movq	%rax, %rdi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	cmpq	$0, -24(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB45_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_2:                               # %cond.false
	movl	$18, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB45_3
.LBB45_3:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	-32(%rbp), %rcx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	callq	openp
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB45_5
# BB#4:                                 # %lor.lhs.false
	cmpl	$-2, -44(%rbp)
	jne	.LBB45_8
.LBB45_5:                               # %if.then
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	cmpl	$-2, -44(%rbp)
	jne	.LBB45_7
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -44(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_9
.LBB45_8:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB45_12
.LBB45_9:                               # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB45_11
# BB#10:                                # %if.then.15
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB45_11:                              # %if.end.16
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB45_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	x_find_image_fd, .Lfunc_end45-x_find_image_fd
	.cfi_endproc

	.globl	x_kill_gs_process
	.align	16, 0x90
	.type	x_kill_gs_process,@function
x_kill_gs_process:                      # @x_kill_gs_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	376(%rsi), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB46_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB46_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB46_4
# BB#3:                                 # %if.then
	jmp	.LBB46_6
.LBB46_4:                               # %if.end
                                        #   in Loop: Header=BB46_1 Depth=1
	jmp	.LBB46_5
.LBB46_5:                               # %for.inc
                                        #   in Loop: Header=BB46_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB46_1
.LBB46_6:                               # %for.end
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB46_8
# BB#7:                                 # %if.then.5
	jmp	.LBB46_22
.LBB46_8:                               # %if.end.6
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fkill_process
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	72(%rax), %rdi
	callq	x_mutable_colormap
	testb	$1, %al
	jne	.LBB46_9
	jmp	.LBB46_21
.LBB46_9:                               # %if.then.13
	callq	block_input
	xorl	%eax, %eax
	movq	$-1, %rcx
	movl	$2, %edx
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-40(%rbp), %r8
	movl	92(%r8), %r8d
	movq	-40(%rbp), %r9
	movl	96(%r9), %r9d
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	$-1, (%rsp)
	movl	$2, 8(%rsp)
	callq	XGetImage
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB46_19
# BB#10:                                # %if.then.19
	callq	init_color_table
	movl	$0, -52(%rbp)
.LBB46_11:                              # %for.cond.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_13 Depth 2
	movl	-52(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB46_18
# BB#12:                                # %for.body.23
                                        #   in Loop: Header=BB46_11 Depth=1
	movl	$0, -56(%rbp)
.LBB46_13:                              # %for.cond.25
                                        #   Parent Loop BB46_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jge	.LBB46_16
# BB#14:                                # %for.body.28
                                        #   in Loop: Header=BB46_13 Depth=2
	movq	-48(%rbp), %rax
	movq	104(%rax), %rax
	movq	-48(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	lookup_pixel_color
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#15:                                # %for.inc.32
                                        #   in Loop: Header=BB46_13 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB46_13
.LBB46_16:                              # %for.end.34
                                        #   in Loop: Header=BB46_11 Depth=1
	jmp	.LBB46_17
.LBB46_17:                              # %for.inc.35
                                        #   in Loop: Header=BB46_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB46_11
.LBB46_18:                              # %for.end.37
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	colors_in_color_table
	movq	-40(%rbp), %rdi
	movq	%rax, 48(%rdi)
	callq	free_color_table
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB46_20
.LBB46_19:                              # %if.else
	movabsq	$.L.str.1, %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
.LBB46_20:                              # %if.end.41
	callq	unblock_input
.LBB46_21:                              # %if.end.42
	callq	block_input
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	postprocess_image
	callq	unblock_input
.LBB46_22:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	x_kill_gs_process, .Lfunc_end46-x_kill_gs_process
	.cfi_endproc

	.align	16, 0x90
	.type	init_color_table,@function
init_color_table:                       # @init_color_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$808, -4(%rbp)          # imm = 0x328
	movslq	-4(%rbp), %rdi
	callq	xzalloc
	movq	%rax, ct_table
	movl	$0, ct_colors_allocated
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	init_color_table, .Lfunc_end47-init_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	lookup_pixel_color,@function
lookup_pixel_color:                     # @lookup_pixel_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$101, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movl	%edx, %r8d
	movl	%r8d, -28(%rbp)
	movslq	-28(%rbp), %rcx
	movq	ct_table, %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
.LBB48_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB48_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB48_4
# BB#3:                                 # %if.then
	jmp	.LBB48_6
.LBB48_4:                               # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_5
.LBB48_5:                               # %for.inc
                                        #   in Loop: Header=BB48_1 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB48_1
.LBB48_6:                               # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB48_13
# BB#7:                                 # %if.then.5
	cmpl	$2147483647, ct_colors_allocated # imm = 0x7FFFFFFF
	jl	.LBB48_9
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_14
.LBB48_9:                               # %if.end.9
	leaq	-56(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_query_color
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	x_alloc_nearest_color
	andb	$1, %al
	movb	%al, -65(%rbp)
	testb	$1, -65(%rbp)
	je	.LBB48_11
# BB#10:                                # %if.then.13
	movl	$32, %eax
	movl	%eax, %edi
	movl	ct_colors_allocated, %eax
	addl	$1, %eax
	movl	%eax, ct_colors_allocated
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movzwl	-48(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movzwl	-46(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 4(%rax)
	movzwl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movslq	-28(%rbp), %rax
	movq	ct_table, %rdi
	movq	(%rdi,%rax,8), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rdi
	movq	ct_table, %rdx
	movq	%rax, (%rdx,%rdi,8)
	jmp	.LBB48_12
.LBB48_11:                              # %if.else
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB48_14
.LBB48_12:                              # %if.end.25
	jmp	.LBB48_13
.LBB48_13:                              # %if.end.26
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB48_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	lookup_pixel_color, .Lfunc_end48-lookup_pixel_color
	.cfi_endproc

	.align	16, 0x90
	.type	colors_in_color_table,@function
colors_in_color_table:                  # @colors_in_color_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, ct_colors_allocated
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -32(%rbp)
	jmp	.LBB49_11
.LBB49_2:                               # %if.else
	movslq	ct_colors_allocated, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -32(%rbp)
	movl	ct_colors_allocated, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB49_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_5 Depth 2
	cmpl	$101, -12(%rbp)
	jge	.LBB49_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB49_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	ct_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
.LBB49_5:                               # %for.cond.3
                                        #   Parent Loop BB49_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB49_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB49_5 Depth=2
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	-16(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -16(%rbp)
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB49_5 Depth=2
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB49_5
.LBB49_8:                               # %for.end
                                        #   in Loop: Header=BB49_3 Depth=1
	jmp	.LBB49_9
.LBB49_9:                               # %for.inc.7
                                        #   in Loop: Header=BB49_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB49_3
.LBB49_10:                              # %for.end.9
	jmp	.LBB49_11
.LBB49_11:                              # %if.end
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	colors_in_color_table, .Lfunc_end49-colors_in_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	free_color_table,@function
free_color_table:                       # @free_color_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_3 Depth 2
	cmpl	$101, -4(%rbp)
	jge	.LBB50_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	ct_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
.LBB50_3:                               # %for.cond.1
                                        #   Parent Loop BB50_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB50_6
# BB#4:                                 # %for.body.2
                                        #   in Loop: Header=BB50_3 Depth=2
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB50_3 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB50_3
.LBB50_6:                               # %for.end
                                        #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_7
.LBB50_7:                               # %for.inc.4
                                        #   in Loop: Header=BB50_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB50_1
.LBB50_8:                               # %for.end.5
	movq	ct_table, %rax
	movq	%rax, %rdi
	callq	xfree
	movq	$0, ct_table
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	free_color_table, .Lfunc_end50-free_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	image_error,@function
image_error:                            # @image_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB51_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB51_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	vadd_to_log
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end51:
	.size	image_error, .Lfunc_end51-image_error
	.cfi_endproc

	.globl	Finit_image_library
	.align	16, 0x90
	.type	Finit_image_library,@function
Finit_image_library:                    # @Finit_image_library
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lookup_image_type
	cmpq	$0, %rax
	je	.LBB52_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB52_3
.LBB52_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB52_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Finit_image_library, .Lfunc_end52-Finit_image_library
	.cfi_endproc

	.globl	reset_image_types
	.align	16, 0x90
	.type	reset_image_types,@function
reset_image_types:                      # @reset_image_types
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
.LBB53_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, image_types
	je	.LBB53_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	image_types, %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	image_types, %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	%rax, image_types
	jmp	.LBB53_1
.LBB53_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	reset_image_types, .Lfunc_end53-reset_image_types
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI54_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	syms_of_image
	.align	16, 0x90
	.type	syms_of_image,@function
syms_of_image:                          # @syms_of_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	movq	$0, image_types
# BB#1:                                 # %do.body
	movabsq	$syms_of_image.o_fwd, %rdi
	movabsq	$.L.str.2, %rsi
	movabsq	$globals, %rax
	addq	$1048, %rax             # imm = 0x418
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1048
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_image.o_fwd.3, %rdi
	movabsq	$.L.str.4, %rsi
	movabsq	$globals, %rax
	addq	$1376, %rax             # imm = 0x560
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	movsd	.LCPI54_0, %xmm0        # xmm0 = mem[0],zero
	callq	make_float
	movq	%rax, globals+1376
# BB#5:                                 # %do.body.4
	movl	$765, %edi              # imm = 0x2FD
	callq	builtin_lisp_symbol
	movq	globals+1048, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1048
# BB#6:                                 # %do.end.7
	jmp	.LBB54_7
.LBB54_7:                               # %do.body.8
	movl	$743, %edi              # imm = 0x2E7
	callq	builtin_lisp_symbol
	movq	globals+1048, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1048
# BB#8:                                 # %do.end.11
	jmp	.LBB54_9
.LBB54_9:                               # %do.body.12
	movl	$1062, %edi             # imm = 0x426
	callq	builtin_lisp_symbol
	movq	globals+1048, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1048
# BB#10:                                # %do.end.15
	jmp	.LBB54_11
.LBB54_11:                              # %do.body.16
	movl	$754, %edi              # imm = 0x2F2
	callq	builtin_lisp_symbol
	movq	globals+1048, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1048
# BB#12:                                # %do.end.19
	movabsq	$Sinit_image_library, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclear_image_cache, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Simage_flush, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Simage_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Simage_mask_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Simage_metadata, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#13:                                # %do.body.20
	movabsq	$syms_of_image.b_fwd, %rdi
	movabsq	$.L.str.5, %rsi
	movabsq	$globals, %rax
	addq	$3370, %rax             # imm = 0xD2A
	movq	%rax, %rdx
	callq	defvar_bool
# BB#14:                                # %do.end.21
	movb	$0, globals+3370
# BB#15:                                # %do.body.22
	movabsq	$syms_of_image.o_fwd.6, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$globals, %rax
	addq	$2744, %rax             # imm = 0xAB8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.23
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	movq	%rax, globals+2744
# BB#17:                                # %do.body.25
	movabsq	$syms_of_image.o_fwd.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$globals, %rax
	addq	$1040, %rax             # imm = 0x410
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.26
	movq	$1202, globals+1040     # imm = 0x4B2
	popq	%rbp
	retq
.Lfunc_end54:
	.size	syms_of_image, .Lfunc_end54-syms_of_image
	.cfi_endproc

	.align	16, 0x90
	.type	x_build_heuristic_mask,@function
x_build_heuristic_mask:                 # @x_build_heuristic_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	je	.LBB55_2
# BB#1:                                 # %if.then
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image_1
.LBB55_2:                               # %if.end
	movl	$1, %r8d
	leaq	-40(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	$1, (%rsp)
	callq	image_create_x_image_and_pixmap
	testb	$1, %al
	jne	.LBB55_4
# BB#3:                                 # %if.then.1
	jmp	.LBB55_27
.LBB55_4:                               # %if.end.2
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	image_get_x_image
	movq	%rax, -32(%rbp)
	movb	$1, -49(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB55_16
# BB#5:                                 # %if.then.5
	movl	$0, -80(%rbp)
.LBB55_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$3, -80(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jge	.LBB55_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB55_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jne	.LBB55_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB55_6 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NATNUMP
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB55_9:                               # %land.end
                                        #   in Loop: Header=BB55_6 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB55_10
	jmp	.LBB55_12
.LBB55_10:                              # %for.body
                                        #   in Loop: Header=BB55_6 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movslq	-80(%rbp), %rax
	movl	%ecx, -76(%rbp,%rax,4)
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB55_6 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB55_6
.LBB55_12:                              # %for.end
	cmpl	$3, -80(%rbp)
	jne	.LBB55_15
# BB#13:                                # %land.lhs.true.21
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB55_15
# BB#14:                                # %if.then.25
	movabsq	$.L.str.11, %rsi
	leaq	-112(%rbp), %rdi
	movl	-76(%rbp), %eax
	addl	$0, %eax
	movl	-72(%rbp), %ecx
	addl	$0, %ecx
	movl	-68(%rbp), %edx
	addl	$0, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	sprintf
	leaq	-112(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %r9
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	build_string
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_alloc_image_color
	movq	%rax, -64(%rbp)
	movb	$0, -49(%rbp)
.LBB55_15:                              # %if.end.35
	jmp	.LBB55_16
.LBB55_16:                              # %if.end.36
	testb	$1, -49(%rbp)
	je	.LBB55_18
# BB#17:                                # %if.then.38
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$100, %rax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	movq	%rax, %rsi
	callq	four_corners_best
	movq	%rax, -64(%rbp)
.LBB55_18:                              # %if.end.45
	movl	$0, -48(%rbp)
.LBB55_19:                              # %for.cond.46
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_21 Depth 2
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB55_26
# BB#20:                                # %for.body.50
                                        #   in Loop: Header=BB55_19 Depth=1
	movl	$0, -44(%rbp)
.LBB55_21:                              # %for.cond.51
                                        #   Parent Loop BB55_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jge	.LBB55_24
# BB#22:                                # %for.body.55
                                        #   in Loop: Header=BB55_21 Depth=2
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	-32(%rbp), %r8
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	%edx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	*%rcx
	xorl	%edx, %edx
	movl	$1, %esi
	cmpq	-64(%rbp), %rax
	cmovnel	%esi, %edx
	movslq	%edx, %rcx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movq	-176(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, -180(%rbp)        # 4-byte Spill
# BB#23:                                # %for.inc.63
                                        #   in Loop: Header=BB55_21 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB55_21
.LBB55_24:                              # %for.end.65
                                        #   in Loop: Header=BB55_19 Depth=1
	jmp	.LBB55_25
.LBB55_25:                              # %for.inc.66
                                        #   in Loop: Header=BB55_19 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB55_19
.LBB55_26:                              # %for.end.68
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	image_background_transparent
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	image_put_x_image
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	image_unget_x_image
.LBB55_27:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	x_build_heuristic_mask, .Lfunc_end55-x_build_heuristic_mask
	.cfi_endproc

	.align	16, 0x90
	.type	x_clear_image_1,@function
x_clear_image_1:                        # @x_clear_image_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB56_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB56_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	XFreePixmap
	movq	-16(%rbp), %rsi
	movq	$0, 16(%rsi)
	movq	-16(%rbp), %rsi
	movb	88(%rsi), %cl
	andb	$-3, %cl
	movb	%cl, 88(%rsi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB56_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB56_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 88(%rax)
.LBB56_5:                               # %if.end.12
	jmp	.LBB56_6
.LBB56_6:                               # %if.end.13
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB56_12
# BB#7:                                 # %if.then.16
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB56_9
# BB#8:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	XFreePixmap
	movq	-16(%rbp), %rsi
	movq	$0, 24(%rsi)
	movq	-16(%rbp), %rsi
	movb	88(%rsi), %cl
	andb	$-5, %cl
	movb	%cl, 88(%rsi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB56_9:                               # %if.end.28
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB56_11
# BB#10:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movb	88(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 88(%rax)
.LBB56_11:                              # %if.end.36
	jmp	.LBB56_12
.LBB56_12:                              # %if.end.37
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB56_15
# BB#13:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB56_15
# BB#14:                                # %if.then.41
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-16(%rbp), %rax
	movl	56(%rax), %edx
	callq	x_free_colors
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 56(%rax)
.LBB56_15:                              # %if.end.46
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	x_clear_image_1, .Lfunc_end56-x_clear_image_1
	.cfi_endproc

	.align	16, 0x90
	.type	x_disable_image,@function
x_disable_image:                        # @x_disable_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp172:
	.cfi_def_cfa_offset 16
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp174:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %eax
	movl	%eax, -28(%rbp)
	cmpl	$2, -28(%rbp)
	jl	.LBB57_6
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_to_xcolors
	movq	%rax, -40(%rbp)
	movl	$15000, -60(%rbp)       # imm = 0x3A98
	movl	$30000, -64(%rbp)       # imm = 0x7530
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	92(%rsi), %edx
	movq	-16(%rbp), %rsi
	imull	96(%rsi), %edx
	movslq	%edx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -56(%rbp)
.LBB57_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jae	.LBB57_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB57_2 Depth=1
	movl	$65535, %eax            # imm = 0xFFFF
	movl	$6, %ecx
	movq	-48(%rbp), %rdx
	movzwl	8(%rdx), %esi
	shll	$1, %esi
	movq	-48(%rbp), %rdx
	movzwl	10(%rdx), %edi
	imull	$3, %edi, %edi
	addl	%edi, %esi
	movq	-48(%rbp), %rdx
	movzwl	12(%rdx), %edi
	addl	%edi, %esi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%eax, -68(%rbp)
	imull	$20535, -68(%rbp), %eax # imm = 0x5037
	cltd
	movl	-92(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	$30000, %eax            # imm = 0x7530
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movw	%ax, %r8w
	movq	-48(%rbp), %r9
	movw	%r8w, 12(%r9)
	movq	-48(%rbp), %r9
	movw	%r8w, 10(%r9)
	movq	-48(%rbp), %r9
	movw	%r8w, 8(%r9)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB57_2 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB57_2
.LBB57_5:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	x_from_xcolors
.LBB57_6:                               # %if.end
	cmpl	$2, -28(%rbp)
	jl	.LBB57_8
# BB#7:                                 # %lor.lhs.false
	testb	$1, globals+3370
	je	.LBB57_11
.LBB57_8:                               # %if.then.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	image_sync_to_pixmaps
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	XCreateGC
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	shlq	$7, %rcx
	addq	232(%rdx), %rcx
	movq	96(%rcx), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	XSetForeground
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %r9d
	subl	$1, %r9d
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %r10d
	subl	$1, %r10d
	movl	%r8d, %ecx
	movl	%r10d, (%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	XDrawLine
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %r11
	movl	96(%r11), %r8d
	subl	$1, %r8d
	movq	-16(%rbp), %r11
	movl	92(%r11), %r9d
	subl	$1, %r9d
	movl	$0, (%rsp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	XDrawLine
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	XFreeGC
	movq	-16(%rbp), %rdx
	cmpq	$0, 24(%rdx)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB57_10
# BB#9:                                 # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rcx, %rdx
	callq	XCreateGC
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	shlq	$7, %rcx
	addq	232(%rdx), %rcx
	movq	88(%rcx), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	callq	XSetForeground
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %r9d
	subl	$1, %r9d
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %r10d
	subl	$1, %r10d
	movl	%r8d, %ecx
	movl	%r10d, (%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	XDrawLine
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	-88(%rbp), %rdx
	movq	-16(%rbp), %r11
	movl	96(%r11), %r8d
	subl	$1, %r8d
	movq	-16(%rbp), %r11
	movl	92(%r11), %r9d
	subl	$1, %r9d
	movl	$0, (%rsp)
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	XDrawLine
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	XFreeGC
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB57_10:                              # %if.end.74
	jmp	.LBB57_11
.LBB57_11:                              # %if.end.75
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	x_disable_image, .Lfunc_end57-x_disable_image
	.cfi_endproc

	.align	16, 0x90
	.type	x_laplace,@function
x_laplace:                              # @x_laplace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$laplace_matrix, %rdx
	movl	$45000, %ecx            # imm = 0xAFC8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_detect_edges
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	x_laplace, .Lfunc_end58-x_laplace
	.cfi_endproc

	.align	16, 0x90
	.type	x_emboss,@function
x_emboss:                               # @x_emboss
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$emboss_matrix, %rdx
	movl	$32767, %ecx            # imm = 0x7FFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_detect_edges
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	x_emboss, .Lfunc_end59-x_emboss
	.cfi_endproc

	.align	16, 0x90
	.type	x_edge_detection,@function
x_edge_detection:                       # @x_edge_detection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$3, %eax
	jne	.LBB60_9
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
.LBB60_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$9, -36(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jge	.LBB60_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB60_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jne	.LBB60_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB60_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	NUMBERP
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB60_5:                               # %land.end
                                        #   in Loop: Header=BB60_2 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_6
	jmp	.LBB60_8
.LBB60_6:                               # %for.body
                                        #   in Loop: Header=BB60_2 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XFLOATINT
	cvttsd2si	%xmm0, %ecx
	movslq	-36(%rbp), %rax
	movl	%ecx, -80(%rbp,%rax,4)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB60_2 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB60_2
.LBB60_8:                               # %for.end
	jmp	.LBB60_19
.LBB60_9:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB60_10
	jmp	.LBB60_18
.LBB60_10:                              # %land.lhs.true.16
	movq	-24(%rbp), %rdi
	callq	ASIZE
	cmpq	$9, %rax
	jl	.LBB60_18
# BB#11:                                # %if.then.20
	movl	$0, -36(%rbp)
.LBB60_12:                              # %for.cond.21
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$9, -36(%rbp)
	movb	%cl, -82(%rbp)          # 1-byte Spill
	jge	.LBB60_14
# BB#13:                                # %land.rhs.24
                                        #   in Loop: Header=BB60_12 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	NUMBERP
	movb	%al, -82(%rbp)          # 1-byte Spill
.LBB60_14:                              # %land.end.29
                                        #   in Loop: Header=BB60_12 Depth=1
	movb	-82(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB60_15
	jmp	.LBB60_17
.LBB60_15:                              # %for.body.30
                                        #   in Loop: Header=BB60_12 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	XFLOATINT
	cvttsd2si	%xmm0, %ecx
	movslq	-36(%rbp), %rax
	movl	%ecx, -80(%rbp,%rax,4)
# BB#16:                                # %for.inc.37
                                        #   in Loop: Header=BB60_12 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_12
.LBB60_17:                              # %for.end.39
	jmp	.LBB60_18
.LBB60_18:                              # %if.end
	jmp	.LBB60_19
.LBB60_19:                              # %if.end.40
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB60_21
# BB#20:                                # %if.then.44
	movq	$131070, -32(%rbp)      # imm = 0x1FFFE
.LBB60_21:                              # %if.end.45
	cmpl	$9, -36(%rbp)
	jne	.LBB60_24
# BB#22:                                # %land.lhs.true.48
	movq	-32(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB60_23
	jmp	.LBB60_24
.LBB60_23:                              # %if.then.51
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	XFLOATINT
	cvttsd2si	%xmm0, %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	x_detect_edges
.LBB60_24:                              # %if.end.54
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	x_edge_detection, .Lfunc_end60-x_edge_detection
	.cfi_endproc

	.align	16, 0x90
	.type	image_create_x_image_and_pixmap,@function
image_create_x_image_and_pixmap:        # @image_create_x_image_and_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	16(%rbp), %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	testb	$1, -41(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%r8, -80(%rbp)          # 8-byte Spill
	jne	.LBB61_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB61_3
.LBB61_2:                               # %cond.false
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB61_3:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	callq	x_create_x_image_and_pixmap
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	image_create_x_image_and_pixmap, .Lfunc_end61-image_create_x_image_and_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	image_put_x_image,@function
image_put_x_image:                      # @image_put_x_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB62_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB62_3
.LBB62_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB62_3:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end62:
	.size	image_put_x_image, .Lfunc_end62-image_put_x_image
	.cfi_endproc

	.align	16, 0x90
	.type	x_to_xcolors,@function
x_to_xcolors:                           # @x_to_xcolors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$1296, %rsp             # imm = 0x510
	movb	%dl, %al
	xorl	%edx, %edx
	movb	%dl, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	testb	$1, %cl
	jne	.LBB63_1
	jmp	.LBB63_80
.LBB63_1:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_2
	jmp	.LBB63_41
.LBB63_2:                               # %cond.true.1
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_4
# BB#3:                                 # %cond.true.5
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB63_5
.LBB63_4:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB63_5:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jl	.LBB63_33
.LBB63_7:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_19
# BB#8:                                 # %cond.true.46
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_9
	jmp	.LBB63_13
.LBB63_9:                               # %cond.true.47
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_11
# BB#10:                                # %cond.true.57
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB63_12
.LBB63_11:                              # %cond.false.69
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB63_12:                              # %cond.end.77
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB63_33
	jmp	.LBB63_30
.LBB63_13:                              # %cond.false.84
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$-1, %ecx
	jne	.LBB63_15
# BB#14:                                # %cond.true.90
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_33
	jmp	.LBB63_30
.LBB63_15:                              # %cond.false.91
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_17
# BB#16:                                # %cond.true.101
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB63_18
.LBB63_17:                              # %cond.false.125
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB63_18:                              # %cond.end.133
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	cltd
	movl	-88(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB63_33
	jmp	.LBB63_30
.LBB63_19:                              # %cond.false.141
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jne	.LBB63_21
# BB#20:                                # %cond.true.147
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_33
	jmp	.LBB63_30
.LBB63_21:                              # %cond.false.148
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_22
	jmp	.LBB63_26
.LBB63_22:                              # %cond.true.149
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_24
# BB#23:                                # %cond.true.159
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB63_25
.LBB63_24:                              # %cond.false.183
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB63_25:                              # %cond.end.191
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB63_33
	jmp	.LBB63_30
.LBB63_26:                              # %cond.false.199
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_28
# BB#27:                                # %cond.true.209
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB63_29
.LBB63_28:                              # %cond.false.221
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB63_29:                              # %cond.end.229
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	cltd
	movl	-100(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB63_33
.LBB63_30:                              # %lor.lhs.false.237
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_32
# BB#31:                                # %land.lhs.true.246
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$-128, %ecx
	jl	.LBB63_33
.LBB63_32:                              # %lor.lhs.false.253
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB63_37
.LBB63_33:                              # %cond.true.260
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_35
# BB#34:                                # %cond.true.267
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB63_36
.LBB63_35:                              # %cond.false.274
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB63_36:                              # %cond.end.283
	movl	-104(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_37:                              # %cond.false.286
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_39
# BB#38:                                # %cond.true.293
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB63_40
.LBB63_39:                              # %cond.false.300
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB63_40:                              # %cond.end.309
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_41:                              # %cond.false.312
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_43
# BB#42:                                # %cond.true.321
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB63_44
.LBB63_43:                              # %cond.false.344
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB63_44:                              # %cond.end.351
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_46
# BB#45:                                # %land.lhs.true.355
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_72
.LBB63_46:                              # %lor.lhs.false.359
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_58
# BB#47:                                # %cond.true.363
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_48
	jmp	.LBB63_52
.LBB63_48:                              # %cond.true.364
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_50
# BB#49:                                # %cond.true.373
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB63_51
.LBB63_50:                              # %cond.false.384
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB63_51:                              # %cond.end.391
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_72
	jmp	.LBB63_69
.LBB63_52:                              # %cond.false.398
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_54
# BB#53:                                # %cond.true.402
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_72
	jmp	.LBB63_69
.LBB63_54:                              # %cond.false.403
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_56
# BB#55:                                # %cond.true.412
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB63_57
.LBB63_56:                              # %cond.false.435
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB63_57:                              # %cond.end.442
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_72
	jmp	.LBB63_69
.LBB63_58:                              # %cond.false.449
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_60
# BB#59:                                # %cond.true.453
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_72
	jmp	.LBB63_69
.LBB63_60:                              # %cond.false.454
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_61
	jmp	.LBB63_65
.LBB63_61:                              # %cond.true.455
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_63
# BB#62:                                # %cond.true.464
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB63_64
.LBB63_63:                              # %cond.false.487
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB63_64:                              # %cond.end.494
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_72
	jmp	.LBB63_69
.LBB63_65:                              # %cond.false.501
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_67
# BB#66:                                # %cond.true.510
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB63_68
.LBB63_67:                              # %cond.false.521
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB63_68:                              # %cond.end.528
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_72
.LBB63_69:                              # %lor.lhs.false.535
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_71
# BB#70:                                # %land.lhs.true.543
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-128, %rax
	jb	.LBB63_72
.LBB63_71:                              # %lor.lhs.false.549
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB63_76
.LBB63_72:                              # %cond.true.555
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_74
# BB#73:                                # %cond.true.562
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	jmp	.LBB63_75
.LBB63_74:                              # %cond.false.569
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
.LBB63_75:                              # %cond.end.578
	movl	-172(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_76:                              # %cond.false.581
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_78
# BB#77:                                # %cond.true.588
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	jmp	.LBB63_79
.LBB63_78:                              # %cond.false.595
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB63_79:                              # %cond.end.604
	movl	-176(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_80:                              # %cond.false.607
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_81
	jmp	.LBB63_160
.LBB63_81:                              # %cond.true.608
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_82
	jmp	.LBB63_121
.LBB63_82:                              # %cond.true.609
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_84
# BB#83:                                # %cond.true.619
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB63_85
.LBB63_84:                              # %cond.false.643
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB63_85:                              # %cond.end.651
	movl	-180(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_87
# BB#86:                                # %land.lhs.true.655
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jl	.LBB63_113
.LBB63_87:                              # %lor.lhs.false.661
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_99
# BB#88:                                # %cond.true.667
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_89
	jmp	.LBB63_93
.LBB63_89:                              # %cond.true.668
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_91
# BB#90:                                # %cond.true.678
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	jmp	.LBB63_92
.LBB63_91:                              # %cond.false.690
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB63_92:                              # %cond.end.698
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB63_113
	jmp	.LBB63_110
.LBB63_93:                              # %cond.false.706
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB63_95
# BB#94:                                # %cond.true.712
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_113
	jmp	.LBB63_110
.LBB63_95:                              # %cond.false.713
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_97
# BB#96:                                # %cond.true.723
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB63_98
.LBB63_97:                              # %cond.false.747
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
.LBB63_98:                              # %cond.end.755
	movl	-188(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movl	%edx, -192(%rbp)        # 4-byte Spill
	cltd
	movl	-192(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB63_113
	jmp	.LBB63_110
.LBB63_99:                              # %cond.false.763
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jne	.LBB63_101
# BB#100:                               # %cond.true.769
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_113
	jmp	.LBB63_110
.LBB63_101:                             # %cond.false.770
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_102
	jmp	.LBB63_106
.LBB63_102:                             # %cond.true.771
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_104
# BB#103:                               # %cond.true.781
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB63_105
.LBB63_104:                             # %cond.false.805
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
.LBB63_105:                             # %cond.end.813
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB63_113
	jmp	.LBB63_110
.LBB63_106:                             # %cond.false.821
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_108
# BB#107:                               # %cond.true.831
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB63_109
.LBB63_108:                             # %cond.false.843
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
.LBB63_109:                             # %cond.end.851
	movl	-200(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	cltd
	movl	-204(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB63_113
.LBB63_110:                             # %lor.lhs.false.859
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_112
# BB#111:                               # %land.lhs.true.868
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB63_113
.LBB63_112:                             # %lor.lhs.false.875
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB63_117
.LBB63_113:                             # %cond.true.882
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_115
# BB#114:                               # %cond.true.889
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB63_116
.LBB63_115:                             # %cond.false.896
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -208(%rbp)        # 4-byte Spill
.LBB63_116:                             # %cond.end.905
	movl	-208(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_117:                             # %cond.false.908
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_119
# BB#118:                               # %cond.true.915
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB63_120
.LBB63_119:                             # %cond.false.922
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB63_120:                             # %cond.end.931
	movl	-212(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_121:                             # %cond.false.934
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_123
# BB#122:                               # %cond.true.943
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB63_124
.LBB63_123:                             # %cond.false.966
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB63_124:                             # %cond.end.973
	movq	-224(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_126
# BB#125:                               # %land.lhs.true.977
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_152
.LBB63_126:                             # %lor.lhs.false.981
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_138
# BB#127:                               # %cond.true.985
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_128
	jmp	.LBB63_132
.LBB63_128:                             # %cond.true.986
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_130
# BB#129:                               # %cond.true.995
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB63_131
.LBB63_130:                             # %cond.false.1006
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB63_131:                             # %cond.end.1013
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_152
	jmp	.LBB63_149
.LBB63_132:                             # %cond.false.1020
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_134
# BB#133:                               # %cond.true.1024
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_152
	jmp	.LBB63_149
.LBB63_134:                             # %cond.false.1025
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_136
# BB#135:                               # %cond.true.1034
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB63_137
.LBB63_136:                             # %cond.false.1057
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB63_137:                             # %cond.end.1064
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_152
	jmp	.LBB63_149
.LBB63_138:                             # %cond.false.1071
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_140
# BB#139:                               # %cond.true.1075
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_152
	jmp	.LBB63_149
.LBB63_140:                             # %cond.false.1076
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_141
	jmp	.LBB63_145
.LBB63_141:                             # %cond.true.1077
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_143
# BB#142:                               # %cond.true.1086
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB63_144
.LBB63_143:                             # %cond.false.1109
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB63_144:                             # %cond.end.1116
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_152
	jmp	.LBB63_149
.LBB63_145:                             # %cond.false.1123
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_147
# BB#146:                               # %cond.true.1132
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB63_148
.LBB63_147:                             # %cond.false.1143
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB63_148:                             # %cond.end.1150
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_152
.LBB63_149:                             # %lor.lhs.false.1157
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_151
# BB#150:                               # %land.lhs.true.1165
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB63_152
.LBB63_151:                             # %lor.lhs.false.1171
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB63_156
.LBB63_152:                             # %cond.true.1177
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_154
# BB#153:                               # %cond.true.1184
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB63_155
.LBB63_154:                             # %cond.false.1191
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -276(%rbp)        # 4-byte Spill
.LBB63_155:                             # %cond.end.1200
	movl	-276(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_156:                             # %cond.false.1203
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_158
# BB#157:                               # %cond.true.1210
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB63_159
.LBB63_158:                             # %cond.false.1217
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -280(%rbp)        # 4-byte Spill
.LBB63_159:                             # %cond.end.1226
	movl	-280(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_160:                             # %cond.false.1229
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_161
	jmp	.LBB63_240
.LBB63_161:                             # %cond.true.1230
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_162
	jmp	.LBB63_201
.LBB63_162:                             # %cond.true.1231
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_164
# BB#163:                               # %cond.true.1239
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB63_165
.LBB63_164:                             # %cond.false.1259
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
.LBB63_165:                             # %cond.end.1265
	movl	-284(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_167
# BB#166:                               # %land.lhs.true.1269
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_193
.LBB63_167:                             # %lor.lhs.false.1273
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_179
# BB#168:                               # %cond.true.1277
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_169
	jmp	.LBB63_173
.LBB63_169:                             # %cond.true.1278
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_171
# BB#170:                               # %cond.true.1286
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	jmp	.LBB63_172
.LBB63_171:                             # %cond.false.1296
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -288(%rbp)        # 4-byte Spill
.LBB63_172:                             # %cond.end.1302
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	cltd
	movq	-296(%rbp), %rsi        # 8-byte Reload
	idivl	92(%rsi)
	cmpl	%eax, %ecx
	jl	.LBB63_193
	jmp	.LBB63_190
.LBB63_173:                             # %cond.false.1308
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_175
# BB#174:                               # %cond.true.1312
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_193
	jmp	.LBB63_190
.LBB63_175:                             # %cond.false.1313
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_177
# BB#176:                               # %cond.true.1321
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB63_178
.LBB63_177:                             # %cond.false.1341
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
.LBB63_178:                             # %cond.end.1347
	movl	-300(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cltd
	idivl	92(%rcx)
	cmpl	$16, %eax
	jl	.LBB63_193
	jmp	.LBB63_190
.LBB63_179:                             # %cond.false.1353
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_181
# BB#180:                               # %cond.true.1357
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_193
	jmp	.LBB63_190
.LBB63_181:                             # %cond.false.1358
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_182
	jmp	.LBB63_186
.LBB63_182:                             # %cond.true.1359
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_184
# BB#183:                               # %cond.true.1367
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB63_185
.LBB63_184:                             # %cond.false.1387
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
.LBB63_185:                             # %cond.end.1393
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	cltd
	movq	-312(%rbp), %rsi        # 8-byte Reload
	idivl	92(%rsi)
	cmpl	%eax, %ecx
	jl	.LBB63_193
	jmp	.LBB63_190
.LBB63_186:                             # %cond.false.1399
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_188
# BB#187:                               # %cond.true.1407
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB63_189
.LBB63_188:                             # %cond.false.1417
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB63_189:                             # %cond.end.1423
	movl	-316(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cltd
	idivl	92(%rcx)
	cmpl	$16, %eax
	jl	.LBB63_193
.LBB63_190:                             # %lor.lhs.false.1429
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_192
# BB#191:                               # %land.lhs.true.1436
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB63_193
.LBB63_192:                             # %lor.lhs.false.1441
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB63_197
.LBB63_193:                             # %cond.true.1446
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_195
# BB#194:                               # %cond.true.1451
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	jmp	.LBB63_196
.LBB63_195:                             # %cond.false.1454
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -320(%rbp)        # 4-byte Spill
.LBB63_196:                             # %cond.end.1459
	movl	-320(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_197:                             # %cond.false.1462
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_199
# BB#198:                               # %cond.true.1467
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	jmp	.LBB63_200
.LBB63_199:                             # %cond.false.1470
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB63_200:                             # %cond.end.1475
	movl	-324(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_201:                             # %cond.false.1478
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_203
# BB#202:                               # %cond.true.1487
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	jmp	.LBB63_204
.LBB63_203:                             # %cond.false.1510
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB63_204:                             # %cond.end.1517
	movq	-336(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_206
# BB#205:                               # %land.lhs.true.1521
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_232
.LBB63_206:                             # %lor.lhs.false.1525
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_218
# BB#207:                               # %cond.true.1529
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_208
	jmp	.LBB63_212
.LBB63_208:                             # %cond.true.1530
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_210
# BB#209:                               # %cond.true.1539
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB63_211
.LBB63_210:                             # %cond.false.1550
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB63_211:                             # %cond.end.1557
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_232
	jmp	.LBB63_229
.LBB63_212:                             # %cond.false.1564
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_214
# BB#213:                               # %cond.true.1568
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_232
	jmp	.LBB63_229
.LBB63_214:                             # %cond.false.1569
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_216
# BB#215:                               # %cond.true.1578
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB63_217
.LBB63_216:                             # %cond.false.1601
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB63_217:                             # %cond.end.1608
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_232
	jmp	.LBB63_229
.LBB63_218:                             # %cond.false.1615
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_220
# BB#219:                               # %cond.true.1619
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_232
	jmp	.LBB63_229
.LBB63_220:                             # %cond.false.1620
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_221
	jmp	.LBB63_225
.LBB63_221:                             # %cond.true.1621
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_223
# BB#222:                               # %cond.true.1630
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB63_224
.LBB63_223:                             # %cond.false.1653
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB63_224:                             # %cond.end.1660
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_232
	jmp	.LBB63_229
.LBB63_225:                             # %cond.false.1667
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_227
# BB#226:                               # %cond.true.1676
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB63_228
.LBB63_227:                             # %cond.false.1687
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB63_228:                             # %cond.end.1694
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_232
.LBB63_229:                             # %lor.lhs.false.1701
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_231
# BB#230:                               # %land.lhs.true.1709
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jb	.LBB63_232
.LBB63_231:                             # %lor.lhs.false.1715
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB63_236
.LBB63_232:                             # %cond.true.1721
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_234
# BB#233:                               # %cond.true.1726
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB63_235
.LBB63_234:                             # %cond.false.1729
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB63_235:                             # %cond.end.1734
	movl	-388(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_236:                             # %cond.false.1737
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_238
# BB#237:                               # %cond.true.1742
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	jmp	.LBB63_239
.LBB63_238:                             # %cond.false.1745
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB63_239:                             # %cond.end.1750
	movl	-392(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_240:                             # %cond.false.1753
	movb	$1, %al
	testb	$1, %al
	jne	.LBB63_241
	jmp	.LBB63_320
.LBB63_241:                             # %cond.true.1754
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_242
	jmp	.LBB63_281
.LBB63_242:                             # %cond.true.1755
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_244
# BB#243:                               # %cond.true.1764
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB63_245
.LBB63_244:                             # %cond.false.1787
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB63_245:                             # %cond.end.1794
	movq	-400(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_247
# BB#246:                               # %land.lhs.true.1798
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jl	.LBB63_273
.LBB63_247:                             # %lor.lhs.false.1803
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_259
# BB#248:                               # %cond.true.1808
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_249
	jmp	.LBB63_253
.LBB63_249:                             # %cond.true.1809
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_251
# BB#250:                               # %cond.true.1818
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB63_252
.LBB63_251:                             # %cond.false.1829
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB63_252:                             # %cond.end.1836
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB63_273
	jmp	.LBB63_270
.LBB63_253:                             # %cond.false.1843
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$-1, %rax
	jne	.LBB63_255
# BB#254:                               # %cond.true.1848
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_273
	jmp	.LBB63_270
.LBB63_255:                             # %cond.false.1849
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_257
# BB#256:                               # %cond.true.1858
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB63_258
.LBB63_257:                             # %cond.false.1881
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB63_258:                             # %cond.end.1888
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB63_273
	jmp	.LBB63_270
.LBB63_259:                             # %cond.false.1895
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jne	.LBB63_261
# BB#260:                               # %cond.true.1900
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_273
	jmp	.LBB63_270
.LBB63_261:                             # %cond.false.1901
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_262
	jmp	.LBB63_266
.LBB63_262:                             # %cond.true.1902
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_264
# BB#263:                               # %cond.true.1911
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB63_265
.LBB63_264:                             # %cond.false.1934
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB63_265:                             # %cond.end.1941
	movq	-432(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-440(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB63_273
	jmp	.LBB63_270
.LBB63_266:                             # %cond.false.1948
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_268
# BB#267:                               # %cond.true.1957
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB63_269
.LBB63_268:                             # %cond.false.1968
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB63_269:                             # %cond.end.1975
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB63_273
.LBB63_270:                             # %lor.lhs.false.1982
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_272
# BB#271:                               # %land.lhs.true.1990
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_273
.LBB63_272:                             # %lor.lhs.false.1996
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_277
.LBB63_273:                             # %cond.true.2002
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_275
# BB#274:                               # %cond.true.2008
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB63_276
.LBB63_275:                             # %cond.false.2012
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB63_276:                             # %cond.end.2018
	movq	-456(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_277:                             # %cond.false.2020
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_279
# BB#278:                               # %cond.true.2026
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB63_280
.LBB63_279:                             # %cond.false.2030
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB63_280:                             # %cond.end.2036
	movq	-464(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_281:                             # %cond.false.2038
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_283
# BB#282:                               # %cond.true.2047
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB63_284
.LBB63_283:                             # %cond.false.2070
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB63_284:                             # %cond.end.2077
	movq	-472(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_286
# BB#285:                               # %land.lhs.true.2081
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_312
.LBB63_286:                             # %lor.lhs.false.2085
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_298
# BB#287:                               # %cond.true.2089
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_288
	jmp	.LBB63_292
.LBB63_288:                             # %cond.true.2090
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_290
# BB#289:                               # %cond.true.2099
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB63_291
.LBB63_290:                             # %cond.false.2110
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB63_291:                             # %cond.end.2117
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-488(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_312
	jmp	.LBB63_309
.LBB63_292:                             # %cond.false.2124
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_294
# BB#293:                               # %cond.true.2128
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_312
	jmp	.LBB63_309
.LBB63_294:                             # %cond.false.2129
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_296
# BB#295:                               # %cond.true.2138
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB63_297
.LBB63_296:                             # %cond.false.2161
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB63_297:                             # %cond.end.2168
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_312
	jmp	.LBB63_309
.LBB63_298:                             # %cond.false.2175
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_300
# BB#299:                               # %cond.true.2179
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_312
	jmp	.LBB63_309
.LBB63_300:                             # %cond.false.2180
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_301
	jmp	.LBB63_305
.LBB63_301:                             # %cond.true.2181
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_303
# BB#302:                               # %cond.true.2190
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB63_304
.LBB63_303:                             # %cond.false.2213
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB63_304:                             # %cond.end.2220
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-512(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_312
	jmp	.LBB63_309
.LBB63_305:                             # %cond.false.2227
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_307
# BB#306:                               # %cond.true.2236
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB63_308
.LBB63_307:                             # %cond.false.2247
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB63_308:                             # %cond.end.2254
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_312
.LBB63_309:                             # %lor.lhs.false.2261
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_311
# BB#310:                               # %land.lhs.true.2269
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB63_312
.LBB63_311:                             # %lor.lhs.false.2275
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB63_316
.LBB63_312:                             # %cond.true.2281
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_314
# BB#313:                               # %cond.true.2287
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB63_315
.LBB63_314:                             # %cond.false.2291
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB63_315:                             # %cond.end.2297
	movq	-528(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_316:                             # %cond.false.2299
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_318
# BB#317:                               # %cond.true.2305
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB63_319
.LBB63_318:                             # %cond.false.2309
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB63_319:                             # %cond.end.2315
	movq	-536(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_320:                             # %cond.false.2317
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_321
	jmp	.LBB63_360
.LBB63_321:                             # %cond.true.2318
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_323
# BB#322:                               # %cond.true.2327
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB63_324
.LBB63_323:                             # %cond.false.2350
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB63_324:                             # %cond.end.2357
	movq	-544(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_326
# BB#325:                               # %land.lhs.true.2361
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jl	.LBB63_352
.LBB63_326:                             # %lor.lhs.false.2366
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_338
# BB#327:                               # %cond.true.2371
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_328
	jmp	.LBB63_332
.LBB63_328:                             # %cond.true.2372
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_330
# BB#329:                               # %cond.true.2381
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB63_331
.LBB63_330:                             # %cond.false.2392
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB63_331:                             # %cond.end.2399
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-560(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB63_352
	jmp	.LBB63_349
.LBB63_332:                             # %cond.false.2406
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$-1, %rax
	jne	.LBB63_334
# BB#333:                               # %cond.true.2411
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_352
	jmp	.LBB63_349
.LBB63_334:                             # %cond.false.2412
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_336
# BB#335:                               # %cond.true.2421
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB63_337
.LBB63_336:                             # %cond.false.2444
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB63_337:                             # %cond.end.2451
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB63_352
	jmp	.LBB63_349
.LBB63_338:                             # %cond.false.2458
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jne	.LBB63_340
# BB#339:                               # %cond.true.2463
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_352
	jmp	.LBB63_349
.LBB63_340:                             # %cond.false.2464
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_341
	jmp	.LBB63_345
.LBB63_341:                             # %cond.true.2465
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_343
# BB#342:                               # %cond.true.2474
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB63_344
.LBB63_343:                             # %cond.false.2497
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB63_344:                             # %cond.end.2504
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-584(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB63_352
	jmp	.LBB63_349
.LBB63_345:                             # %cond.false.2511
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_347
# BB#346:                               # %cond.true.2520
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB63_348
.LBB63_347:                             # %cond.false.2531
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB63_348:                             # %cond.end.2538
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB63_352
.LBB63_349:                             # %lor.lhs.false.2545
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_351
# BB#350:                               # %land.lhs.true.2553
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_352
.LBB63_351:                             # %lor.lhs.false.2559
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_356
.LBB63_352:                             # %cond.true.2565
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_354
# BB#353:                               # %cond.true.2571
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB63_355
.LBB63_354:                             # %cond.false.2575
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB63_355:                             # %cond.end.2581
	movq	-600(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_356:                             # %cond.false.2583
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_358
# BB#357:                               # %cond.true.2589
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB63_359
.LBB63_358:                             # %cond.false.2593
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB63_359:                             # %cond.end.2599
	movq	-608(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_360:                             # %cond.false.2601
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_362
# BB#361:                               # %cond.true.2610
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB63_363
.LBB63_362:                             # %cond.false.2633
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB63_363:                             # %cond.end.2640
	movq	-616(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_365
# BB#364:                               # %land.lhs.true.2644
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB63_391
.LBB63_365:                             # %lor.lhs.false.2648
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB63_377
# BB#366:                               # %cond.true.2652
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_367
	jmp	.LBB63_371
.LBB63_367:                             # %cond.true.2653
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_369
# BB#368:                               # %cond.true.2662
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB63_370
.LBB63_369:                             # %cond.false.2673
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB63_370:                             # %cond.end.2680
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-632(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_391
	jmp	.LBB63_388
.LBB63_371:                             # %cond.false.2687
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB63_373
# BB#372:                               # %cond.true.2691
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_391
	jmp	.LBB63_388
.LBB63_373:                             # %cond.false.2692
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_375
# BB#374:                               # %cond.true.2701
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB63_376
.LBB63_375:                             # %cond.false.2724
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB63_376:                             # %cond.end.2731
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_391
	jmp	.LBB63_388
.LBB63_377:                             # %cond.false.2738
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB63_379
# BB#378:                               # %cond.true.2742
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_391
	jmp	.LBB63_388
.LBB63_379:                             # %cond.false.2743
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_380
	jmp	.LBB63_384
.LBB63_380:                             # %cond.true.2744
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_382
# BB#381:                               # %cond.true.2753
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB63_383
.LBB63_382:                             # %cond.false.2776
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB63_383:                             # %cond.end.2783
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-656(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB63_391
	jmp	.LBB63_388
.LBB63_384:                             # %cond.false.2790
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_386
# BB#385:                               # %cond.true.2799
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB63_387
.LBB63_386:                             # %cond.false.2810
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB63_387:                             # %cond.end.2817
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB63_391
.LBB63_388:                             # %lor.lhs.false.2824
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB63_390
# BB#389:                               # %land.lhs.true.2832
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB63_391
.LBB63_390:                             # %lor.lhs.false.2838
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB63_395
.LBB63_391:                             # %cond.true.2844
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_393
# BB#392:                               # %cond.true.2850
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB63_394
.LBB63_393:                             # %cond.false.2854
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB63_394:                             # %cond.end.2860
	movq	-672(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_399
.LBB63_395:                             # %cond.false.2862
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_397
# BB#396:                               # %cond.true.2868
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB63_398
.LBB63_397:                             # %cond.false.2872
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB63_398:                             # %cond.end.2878
	movq	-680(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
.LBB63_399:                             # %lor.lhs.false.2880
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_400
	jmp	.LBB63_485
.LBB63_400:                             # %cond.true.2881
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_401
	jmp	.LBB63_443
.LBB63_401:                             # %cond.true.2882
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_403
# BB#402:                               # %cond.true.2893
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -684(%rbp)        # 4-byte Spill
	jmp	.LBB63_404
.LBB63_403:                             # %cond.false.2921
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -684(%rbp)        # 4-byte Spill
.LBB63_404:                             # %cond.end.2931
	movl	-684(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_409
# BB#405:                               # %land.lhs.true.2935
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_407
# BB#406:                               # %land.lhs.true.2941
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB63_435
.LBB63_407:                             # %lor.lhs.false.2946
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB63_409
# BB#408:                               # %land.lhs.true.2951
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	cmpl	%edx, %eax
	jl	.LBB63_435
.LBB63_409:                             # %lor.lhs.false.2957
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB63_421
# BB#410:                               # %cond.true.2962
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_415
# BB#411:                               # %cond.true.2968
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -688(%rbp)        # 4-byte Spill
	jge	.LBB63_413
# BB#412:                               # %cond.true.2983
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -692(%rbp)        # 4-byte Spill
	jmp	.LBB63_414
.LBB63_413:                             # %cond.false.2997
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -692(%rbp)        # 4-byte Spill
.LBB63_414:                             # %cond.end.3007
	movl	-692(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-688(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB63_435
	jmp	.LBB63_432
.LBB63_415:                             # %cond.false.3014
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$-1, %edx
	jne	.LBB63_417
# BB#416:                               # %cond.true.3019
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_435
	jmp	.LBB63_432
.LBB63_417:                             # %cond.false.3020
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_419
# BB#418:                               # %cond.true.3032
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jmp	.LBB63_420
.LBB63_419:                             # %cond.false.3060
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -696(%rbp)        # 4-byte Spill
.LBB63_420:                             # %cond.end.3070
	movl	-696(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB63_435
	jmp	.LBB63_432
.LBB63_421:                             # %cond.false.3080
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB63_423
# BB#422:                               # %cond.true.3085
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_435
	jmp	.LBB63_432
.LBB63_423:                             # %cond.false.3086
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_428
# BB#424:                               # %cond.true.3092
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	jge	.LBB63_426
# BB#425:                               # %cond.true.3107
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB63_427
.LBB63_426:                             # %cond.false.3135
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -704(%rbp)        # 4-byte Spill
.LBB63_427:                             # %cond.end.3145
	movl	-704(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-700(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB63_435
	jmp	.LBB63_432
.LBB63_428:                             # %cond.false.3152
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_430
# BB#429:                               # %cond.true.3164
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -708(%rbp)        # 4-byte Spill
	jmp	.LBB63_431
.LBB63_430:                             # %cond.false.3178
	movq	-64(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -708(%rbp)        # 4-byte Spill
.LBB63_431:                             # %cond.end.3188
	movl	-708(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB63_435
.LBB63_432:                             # %lor.lhs.false.3198
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_434
# BB#433:                               # %land.lhs.true.3209
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$-128, %ecx
	jl	.LBB63_435
.LBB63_434:                             # %lor.lhs.false.3218
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movq	-64(%rbp), %rcx
	movb	%cl, %sil
	movsbl	%sil, %edi
	imull	%edi, %edx
	cmpl	%edx, %eax
	jge	.LBB63_439
.LBB63_435:                             # %cond.true.3227
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_437
# BB#436:                               # %cond.true.3236
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -712(%rbp)        # 4-byte Spill
	jmp	.LBB63_438
.LBB63_437:                             # %cond.false.3245
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -712(%rbp)        # 4-byte Spill
.LBB63_438:                             # %cond.end.3256
	movl	-712(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_439:                             # %cond.false.3259
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_441
# BB#440:                               # %cond.true.3268
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	jmp	.LBB63_442
.LBB63_441:                             # %cond.false.3277
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
.LBB63_442:                             # %cond.end.3288
	movl	-716(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_443:                             # %cond.false.3291
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_445
# BB#444:                               # %cond.true.3300
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB63_446
.LBB63_445:                             # %cond.false.3323
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB63_446:                             # %cond.end.3330
	movq	-728(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_451
# BB#447:                               # %land.lhs.true.3334
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_449
# BB#448:                               # %land.lhs.true.3338
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_477
.LBB63_449:                             # %lor.lhs.false.3341
	cmpq	$0, -64(%rbp)
	jge	.LBB63_451
# BB#450:                               # %land.lhs.true.3344
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_477
.LBB63_451:                             # %lor.lhs.false.3348
	cmpq	$0, -64(%rbp)
	jge	.LBB63_463
# BB#452:                               # %cond.true.3351
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_457
# BB#453:                               # %cond.true.3355
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB63_455
# BB#454:                               # %cond.true.3366
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB63_456
.LBB63_455:                             # %cond.false.3377
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB63_456:                             # %cond.end.3384
	movq	-744(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_477
	jmp	.LBB63_474
.LBB63_457:                             # %cond.false.3389
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_459
# BB#458:                               # %cond.true.3392
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_477
	jmp	.LBB63_474
.LBB63_459:                             # %cond.false.3393
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_461
# BB#460:                               # %cond.true.3402
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB63_462
.LBB63_461:                             # %cond.false.3425
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB63_462:                             # %cond.end.3432
	movq	-752(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_477
	jmp	.LBB63_474
.LBB63_463:                             # %cond.false.3439
	cmpq	$0, -64(%rbp)
	jne	.LBB63_465
# BB#464:                               # %cond.true.3442
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_477
	jmp	.LBB63_474
.LBB63_465:                             # %cond.false.3443
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_470
# BB#466:                               # %cond.true.3447
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jge	.LBB63_468
# BB#467:                               # %cond.true.3458
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB63_469
.LBB63_468:                             # %cond.false.3481
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB63_469:                             # %cond.end.3488
	movq	-768(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_477
	jmp	.LBB63_474
.LBB63_470:                             # %cond.false.3493
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_472
# BB#471:                               # %cond.true.3502
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB63_473
.LBB63_472:                             # %cond.false.3513
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB63_473:                             # %cond.end.3520
	movq	-776(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_477
.LBB63_474:                             # %lor.lhs.false.3527
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_476
# BB#475:                               # %land.lhs.true.3535
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB63_477
.LBB63_476:                             # %lor.lhs.false.3541
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-64(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_481
.LBB63_477:                             # %cond.true.3547
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_479
# BB#478:                               # %cond.true.3556
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	jmp	.LBB63_480
.LBB63_479:                             # %cond.false.3565
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
.LBB63_480:                             # %cond.end.3576
	movl	-780(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_481:                             # %cond.false.3579
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB63_483
# BB#482:                               # %cond.true.3588
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -784(%rbp)        # 4-byte Spill
	jmp	.LBB63_484
.LBB63_483:                             # %cond.false.3597
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-64(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -784(%rbp)        # 4-byte Spill
.LBB63_484:                             # %cond.end.3608
	movl	-784(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_485:                             # %cond.false.3611
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_486
	jmp	.LBB63_571
.LBB63_486:                             # %cond.true.3612
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_487
	jmp	.LBB63_529
.LBB63_487:                             # %cond.true.3613
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_489
# BB#488:                               # %cond.true.3625
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -788(%rbp)        # 4-byte Spill
	jmp	.LBB63_490
.LBB63_489:                             # %cond.false.3653
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -788(%rbp)        # 4-byte Spill
.LBB63_490:                             # %cond.end.3663
	movl	-788(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_495
# BB#491:                               # %land.lhs.true.3667
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_493
# BB#492:                               # %land.lhs.true.3673
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB63_521
.LBB63_493:                             # %lor.lhs.false.3678
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB63_495
# BB#494:                               # %land.lhs.true.3683
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	cmpl	%edx, %eax
	jl	.LBB63_521
.LBB63_495:                             # %lor.lhs.false.3689
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB63_507
# BB#496:                               # %cond.true.3694
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_501
# BB#497:                               # %cond.true.3700
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -792(%rbp)        # 4-byte Spill
	jge	.LBB63_499
# BB#498:                               # %cond.true.3715
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -796(%rbp)        # 4-byte Spill
	jmp	.LBB63_500
.LBB63_499:                             # %cond.false.3729
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -796(%rbp)        # 4-byte Spill
.LBB63_500:                             # %cond.end.3739
	movl	-796(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-792(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB63_521
	jmp	.LBB63_518
.LBB63_501:                             # %cond.false.3746
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$-1, %edx
	jne	.LBB63_503
# BB#502:                               # %cond.true.3751
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_521
	jmp	.LBB63_518
.LBB63_503:                             # %cond.false.3752
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_505
# BB#504:                               # %cond.true.3764
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -800(%rbp)        # 4-byte Spill
	jmp	.LBB63_506
.LBB63_505:                             # %cond.false.3792
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -800(%rbp)        # 4-byte Spill
.LBB63_506:                             # %cond.end.3802
	movl	-800(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB63_521
	jmp	.LBB63_518
.LBB63_507:                             # %cond.false.3812
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB63_509
# BB#508:                               # %cond.true.3817
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_521
	jmp	.LBB63_518
.LBB63_509:                             # %cond.false.3818
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_514
# BB#510:                               # %cond.true.3824
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	jge	.LBB63_512
# BB#511:                               # %cond.true.3839
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB63_513
.LBB63_512:                             # %cond.false.3867
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -808(%rbp)        # 4-byte Spill
.LBB63_513:                             # %cond.end.3877
	movl	-808(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-804(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB63_521
	jmp	.LBB63_518
.LBB63_514:                             # %cond.false.3884
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB63_516
# BB#515:                               # %cond.true.3896
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -812(%rbp)        # 4-byte Spill
	jmp	.LBB63_517
.LBB63_516:                             # %cond.false.3910
	movq	-64(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -812(%rbp)        # 4-byte Spill
.LBB63_517:                             # %cond.end.3920
	movl	-812(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB63_521
.LBB63_518:                             # %lor.lhs.false.3930
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_520
# BB#519:                               # %land.lhs.true.3941
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB63_521
.LBB63_520:                             # %lor.lhs.false.3950
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movq	-64(%rbp), %rcx
	movw	%cx, %si
	movswl	%si, %edi
	imull	%edi, %edx
	cmpl	%edx, %eax
	jge	.LBB63_525
.LBB63_521:                             # %cond.true.3959
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_523
# BB#522:                               # %cond.true.3968
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	jmp	.LBB63_524
.LBB63_523:                             # %cond.false.3977
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -816(%rbp)        # 4-byte Spill
.LBB63_524:                             # %cond.end.3988
	movl	-816(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_525:                             # %cond.false.3991
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_527
# BB#526:                               # %cond.true.4000
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
	jmp	.LBB63_528
.LBB63_527:                             # %cond.false.4009
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -820(%rbp)        # 4-byte Spill
.LBB63_528:                             # %cond.end.4020
	movl	-820(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_529:                             # %cond.false.4023
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_531
# BB#530:                               # %cond.true.4032
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB63_532
.LBB63_531:                             # %cond.false.4055
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB63_532:                             # %cond.end.4062
	movq	-832(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_537
# BB#533:                               # %land.lhs.true.4066
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_535
# BB#534:                               # %land.lhs.true.4070
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_563
.LBB63_535:                             # %lor.lhs.false.4073
	cmpq	$0, -64(%rbp)
	jge	.LBB63_537
# BB#536:                               # %land.lhs.true.4076
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_563
.LBB63_537:                             # %lor.lhs.false.4080
	cmpq	$0, -64(%rbp)
	jge	.LBB63_549
# BB#538:                               # %cond.true.4083
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_543
# BB#539:                               # %cond.true.4087
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB63_541
# BB#540:                               # %cond.true.4098
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB63_542
.LBB63_541:                             # %cond.false.4109
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB63_542:                             # %cond.end.4116
	movq	-848(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_563
	jmp	.LBB63_560
.LBB63_543:                             # %cond.false.4121
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_545
# BB#544:                               # %cond.true.4124
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_563
	jmp	.LBB63_560
.LBB63_545:                             # %cond.false.4125
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_547
# BB#546:                               # %cond.true.4134
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB63_548
.LBB63_547:                             # %cond.false.4157
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB63_548:                             # %cond.end.4164
	movq	-856(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_563
	jmp	.LBB63_560
.LBB63_549:                             # %cond.false.4171
	cmpq	$0, -64(%rbp)
	jne	.LBB63_551
# BB#550:                               # %cond.true.4174
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_563
	jmp	.LBB63_560
.LBB63_551:                             # %cond.false.4175
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_556
# BB#552:                               # %cond.true.4179
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jge	.LBB63_554
# BB#553:                               # %cond.true.4190
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB63_555
.LBB63_554:                             # %cond.false.4213
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB63_555:                             # %cond.end.4220
	movq	-872(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_563
	jmp	.LBB63_560
.LBB63_556:                             # %cond.false.4225
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_558
# BB#557:                               # %cond.true.4234
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB63_559
.LBB63_558:                             # %cond.false.4245
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB63_559:                             # %cond.end.4252
	movq	-880(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_563
.LBB63_560:                             # %lor.lhs.false.4259
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_562
# BB#561:                               # %land.lhs.true.4267
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB63_563
.LBB63_562:                             # %lor.lhs.false.4273
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-64(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_567
.LBB63_563:                             # %cond.true.4279
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_565
# BB#564:                               # %cond.true.4288
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	jmp	.LBB63_566
.LBB63_565:                             # %cond.false.4297
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -884(%rbp)        # 4-byte Spill
.LBB63_566:                             # %cond.end.4308
	movl	-884(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_567:                             # %cond.false.4311
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB63_569
# BB#568:                               # %cond.true.4320
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -888(%rbp)        # 4-byte Spill
	jmp	.LBB63_570
.LBB63_569:                             # %cond.false.4329
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-64(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -888(%rbp)        # 4-byte Spill
.LBB63_570:                             # %cond.end.4340
	movl	-888(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_571:                             # %cond.false.4343
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_572
	jmp	.LBB63_657
.LBB63_572:                             # %cond.true.4344
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_573
	jmp	.LBB63_615
.LBB63_573:                             # %cond.true.4345
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_575
# BB#574:                               # %cond.true.4354
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -892(%rbp)        # 4-byte Spill
	jmp	.LBB63_576
.LBB63_575:                             # %cond.false.4376
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -892(%rbp)        # 4-byte Spill
.LBB63_576:                             # %cond.end.4383
	movl	-892(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB63_581
# BB#577:                               # %land.lhs.true.4387
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_579
# BB#578:                               # %land.lhs.true.4391
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB63_607
.LBB63_579:                             # %lor.lhs.false.4395
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_581
# BB#580:                               # %land.lhs.true.4399
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_607
.LBB63_581:                             # %lor.lhs.false.4403
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_593
# BB#582:                               # %cond.true.4407
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_587
# BB#583:                               # %cond.true.4411
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	addl	96(%rax), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -896(%rbp)        # 4-byte Spill
	jge	.LBB63_585
# BB#584:                               # %cond.true.4421
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	jmp	.LBB63_586
.LBB63_585:                             # %cond.false.4432
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -900(%rbp)        # 4-byte Spill
.LBB63_586:                             # %cond.end.4439
	movl	-900(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -904(%rbp)        # 4-byte Spill
	cltd
	movl	-904(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-896(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB63_607
	jmp	.LBB63_604
.LBB63_587:                             # %cond.false.4445
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jne	.LBB63_589
# BB#588:                               # %cond.true.4449
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_607
	jmp	.LBB63_604
.LBB63_589:                             # %cond.false.4450
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_591
# BB#590:                               # %cond.true.4459
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	jmp	.LBB63_592
.LBB63_591:                             # %cond.false.4481
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -908(%rbp)        # 4-byte Spill
.LBB63_592:                             # %cond.end.4488
	movl	-908(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -912(%rbp)        # 4-byte Spill
	cltd
	movl	-912(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_607
	jmp	.LBB63_604
.LBB63_593:                             # %cond.false.4495
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB63_595
# BB#594:                               # %cond.true.4499
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_607
	jmp	.LBB63_604
.LBB63_595:                             # %cond.false.4500
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_600
# BB#596:                               # %cond.true.4504
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	addl	96(%rax), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	jge	.LBB63_598
# BB#597:                               # %cond.true.4514
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -920(%rbp)        # 4-byte Spill
	jmp	.LBB63_599
.LBB63_598:                             # %cond.false.4536
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -920(%rbp)        # 4-byte Spill
.LBB63_599:                             # %cond.end.4543
	movl	-920(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -924(%rbp)        # 4-byte Spill
	cltd
	movl	-924(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-916(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB63_607
	jmp	.LBB63_604
.LBB63_600:                             # %cond.false.4549
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_602
# BB#601:                               # %cond.true.4558
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -928(%rbp)        # 4-byte Spill
	jmp	.LBB63_603
.LBB63_602:                             # %cond.false.4569
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -928(%rbp)        # 4-byte Spill
.LBB63_603:                             # %cond.end.4576
	movl	-928(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -932(%rbp)        # 4-byte Spill
	cltd
	movl	-932(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_607
.LBB63_604:                             # %lor.lhs.false.4583
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB63_606
# BB#605:                               # %land.lhs.true.4591
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB63_607
.LBB63_606:                             # %lor.lhs.false.4597
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movq	-64(%rbp), %rcx
	movl	%ecx, %esi
	imull	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB63_611
.LBB63_607:                             # %cond.true.4603
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_609
# BB#608:                               # %cond.true.4609
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -936(%rbp)        # 4-byte Spill
	jmp	.LBB63_610
.LBB63_609:                             # %cond.false.4613
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -936(%rbp)        # 4-byte Spill
.LBB63_610:                             # %cond.end.4619
	movl	-936(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_611:                             # %cond.false.4622
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_613
# BB#612:                               # %cond.true.4628
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB63_614
.LBB63_613:                             # %cond.false.4632
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -940(%rbp)        # 4-byte Spill
.LBB63_614:                             # %cond.end.4638
	movl	-940(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_615:                             # %cond.false.4641
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_617
# BB#616:                               # %cond.true.4650
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB63_618
.LBB63_617:                             # %cond.false.4673
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB63_618:                             # %cond.end.4680
	movq	-952(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_623
# BB#619:                               # %land.lhs.true.4684
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_621
# BB#620:                               # %land.lhs.true.4688
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_649
.LBB63_621:                             # %lor.lhs.false.4691
	cmpq	$0, -64(%rbp)
	jge	.LBB63_623
# BB#622:                               # %land.lhs.true.4694
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_649
.LBB63_623:                             # %lor.lhs.false.4698
	cmpq	$0, -64(%rbp)
	jge	.LBB63_635
# BB#624:                               # %cond.true.4701
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_629
# BB#625:                               # %cond.true.4705
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jge	.LBB63_627
# BB#626:                               # %cond.true.4716
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB63_628
.LBB63_627:                             # %cond.false.4727
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB63_628:                             # %cond.end.4734
	movq	-968(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_649
	jmp	.LBB63_646
.LBB63_629:                             # %cond.false.4739
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_631
# BB#630:                               # %cond.true.4742
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_649
	jmp	.LBB63_646
.LBB63_631:                             # %cond.false.4743
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_633
# BB#632:                               # %cond.true.4752
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB63_634
.LBB63_633:                             # %cond.false.4775
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB63_634:                             # %cond.end.4782
	movq	-976(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_649
	jmp	.LBB63_646
.LBB63_635:                             # %cond.false.4789
	cmpq	$0, -64(%rbp)
	jne	.LBB63_637
# BB#636:                               # %cond.true.4792
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_649
	jmp	.LBB63_646
.LBB63_637:                             # %cond.false.4793
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_642
# BB#638:                               # %cond.true.4797
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jge	.LBB63_640
# BB#639:                               # %cond.true.4808
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB63_641
.LBB63_640:                             # %cond.false.4831
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB63_641:                             # %cond.end.4838
	movq	-992(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_649
	jmp	.LBB63_646
.LBB63_642:                             # %cond.false.4843
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_644
# BB#643:                               # %cond.true.4852
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB63_645
.LBB63_644:                             # %cond.false.4863
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB63_645:                             # %cond.end.4870
	movq	-1000(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_649
.LBB63_646:                             # %lor.lhs.false.4877
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_648
# BB#647:                               # %land.lhs.true.4885
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB63_649
.LBB63_648:                             # %lor.lhs.false.4891
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-64(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB63_653
.LBB63_649:                             # %cond.true.4897
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_651
# BB#650:                               # %cond.true.4903
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB63_652
.LBB63_651:                             # %cond.false.4907
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
.LBB63_652:                             # %cond.end.4913
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_653:                             # %cond.false.4916
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB63_655
# BB#654:                               # %cond.true.4922
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
	jmp	.LBB63_656
.LBB63_655:                             # %cond.false.4926
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
.LBB63_656:                             # %cond.end.4932
	movl	-1008(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_657:                             # %cond.false.4935
	movb	$1, %al
	testb	$1, %al
	jne	.LBB63_658
	jmp	.LBB63_743
.LBB63_658:                             # %cond.true.4936
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_659
	jmp	.LBB63_701
.LBB63_659:                             # %cond.true.4937
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_661
# BB#660:                               # %cond.true.4946
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB63_662
.LBB63_661:                             # %cond.false.4969
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB63_662:                             # %cond.end.4976
	movq	-1016(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_667
# BB#663:                               # %land.lhs.true.4980
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_665
# BB#664:                               # %land.lhs.true.4985
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_693
.LBB63_665:                             # %lor.lhs.false.4988
	cmpq	$0, -64(%rbp)
	jge	.LBB63_667
# BB#666:                               # %land.lhs.true.4991
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB63_693
.LBB63_667:                             # %lor.lhs.false.4996
	cmpq	$0, -64(%rbp)
	jge	.LBB63_679
# BB#668:                               # %cond.true.4999
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_673
# BB#669:                               # %cond.true.5004
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jge	.LBB63_671
# BB#670:                               # %cond.true.5015
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB63_672
.LBB63_671:                             # %cond.false.5026
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB63_672:                             # %cond.end.5033
	movq	-1032(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_693
	jmp	.LBB63_690
.LBB63_673:                             # %cond.false.5038
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_675
# BB#674:                               # %cond.true.5041
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_693
	jmp	.LBB63_690
.LBB63_675:                             # %cond.false.5042
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_677
# BB#676:                               # %cond.true.5051
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB63_678
.LBB63_677:                             # %cond.false.5074
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB63_678:                             # %cond.end.5081
	movq	-1040(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_693
	jmp	.LBB63_690
.LBB63_679:                             # %cond.false.5088
	cmpq	$0, -64(%rbp)
	jne	.LBB63_681
# BB#680:                               # %cond.true.5091
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_693
	jmp	.LBB63_690
.LBB63_681:                             # %cond.false.5092
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_686
# BB#682:                               # %cond.true.5097
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jge	.LBB63_684
# BB#683:                               # %cond.true.5108
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB63_685
.LBB63_684:                             # %cond.false.5131
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB63_685:                             # %cond.end.5138
	movq	-1056(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_693
	jmp	.LBB63_690
.LBB63_686:                             # %cond.false.5143
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_688
# BB#687:                               # %cond.true.5152
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB63_689
.LBB63_688:                             # %cond.false.5163
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB63_689:                             # %cond.end.5170
	movq	-1064(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_693
.LBB63_690:                             # %lor.lhs.false.5177
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_692
# BB#691:                               # %land.lhs.true.5185
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_693
.LBB63_692:                             # %lor.lhs.false.5191
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_697
.LBB63_693:                             # %cond.true.5197
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_695
# BB#694:                               # %cond.true.5203
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB63_696
.LBB63_695:                             # %cond.false.5207
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB63_696:                             # %cond.end.5213
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_697:                             # %cond.false.5215
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_699
# BB#698:                               # %cond.true.5221
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB63_700
.LBB63_699:                             # %cond.false.5225
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB63_700:                             # %cond.end.5231
	movq	-1080(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_701:                             # %cond.false.5233
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_703
# BB#702:                               # %cond.true.5242
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB63_704
.LBB63_703:                             # %cond.false.5265
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB63_704:                             # %cond.end.5272
	movq	-1088(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_709
# BB#705:                               # %land.lhs.true.5276
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_707
# BB#706:                               # %land.lhs.true.5280
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_735
.LBB63_707:                             # %lor.lhs.false.5283
	cmpq	$0, -64(%rbp)
	jge	.LBB63_709
# BB#708:                               # %land.lhs.true.5286
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_735
.LBB63_709:                             # %lor.lhs.false.5290
	cmpq	$0, -64(%rbp)
	jge	.LBB63_721
# BB#710:                               # %cond.true.5293
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_715
# BB#711:                               # %cond.true.5297
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jge	.LBB63_713
# BB#712:                               # %cond.true.5308
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB63_714
.LBB63_713:                             # %cond.false.5319
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB63_714:                             # %cond.end.5326
	movq	-1104(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_735
	jmp	.LBB63_732
.LBB63_715:                             # %cond.false.5331
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_717
# BB#716:                               # %cond.true.5334
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_735
	jmp	.LBB63_732
.LBB63_717:                             # %cond.false.5335
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_719
# BB#718:                               # %cond.true.5344
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB63_720
.LBB63_719:                             # %cond.false.5367
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB63_720:                             # %cond.end.5374
	movq	-1112(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_735
	jmp	.LBB63_732
.LBB63_721:                             # %cond.false.5381
	cmpq	$0, -64(%rbp)
	jne	.LBB63_723
# BB#722:                               # %cond.true.5384
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_735
	jmp	.LBB63_732
.LBB63_723:                             # %cond.false.5385
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_728
# BB#724:                               # %cond.true.5389
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jge	.LBB63_726
# BB#725:                               # %cond.true.5400
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB63_727
.LBB63_726:                             # %cond.false.5423
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB63_727:                             # %cond.end.5430
	movq	-1128(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_735
	jmp	.LBB63_732
.LBB63_728:                             # %cond.false.5435
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_730
# BB#729:                               # %cond.true.5444
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB63_731
.LBB63_730:                             # %cond.false.5455
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB63_731:                             # %cond.end.5462
	movq	-1136(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_735
.LBB63_732:                             # %lor.lhs.false.5469
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_734
# BB#733:                               # %land.lhs.true.5477
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_735
.LBB63_734:                             # %lor.lhs.false.5483
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_739
.LBB63_735:                             # %cond.true.5489
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_737
# BB#736:                               # %cond.true.5495
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB63_738
.LBB63_737:                             # %cond.false.5499
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB63_738:                             # %cond.end.5505
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_739:                             # %cond.false.5507
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_741
# BB#740:                               # %cond.true.5513
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB63_742
.LBB63_741:                             # %cond.false.5517
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB63_742:                             # %cond.end.5523
	movq	-1152(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_743:                             # %cond.false.5525
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_744
	jmp	.LBB63_786
.LBB63_744:                             # %cond.true.5526
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_746
# BB#745:                               # %cond.true.5535
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB63_747
.LBB63_746:                             # %cond.false.5558
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB63_747:                             # %cond.end.5565
	movq	-1160(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_752
# BB#748:                               # %land.lhs.true.5569
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_750
# BB#749:                               # %land.lhs.true.5574
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_778
.LBB63_750:                             # %lor.lhs.false.5577
	cmpq	$0, -64(%rbp)
	jge	.LBB63_752
# BB#751:                               # %land.lhs.true.5580
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB63_778
.LBB63_752:                             # %lor.lhs.false.5585
	cmpq	$0, -64(%rbp)
	jge	.LBB63_764
# BB#753:                               # %cond.true.5588
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_758
# BB#754:                               # %cond.true.5593
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jge	.LBB63_756
# BB#755:                               # %cond.true.5604
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB63_757
.LBB63_756:                             # %cond.false.5615
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB63_757:                             # %cond.end.5622
	movq	-1176(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_778
	jmp	.LBB63_775
.LBB63_758:                             # %cond.false.5627
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_760
# BB#759:                               # %cond.true.5630
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_778
	jmp	.LBB63_775
.LBB63_760:                             # %cond.false.5631
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_762
# BB#761:                               # %cond.true.5640
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB63_763
.LBB63_762:                             # %cond.false.5663
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB63_763:                             # %cond.end.5670
	movq	-1184(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_778
	jmp	.LBB63_775
.LBB63_764:                             # %cond.false.5677
	cmpq	$0, -64(%rbp)
	jne	.LBB63_766
# BB#765:                               # %cond.true.5680
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_778
	jmp	.LBB63_775
.LBB63_766:                             # %cond.false.5681
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB63_771
# BB#767:                               # %cond.true.5686
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jge	.LBB63_769
# BB#768:                               # %cond.true.5697
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB63_770
.LBB63_769:                             # %cond.false.5720
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB63_770:                             # %cond.end.5727
	movq	-1200(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_778
	jmp	.LBB63_775
.LBB63_771:                             # %cond.false.5732
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_773
# BB#772:                               # %cond.true.5741
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB63_774
.LBB63_773:                             # %cond.false.5752
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB63_774:                             # %cond.end.5759
	movq	-1208(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_778
.LBB63_775:                             # %lor.lhs.false.5766
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_777
# BB#776:                               # %land.lhs.true.5774
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_778
.LBB63_777:                             # %lor.lhs.false.5780
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_782
.LBB63_778:                             # %cond.true.5786
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_780
# BB#779:                               # %cond.true.5792
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB63_781
.LBB63_780:                             # %cond.false.5796
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB63_781:                             # %cond.end.5802
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_782:                             # %cond.false.5804
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_784
# BB#783:                               # %cond.true.5810
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB63_785
.LBB63_784:                             # %cond.false.5814
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB63_785:                             # %cond.end.5820
	movq	-1224(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_786:                             # %cond.false.5822
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_788
# BB#787:                               # %cond.true.5831
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB63_789
.LBB63_788:                             # %cond.false.5854
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB63_789:                             # %cond.end.5861
	movq	-1232(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB63_794
# BB#790:                               # %land.lhs.true.5865
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_792
# BB#791:                               # %land.lhs.true.5869
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-64(%rbp), %rcx
	jl	.LBB63_820
.LBB63_792:                             # %lor.lhs.false.5872
	cmpq	$0, -64(%rbp)
	jge	.LBB63_794
# BB#793:                               # %land.lhs.true.5875
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB63_820
.LBB63_794:                             # %lor.lhs.false.5879
	cmpq	$0, -64(%rbp)
	jge	.LBB63_806
# BB#795:                               # %cond.true.5882
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_800
# BB#796:                               # %cond.true.5886
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jge	.LBB63_798
# BB#797:                               # %cond.true.5897
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB63_799
.LBB63_798:                             # %cond.false.5908
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB63_799:                             # %cond.end.5915
	movq	-1248(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_820
	jmp	.LBB63_817
.LBB63_800:                             # %cond.false.5920
	cmpq	$-1, -64(%rbp)
	jne	.LBB63_802
# BB#801:                               # %cond.true.5923
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_820
	jmp	.LBB63_817
.LBB63_802:                             # %cond.false.5924
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_804
# BB#803:                               # %cond.true.5933
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB63_805
.LBB63_804:                             # %cond.false.5956
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB63_805:                             # %cond.end.5963
	movq	-1256(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_820
	jmp	.LBB63_817
.LBB63_806:                             # %cond.false.5970
	cmpq	$0, -64(%rbp)
	jne	.LBB63_808
# BB#807:                               # %cond.true.5973
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB63_820
	jmp	.LBB63_817
.LBB63_808:                             # %cond.false.5974
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB63_813
# BB#809:                               # %cond.true.5978
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jge	.LBB63_811
# BB#810:                               # %cond.true.5989
	xorl	%eax, %eax
	imulq	$0, -64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -64(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB63_812
.LBB63_811:                             # %cond.false.6012
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB63_812:                             # %cond.end.6019
	movq	-1272(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB63_820
	jmp	.LBB63_817
.LBB63_813:                             # %cond.false.6024
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_815
# BB#814:                               # %cond.true.6033
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB63_816
.LBB63_815:                             # %cond.false.6044
	imulq	$0, -64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB63_816:                             # %cond.end.6051
	movq	-1280(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-64(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB63_820
.LBB63_817:                             # %lor.lhs.false.6058
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB63_819
# BB#818:                               # %land.lhs.true.6066
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB63_820
.LBB63_819:                             # %lor.lhs.false.6072
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB63_824
.LBB63_820:                             # %cond.true.6078
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_822
# BB#821:                               # %cond.true.6084
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB63_823
.LBB63_822:                             # %cond.false.6088
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB63_823:                             # %cond.end.6094
	movq	-1288(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -64(%rbp)
	testb	$1, %cl
	jne	.LBB63_829
	jmp	.LBB63_828
.LBB63_824:                             # %cond.false.6096
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-64(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB63_826
# BB#825:                               # %cond.true.6102
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB63_827
.LBB63_826:                             # %cond.false.6106
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-64(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB63_827:                             # %cond.end.6112
	movq	-1296(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)
	testb	$1, %dl
	jne	.LBB63_829
.LBB63_828:                             # %lor.lhs.false.6114
	movq	$-1, %rax
	cmpq	-64(%rbp), %rax
	jae	.LBB63_830
.LBB63_829:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB63_830:                             # %if.end
	movq	-64(%rbp), %rdi
	callq	xmalloc
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	image_get_x_image
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB63_831:                             # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_833 Depth 2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB63_840
# BB#832:                               # %for.body
                                        #   in Loop: Header=BB63_831 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -24(%rbp)
.LBB63_833:                             # %for.cond.6121
                                        #   Parent Loop BB63_831 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jge	.LBB63_836
# BB#834:                               # %for.body.6125
                                        #   in Loop: Header=BB63_833 Depth=2
	movq	-56(%rbp), %rax
	movq	104(%rax), %rax
	movq	-56(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	*%rax
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
# BB#835:                               # %for.inc
                                        #   in Loop: Header=BB63_833 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB63_833
.LBB63_836:                             # %for.end
                                        #   in Loop: Header=BB63_831 Depth=1
	testb	$1, -17(%rbp)
	je	.LBB63_838
# BB#837:                               # %if.then.6128
                                        #   in Loop: Header=BB63_831 Depth=1
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	callq	x_query_colors
.LBB63_838:                             # %if.end.6130
                                        #   in Loop: Header=BB63_831 Depth=1
	jmp	.LBB63_839
.LBB63_839:                             # %for.inc.6131
                                        #   in Loop: Header=BB63_831 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB63_831
.LBB63_840:                             # %for.end.6133
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	image_unget_x_image
	movq	-40(%rbp), %rax
	addq	$1296, %rsp             # imm = 0x510
	popq	%rbp
	retq
.Lfunc_end63:
	.size	x_to_xcolors, .Lfunc_end63-x_to_xcolors
	.cfi_endproc

	.align	16, 0x90
	.type	x_from_xcolors,@function
x_from_xcolors:                         # @x_from_xcolors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -40(%rbp)
	callq	init_color_table
	movl	$5, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image_1
	xorl	%r8d, %r8d
	leaq	-40(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	$0, (%rsp)
	callq	image_create_x_image_and_pixmap
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movl	$0, -32(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB64_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_3 Depth 2
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB64_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB64_1 Depth=1
	movl	$0, -28(%rbp)
.LBB64_3:                               # %for.cond.2
                                        #   Parent Loop BB64_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	92(%rcx), %eax
	jge	.LBB64_6
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB64_3 Depth=2
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movzwl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movzwl	10(%rax), %edx
	movq	-48(%rbp), %rax
	movzwl	12(%rax), %ecx
	callq	lookup_rgb_color
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	-56(%rbp), %rcx
	callq	*%rax
	movl	%eax, -64(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB64_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB64_3
.LBB64_6:                               # %for.end
                                        #   in Loop: Header=BB64_1 Depth=1
	jmp	.LBB64_7
.LBB64_7:                               # %for.inc.11
                                        #   in Loop: Header=BB64_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB64_1
.LBB64_8:                               # %for.end.13
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	image_put_x_image
	movq	-16(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	colors_in_color_table
	movq	-16(%rbp), %rdx
	movq	%rax, 48(%rdx)
	callq	free_color_table
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	x_from_xcolors, .Lfunc_end64-x_from_xcolors
	.cfi_endproc

	.align	16, 0x90
	.type	lookup_rgb_color,@function
lookup_rgb_color:                       # @lookup_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	ct_hash_rgb
	movl	$101, %ecx
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -36(%rbp)
	movq	-16(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	%r8, -56(%rbp)
	movq	-56(%rbp), %r8
	cmpl	$0, 748(%r8)
	jle	.LBB65_4
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	456(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB65_2
	jp	.LBB65_2
	jmp	.LBB65_3
.LBB65_2:                               # %if.then.1
	leaq	-72(%rbp), %rsi
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -64(%rbp)
	movl	-24(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -62(%rbp)
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	gamma_correct
	movzwl	-64(%rbp), %eax
	movl	%eax, -20(%rbp)
	movzwl	-62(%rbp), %eax
	movl	%eax, -24(%rbp)
	movzwl	-60(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB65_3:                               # %if.end
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	callq	x_make_truecolor_pixel
	movq	%rax, -8(%rbp)
	jmp	.LBB65_20
.LBB65_4:                               # %if.end.11
	movslq	-36(%rbp), %rax
	movq	ct_table, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
.LBB65_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB65_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB65_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB65_10
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_5 Depth=1
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jne	.LBB65_10
# BB#8:                                 # %land.lhs.true.19
                                        #   in Loop: Header=BB65_5 Depth=1
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB65_10
# BB#9:                                 # %if.then.23
	jmp	.LBB65_12
.LBB65_10:                              # %if.end.24
                                        #   in Loop: Header=BB65_5 Depth=1
	jmp	.LBB65_11
.LBB65_11:                              # %for.inc
                                        #   in Loop: Header=BB65_5 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB65_5
.LBB65_12:                              # %for.end
	cmpq	$0, -48(%rbp)
	jne	.LBB65_19
# BB#13:                                # %if.then.27
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	ct_colors_allocated, %eax
	jg	.LBB65_15
# BB#14:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_20
.LBB65_15:                              # %if.end.32
	leaq	-88(%rbp), %rdx
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -80(%rbp)
	movl	-24(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -78(%rbp)
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, -76(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -96(%rbp)
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	x_alloc_nearest_color
	andb	$1, %al
	movb	%al, -97(%rbp)
	testb	$1, -97(%rbp)
	je	.LBB65_17
# BB#16:                                # %if.then.45
	movl	$32, %eax
	movl	%eax, %edi
	movl	ct_colors_allocated, %eax
	addl	$1, %eax
	movl	%eax, ct_colors_allocated
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-28(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movslq	-36(%rbp), %rax
	movq	ct_table, %rdi
	movq	(%rdi,%rax,8), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rdi
	movq	ct_table, %rdx
	movq	%rax, (%rdx,%rdi,8)
	jmp	.LBB65_18
.LBB65_17:                              # %if.else
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_20
.LBB65_18:                              # %if.end.57
	jmp	.LBB65_19
.LBB65_19:                              # %if.end.58
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB65_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	lookup_rgb_color, .Lfunc_end65-lookup_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	ct_hash_rgb,@function
ct_hash_rgb:                            # @ct_hash_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edx
	shll	$16, %edx
	movl	-8(%rbp), %esi
	shll	$8, %esi
	xorl	%esi, %edx
	xorl	-12(%rbp), %edx
	movl	%edx, %eax
	popq	%rbp
	retq
.Lfunc_end66:
	.size	ct_hash_rgb, .Lfunc_end66-ct_hash_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	x_detect_edges,@function
x_detect_edges:                         # @x_detect_edges
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
.Ltmp203:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp204:
	.cfi_def_cfa_register %rbp
	subq	$1344, %rsp             # imm = 0x540
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	callq	x_to_xcolors
	movq	%rax, -40(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB67_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -68(%rbp)
	jge	.LBB67_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB67_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jge	.LBB67_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB67_1 Depth=1
	xorl	%eax, %eax
	movslq	-68(%rbp), %rcx
	movq	-24(%rbp), %rdx
	subl	(%rdx,%rcx,4), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB67_5
.LBB67_4:                               # %cond.false
                                        #   in Loop: Header=BB67_1 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB67_5:                               # %cond.end
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB67_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB67_1
.LBB67_7:                               # %for.end
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_8
	jmp	.LBB67_87
.LBB67_8:                               # %cond.true.6
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_9
	jmp	.LBB67_48
.LBB67_9:                               # %cond.true.7
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_11
# BB#10:                                # %cond.true.14
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB67_12
.LBB67_11:                              # %cond.false.36
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB67_12:                              # %cond.end.44
	movl	-120(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_14
# BB#13:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jl	.LBB67_40
.LBB67_14:                              # %lor.lhs.false
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_26
# BB#15:                                # %cond.true.58
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_16
	jmp	.LBB67_20
.LBB67_16:                              # %cond.true.59
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_18
# BB#17:                                # %cond.true.69
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB67_19
.LBB67_18:                              # %cond.false.81
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB67_19:                              # %cond.end.89
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB67_40
	jmp	.LBB67_37
.LBB67_20:                              # %cond.false.96
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$-1, %ecx
	jne	.LBB67_22
# BB#21:                                # %cond.true.102
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_40
	jmp	.LBB67_37
.LBB67_22:                              # %cond.false.103
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_24
# BB#23:                                # %cond.true.113
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB67_25
.LBB67_24:                              # %cond.false.137
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
.LBB67_25:                              # %cond.end.145
	movl	-128(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
	cltd
	movl	-132(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB67_40
	jmp	.LBB67_37
.LBB67_26:                              # %cond.false.153
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_28
# BB#27:                                # %cond.true.159
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_40
	jmp	.LBB67_37
.LBB67_28:                              # %cond.false.160
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_29
	jmp	.LBB67_33
.LBB67_29:                              # %cond.true.161
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_31
# BB#30:                                # %cond.true.171
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB67_32
.LBB67_31:                              # %cond.false.195
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
.LBB67_32:                              # %cond.end.203
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB67_40
	jmp	.LBB67_37
.LBB67_33:                              # %cond.false.211
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_35
# BB#34:                                # %cond.true.221
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB67_36
.LBB67_35:                              # %cond.false.233
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB67_36:                              # %cond.end.241
	movl	-140(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	cltd
	movl	-144(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB67_40
.LBB67_37:                              # %lor.lhs.false.249
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_39
# BB#38:                                # %land.lhs.true.258
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$-128, %ecx
	jl	.LBB67_40
.LBB67_39:                              # %lor.lhs.false.265
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB67_44
.LBB67_40:                              # %cond.true.272
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_42
# BB#41:                                # %cond.true.279
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB67_43
.LBB67_42:                              # %cond.false.286
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
.LBB67_43:                              # %cond.end.295
	movl	-148(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_44:                              # %cond.false.298
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_46
# BB#45:                                # %cond.true.305
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	jmp	.LBB67_47
.LBB67_46:                              # %cond.false.312
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB67_47:                              # %cond.end.321
	movl	-152(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_48:                              # %cond.false.324
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_50
# BB#49:                                # %cond.true.333
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB67_51
.LBB67_50:                              # %cond.false.356
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB67_51:                              # %cond.end.363
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_53
# BB#52:                                # %land.lhs.true.367
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_79
.LBB67_53:                              # %lor.lhs.false.371
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_65
# BB#54:                                # %cond.true.375
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_55
	jmp	.LBB67_59
.LBB67_55:                              # %cond.true.376
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_57
# BB#56:                                # %cond.true.385
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB67_58
.LBB67_57:                              # %cond.false.396
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB67_58:                              # %cond.end.403
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_79
	jmp	.LBB67_76
.LBB67_59:                              # %cond.false.410
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_61
# BB#60:                                # %cond.true.414
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_79
	jmp	.LBB67_76
.LBB67_61:                              # %cond.false.415
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_63
# BB#62:                                # %cond.true.424
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB67_64
.LBB67_63:                              # %cond.false.447
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB67_64:                              # %cond.end.454
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_79
	jmp	.LBB67_76
.LBB67_65:                              # %cond.false.461
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_67
# BB#66:                                # %cond.true.465
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_79
	jmp	.LBB67_76
.LBB67_67:                              # %cond.false.466
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_68
	jmp	.LBB67_72
.LBB67_68:                              # %cond.true.467
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_70
# BB#69:                                # %cond.true.476
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB67_71
.LBB67_70:                              # %cond.false.499
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB67_71:                              # %cond.end.506
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_79
	jmp	.LBB67_76
.LBB67_72:                              # %cond.false.513
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_74
# BB#73:                                # %cond.true.522
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB67_75
.LBB67_74:                              # %cond.false.533
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB67_75:                              # %cond.end.540
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_79
.LBB67_76:                              # %lor.lhs.false.547
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_78
# BB#77:                                # %land.lhs.true.555
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-128, %rax
	jb	.LBB67_79
.LBB67_78:                              # %lor.lhs.false.561
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB67_83
.LBB67_79:                              # %cond.true.567
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_81
# BB#80:                                # %cond.true.574
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB67_82
.LBB67_81:                              # %cond.false.581
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
.LBB67_82:                              # %cond.end.590
	movl	-212(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_83:                              # %cond.false.593
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_85
# BB#84:                                # %cond.true.600
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	jmp	.LBB67_86
.LBB67_85:                              # %cond.false.607
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	shll	$4, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
.LBB67_86:                              # %cond.end.616
	movl	-216(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_87:                              # %cond.false.619
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_88
	jmp	.LBB67_167
.LBB67_88:                              # %cond.true.620
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_89
	jmp	.LBB67_128
.LBB67_89:                              # %cond.true.621
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_91
# BB#90:                                # %cond.true.631
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB67_92
.LBB67_91:                              # %cond.false.655
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
.LBB67_92:                              # %cond.end.663
	movl	-220(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_94
# BB#93:                                # %land.lhs.true.667
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jl	.LBB67_120
.LBB67_94:                              # %lor.lhs.false.673
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_106
# BB#95:                                # %cond.true.679
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_96
	jmp	.LBB67_100
.LBB67_96:                              # %cond.true.680
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_98
# BB#97:                                # %cond.true.690
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	jmp	.LBB67_99
.LBB67_98:                              # %cond.false.702
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB67_99:                              # %cond.end.710
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB67_120
	jmp	.LBB67_117
.LBB67_100:                             # %cond.false.718
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$-1, %ecx
	jne	.LBB67_102
# BB#101:                               # %cond.true.724
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_120
	jmp	.LBB67_117
.LBB67_102:                             # %cond.false.725
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_104
# BB#103:                               # %cond.true.735
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB67_105
.LBB67_104:                             # %cond.false.759
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB67_105:                             # %cond.end.767
	movl	-228(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
	cltd
	movl	-232(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB67_120
	jmp	.LBB67_117
.LBB67_106:                             # %cond.false.775
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_108
# BB#107:                               # %cond.true.781
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_120
	jmp	.LBB67_117
.LBB67_108:                             # %cond.false.782
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_109
	jmp	.LBB67_113
.LBB67_109:                             # %cond.true.783
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_111
# BB#110:                               # %cond.true.793
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	imull	$0, %edx, %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB67_112
.LBB67_111:                             # %cond.false.817
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
.LBB67_112:                             # %cond.end.825
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cltd
	idivl	%esi
	cmpl	%eax, %ecx
	jl	.LBB67_120
	jmp	.LBB67_117
.LBB67_113:                             # %cond.false.833
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_115
# BB#114:                               # %cond.true.843
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB67_116
.LBB67_115:                             # %cond.false.855
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
.LBB67_116:                             # %cond.end.863
	movl	-240(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	cltd
	movl	-244(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	cmpl	$16, %eax
	jl	.LBB67_120
.LBB67_117:                             # %lor.lhs.false.871
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_119
# BB#118:                               # %land.lhs.true.880
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB67_120
.LBB67_119:                             # %lor.lhs.false.887
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB67_124
.LBB67_120:                             # %cond.true.894
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_122
# BB#121:                               # %cond.true.901
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB67_123
.LBB67_122:                             # %cond.false.908
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -248(%rbp)        # 4-byte Spill
.LBB67_123:                             # %cond.end.917
	movl	-248(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_124:                             # %cond.false.920
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_126
# BB#125:                               # %cond.true.927
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB67_127
.LBB67_126:                             # %cond.false.934
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -252(%rbp)        # 4-byte Spill
.LBB67_127:                             # %cond.end.943
	movl	-252(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_128:                             # %cond.false.946
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_130
# BB#129:                               # %cond.true.955
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB67_131
.LBB67_130:                             # %cond.false.978
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB67_131:                             # %cond.end.985
	movq	-264(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_133
# BB#132:                               # %land.lhs.true.989
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_159
.LBB67_133:                             # %lor.lhs.false.993
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_145
# BB#134:                               # %cond.true.997
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_135
	jmp	.LBB67_139
.LBB67_135:                             # %cond.true.998
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_137
# BB#136:                               # %cond.true.1007
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB67_138
.LBB67_137:                             # %cond.false.1018
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB67_138:                             # %cond.end.1025
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_159
	jmp	.LBB67_156
.LBB67_139:                             # %cond.false.1032
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_141
# BB#140:                               # %cond.true.1036
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_159
	jmp	.LBB67_156
.LBB67_141:                             # %cond.false.1037
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_143
# BB#142:                               # %cond.true.1046
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB67_144
.LBB67_143:                             # %cond.false.1069
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB67_144:                             # %cond.end.1076
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_159
	jmp	.LBB67_156
.LBB67_145:                             # %cond.false.1083
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_147
# BB#146:                               # %cond.true.1087
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_159
	jmp	.LBB67_156
.LBB67_147:                             # %cond.false.1088
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_148
	jmp	.LBB67_152
.LBB67_148:                             # %cond.true.1089
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_150
# BB#149:                               # %cond.true.1098
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB67_151
.LBB67_150:                             # %cond.false.1121
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB67_151:                             # %cond.end.1128
	movq	-296(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_159
	jmp	.LBB67_156
.LBB67_152:                             # %cond.false.1135
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_154
# BB#153:                               # %cond.true.1144
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB67_155
.LBB67_154:                             # %cond.false.1155
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB67_155:                             # %cond.end.1162
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_159
.LBB67_156:                             # %lor.lhs.false.1169
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_158
# BB#157:                               # %land.lhs.true.1177
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB67_159
.LBB67_158:                             # %lor.lhs.false.1183
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB67_163
.LBB67_159:                             # %cond.true.1189
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_161
# BB#160:                               # %cond.true.1196
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB67_162
.LBB67_161:                             # %cond.false.1203
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB67_162:                             # %cond.end.1212
	movl	-316(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_163:                             # %cond.false.1215
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_165
# BB#164:                               # %cond.true.1222
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	jmp	.LBB67_166
.LBB67_165:                             # %cond.false.1229
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	shll	$4, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -320(%rbp)        # 4-byte Spill
.LBB67_166:                             # %cond.end.1238
	movl	-320(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_167:                             # %cond.false.1241
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_168
	jmp	.LBB67_247
.LBB67_168:                             # %cond.true.1242
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_169
	jmp	.LBB67_208
.LBB67_169:                             # %cond.true.1243
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_171
# BB#170:                               # %cond.true.1251
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB67_172
.LBB67_171:                             # %cond.false.1271
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
.LBB67_172:                             # %cond.end.1277
	movl	-324(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_174
# BB#173:                               # %land.lhs.true.1281
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_200
.LBB67_174:                             # %lor.lhs.false.1285
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_186
# BB#175:                               # %cond.true.1289
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_176
	jmp	.LBB67_180
.LBB67_176:                             # %cond.true.1290
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_178
# BB#177:                               # %cond.true.1298
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
	jmp	.LBB67_179
.LBB67_178:                             # %cond.false.1308
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB67_179:                             # %cond.end.1314
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cltd
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivl	92(%rsi)
	cmpl	%eax, %ecx
	jl	.LBB67_200
	jmp	.LBB67_197
.LBB67_180:                             # %cond.false.1320
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_182
# BB#181:                               # %cond.true.1324
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_200
	jmp	.LBB67_197
.LBB67_182:                             # %cond.false.1325
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_184
# BB#183:                               # %cond.true.1333
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB67_185
.LBB67_184:                             # %cond.false.1353
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
.LBB67_185:                             # %cond.end.1359
	movl	-340(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cltd
	idivl	92(%rcx)
	cmpl	$16, %eax
	jl	.LBB67_200
	jmp	.LBB67_197
.LBB67_186:                             # %cond.false.1365
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_188
# BB#187:                               # %cond.true.1369
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_200
	jmp	.LBB67_197
.LBB67_188:                             # %cond.false.1370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_189
	jmp	.LBB67_193
.LBB67_189:                             # %cond.true.1371
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_191
# BB#190:                               # %cond.true.1379
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	addl	$16, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB67_192
.LBB67_191:                             # %cond.false.1399
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
.LBB67_192:                             # %cond.end.1405
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	$16, %ecx
	movq	-16(%rbp), %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cltd
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivl	92(%rsi)
	cmpl	%eax, %ecx
	jl	.LBB67_200
	jmp	.LBB67_197
.LBB67_193:                             # %cond.false.1411
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_195
# BB#194:                               # %cond.true.1419
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB67_196
.LBB67_195:                             # %cond.false.1429
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	addl	$16, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
.LBB67_196:                             # %cond.end.1435
	movl	-356(%rbp), %eax        # 4-byte Reload
	movq	-16(%rbp), %rcx
	cltd
	idivl	92(%rcx)
	cmpl	$16, %eax
	jl	.LBB67_200
.LBB67_197:                             # %lor.lhs.false.1441
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_199
# BB#198:                               # %land.lhs.true.1448
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB67_200
.LBB67_199:                             # %lor.lhs.false.1453
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	shll	$4, %edx
	cmpl	%edx, %eax
	jge	.LBB67_204
.LBB67_200:                             # %cond.true.1458
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_202
# BB#201:                               # %cond.true.1463
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	jmp	.LBB67_203
.LBB67_202:                             # %cond.false.1466
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -360(%rbp)        # 4-byte Spill
.LBB67_203:                             # %cond.end.1471
	movl	-360(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_204:                             # %cond.false.1474
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_206
# BB#205:                               # %cond.true.1479
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB67_207
.LBB67_206:                             # %cond.false.1482
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB67_207:                             # %cond.end.1487
	movl	-364(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_208:                             # %cond.false.1490
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_210
# BB#209:                               # %cond.true.1499
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB67_211
.LBB67_210:                             # %cond.false.1522
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB67_211:                             # %cond.end.1529
	movq	-376(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_213
# BB#212:                               # %land.lhs.true.1533
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_239
.LBB67_213:                             # %lor.lhs.false.1537
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_225
# BB#214:                               # %cond.true.1541
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_215
	jmp	.LBB67_219
.LBB67_215:                             # %cond.true.1542
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_217
# BB#216:                               # %cond.true.1551
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB67_218
.LBB67_217:                             # %cond.false.1562
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB67_218:                             # %cond.end.1569
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_239
	jmp	.LBB67_236
.LBB67_219:                             # %cond.false.1576
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_221
# BB#220:                               # %cond.true.1580
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_239
	jmp	.LBB67_236
.LBB67_221:                             # %cond.false.1581
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_223
# BB#222:                               # %cond.true.1590
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB67_224
.LBB67_223:                             # %cond.false.1613
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB67_224:                             # %cond.end.1620
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_239
	jmp	.LBB67_236
.LBB67_225:                             # %cond.false.1627
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_227
# BB#226:                               # %cond.true.1631
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_239
	jmp	.LBB67_236
.LBB67_227:                             # %cond.false.1632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_228
	jmp	.LBB67_232
.LBB67_228:                             # %cond.true.1633
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_230
# BB#229:                               # %cond.true.1642
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB67_231
.LBB67_230:                             # %cond.false.1665
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB67_231:                             # %cond.end.1672
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_239
	jmp	.LBB67_236
.LBB67_232:                             # %cond.false.1679
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_234
# BB#233:                               # %cond.true.1688
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB67_235
.LBB67_234:                             # %cond.false.1699
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB67_235:                             # %cond.end.1706
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_239
.LBB67_236:                             # %lor.lhs.false.1713
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_238
# BB#237:                               # %land.lhs.true.1721
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jb	.LBB67_239
.LBB67_238:                             # %lor.lhs.false.1727
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	92(%rdx), %rdx
	shlq	$4, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB67_243
.LBB67_239:                             # %cond.true.1733
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_241
# BB#240:                               # %cond.true.1738
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	jmp	.LBB67_242
.LBB67_241:                             # %cond.false.1741
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -428(%rbp)        # 4-byte Spill
.LBB67_242:                             # %cond.end.1746
	movl	-428(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_243:                             # %cond.false.1749
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_245
# BB#244:                               # %cond.true.1754
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	jmp	.LBB67_246
.LBB67_245:                             # %cond.false.1757
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	shll	$4, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -432(%rbp)        # 4-byte Spill
.LBB67_246:                             # %cond.end.1762
	movl	-432(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_247:                             # %cond.false.1765
	movb	$1, %al
	testb	$1, %al
	jne	.LBB67_248
	jmp	.LBB67_327
.LBB67_248:                             # %cond.true.1766
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_249
	jmp	.LBB67_288
.LBB67_249:                             # %cond.true.1767
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_251
# BB#250:                               # %cond.true.1776
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB67_252
.LBB67_251:                             # %cond.false.1799
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB67_252:                             # %cond.end.1806
	movq	-440(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_254
# BB#253:                               # %land.lhs.true.1810
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jl	.LBB67_280
.LBB67_254:                             # %lor.lhs.false.1815
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_266
# BB#255:                               # %cond.true.1820
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_256
	jmp	.LBB67_260
.LBB67_256:                             # %cond.true.1821
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_258
# BB#257:                               # %cond.true.1830
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB67_259
.LBB67_258:                             # %cond.false.1841
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB67_259:                             # %cond.end.1848
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-456(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB67_280
	jmp	.LBB67_277
.LBB67_260:                             # %cond.false.1855
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$-1, %rax
	jne	.LBB67_262
# BB#261:                               # %cond.true.1860
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_280
	jmp	.LBB67_277
.LBB67_262:                             # %cond.false.1861
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_264
# BB#263:                               # %cond.true.1870
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB67_265
.LBB67_264:                             # %cond.false.1893
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB67_265:                             # %cond.end.1900
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB67_280
	jmp	.LBB67_277
.LBB67_266:                             # %cond.false.1907
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jne	.LBB67_268
# BB#267:                               # %cond.true.1912
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_280
	jmp	.LBB67_277
.LBB67_268:                             # %cond.false.1913
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_269
	jmp	.LBB67_273
.LBB67_269:                             # %cond.true.1914
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_271
# BB#270:                               # %cond.true.1923
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB67_272
.LBB67_271:                             # %cond.false.1946
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB67_272:                             # %cond.end.1953
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB67_280
	jmp	.LBB67_277
.LBB67_273:                             # %cond.false.1960
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_275
# BB#274:                               # %cond.true.1969
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB67_276
.LBB67_275:                             # %cond.false.1980
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB67_276:                             # %cond.end.1987
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB67_280
.LBB67_277:                             # %lor.lhs.false.1994
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_279
# BB#278:                               # %land.lhs.true.2002
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_280
.LBB67_279:                             # %lor.lhs.false.2008
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_284
.LBB67_280:                             # %cond.true.2014
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_282
# BB#281:                               # %cond.true.2020
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB67_283
.LBB67_282:                             # %cond.false.2024
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB67_283:                             # %cond.end.2030
	movq	-496(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_284:                             # %cond.false.2032
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_286
# BB#285:                               # %cond.true.2038
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB67_287
.LBB67_286:                             # %cond.false.2042
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB67_287:                             # %cond.end.2048
	movq	-504(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_288:                             # %cond.false.2050
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_290
# BB#289:                               # %cond.true.2059
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB67_291
.LBB67_290:                             # %cond.false.2082
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB67_291:                             # %cond.end.2089
	movq	-512(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_293
# BB#292:                               # %land.lhs.true.2093
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_319
.LBB67_293:                             # %lor.lhs.false.2097
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_305
# BB#294:                               # %cond.true.2101
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_295
	jmp	.LBB67_299
.LBB67_295:                             # %cond.true.2102
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_297
# BB#296:                               # %cond.true.2111
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB67_298
.LBB67_297:                             # %cond.false.2122
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB67_298:                             # %cond.end.2129
	movq	-520(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -528(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-528(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_319
	jmp	.LBB67_316
.LBB67_299:                             # %cond.false.2136
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_301
# BB#300:                               # %cond.true.2140
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_319
	jmp	.LBB67_316
.LBB67_301:                             # %cond.false.2141
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_303
# BB#302:                               # %cond.true.2150
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB67_304
.LBB67_303:                             # %cond.false.2173
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB67_304:                             # %cond.end.2180
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_319
	jmp	.LBB67_316
.LBB67_305:                             # %cond.false.2187
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_307
# BB#306:                               # %cond.true.2191
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_319
	jmp	.LBB67_316
.LBB67_307:                             # %cond.false.2192
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_308
	jmp	.LBB67_312
.LBB67_308:                             # %cond.true.2193
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_310
# BB#309:                               # %cond.true.2202
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB67_311
.LBB67_310:                             # %cond.false.2225
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB67_311:                             # %cond.end.2232
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-552(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_319
	jmp	.LBB67_316
.LBB67_312:                             # %cond.false.2239
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_314
# BB#313:                               # %cond.true.2248
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB67_315
.LBB67_314:                             # %cond.false.2259
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB67_315:                             # %cond.end.2266
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_319
.LBB67_316:                             # %lor.lhs.false.2273
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_318
# BB#317:                               # %land.lhs.true.2281
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB67_319
.LBB67_318:                             # %lor.lhs.false.2287
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB67_323
.LBB67_319:                             # %cond.true.2293
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_321
# BB#320:                               # %cond.true.2299
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB67_322
.LBB67_321:                             # %cond.false.2303
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB67_322:                             # %cond.end.2309
	movq	-568(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_323:                             # %cond.false.2311
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_325
# BB#324:                               # %cond.true.2317
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB67_326
.LBB67_325:                             # %cond.false.2321
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB67_326:                             # %cond.end.2327
	movq	-576(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_327:                             # %cond.false.2329
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_328
	jmp	.LBB67_367
.LBB67_328:                             # %cond.true.2330
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_330
# BB#329:                               # %cond.true.2339
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB67_331
.LBB67_330:                             # %cond.false.2362
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB67_331:                             # %cond.end.2369
	movq	-584(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_333
# BB#332:                               # %land.lhs.true.2373
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jl	.LBB67_359
.LBB67_333:                             # %lor.lhs.false.2378
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_345
# BB#334:                               # %cond.true.2383
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_335
	jmp	.LBB67_339
.LBB67_335:                             # %cond.true.2384
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_337
# BB#336:                               # %cond.true.2393
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB67_338
.LBB67_337:                             # %cond.false.2404
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB67_338:                             # %cond.end.2411
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-600(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB67_359
	jmp	.LBB67_356
.LBB67_339:                             # %cond.false.2418
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$-1, %rax
	jne	.LBB67_341
# BB#340:                               # %cond.true.2423
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_359
	jmp	.LBB67_356
.LBB67_341:                             # %cond.false.2424
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_343
# BB#342:                               # %cond.true.2433
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB67_344
.LBB67_343:                             # %cond.false.2456
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB67_344:                             # %cond.end.2463
	movq	-608(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB67_359
	jmp	.LBB67_356
.LBB67_345:                             # %cond.false.2470
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	cmpq	$0, %rax
	jne	.LBB67_347
# BB#346:                               # %cond.true.2475
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_359
	jmp	.LBB67_356
.LBB67_347:                             # %cond.false.2476
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_348
	jmp	.LBB67_352
.LBB67_348:                             # %cond.true.2477
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_350
# BB#349:                               # %cond.true.2486
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	imulq	$0, %rcx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movslq	92(%rdi), %rdi
	imulq	$0, %rdi, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB67_351
.LBB67_350:                             # %cond.false.2509
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB67_351:                             # %cond.end.2516
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	cqto
	idivq	%rsi
	movq	-624(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB67_359
	jmp	.LBB67_356
.LBB67_352:                             # %cond.false.2523
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_354
# BB#353:                               # %cond.true.2532
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB67_355
.LBB67_354:                             # %cond.false.2543
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	imulq	$0, %rax, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB67_355:                             # %cond.end.2550
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	cqto
	idivq	%rcx
	cmpq	$16, %rax
	jl	.LBB67_359
.LBB67_356:                             # %lor.lhs.false.2557
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_358
# BB#357:                               # %land.lhs.true.2565
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_359
.LBB67_358:                             # %lor.lhs.false.2571
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_363
.LBB67_359:                             # %cond.true.2577
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_361
# BB#360:                               # %cond.true.2583
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB67_362
.LBB67_361:                             # %cond.false.2587
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB67_362:                             # %cond.end.2593
	movq	-640(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_363:                             # %cond.false.2595
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_365
# BB#364:                               # %cond.true.2601
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB67_366
.LBB67_365:                             # %cond.false.2605
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB67_366:                             # %cond.end.2611
	movq	-648(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_367:                             # %cond.false.2613
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_369
# BB#368:                               # %cond.true.2622
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB67_370
.LBB67_369:                             # %cond.false.2645
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB67_370:                             # %cond.end.2652
	movq	-656(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_372
# BB#371:                               # %land.lhs.true.2656
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jl	.LBB67_398
.LBB67_372:                             # %lor.lhs.false.2660
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jge	.LBB67_384
# BB#373:                               # %cond.true.2664
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_374
	jmp	.LBB67_378
.LBB67_374:                             # %cond.true.2665
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_376
# BB#375:                               # %cond.true.2674
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	jmp	.LBB67_377
.LBB67_376:                             # %cond.false.2685
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB67_377:                             # %cond.end.2692
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-672(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_398
	jmp	.LBB67_395
.LBB67_378:                             # %cond.false.2699
	movq	-16(%rbp), %rax
	cmpl	$-1, 92(%rax)
	jne	.LBB67_380
# BB#379:                               # %cond.true.2703
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_398
	jmp	.LBB67_395
.LBB67_380:                             # %cond.false.2704
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_382
# BB#381:                               # %cond.true.2713
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB67_383
.LBB67_382:                             # %cond.false.2736
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB67_383:                             # %cond.end.2743
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_398
	jmp	.LBB67_395
.LBB67_384:                             # %cond.false.2750
	movq	-16(%rbp), %rax
	cmpl	$0, 92(%rax)
	jne	.LBB67_386
# BB#385:                               # %cond.true.2754
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_398
	jmp	.LBB67_395
.LBB67_386:                             # %cond.false.2755
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_387
	jmp	.LBB67_391
.LBB67_387:                             # %cond.true.2756
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_389
# BB#388:                               # %cond.true.2765
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	addq	$16, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	imull	$0, 92(%rdi), %eax
	movslq	%eax, %rdi
	addq	$16, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB67_390
.LBB67_389:                             # %cond.false.2788
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB67_390:                             # %cond.end.2795
	movq	-688(%rbp), %rax        # 8-byte Reload
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movslq	92(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	divq	%rsi
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jb	.LBB67_398
	jmp	.LBB67_395
.LBB67_391:                             # %cond.false.2802
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_393
# BB#392:                               # %cond.true.2811
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB67_394
.LBB67_393:                             # %cond.false.2822
	movq	-16(%rbp), %rax
	imull	$0, 92(%rax), %ecx
	movslq	%ecx, %rax
	addq	$16, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB67_394:                             # %cond.end.2829
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	cmpq	$16, %rax
	jb	.LBB67_398
.LBB67_395:                             # %lor.lhs.false.2836
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB67_397
# BB#396:                               # %land.lhs.true.2844
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB67_398
.LBB67_397:                             # %lor.lhs.false.2850
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rcx, %rax
	jae	.LBB67_402
.LBB67_398:                             # %cond.true.2856
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_400
# BB#399:                               # %cond.true.2862
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB67_401
.LBB67_400:                             # %cond.false.2866
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB67_401:                             # %cond.end.2872
	movq	-712(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_406
.LBB67_402:                             # %cond.false.2874
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	92(%rcx), %rcx
	shlq	$4, %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_404
# BB#403:                               # %cond.true.2880
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB67_405
.LBB67_404:                             # %cond.false.2884
	movq	-16(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$4, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB67_405:                             # %cond.end.2890
	movq	-720(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
.LBB67_406:                             # %lor.lhs.false.2892
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_407
	jmp	.LBB67_492
.LBB67_407:                             # %cond.true.2893
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_408
	jmp	.LBB67_450
.LBB67_408:                             # %cond.true.2894
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_410
# BB#409:                               # %cond.true.2905
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB67_411
.LBB67_410:                             # %cond.false.2933
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -724(%rbp)        # 4-byte Spill
.LBB67_411:                             # %cond.end.2943
	movl	-724(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_416
# BB#412:                               # %land.lhs.true.2947
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_414
# BB#413:                               # %land.lhs.true.2953
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB67_442
.LBB67_414:                             # %lor.lhs.false.2958
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB67_416
# BB#415:                               # %land.lhs.true.2963
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	cmpl	%edx, %eax
	jl	.LBB67_442
.LBB67_416:                             # %lor.lhs.false.2969
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB67_428
# BB#417:                               # %cond.true.2974
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_422
# BB#418:                               # %cond.true.2980
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -728(%rbp)        # 4-byte Spill
	jge	.LBB67_420
# BB#419:                               # %cond.true.2995
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -732(%rbp)        # 4-byte Spill
	jmp	.LBB67_421
.LBB67_420:                             # %cond.false.3009
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -732(%rbp)        # 4-byte Spill
.LBB67_421:                             # %cond.end.3019
	movl	-732(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-728(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB67_442
	jmp	.LBB67_439
.LBB67_422:                             # %cond.false.3026
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$-1, %edx
	jne	.LBB67_424
# BB#423:                               # %cond.true.3031
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_442
	jmp	.LBB67_439
.LBB67_424:                             # %cond.false.3032
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_426
# BB#425:                               # %cond.true.3044
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -736(%rbp)        # 4-byte Spill
	jmp	.LBB67_427
.LBB67_426:                             # %cond.false.3072
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -736(%rbp)        # 4-byte Spill
.LBB67_427:                             # %cond.end.3082
	movl	-736(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB67_442
	jmp	.LBB67_439
.LBB67_428:                             # %cond.false.3092
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB67_430
# BB#429:                               # %cond.true.3097
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_442
	jmp	.LBB67_439
.LBB67_430:                             # %cond.false.3098
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_435
# BB#431:                               # %cond.true.3104
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -740(%rbp)        # 4-byte Spill
	jge	.LBB67_433
# BB#432:                               # %cond.true.3119
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -744(%rbp)        # 4-byte Spill
	jmp	.LBB67_434
.LBB67_433:                             # %cond.false.3147
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -744(%rbp)        # 4-byte Spill
.LBB67_434:                             # %cond.end.3157
	movl	-744(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movl	-740(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB67_442
	jmp	.LBB67_439
.LBB67_435:                             # %cond.false.3164
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_437
# BB#436:                               # %cond.true.3176
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -748(%rbp)        # 4-byte Spill
	jmp	.LBB67_438
.LBB67_437:                             # %cond.false.3190
	movq	-80(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -748(%rbp)        # 4-byte Spill
.LBB67_438:                             # %cond.end.3200
	movl	-748(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movb	%sil, %dil
	movsbl	%dil, %esi
	cmpl	%esi, %eax
	jl	.LBB67_442
.LBB67_439:                             # %lor.lhs.false.3210
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_441
# BB#440:                               # %land.lhs.true.3221
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movsbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$-128, %ecx
	jl	.LBB67_442
.LBB67_441:                             # %lor.lhs.false.3230
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	movq	-80(%rbp), %rcx
	movb	%cl, %sil
	movsbl	%sil, %edi
	imull	%edi, %edx
	cmpl	%edx, %eax
	jge	.LBB67_446
.LBB67_442:                             # %cond.true.3239
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_444
# BB#443:                               # %cond.true.3248
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
	jmp	.LBB67_445
.LBB67_444:                             # %cond.false.3257
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -752(%rbp)        # 4-byte Spill
.LBB67_445:                             # %cond.end.3268
	movl	-752(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_446:                             # %cond.false.3271
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_448
# BB#447:                               # %cond.true.3280
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
	jmp	.LBB67_449
.LBB67_448:                             # %cond.false.3289
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -756(%rbp)        # 4-byte Spill
.LBB67_449:                             # %cond.end.3300
	movl	-756(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_450:                             # %cond.false.3303
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_452
# BB#451:                               # %cond.true.3312
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB67_453
.LBB67_452:                             # %cond.false.3335
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB67_453:                             # %cond.end.3342
	movq	-768(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_458
# BB#454:                               # %land.lhs.true.3346
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_456
# BB#455:                               # %land.lhs.true.3350
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_484
.LBB67_456:                             # %lor.lhs.false.3353
	cmpq	$0, -80(%rbp)
	jge	.LBB67_458
# BB#457:                               # %land.lhs.true.3356
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_484
.LBB67_458:                             # %lor.lhs.false.3360
	cmpq	$0, -80(%rbp)
	jge	.LBB67_470
# BB#459:                               # %cond.true.3363
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_464
# BB#460:                               # %cond.true.3367
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jge	.LBB67_462
# BB#461:                               # %cond.true.3378
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB67_463
.LBB67_462:                             # %cond.false.3389
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB67_463:                             # %cond.end.3396
	movq	-784(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_484
	jmp	.LBB67_481
.LBB67_464:                             # %cond.false.3401
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_466
# BB#465:                               # %cond.true.3404
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_484
	jmp	.LBB67_481
.LBB67_466:                             # %cond.false.3405
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_468
# BB#467:                               # %cond.true.3414
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB67_469
.LBB67_468:                             # %cond.false.3437
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB67_469:                             # %cond.end.3444
	movq	-792(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_484
	jmp	.LBB67_481
.LBB67_470:                             # %cond.false.3451
	cmpq	$0, -80(%rbp)
	jne	.LBB67_472
# BB#471:                               # %cond.true.3454
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_484
	jmp	.LBB67_481
.LBB67_472:                             # %cond.false.3455
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_477
# BB#473:                               # %cond.true.3459
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jge	.LBB67_475
# BB#474:                               # %cond.true.3470
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB67_476
.LBB67_475:                             # %cond.false.3493
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB67_476:                             # %cond.end.3500
	movq	-808(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_484
	jmp	.LBB67_481
.LBB67_477:                             # %cond.false.3505
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_479
# BB#478:                               # %cond.true.3514
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB67_480
.LBB67_479:                             # %cond.false.3525
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB67_480:                             # %cond.end.3532
	movq	-816(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_484
.LBB67_481:                             # %lor.lhs.false.3539
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_483
# BB#482:                               # %land.lhs.true.3547
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB67_484
.LBB67_483:                             # %lor.lhs.false.3553
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-80(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB67_488
.LBB67_484:                             # %cond.true.3559
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_486
# BB#485:                               # %cond.true.3568
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
	jmp	.LBB67_487
.LBB67_486:                             # %cond.false.3577
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
.LBB67_487:                             # %cond.end.3588
	movl	-820(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_488:                             # %cond.false.3591
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	cmpl	$127, %ecx
	jg	.LBB67_490
# BB#489:                               # %cond.true.3600
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	jmp	.LBB67_491
.LBB67_490:                             # %cond.false.3609
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movb	%cl, %dl
	movzbl	%dl, %ecx
	movq	-80(%rbp), %rax
	movb	%al, %dl
	movzbl	%dl, %esi
	imull	%esi, %ecx
	subl	$-128, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$-128, %ecx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
.LBB67_491:                             # %cond.end.3620
	movl	-824(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_492:                             # %cond.false.3623
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_493
	jmp	.LBB67_578
.LBB67_493:                             # %cond.true.3624
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_494
	jmp	.LBB67_536
.LBB67_494:                             # %cond.true.3625
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_496
# BB#495:                               # %cond.true.3637
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	jmp	.LBB67_497
.LBB67_496:                             # %cond.false.3665
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -828(%rbp)        # 4-byte Spill
.LBB67_497:                             # %cond.end.3675
	movl	-828(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_502
# BB#498:                               # %land.lhs.true.3679
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_500
# BB#499:                               # %land.lhs.true.3685
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB67_528
.LBB67_500:                             # %lor.lhs.false.3690
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB67_502
# BB#501:                               # %land.lhs.true.3695
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	cmpl	%edx, %eax
	jl	.LBB67_528
.LBB67_502:                             # %lor.lhs.false.3701
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB67_514
# BB#503:                               # %cond.true.3706
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_508
# BB#504:                               # %cond.true.3712
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -832(%rbp)        # 4-byte Spill
	jge	.LBB67_506
# BB#505:                               # %cond.true.3727
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
	jmp	.LBB67_507
.LBB67_506:                             # %cond.false.3741
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
.LBB67_507:                             # %cond.end.3751
	movl	-836(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-832(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB67_528
	jmp	.LBB67_525
.LBB67_508:                             # %cond.false.3758
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$-1, %edx
	jne	.LBB67_510
# BB#509:                               # %cond.true.3763
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_528
	jmp	.LBB67_525
.LBB67_510:                             # %cond.false.3764
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_512
# BB#511:                               # %cond.true.3776
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	jmp	.LBB67_513
.LBB67_512:                             # %cond.false.3804
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -840(%rbp)        # 4-byte Spill
.LBB67_513:                             # %cond.end.3814
	movl	-840(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB67_528
	jmp	.LBB67_525
.LBB67_514:                             # %cond.false.3824
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jne	.LBB67_516
# BB#515:                               # %cond.true.3829
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_528
	jmp	.LBB67_525
.LBB67_516:                             # %cond.false.3830
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_521
# BB#517:                               # %cond.true.3836
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rax
	movl	96(%rax), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%ecx, -844(%rbp)        # 4-byte Spill
	jge	.LBB67_519
# BB#518:                               # %cond.true.3851
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -848(%rbp)        # 4-byte Spill
	jmp	.LBB67_520
.LBB67_519:                             # %cond.false.3879
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -848(%rbp)        # 4-byte Spill
.LBB67_520:                             # %cond.end.3889
	movl	-848(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movl	-844(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB67_528
	jmp	.LBB67_525
.LBB67_521:                             # %cond.false.3896
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB67_523
# BB#522:                               # %cond.true.3908
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -852(%rbp)        # 4-byte Spill
	jmp	.LBB67_524
.LBB67_523:                             # %cond.false.3922
	movq	-80(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	movl	96(%rax), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -852(%rbp)        # 4-byte Spill
.LBB67_524:                             # %cond.end.3932
	movl	-852(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cltd
	idivl	%esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %esi
	movw	%si, %di
	movswl	%di, %esi
	cmpl	%esi, %eax
	jl	.LBB67_528
.LBB67_525:                             # %lor.lhs.false.3942
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_527
# BB#526:                               # %land.lhs.true.3953
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movswl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB67_528
.LBB67_527:                             # %lor.lhs.false.3962
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movw	%dx, %si
	movswl	%si, %edx
	movq	-80(%rbp), %rcx
	movw	%cx, %si
	movswl	%si, %edi
	imull	%edi, %edx
	cmpl	%edx, %eax
	jge	.LBB67_532
.LBB67_528:                             # %cond.true.3971
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_530
# BB#529:                               # %cond.true.3980
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -856(%rbp)        # 4-byte Spill
	jmp	.LBB67_531
.LBB67_530:                             # %cond.false.3989
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -856(%rbp)        # 4-byte Spill
.LBB67_531:                             # %cond.end.4000
	movl	-856(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_532:                             # %cond.false.4003
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_534
# BB#533:                               # %cond.true.4012
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -860(%rbp)        # 4-byte Spill
	jmp	.LBB67_535
.LBB67_534:                             # %cond.false.4021
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -860(%rbp)        # 4-byte Spill
.LBB67_535:                             # %cond.end.4032
	movl	-860(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_536:                             # %cond.false.4035
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_538
# BB#537:                               # %cond.true.4044
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB67_539
.LBB67_538:                             # %cond.false.4067
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB67_539:                             # %cond.end.4074
	movq	-872(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_544
# BB#540:                               # %land.lhs.true.4078
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_542
# BB#541:                               # %land.lhs.true.4082
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_570
.LBB67_542:                             # %lor.lhs.false.4085
	cmpq	$0, -80(%rbp)
	jge	.LBB67_544
# BB#543:                               # %land.lhs.true.4088
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_570
.LBB67_544:                             # %lor.lhs.false.4092
	cmpq	$0, -80(%rbp)
	jge	.LBB67_556
# BB#545:                               # %cond.true.4095
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_550
# BB#546:                               # %cond.true.4099
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jge	.LBB67_548
# BB#547:                               # %cond.true.4110
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB67_549
.LBB67_548:                             # %cond.false.4121
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB67_549:                             # %cond.end.4128
	movq	-888(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-880(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_570
	jmp	.LBB67_567
.LBB67_550:                             # %cond.false.4133
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_552
# BB#551:                               # %cond.true.4136
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_570
	jmp	.LBB67_567
.LBB67_552:                             # %cond.false.4137
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_554
# BB#553:                               # %cond.true.4146
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB67_555
.LBB67_554:                             # %cond.false.4169
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB67_555:                             # %cond.end.4176
	movq	-896(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_570
	jmp	.LBB67_567
.LBB67_556:                             # %cond.false.4183
	cmpq	$0, -80(%rbp)
	jne	.LBB67_558
# BB#557:                               # %cond.true.4186
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_570
	jmp	.LBB67_567
.LBB67_558:                             # %cond.false.4187
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_563
# BB#559:                               # %cond.true.4191
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jge	.LBB67_561
# BB#560:                               # %cond.true.4202
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB67_562
.LBB67_561:                             # %cond.false.4225
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB67_562:                             # %cond.end.4232
	movq	-912(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_570
	jmp	.LBB67_567
.LBB67_563:                             # %cond.false.4237
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_565
# BB#564:                               # %cond.true.4246
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB67_566
.LBB67_565:                             # %cond.false.4257
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB67_566:                             # %cond.end.4264
	movq	-920(%rbp), %rax        # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_570
.LBB67_567:                             # %lor.lhs.false.4271
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_569
# BB#568:                               # %land.lhs.true.4279
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB67_570
.LBB67_569:                             # %lor.lhs.false.4285
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-80(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB67_574
.LBB67_570:                             # %cond.true.4291
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_572
# BB#571:                               # %cond.true.4300
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	jmp	.LBB67_573
.LBB67_572:                             # %cond.false.4309
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -924(%rbp)        # 4-byte Spill
.LBB67_573:                             # %cond.end.4320
	movl	-924(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_574:                             # %cond.false.4323
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	cmpl	$32767, %ecx            # imm = 0x7FFF
	jg	.LBB67_576
# BB#575:                               # %cond.true.4332
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	movl	%ecx, -928(%rbp)        # 4-byte Spill
	jmp	.LBB67_577
.LBB67_576:                             # %cond.false.4341
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movw	%cx, %dx
	movzwl	%dx, %ecx
	movq	-80(%rbp), %rax
	movw	%ax, %dx
	movzwl	%dx, %esi
	imull	%esi, %ecx
	subl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$-32768, %ecx           # imm = 0xFFFFFFFFFFFF8000
	movl	%ecx, -928(%rbp)        # 4-byte Spill
.LBB67_577:                             # %cond.end.4352
	movl	-928(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_578:                             # %cond.false.4355
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_579
	jmp	.LBB67_664
.LBB67_579:                             # %cond.true.4356
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_580
	jmp	.LBB67_622
.LBB67_580:                             # %cond.true.4357
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_582
# BB#581:                               # %cond.true.4366
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	jmp	.LBB67_583
.LBB67_582:                             # %cond.false.4388
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
.LBB67_583:                             # %cond.end.4395
	movl	-932(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB67_588
# BB#584:                               # %land.lhs.true.4399
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_586
# BB#585:                               # %land.lhs.true.4403
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB67_614
.LBB67_586:                             # %lor.lhs.false.4407
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_588
# BB#587:                               # %land.lhs.true.4411
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_614
.LBB67_588:                             # %lor.lhs.false.4415
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_600
# BB#589:                               # %cond.true.4419
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_594
# BB#590:                               # %cond.true.4423
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	addl	96(%rax), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -936(%rbp)        # 4-byte Spill
	jge	.LBB67_592
# BB#591:                               # %cond.true.4433
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	jmp	.LBB67_593
.LBB67_592:                             # %cond.false.4444
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -940(%rbp)        # 4-byte Spill
.LBB67_593:                             # %cond.end.4451
	movl	-940(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -944(%rbp)        # 4-byte Spill
	cltd
	movl	-944(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-936(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB67_614
	jmp	.LBB67_611
.LBB67_594:                             # %cond.false.4457
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	jne	.LBB67_596
# BB#595:                               # %cond.true.4461
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_614
	jmp	.LBB67_611
.LBB67_596:                             # %cond.false.4462
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_598
# BB#597:                               # %cond.true.4471
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	jmp	.LBB67_599
.LBB67_598:                             # %cond.false.4493
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -948(%rbp)        # 4-byte Spill
.LBB67_599:                             # %cond.end.4500
	movl	-948(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
	cltd
	movl	-952(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_614
	jmp	.LBB67_611
.LBB67_600:                             # %cond.false.4507
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_602
# BB#601:                               # %cond.true.4511
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_614
	jmp	.LBB67_611
.LBB67_602:                             # %cond.false.4512
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_607
# BB#603:                               # %cond.true.4516
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rax
	addl	96(%rax), %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -956(%rbp)        # 4-byte Spill
	jge	.LBB67_605
# BB#604:                               # %cond.true.4526
	xorl	%eax, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB67_606
.LBB67_605:                             # %cond.false.4548
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -960(%rbp)        # 4-byte Spill
.LBB67_606:                             # %cond.end.4555
	movl	-960(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -964(%rbp)        # 4-byte Spill
	cltd
	movl	-964(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-956(%rbp), %edi        # 4-byte Reload
	cmpl	%eax, %edi
	jl	.LBB67_614
	jmp	.LBB67_611
.LBB67_607:                             # %cond.false.4561
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_609
# BB#608:                               # %cond.true.4570
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -968(%rbp)        # 4-byte Spill
	jmp	.LBB67_610
.LBB67_609:                             # %cond.false.4581
	movq	-80(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-16(%rbp), %rax
	addl	96(%rax), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -968(%rbp)        # 4-byte Spill
.LBB67_610:                             # %cond.end.4588
	movl	-968(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movl	%ecx, %edx
	movl	%edx, -972(%rbp)        # 4-byte Spill
	cltd
	movl	-972(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_614
.LBB67_611:                             # %lor.lhs.false.4595
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB67_613
# BB#612:                               # %land.lhs.true.4603
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB67_614
.LBB67_613:                             # %lor.lhs.false.4609
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movq	-80(%rbp), %rcx
	movl	%ecx, %esi
	imull	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB67_618
.LBB67_614:                             # %cond.true.4615
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_616
# BB#615:                               # %cond.true.4621
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -976(%rbp)        # 4-byte Spill
	jmp	.LBB67_617
.LBB67_616:                             # %cond.false.4625
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -976(%rbp)        # 4-byte Spill
.LBB67_617:                             # %cond.end.4631
	movl	-976(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_618:                             # %cond.false.4634
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_620
# BB#619:                               # %cond.true.4640
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	jmp	.LBB67_621
.LBB67_620:                             # %cond.false.4644
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -980(%rbp)        # 4-byte Spill
.LBB67_621:                             # %cond.end.4650
	movl	-980(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_622:                             # %cond.false.4653
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_624
# BB#623:                               # %cond.true.4662
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB67_625
.LBB67_624:                             # %cond.false.4685
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB67_625:                             # %cond.end.4692
	movq	-992(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_630
# BB#626:                               # %land.lhs.true.4696
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_628
# BB#627:                               # %land.lhs.true.4700
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_656
.LBB67_628:                             # %lor.lhs.false.4703
	cmpq	$0, -80(%rbp)
	jge	.LBB67_630
# BB#629:                               # %land.lhs.true.4706
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_656
.LBB67_630:                             # %lor.lhs.false.4710
	cmpq	$0, -80(%rbp)
	jge	.LBB67_642
# BB#631:                               # %cond.true.4713
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_636
# BB#632:                               # %cond.true.4717
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	jge	.LBB67_634
# BB#633:                               # %cond.true.4728
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB67_635
.LBB67_634:                             # %cond.false.4739
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB67_635:                             # %cond.end.4746
	movq	-1008(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_656
	jmp	.LBB67_653
.LBB67_636:                             # %cond.false.4751
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_638
# BB#637:                               # %cond.true.4754
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_656
	jmp	.LBB67_653
.LBB67_638:                             # %cond.false.4755
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_640
# BB#639:                               # %cond.true.4764
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB67_641
.LBB67_640:                             # %cond.false.4787
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
.LBB67_641:                             # %cond.end.4794
	movq	-1016(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_656
	jmp	.LBB67_653
.LBB67_642:                             # %cond.false.4801
	cmpq	$0, -80(%rbp)
	jne	.LBB67_644
# BB#643:                               # %cond.true.4804
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_656
	jmp	.LBB67_653
.LBB67_644:                             # %cond.false.4805
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_649
# BB#645:                               # %cond.true.4809
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jge	.LBB67_647
# BB#646:                               # %cond.true.4820
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB67_648
.LBB67_647:                             # %cond.false.4843
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB67_648:                             # %cond.end.4850
	movq	-1032(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_656
	jmp	.LBB67_653
.LBB67_649:                             # %cond.false.4855
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_651
# BB#650:                               # %cond.true.4864
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB67_652
.LBB67_651:                             # %cond.false.4875
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB67_652:                             # %cond.end.4882
	movq	-1040(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_656
.LBB67_653:                             # %lor.lhs.false.4889
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_655
# BB#654:                               # %land.lhs.true.4897
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB67_656
.LBB67_655:                             # %lor.lhs.false.4903
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	imulq	-80(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB67_660
.LBB67_656:                             # %cond.true.4909
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_658
# BB#657:                               # %cond.true.4915
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
	jmp	.LBB67_659
.LBB67_658:                             # %cond.false.4919
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1044(%rbp)       # 4-byte Spill
.LBB67_659:                             # %cond.end.4925
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_660:                             # %cond.false.4928
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB67_662
# BB#661:                               # %cond.true.4934
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
	jmp	.LBB67_663
.LBB67_662:                             # %cond.false.4938
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-80(%rbp), %rax
	movl	%eax, %edx
	imull	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1048(%rbp)       # 4-byte Spill
.LBB67_663:                             # %cond.end.4944
	movl	-1048(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_664:                             # %cond.false.4947
	movb	$1, %al
	testb	$1, %al
	jne	.LBB67_665
	jmp	.LBB67_750
.LBB67_665:                             # %cond.true.4948
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_666
	jmp	.LBB67_708
.LBB67_666:                             # %cond.true.4949
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_668
# BB#667:                               # %cond.true.4958
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB67_669
.LBB67_668:                             # %cond.false.4981
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB67_669:                             # %cond.end.4988
	movq	-1056(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_674
# BB#670:                               # %land.lhs.true.4992
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_672
# BB#671:                               # %land.lhs.true.4997
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_700
.LBB67_672:                             # %lor.lhs.false.5000
	cmpq	$0, -80(%rbp)
	jge	.LBB67_674
# BB#673:                               # %land.lhs.true.5003
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB67_700
.LBB67_674:                             # %lor.lhs.false.5008
	cmpq	$0, -80(%rbp)
	jge	.LBB67_686
# BB#675:                               # %cond.true.5011
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_680
# BB#676:                               # %cond.true.5016
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	jge	.LBB67_678
# BB#677:                               # %cond.true.5027
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB67_679
.LBB67_678:                             # %cond.false.5038
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB67_679:                             # %cond.end.5045
	movq	-1072(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_700
	jmp	.LBB67_697
.LBB67_680:                             # %cond.false.5050
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_682
# BB#681:                               # %cond.true.5053
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_700
	jmp	.LBB67_697
.LBB67_682:                             # %cond.false.5054
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_684
# BB#683:                               # %cond.true.5063
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB67_685
.LBB67_684:                             # %cond.false.5086
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB67_685:                             # %cond.end.5093
	movq	-1080(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_700
	jmp	.LBB67_697
.LBB67_686:                             # %cond.false.5100
	cmpq	$0, -80(%rbp)
	jne	.LBB67_688
# BB#687:                               # %cond.true.5103
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_700
	jmp	.LBB67_697
.LBB67_688:                             # %cond.false.5104
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_693
# BB#689:                               # %cond.true.5109
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jge	.LBB67_691
# BB#690:                               # %cond.true.5120
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB67_692
.LBB67_691:                             # %cond.false.5143
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB67_692:                             # %cond.end.5150
	movq	-1096(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_700
	jmp	.LBB67_697
.LBB67_693:                             # %cond.false.5155
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_695
# BB#694:                               # %cond.true.5164
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB67_696
.LBB67_695:                             # %cond.false.5175
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB67_696:                             # %cond.end.5182
	movq	-1104(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_700
.LBB67_697:                             # %lor.lhs.false.5189
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_699
# BB#698:                               # %land.lhs.true.5197
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_700
.LBB67_699:                             # %lor.lhs.false.5203
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_704
.LBB67_700:                             # %cond.true.5209
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_702
# BB#701:                               # %cond.true.5215
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB67_703
.LBB67_702:                             # %cond.false.5219
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB67_703:                             # %cond.end.5225
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_704:                             # %cond.false.5227
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_706
# BB#705:                               # %cond.true.5233
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB67_707
.LBB67_706:                             # %cond.false.5237
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB67_707:                             # %cond.end.5243
	movq	-1120(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_708:                             # %cond.false.5245
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_710
# BB#709:                               # %cond.true.5254
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB67_711
.LBB67_710:                             # %cond.false.5277
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB67_711:                             # %cond.end.5284
	movq	-1128(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_716
# BB#712:                               # %land.lhs.true.5288
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_714
# BB#713:                               # %land.lhs.true.5292
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_742
.LBB67_714:                             # %lor.lhs.false.5295
	cmpq	$0, -80(%rbp)
	jge	.LBB67_716
# BB#715:                               # %land.lhs.true.5298
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_742
.LBB67_716:                             # %lor.lhs.false.5302
	cmpq	$0, -80(%rbp)
	jge	.LBB67_728
# BB#717:                               # %cond.true.5305
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_722
# BB#718:                               # %cond.true.5309
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jge	.LBB67_720
# BB#719:                               # %cond.true.5320
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB67_721
.LBB67_720:                             # %cond.false.5331
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB67_721:                             # %cond.end.5338
	movq	-1144(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_742
	jmp	.LBB67_739
.LBB67_722:                             # %cond.false.5343
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_724
# BB#723:                               # %cond.true.5346
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_742
	jmp	.LBB67_739
.LBB67_724:                             # %cond.false.5347
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_726
# BB#725:                               # %cond.true.5356
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB67_727
.LBB67_726:                             # %cond.false.5379
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB67_727:                             # %cond.end.5386
	movq	-1152(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_742
	jmp	.LBB67_739
.LBB67_728:                             # %cond.false.5393
	cmpq	$0, -80(%rbp)
	jne	.LBB67_730
# BB#729:                               # %cond.true.5396
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_742
	jmp	.LBB67_739
.LBB67_730:                             # %cond.false.5397
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_735
# BB#731:                               # %cond.true.5401
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jge	.LBB67_733
# BB#732:                               # %cond.true.5412
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB67_734
.LBB67_733:                             # %cond.false.5435
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB67_734:                             # %cond.end.5442
	movq	-1168(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_742
	jmp	.LBB67_739
.LBB67_735:                             # %cond.false.5447
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_737
# BB#736:                               # %cond.true.5456
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB67_738
.LBB67_737:                             # %cond.false.5467
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB67_738:                             # %cond.end.5474
	movq	-1176(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_742
.LBB67_739:                             # %lor.lhs.false.5481
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_741
# BB#740:                               # %land.lhs.true.5489
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_742
.LBB67_741:                             # %lor.lhs.false.5495
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_746
.LBB67_742:                             # %cond.true.5501
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_744
# BB#743:                               # %cond.true.5507
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB67_745
.LBB67_744:                             # %cond.false.5511
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB67_745:                             # %cond.end.5517
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_746:                             # %cond.false.5519
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_748
# BB#747:                               # %cond.true.5525
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB67_749
.LBB67_748:                             # %cond.false.5529
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB67_749:                             # %cond.end.5535
	movq	-1192(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_750:                             # %cond.false.5537
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_751
	jmp	.LBB67_793
.LBB67_751:                             # %cond.true.5538
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_753
# BB#752:                               # %cond.true.5547
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB67_754
.LBB67_753:                             # %cond.false.5570
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB67_754:                             # %cond.end.5577
	movq	-1200(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_759
# BB#755:                               # %land.lhs.true.5581
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_757
# BB#756:                               # %land.lhs.true.5586
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_785
.LBB67_757:                             # %lor.lhs.false.5589
	cmpq	$0, -80(%rbp)
	jge	.LBB67_759
# BB#758:                               # %land.lhs.true.5592
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	cmpq	%rdx, %rcx
	jl	.LBB67_785
.LBB67_759:                             # %lor.lhs.false.5597
	cmpq	$0, -80(%rbp)
	jge	.LBB67_771
# BB#760:                               # %cond.true.5600
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_765
# BB#761:                               # %cond.true.5605
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jge	.LBB67_763
# BB#762:                               # %cond.true.5616
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB67_764
.LBB67_763:                             # %cond.false.5627
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB67_764:                             # %cond.end.5634
	movq	-1216(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_785
	jmp	.LBB67_782
.LBB67_765:                             # %cond.false.5639
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_767
# BB#766:                               # %cond.true.5642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_785
	jmp	.LBB67_782
.LBB67_767:                             # %cond.false.5643
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_769
# BB#768:                               # %cond.true.5652
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB67_770
.LBB67_769:                             # %cond.false.5675
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB67_770:                             # %cond.end.5682
	movq	-1224(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_785
	jmp	.LBB67_782
.LBB67_771:                             # %cond.false.5689
	cmpq	$0, -80(%rbp)
	jne	.LBB67_773
# BB#772:                               # %cond.true.5692
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_785
	jmp	.LBB67_782
.LBB67_773:                             # %cond.false.5693
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	cmpq	$0, %rax
	jge	.LBB67_778
# BB#774:                               # %cond.true.5698
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jge	.LBB67_776
# BB#775:                               # %cond.true.5709
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB67_777
.LBB67_776:                             # %cond.false.5732
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB67_777:                             # %cond.end.5739
	movq	-1240(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_785
	jmp	.LBB67_782
.LBB67_778:                             # %cond.false.5744
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_780
# BB#779:                               # %cond.true.5753
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB67_781
.LBB67_780:                             # %cond.false.5764
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB67_781:                             # %cond.end.5771
	movq	-1248(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_785
.LBB67_782:                             # %lor.lhs.false.5778
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_784
# BB#783:                               # %land.lhs.true.5786
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_785
.LBB67_784:                             # %lor.lhs.false.5792
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_789
.LBB67_785:                             # %cond.true.5798
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_787
# BB#786:                               # %cond.true.5804
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB67_788
.LBB67_787:                             # %cond.false.5808
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB67_788:                             # %cond.end.5814
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_789:                             # %cond.false.5816
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_791
# BB#790:                               # %cond.true.5822
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB67_792
.LBB67_791:                             # %cond.false.5826
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB67_792:                             # %cond.end.5832
	movq	-1264(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_793:                             # %cond.false.5834
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_795
# BB#794:                               # %cond.true.5843
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB67_796
.LBB67_795:                             # %cond.false.5866
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB67_796:                             # %cond.end.5873
	movq	-1272(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB67_801
# BB#797:                               # %land.lhs.true.5877
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_799
# BB#798:                               # %land.lhs.true.5881
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-80(%rbp), %rcx
	jl	.LBB67_827
.LBB67_799:                             # %lor.lhs.false.5884
	cmpq	$0, -80(%rbp)
	jge	.LBB67_801
# BB#800:                               # %land.lhs.true.5887
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jl	.LBB67_827
.LBB67_801:                             # %lor.lhs.false.5891
	cmpq	$0, -80(%rbp)
	jge	.LBB67_813
# BB#802:                               # %cond.true.5894
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_807
# BB#803:                               # %cond.true.5898
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jge	.LBB67_805
# BB#804:                               # %cond.true.5909
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB67_806
.LBB67_805:                             # %cond.false.5920
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB67_806:                             # %cond.end.5927
	movq	-1288(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_827
	jmp	.LBB67_824
.LBB67_807:                             # %cond.false.5932
	cmpq	$-1, -80(%rbp)
	jne	.LBB67_809
# BB#808:                               # %cond.true.5935
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_827
	jmp	.LBB67_824
.LBB67_809:                             # %cond.false.5936
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_811
# BB#810:                               # %cond.true.5945
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB67_812
.LBB67_811:                             # %cond.false.5968
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB67_812:                             # %cond.end.5975
	movq	-1296(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_827
	jmp	.LBB67_824
.LBB67_813:                             # %cond.false.5982
	cmpq	$0, -80(%rbp)
	jne	.LBB67_815
# BB#814:                               # %cond.true.5985
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB67_827
	jmp	.LBB67_824
.LBB67_815:                             # %cond.false.5986
	movq	-16(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB67_820
# BB#816:                               # %cond.true.5990
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jge	.LBB67_818
# BB#817:                               # %cond.true.6001
	xorl	%eax, %eax
	imulq	$0, -80(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movslq	96(%rdx), %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -80(%rbp), %rdx
	movq	-16(%rbp), %r8
	movslq	96(%r8), %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB67_819
.LBB67_818:                             # %cond.false.6024
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB67_819:                             # %cond.end.6031
	movq	-1312(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB67_827
	jmp	.LBB67_824
.LBB67_820:                             # %cond.false.6036
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_822
# BB#821:                               # %cond.true.6045
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB67_823
.LBB67_822:                             # %cond.false.6056
	imulq	$0, -80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB67_823:                             # %cond.end.6063
	movq	-1320(%rbp), %rax       # 8-byte Reload
	cqto
	idivq	-80(%rbp)
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB67_827
.LBB67_824:                             # %lor.lhs.false.6070
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB67_826
# BB#825:                               # %land.lhs.true.6078
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB67_827
.LBB67_826:                             # %lor.lhs.false.6084
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB67_831
.LBB67_827:                             # %cond.true.6090
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_829
# BB#828:                               # %cond.true.6096
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB67_830
.LBB67_829:                             # %cond.false.6100
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB67_830:                             # %cond.end.6106
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -80(%rbp)
	testb	$1, %cl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_831:                             # %cond.false.6108
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-16(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	-80(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB67_833
# BB#832:                               # %cond.true.6114
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB67_834
.LBB67_833:                             # %cond.false.6118
	movq	-16(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	-80(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB67_834:                             # %cond.end.6124
	movq	-1336(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)
	testb	$1, %dl
	jne	.LBB67_835
	jmp	.LBB67_836
.LBB67_835:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB67_836:                             # %if.end
	movq	-80(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movl	$0, -64(%rbp)
.LBB67_837:                             # %for.cond.6127
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB67_840
# BB#838:                               # %for.body.6131
                                        #   in Loop: Header=BB67_837 Depth=1
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	92(%rdx), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movw	$32767, 12(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 10(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 8(%rax)         # imm = 0x7FFF
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	92(%rdx), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	-16(%rbp), %rdx
	movl	92(%rdx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movw	$32767, 12(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 10(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 8(%rax)         # imm = 0x7FFF
# BB#839:                               # %for.inc.6146
                                        #   in Loop: Header=BB67_837 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB67_837
.LBB67_840:                             # %for.end.6148
	movl	$1, -60(%rbp)
.LBB67_841:                             # %for.cond.6149
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB67_844
# BB#842:                               # %for.body.6154
                                        #   in Loop: Header=BB67_841 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	imull	$0, 92(%rcx), %edx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movw	$32767, 12(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 10(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 8(%rax)         # imm = 0x7FFF
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rcx
	imull	92(%rcx), %edx
	movslq	%edx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movw	$32767, 12(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 10(%rax)        # imm = 0x7FFF
	movq	-56(%rbp), %rax
	movw	$32767, 8(%rax)         # imm = 0x7FFF
# BB#843:                               # %for.inc.6175
                                        #   in Loop: Header=BB67_841 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB67_841
.LBB67_844:                             # %for.end.6177
	movl	$1, -64(%rbp)
.LBB67_845:                             # %for.cond.6178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB67_847 Depth 2
                                        #       Child Loop BB67_849 Depth 3
                                        #         Child Loop BB67_851 Depth 4
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB67_862
# BB#846:                               # %for.body.6183
                                        #   in Loop: Header=BB67_845 Depth=1
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	92(%rdx), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
.LBB67_847:                             # %for.cond.6189
                                        #   Parent Loop BB67_845 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB67_849 Depth 3
                                        #         Child Loop BB67_851 Depth 4
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB67_860
# BB#848:                               # %for.body.6194
                                        #   in Loop: Header=BB67_847 Depth=2
	movl	$0, -68(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB67_849:                             # %for.cond.6196
                                        #   Parent Loop BB67_845 Depth=1
                                        #     Parent Loop BB67_847 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB67_851 Depth 4
	movl	-96(%rbp), %eax
	movl	-64(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB67_858
# BB#850:                               # %for.body.6200
                                        #   in Loop: Header=BB67_849 Depth=3
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
.LBB67_851:                             # %for.cond.6202
                                        #   Parent Loop BB67_845 Depth=1
                                        #     Parent Loop BB67_847 Depth=2
                                        #       Parent Loop BB67_849 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-100(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB67_856
# BB#852:                               # %for.body.6206
                                        #   in Loop: Header=BB67_851 Depth=4
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB67_854
# BB#853:                               # %if.then.6209
                                        #   in Loop: Header=BB67_851 Depth=4
	movq	-40(%rbp), %rax
	movl	-96(%rbp), %ecx
	movq	-16(%rbp), %rdx
	imull	92(%rdx), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movslq	-100(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -112(%rbp)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movq	-112(%rbp), %rax
	movzwl	8(%rax), %esi
	imull	%esi, %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movq	-112(%rbp), %rax
	movzwl	10(%rax), %esi
	imull	%esi, %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	(%rdx,%rax,4), %ecx
	movq	-112(%rbp), %rax
	movzwl	12(%rax), %esi
	imull	%esi, %ecx
	addl	-92(%rbp), %ecx
	movl	%ecx, -92(%rbp)
.LBB67_854:                             # %if.end.6234
                                        #   in Loop: Header=BB67_851 Depth=4
	jmp	.LBB67_855
.LBB67_855:                             # %for.inc.6235
                                        #   in Loop: Header=BB67_851 Depth=4
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB67_851
.LBB67_856:                             # %for.end.6238
                                        #   in Loop: Header=BB67_849 Depth=3
	jmp	.LBB67_857
.LBB67_857:                             # %for.inc.6239
                                        #   in Loop: Header=BB67_849 Depth=3
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB67_849
.LBB67_858:                             # %for.end.6241
                                        #   in Loop: Header=BB67_847 Depth=2
	movl	$6, %eax
	movl	-84(%rbp), %ecx
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-72(%rbp)
	addl	-28(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -84(%rbp)
	movl	-88(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	addl	-28(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -88(%rbp)
	movl	-92(%rbp), %eax
	cltd
	idivl	-72(%rbp)
	addl	-28(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	shll	$1, %eax
	imull	$3, -88(%rbp), %ecx
	addl	%ecx, %eax
	addl	-92(%rbp), %eax
	cltd
	movl	-1340(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movw	%ax, %si
	movq	-56(%rbp), %rdi
	movw	%si, 12(%rdi)
	movq	-56(%rbp), %rdi
	movw	%si, 10(%rdi)
	movq	-56(%rbp), %rdi
	movw	%si, 8(%rdi)
# BB#859:                               # %for.inc.6259
                                        #   in Loop: Header=BB67_847 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -56(%rbp)
	jmp	.LBB67_847
.LBB67_860:                             # %for.end.6261
                                        #   in Loop: Header=BB67_845 Depth=1
	jmp	.LBB67_861
.LBB67_861:                             # %for.inc.6262
                                        #   in Loop: Header=BB67_845 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB67_845
.LBB67_862:                             # %for.end.6264
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	x_from_xcolors
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end67:
	.size	x_detect_edges, .Lfunc_end67-x_detect_edges
	.cfi_endproc

	.align	16, 0x90
	.type	x_check_image_size,@function
x_check_image_size:                     # @x_check_image_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp207:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB68_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB68_3
.LBB68_2:                               # %if.else
	movl	$8, -20(%rbp)
	movl	$1, -24(%rbp)
	movl	-12(%rbp), %eax
	sarl	$3, %eax
	movl	-12(%rbp), %ecx
	andl	$7, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
.LBB68_3:                               # %if.end
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %esi
	subl	$1, %esi
	subl	%esi, %eax
	movl	%edx, -32(%rbp)         # 4-byte Spill
	cltd
	idivl	-24(%rbp)
	movl	-32(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB68_5
# BB#4:                                 # %land.rhs
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-16(%rbp), %ecx
	cltd
	idivl	-28(%rbp)
	cmpl	%eax, %ecx
	setle	%sil
	movb	%sil, -33(%rbp)         # 1-byte Spill
.LBB68_5:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end68:
	.size	x_check_image_size, .Lfunc_end68-x_check_image_size
	.cfi_endproc

	.align	16, 0x90
	.type	x_put_x_image,@function
x_put_x_image:                          # @x_put_x_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp210:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-24(%rbp), %rsi
	movq	%r9, %rdx
	movq	%r9, %rcx
	callq	XCreateGC
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	callq	XPutImage
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	XFreeGC
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	x_put_x_image, .Lfunc_end69-x_put_x_image
	.cfi_endproc

	.align	16, 0x90
	.type	define_image_type,@function
define_image_type:                      # @define_image_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp211:
	.cfi_def_cfa_offset 16
.Ltmp212:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp213:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movl	%eax, -20(%rbp)
	movb	$1, -21(%rbp)
	callq	block_input
	movq	image_types, %rdi
	movq	%rdi, -16(%rbp)
.LBB70_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB70_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB70_4
# BB#3:                                 # %if.then
	jmp	.LBB70_11
.LBB70_4:                               # %if.end
                                        #   in Loop: Header=BB70_1 Depth=1
	jmp	.LBB70_5
.LBB70_5:                               # %for.inc
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB70_1
.LBB70_6:                               # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB70_8
# BB#7:                                 # %if.then.4
	movq	-8(%rbp), %rax
	callq	*32(%rax)
	andb	$1, %al
	movb	%al, -21(%rbp)
.LBB70_8:                               # %if.end.6
	testb	$1, -21(%rbp)
	je	.LBB70_10
# BB#9:                                 # %if.then.8
	movl	$48, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$48, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	image_types, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, image_types
.LBB70_10:                              # %if.end.11
	jmp	.LBB70_11
.LBB70_11:                              # %done
	callq	unblock_input
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	define_image_type, .Lfunc_end70-define_image_type
	.cfi_endproc

	.align	16, 0x90
	.type	pbm_image_p,@function
pbm_image_p:                            # @pbm_image_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp214:
	.cfi_def_cfa_offset 16
.Ltmp215:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp216:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movl	$743, %eax              # imm = 0x2E7
	leaq	-368(%rbp), %rcx
	movabsq	$pbm_format, %rdx
	movl	$352, %esi              # imm = 0x160
	movl	%esi, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movl	-380(%rbp), %eax        # 4-byte Reload
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$11, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	testb	$1, %al
	jne	.LBB71_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB71_3
.LBB71_2:                               # %if.end
	movl	-288(%rbp), %eax
	addl	-320(%rbp), %eax
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB71_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end71:
	.size	pbm_image_p, .Lfunc_end71-pbm_image_p
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI72_0:
	.quad	4679239875398991872     # double 65535
	.text
	.align	16, 0x90
	.type	pbm_load,@function
pbm_load:                               # @pbm_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
.Ltmp218:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp219:
	.cfi_def_cfa_register %rbp
	subq	$704, %rsp              # imm = 0x2C0
	movl	$41, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_1
	jmp	.LBB72_6
.LBB72_1:                               # %if.then
	leaq	-100(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	x_find_image_fd
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.27, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB72_100
.LBB72_3:                               # %if.end
	leaq	-120(%rbp), %rsi
	movl	-100(%rbp), %edi
	callq	slurp_file
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB72_5
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.28, %rdi
	movq	-112(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB72_100
.LBB72_5:                               # %if.end.8
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB72_9
.LBB72_6:                               # %if.else
	movl	$29, %edi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_8
# BB#7:                                 # %if.then.13
	movabsq	$.L.str.29, %rdi
	movq	-128(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB72_100
.LBB72_8:                               # %if.end.14
	movq	-128(%rbp), %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-128(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-552(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -80(%rbp)
.LBB72_9:                               # %if.end.18
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$2, %rax
	jl	.LBB72_11
# BB#10:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	cmpl	$80, %edx
	je	.LBB72_13
.LBB72_11:                              # %if.then.22
	movabsq	$.L.str.30, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
.LBB72_12:                              # %error
	movq	-72(%rbp), %rdi
	callq	xfree
	movq	-24(%rbp), %rdi
	movq	$0, 16(%rdi)
	movb	$0, -1(%rbp)
	jmp	.LBB72_100
.LBB72_13:                              # %if.end.24
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	addl	$-49, %edx
	movl	%edx, %eax
	subl	$5, %edx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%edx, -564(%rbp)        # 4-byte Spill
	ja	.LBB72_20
# BB#101:                               # %if.end.24
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	.LJTI72_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB72_14:                              # %sw.bb
	movb	$0, -25(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB72_21
.LBB72_15:                              # %sw.bb.27
	movb	$0, -25(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB72_21
.LBB72_16:                              # %sw.bb.28
	movb	$0, -25(%rbp)
	movl	$2, -60(%rbp)
	jmp	.LBB72_21
.LBB72_17:                              # %sw.bb.29
	movb	$1, -25(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB72_21
.LBB72_18:                              # %sw.bb.30
	movb	$1, -25(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB72_21
.LBB72_19:                              # %sw.bb.31
	movb	$1, -25(%rbp)
	movl	$2, -60(%rbp)
	jmp	.LBB72_21
.LBB72_20:                              # %sw.default
	movabsq	$.L.str.30, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
	jmp	.LBB72_12
.LBB72_21:                              # %sw.epilog
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	leaq	-88(%rbp), %rdi
	movl	%eax, -40(%rbp)
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	movl	%eax, -44(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB72_26
# BB#22:                                # %if.then.37
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	movl	%eax, -48(%rbp)
	cmpl	$65535, -48(%rbp)       # imm = 0xFFFF
	jg	.LBB72_24
# BB#23:                                # %lor.lhs.false.41
	cmpl	$0, -48(%rbp)
	jge	.LBB72_25
.LBB72_24:                              # %if.then.44
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	image_error
	jmp	.LBB72_12
.LBB72_25:                              # %if.end.45
	jmp	.LBB72_26
.LBB72_26:                              # %if.end.46
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	check_image_size
	testb	$1, %al
	jne	.LBB72_28
# BB#27:                                # %if.then.48
	callq	image_size_error
	jmp	.LBB72_12
.LBB72_28:                              # %if.end.49
	xorl	%r8d, %r8d
	leaq	-96(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	$0, (%rsp)
	callq	image_create_x_image_and_pixmap
	testb	$1, %al
	jne	.LBB72_30
# BB#29:                                # %if.then.51
	jmp	.LBB72_12
.LBB72_30:                              # %if.end.52
	callq	init_color_table
	cmpl	$0, -60(%rbp)
	jne	.LBB72_56
# BB#31:                                # %if.then.55
	movl	$743, %edi              # imm = 0x2E7
	leaq	-496(%rbp), %rax
	movabsq	$pbm_format, %rcx
	movl	$352, %edx              # imm = 0x160
                                        # kill: RDX<def> EDX<kill>
	movl	$0, -132(%rbp)
	movq	-16(%rbp), %rsi
	movq	480(%rsi), %rsi
	movq	%rsi, -504(%rbp)
	movq	-16(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rsi, -512(%rbp)
	movq	%rax, %rsi
	movl	%edi, -568(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	movl	-568(%rbp), %r8d        # 4-byte Reload
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	callq	builtin_lisp_symbol
	movl	$11, %edx
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	-576(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	cmpl	$0, -192(%rbp)
	movb	%al, -585(%rbp)         # 1-byte Spill
	je	.LBB72_34
# BB#32:                                # %land.lhs.true
	movq	-184(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_33
	jmp	.LBB72_34
.LBB72_33:                              # %if.then.62
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-184(%rbp), %rdx
	movq	-504(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -504(%rbp)
.LBB72_34:                              # %if.end.66
	cmpl	$0, -160(%rbp)
	je	.LBB72_37
# BB#35:                                # %land.lhs.true.70
	movq	-152(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_36
	jmp	.LBB72_37
.LBB72_36:                              # %if.then.75
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-512(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-24(%rbp), %rax
	movb	88(%rax), %r8b
	andb	$-3, %r8b
	orb	$2, %r8b
	movb	%r8b, 88(%rax)
.LBB72_37:                              # %if.end.79
	movl	$0, -36(%rbp)
.LBB72_38:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_40 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB72_55
# BB#39:                                # %for.body
                                        #   in Loop: Header=BB72_38 Depth=1
	movl	$0, -32(%rbp)
.LBB72_40:                              # %for.cond.82
                                        #   Parent Loop BB72_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB72_53
# BB#41:                                # %for.body.85
                                        #   in Loop: Header=BB72_40 Depth=2
	testb	$1, -25(%rbp)
	je	.LBB72_47
# BB#42:                                # %if.then.87
                                        #   in Loop: Header=BB72_40 Depth=2
	movl	-32(%rbp), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	jne	.LBB72_46
# BB#43:                                # %if.then.90
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.LBB72_45
# BB#44:                                # %if.then.93
	movq	-96(%rbp), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_clear_image
	movabsq	$.L.str.32, %rdi
	movq	-24(%rbp), %rsi
	movq	120(%rsi), %rsi
	movb	$0, %al
	callq	image_error
	jmp	.LBB72_12
.LBB72_45:                              # %if.end.95
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -132(%rbp)
.LBB72_46:                              # %if.end.98
                                        #   in Loop: Header=BB72_40 Depth=2
	movl	-132(%rbp), %eax
	andl	$128, %eax
	movl	%eax, -136(%rbp)
	movl	-132(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB72_48
.LBB72_47:                              # %if.else.100
                                        #   in Loop: Header=BB72_40 Depth=2
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	movl	%eax, -136(%rbp)
.LBB72_48:                              # %if.end.102
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-96(%rbp), %rax
	movq	112(%rax), %rax
	movq	-96(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	cmpl	$0, -136(%rbp)
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movl	%esi, -612(%rbp)        # 4-byte Spill
	movl	%edx, -616(%rbp)        # 4-byte Spill
	je	.LBB72_50
# BB#49:                                # %cond.true
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-504(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB72_51
.LBB72_50:                              # %cond.false
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-512(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB72_51:                              # %cond.end
                                        #   in Loop: Header=BB72_40 Depth=2
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	-612(%rbp), %esi        # 4-byte Reload
	movl	-616(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movq	-600(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, -628(%rbp)        # 4-byte Spill
# BB#52:                                # %for.inc
                                        #   in Loop: Header=BB72_40 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB72_40
.LBB72_53:                              # %for.end
                                        #   in Loop: Header=BB72_38 Depth=1
	jmp	.LBB72_54
.LBB72_54:                              # %for.inc.106
                                        #   in Loop: Header=BB72_38 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB72_38
.LBB72_55:                              # %for.end.108
	jmp	.LBB72_94
.LBB72_56:                              # %if.else.109
	movl	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -516(%rbp)
	cmpl	$255, -48(%rbp)
	jle	.LBB72_58
# BB#57:                                # %if.then.112
	movl	-516(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -516(%rbp)
.LBB72_58:                              # %if.end.114
	cmpl	$2, -60(%rbp)
	jne	.LBB72_60
# BB#59:                                # %if.then.117
	imull	$3, -516(%rbp), %eax
	movl	%eax, -516(%rbp)
.LBB72_60:                              # %if.end.119
	testb	$1, -25(%rbp)
	je	.LBB72_63
# BB#61:                                # %land.lhs.true.122
	movq	-88(%rbp), %rax
	movslq	-516(%rbp), %rcx
	addq	%rcx, %rax
	cmpq	-80(%rbp), %rax
	jbe	.LBB72_63
# BB#62:                                # %if.then.126
	movq	-96(%rbp), %rdi
	callq	x_destroy_x_image
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_clear_image
	movabsq	$.L.str.32, %rdi
	movq	-24(%rbp), %rsi
	movq	120(%rsi), %rsi
	movb	$0, %al
	callq	image_error
	jmp	.LBB72_12
.LBB72_63:                              # %if.end.128
	movl	$0, -36(%rbp)
.LBB72_64:                              # %for.cond.129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_66 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB72_93
# BB#65:                                # %for.body.132
                                        #   in Loop: Header=BB72_64 Depth=1
	movl	$0, -32(%rbp)
.LBB72_66:                              # %for.cond.133
                                        #   Parent Loop BB72_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB72_91
# BB#67:                                # %for.body.136
                                        #   in Loop: Header=BB72_66 Depth=2
	cmpl	$1, -60(%rbp)
	jne	.LBB72_72
# BB#68:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB72_66 Depth=2
	testb	$1, -25(%rbp)
	je	.LBB72_72
# BB#69:                                # %if.then.143
                                        #   in Loop: Header=BB72_66 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -528(%rbp)
	movl	%edx, -524(%rbp)
	movl	%edx, -520(%rbp)
	cmpl	$255, -48(%rbp)
	jle	.LBB72_71
# BB#70:                                # %if.then.148
                                        #   in Loop: Header=BB72_66 Depth=2
	movl	-520(%rbp), %eax
	shll	$8, %eax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -528(%rbp)
	movl	%eax, -524(%rbp)
	movl	%eax, -520(%rbp)
.LBB72_71:                              # %if.end.152
                                        #   in Loop: Header=BB72_66 Depth=2
	jmp	.LBB72_85
.LBB72_72:                              # %if.else.153
                                        #   in Loop: Header=BB72_66 Depth=2
	cmpl	$1, -60(%rbp)
	jne	.LBB72_74
# BB#73:                                # %if.then.156
                                        #   in Loop: Header=BB72_66 Depth=2
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	movl	%eax, -528(%rbp)
	movl	%eax, -524(%rbp)
	movl	%eax, -520(%rbp)
	jmp	.LBB72_84
.LBB72_74:                              # %if.else.158
                                        #   in Loop: Header=BB72_66 Depth=2
	testb	$1, -25(%rbp)
	je	.LBB72_82
# BB#75:                                # %if.then.160
                                        #   in Loop: Header=BB72_66 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -520(%rbp)
	cmpl	$255, -48(%rbp)
	jle	.LBB72_77
# BB#76:                                # %if.then.165
                                        #   in Loop: Header=BB72_66 Depth=2
	movl	-520(%rbp), %eax
	shll	$8, %eax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -520(%rbp)
.LBB72_77:                              # %if.end.170
                                        #   in Loop: Header=BB72_66 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -524(%rbp)
	cmpl	$255, -48(%rbp)
	jle	.LBB72_79
# BB#78:                                # %if.then.175
                                        #   in Loop: Header=BB72_66 Depth=2
	movl	-524(%rbp), %eax
	shll	$8, %eax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -524(%rbp)
.LBB72_79:                              # %if.end.180
                                        #   in Loop: Header=BB72_66 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -528(%rbp)
	cmpl	$255, -48(%rbp)
	jle	.LBB72_81
# BB#80:                                # %if.then.185
                                        #   in Loop: Header=BB72_66 Depth=2
	movl	-528(%rbp), %eax
	shll	$8, %eax
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movzbl	(%rcx), %esi
	addl	%esi, %eax
	movl	%eax, -528(%rbp)
.LBB72_81:                              # %if.end.190
                                        #   in Loop: Header=BB72_66 Depth=2
	jmp	.LBB72_83
.LBB72_82:                              # %if.else.191
                                        #   in Loop: Header=BB72_66 Depth=2
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	leaq	-88(%rbp), %rdi
	movl	%eax, -520(%rbp)
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	leaq	-88(%rbp), %rdi
	movl	%eax, -524(%rbp)
	movq	-80(%rbp), %rsi
	callq	pbm_scan_number
	movl	%eax, -528(%rbp)
.LBB72_83:                              # %if.end.195
                                        #   in Loop: Header=BB72_66 Depth=2
	jmp	.LBB72_84
.LBB72_84:                              # %if.end.196
                                        #   in Loop: Header=BB72_66 Depth=2
	jmp	.LBB72_85
.LBB72_85:                              # %if.end.197
                                        #   in Loop: Header=BB72_66 Depth=2
	cmpl	$0, -520(%rbp)
	jl	.LBB72_88
# BB#86:                                # %lor.lhs.false.200
                                        #   in Loop: Header=BB72_66 Depth=2
	cmpl	$0, -524(%rbp)
	jl	.LBB72_88
# BB#87:                                # %lor.lhs.false.203
                                        #   in Loop: Header=BB72_66 Depth=2
	cmpl	$0, -528(%rbp)
	jge	.LBB72_89
.LBB72_88:                              # %if.then.206
	movq	-96(%rbp), %rdi
	callq	x_destroy_x_image
	movabsq	$.L.str.33, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
	jmp	.LBB72_12
.LBB72_89:                              # %if.end.208
                                        #   in Loop: Header=BB72_66 Depth=2
	movsd	.LCPI72_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-520(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -520(%rbp)
	cvtsi2sdl	-524(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -524(%rbp)
	cvtsi2sdl	-528(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-48(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -528(%rbp)
	movq	-96(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	-96(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %r8
	movl	-520(%rbp), %eax
	movl	-524(%rbp), %r9d
	movl	-528(%rbp), %r10d
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%esi, -644(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -648(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	callq	lookup_rgb_color
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movl	-644(%rbp), %esi        # 4-byte Reload
	movl	-648(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movq	-656(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, -660(%rbp)        # 4-byte Spill
# BB#90:                                # %for.inc.227
                                        #   in Loop: Header=BB72_66 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB72_66
.LBB72_91:                              # %for.end.229
                                        #   in Loop: Header=BB72_64 Depth=1
	jmp	.LBB72_92
.LBB72_92:                              # %for.inc.230
                                        #   in Loop: Header=BB72_64 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB72_64
.LBB72_93:                              # %for.end.232
	jmp	.LBB72_94
.LBB72_94:                              # %if.end.233
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	colors_in_color_table
	movq	-24(%rbp), %rdi
	movq	%rax, 48(%rdi)
	callq	free_color_table
	movl	$13, %edi
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 92(%rax)
	movl	-44(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB72_99
# BB#95:                                # %if.then.243
	movq	-24(%rbp), %rax
	movb	88(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB72_97
# BB#96:                                # %cond.true.248
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB72_98
.LBB72_97:                              # %cond.false.250
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	image_background
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB72_98:                              # %cond.end.252
.LBB72_99:                              # %if.end.254
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	image_put_x_image
	movq	-72(%rbp), %rdi
	callq	xfree
	movb	$1, -1(%rbp)
.LBB72_100:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$704, %rsp              # imm = 0x2C0
	popq	%rbp
	retq
.Lfunc_end72:
	.size	pbm_load, .Lfunc_end72-pbm_load
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI72_0:
	.quad	.LBB72_14
	.quad	.LBB72_15
	.quad	.LBB72_16
	.quad	.LBB72_17
	.quad	.LBB72_18
	.quad	.LBB72_19

	.text
	.align	16, 0x90
	.type	x_clear_image,@function
x_clear_image:                          # @x_clear_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
.Ltmp221:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp222:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	block_input
	movl	$7, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image_1
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	x_clear_image, .Lfunc_end73-x_clear_image
	.cfi_endproc

	.align	16, 0x90
	.type	parse_image_spec,@function
parse_image_spec:                       # @parse_image_spec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp223:
	.cfi_def_cfa_offset 16
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp225:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	IMAGEP
	testb	$1, %al
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_2:                               # %if.end
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB74_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_9 Depth 2
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_73
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB74_6
# BB#5:                                 # %if.then.10
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_6:                               # %if.end.11
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB74_8
# BB#7:                                 # %if.then.16
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_8:                               # %if.end.17
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB74_9:                               # %for.cond
                                        #   Parent Loop BB74_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB74_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB74_9 Depth=2
	movslq	-44(%rbp), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB74_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_14
.LBB74_12:                              # %if.end.31
                                        #   in Loop: Header=BB74_9 Depth=2
	jmp	.LBB74_13
.LBB74_13:                              # %for.inc
                                        #   in Loop: Header=BB74_9 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_9
.LBB74_14:                              # %for.end
                                        #   in Loop: Header=BB74_3 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB74_16
# BB#15:                                # %if.then.34
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_3
.LBB74_16:                              # %if.end.35
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	movslq	-44(%rbp), %rcx
	shlq	$5, %rcx
	addq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movslq	-44(%rbp), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	cmpl	$1, 16(%rax)
	jle	.LBB74_18
# BB#17:                                # %if.then.43
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_18:                              # %if.end.44
                                        #   in Loop: Header=BB74_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rax
	movl	16(%rcx,%rax), %edx
	incl	%edx
	movl	%edx, 16(%rcx,%rax)
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$5, %rax
	movl	8(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$11, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	ja	.LBB74_68
# BB#82:                                # %if.end.44
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI74_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB74_19:                              # %sw.bb
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB74_21
# BB#20:                                # %if.then.53
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_21:                              # %if.end.54
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_22:                              # %sw.bb.55
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB74_25
# BB#23:                                # %land.lhs.true
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_25
# BB#24:                                # %if.then.60
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_25:                              # %if.end.61
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_26:                              # %sw.bb.62
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB74_28
# BB#27:                                # %if.then.67
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_28:                              # %if.end.68
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_29:                              # %sw.bb.69
                                        #   in Loop: Header=BB74_3 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB74_31
# BB#30:                                # %if.then.71
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_31:                              # %if.end.72
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_32:                              # %sw.bb.73
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB74_33
	jmp	.LBB74_34
.LBB74_33:                              # %if.then.75
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_34:                              # %if.end.76
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_38
# BB#35:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB74_36
	jmp	.LBB74_38
.LBB74_36:                              # %land.lhs.true.86
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-72(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB74_37
	jmp	.LBB74_38
.LBB74_37:                              # %if.then.92
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_38:                              # %if.end.93
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_39:                              # %sw.bb.94
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB74_42
# BB#40:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB74_3 Depth=1
	movl	$251, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_42
# BB#41:                                # %if.then.103
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_42:                              # %if.else
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$100, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB74_43
	jmp	.LBB74_44
.LBB74_43:                              # %if.then.105
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_44:                              # %if.end.106
	jmp	.LBB74_45
.LBB74_45:                              # %if.end.107
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_46:                              # %sw.bb.108
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_48
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB74_49
.LBB74_48:                              # %if.then.116
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_49:                              # %if.end.117
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_50:                              # %sw.bb.118
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_51:                              # %sw.bb.119
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	indirect_function
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Ffunctionp
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_53
# BB#52:                                # %if.then.125
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_53:                              # %if.end.126
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_54:                              # %sw.bb.127
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB74_56
# BB#55:                                # %if.then.129
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_56:                              # %if.end.130
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_57:                              # %sw.bb.131
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB74_62
# BB#58:                                # %land.lhs.true.137
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB74_60
	jmp	.LBB74_59
.LBB74_59:                              # %cond.true
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-72(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB74_61
	jmp	.LBB74_62
.LBB74_60:                              # %cond.false
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB74_62
.LBB74_61:                              # %land.lhs.true.144
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB74_63
.LBB74_62:                              # %if.then.148
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_63:                              # %if.end.149
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_64:                              # %sw.bb.150
                                        #   in Loop: Header=BB74_3 Depth=1
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_67
# BB#65:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB74_3 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_67
# BB#66:                                # %if.then.158
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_67:                              # %if.end.159
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_69
.LBB74_68:                              # %sw.default
	callq	emacs_abort
.LBB74_69:                              # %sw.epilog
                                        #   in Loop: Header=BB74_3 Depth=1
	movl	$131, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_72
# BB#70:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB74_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB74_72
# BB#71:                                # %if.then.166
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_72:                              # %if.end.167
                                        #   in Loop: Header=BB74_3 Depth=1
	jmp	.LBB74_3
.LBB74_73:                              # %while.end
	movl	$0, -44(%rbp)
.LBB74_74:                              # %for.cond.168
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB74_80
# BB#75:                                # %for.body.171
                                        #   in Loop: Header=BB74_74 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	testb	$1, 12(%rax)
	je	.LBB74_78
# BB#76:                                # %land.lhs.true.175
                                        #   in Loop: Header=BB74_74 Depth=1
	movslq	-44(%rbp), %rax
	shlq	$5, %rax
	addq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB74_78
# BB#77:                                # %if.then.181
	movb	$0, -1(%rbp)
	jmp	.LBB74_81
.LBB74_78:                              # %if.end.182
                                        #   in Loop: Header=BB74_74 Depth=1
	jmp	.LBB74_79
.LBB74_79:                              # %for.inc.183
                                        #   in Loop: Header=BB74_74 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB74_74
.LBB74_80:                              # %for.end.185
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
.LBB74_81:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	parse_image_spec, .Lfunc_end74-parse_image_spec
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI74_0:
	.quad	.LBB74_50
	.quad	.LBB74_19
	.quad	.LBB74_22
	.quad	.LBB74_26
	.quad	.LBB74_29
	.quad	.LBB74_32
	.quad	.LBB74_46
	.quad	.LBB74_39
	.quad	.LBB74_57
	.quad	.LBB74_51
	.quad	.LBB74_54
	.quad	.LBB74_64

	.text
	.align	16, 0x90
	.type	slurp_file,@function
slurp_file:                             # @slurp_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movabsq	$.L.str.34, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	fdopen
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB75_9
# BB#1:                                 # %if.then
	callq	SPECPDL_INDEX
	movabsq	$fclose_unwind, %rdi
	movq	%rax, -184(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-24(%rbp), %rdi
	callq	fileno
	leaq	-176(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB75_8
# BB#2:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-128(%rbp), %rcx
	jg	.LBB75_8
# BB#3:                                 # %land.lhs.true.5
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -128(%rbp)
	jae	.LBB75_8
# BB#4:                                 # %if.then.8
	movq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	fread
	cmpq	-192(%rbp), %rax
	jne	.LBB75_6
# BB#5:                                 # %if.then.14
	movq	-192(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB75_7
.LBB75_6:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	xfree
	movq	$0, -32(%rbp)
.LBB75_7:                               # %if.end
	jmp	.LBB75_8
.LBB75_8:                               # %if.end.15
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB75_9:                               # %if.end.18
	movq	-32(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	slurp_file, .Lfunc_end75-slurp_file
	.cfi_endproc

	.align	16, 0x90
	.type	pbm_scan_number,@function
pbm_scan_number:                        # @pbm_scan_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$-1, -24(%rbp)
.LBB76_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pbm_next_char
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -25(%rbp)          # 1-byte Spill
	je	.LBB76_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB76_1 Depth=1
	movl	-20(%rbp), %edi
	callq	c_isspace
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB76_3:                               # %land.end
                                        #   in Loop: Header=BB76_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB76_4
	jmp	.LBB76_5
.LBB76_4:                               # %while.body
                                        #   in Loop: Header=BB76_1 Depth=1
	jmp	.LBB76_1
.LBB76_5:                               # %while.end
	movl	-20(%rbp), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB76_6
	jmp	.LBB76_12
.LBB76_6:                               # %if.then
	movl	-20(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -24(%rbp)
.LBB76_7:                               # %while.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pbm_next_char
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -26(%rbp)          # 1-byte Spill
	je	.LBB76_9
# BB#8:                                 # %land.rhs.6
                                        #   in Loop: Header=BB76_7 Depth=1
	movl	-20(%rbp), %edi
	callq	c_isdigit
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB76_9:                               # %land.end.8
                                        #   in Loop: Header=BB76_7 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB76_10
	jmp	.LBB76_11
.LBB76_10:                              # %while.body.9
                                        #   in Loop: Header=BB76_7 Depth=1
	imull	$10, -24(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB76_7
.LBB76_11:                              # %while.end.11
	jmp	.LBB76_12
.LBB76_12:                              # %if.end
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	pbm_scan_number, .Lfunc_end76-pbm_scan_number
	.cfi_endproc

	.align	16, 0x90
	.type	check_image_size,@function
check_image_size:                       # @check_image_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB77_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jg	.LBB77_3
.LBB77_2:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB77_15
.LBB77_3:                               # %if.end
	movq	globals+1376, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB77_7
# BB#4:                                 # %if.then.5
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	globals+1376, %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB77_6
# BB#5:                                 # %land.rhs
	movslq	-24(%rbp), %rax
	movq	globals+1376, %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setle	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB77_6:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB77_15
.LBB77_7:                               # %if.else
	movq	globals+1376, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB77_14
# BB#8:                                 # %if.then.17
	cmpq	$0, -16(%rbp)
	je	.LBB77_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB77_11
.LBB77_10:                              # %if.else.21
	movl	$1024, -32(%rbp)        # imm = 0x400
	movl	$1024, -28(%rbp)        # imm = 0x400
.LBB77_11:                              # %if.end.22
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	globals+1376, %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	xorl	%eax, %eax
	movb	%al, %cl
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jb	.LBB77_13
# BB#12:                                # %land.rhs.27
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	globals+1376, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	setae	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB77_13:                              # %land.end.34
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB77_15
.LBB77_14:                              # %if.else.35
	movb	$1, -1(%rbp)
.LBB77_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	check_image_size, .Lfunc_end77-check_image_size
	.cfi_endproc

	.align	16, 0x90
	.type	image_size_error,@function
image_size_error:                       # @image_size_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	image_error
	popq	%rbp
	retq
.Lfunc_end78:
	.size	image_size_error, .Lfunc_end78-image_size_error
	.cfi_endproc

	.align	16, 0x90
	.type	pbm_next_char,@function
pbm_next_char:                          # @pbm_next_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -20(%rbp)
.LBB79_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB79_5 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jae	.LBB79_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -20(%rbp)
	cmpl	$35, -20(%rbp)
	sete	%dil
	movb	%dil, -21(%rbp)         # 1-byte Spill
.LBB79_3:                               # %land.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB79_4
	jmp	.LBB79_12
.LBB79_4:                               # %while.body
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_5
.LBB79_5:                               # %while.cond.3
                                        #   Parent Loop BB79_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -22(%rbp)          # 1-byte Spill
	jae	.LBB79_9
# BB#6:                                 # %land.rhs.6
                                        #   in Loop: Header=BB79_5 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rdx)
	movzbl	(%rsi), %eax
	movl	%eax, -20(%rbp)
	cmpl	$10, -20(%rbp)
	movb	%cl, -23(%rbp)          # 1-byte Spill
	je	.LBB79_8
# BB#7:                                 # %land.rhs.11
                                        #   in Loop: Header=BB79_5 Depth=2
	cmpl	$13, -20(%rbp)
	setne	%al
	movb	%al, -23(%rbp)          # 1-byte Spill
.LBB79_8:                               # %land.end.14
                                        #   in Loop: Header=BB79_5 Depth=2
	movb	-23(%rbp), %al          # 1-byte Reload
	movb	%al, -22(%rbp)          # 1-byte Spill
.LBB79_9:                               # %land.end.15
                                        #   in Loop: Header=BB79_5 Depth=2
	movb	-22(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB79_10
	jmp	.LBB79_11
.LBB79_10:                              # %while.body.16
                                        #   in Loop: Header=BB79_5 Depth=2
	jmp	.LBB79_5
.LBB79_11:                              # %while.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	$-1, -20(%rbp)
	jmp	.LBB79_1
.LBB79_12:                              # %while.end.17
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end79:
	.size	pbm_next_char, .Lfunc_end79-pbm_next_char
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_image_p,@function
xbm_image_p:                            # @xbm_image_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$512, %rsp              # imm = 0x200
	movl	$1062, %eax             # imm = 0x426
	leaq	-432(%rbp), %rcx
	movabsq	$xbm_format, %rdx
	movl	$416, %esi              # imm = 0x1A0
	movl	%esi, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movl	-476(%rbp), %eax        # 4-byte Reload
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$13, %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	testb	$1, %al
	jne	.LBB80_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_2:                               # %if.end
	cmpl	$0, -384(%rbp)
	je	.LBB80_8
# BB#3:                                 # %if.then.2
	cmpl	$0, -352(%rbp)
	jne	.LBB80_6
# BB#4:                                 # %lor.lhs.false
	cmpl	$0, -320(%rbp)
	jne	.LBB80_6
# BB#5:                                 # %lor.lhs.false.9
	cmpl	$0, -288(%rbp)
	je	.LBB80_7
.LBB80_6:                               # %if.then.13
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_7:                               # %if.end.14
	jmp	.LBB80_50
.LBB80_8:                               # %if.else
	cmpl	$0, -288(%rbp)
	je	.LBB80_15
# BB#9:                                 # %land.lhs.true
	movq	-280(%rbp), %rdi
	callq	xbm_file_p
	testb	$1, %al
	jne	.LBB80_10
	jmp	.LBB80_15
.LBB80_10:                              # %if.then.20
	cmpl	$0, -352(%rbp)
	jne	.LBB80_13
# BB#11:                                # %lor.lhs.false.24
	cmpl	$0, -320(%rbp)
	jne	.LBB80_13
# BB#12:                                # %lor.lhs.false.28
	cmpl	$0, -384(%rbp)
	je	.LBB80_14
.LBB80_13:                              # %if.then.32
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_14:                              # %if.end.33
	jmp	.LBB80_49
.LBB80_15:                              # %if.else.34
	cmpl	$0, -352(%rbp)
	je	.LBB80_18
# BB#16:                                # %lor.lhs.false.38
	cmpl	$0, -320(%rbp)
	je	.LBB80_18
# BB#17:                                # %lor.lhs.false.42
	cmpl	$0, -288(%rbp)
	jne	.LBB80_19
.LBB80_18:                              # %if.then.46
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_19:                              # %if.end.47
	movq	-280(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-344(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -444(%rbp)
	movq	-312(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -448(%rbp)
	movq	-440(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB80_20
	jmp	.LBB80_37
.LBB80_20:                              # %if.then.57
	movq	-440(%rbp), %rdi
	callq	ASIZE
	movslq	-448(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB80_22
# BB#21:                                # %if.then.61
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_22:                              # %if.end.62
	movq	$0, -456(%rbp)
.LBB80_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-456(%rbp), %rax
	movslq	-448(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB80_36
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB80_23 Depth=1
	movq	-440(%rbp), %rdi
	movq	-456(%rbp), %rsi
	callq	AREF
	movq	%rax, -464(%rbp)
	movq	-464(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB80_25
	jmp	.LBB80_28
.LBB80_25:                              # %if.then.68
                                        #   in Loop: Header=BB80_23 Depth=1
	movq	-464(%rbp), %rdi
	callq	SCHARS
	movl	$8, %ecx
	movl	-444(%rbp), %edx
	addl	$8, %edx
	subl	$1, %edx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movslq	%eax, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	cmpq	%rdi, %rsi
	jge	.LBB80_27
# BB#26:                                # %if.then.73
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_27:                              # %if.end.74
                                        #   in Loop: Header=BB80_23 Depth=1
	jmp	.LBB80_34
.LBB80_28:                              # %if.else.75
                                        #   in Loop: Header=BB80_23 Depth=1
	movq	-464(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB80_29
	jmp	.LBB80_32
.LBB80_29:                              # %if.then.77
                                        #   in Loop: Header=BB80_23 Depth=1
	movq	-464(%rbp), %rdi
	callq	bool_vector_size
	movslq	-444(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB80_31
# BB#30:                                # %if.then.82
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_31:                              # %if.end.83
                                        #   in Loop: Header=BB80_23 Depth=1
	jmp	.LBB80_33
.LBB80_32:                              # %if.else.84
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_33:                              # %if.end.85
                                        #   in Loop: Header=BB80_23 Depth=1
	jmp	.LBB80_34
.LBB80_34:                              # %if.end.86
                                        #   in Loop: Header=BB80_23 Depth=1
	jmp	.LBB80_35
.LBB80_35:                              # %for.inc
                                        #   in Loop: Header=BB80_23 Depth=1
	movq	-456(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)
	jmp	.LBB80_23
.LBB80_36:                              # %for.end
	jmp	.LBB80_48
.LBB80_37:                              # %if.else.87
	movq	-440(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB80_38
	jmp	.LBB80_41
.LBB80_38:                              # %if.then.89
	movq	-440(%rbp), %rdi
	callq	SCHARS
	movl	$8, %ecx
	movl	-444(%rbp), %edx
	addl	$8, %edx
	subl	$1, %edx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	imull	-448(%rbp), %eax
	movslq	%eax, %rdi
	movq	-504(%rbp), %rsi        # 8-byte Reload
	cmpq	%rdi, %rsi
	jge	.LBB80_40
# BB#39:                                # %if.then.97
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_40:                              # %if.end.98
	jmp	.LBB80_47
.LBB80_41:                              # %if.else.99
	movq	-440(%rbp), %rdi
	callq	BOOL_VECTOR_P
	testb	$1, %al
	jne	.LBB80_42
	jmp	.LBB80_45
.LBB80_42:                              # %if.then.101
	movq	-440(%rbp), %rdi
	callq	bool_vector_size
	movslq	-448(%rbp), %rdi
	cqto
	idivq	%rdi
	movslq	-444(%rbp), %rdi
	cmpq	%rdi, %rax
	jge	.LBB80_44
# BB#43:                                # %if.then.108
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_44:                              # %if.end.109
	jmp	.LBB80_46
.LBB80_45:                              # %if.else.110
	movb	$0, -1(%rbp)
	jmp	.LBB80_51
.LBB80_46:                              # %if.end.111
	jmp	.LBB80_47
.LBB80_47:                              # %if.end.112
	jmp	.LBB80_48
.LBB80_48:                              # %if.end.113
	jmp	.LBB80_49
.LBB80_49:                              # %if.end.114
	jmp	.LBB80_50
.LBB80_50:                              # %if.end.115
	movb	$1, -1(%rbp)
.LBB80_51:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end80:
	.size	xbm_image_p, .Lfunc_end80-xbm_image_p
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_load,@function
xbm_load:                               # @xbm_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              # imm = 0x2E0
	movl	$41, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, -25(%rbp)
	movq	-24(%rbp), %rsi
	movq	120(%rsi), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_1
	jmp	.LBB81_6
.LBB81_1:                               # %if.then
	leaq	-44(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	x_find_image_fd
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_3
# BB#2:                                 # %if.then.5
	movabsq	$.L.str.27, %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB81_49
.LBB81_3:                               # %if.end
	leaq	-64(%rbp), %rsi
	movl	-44(%rbp), %edi
	callq	slurp_file
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB81_5
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.45, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB81_49
.LBB81_5:                               # %if.end.8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-72(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, %rcx
	callq	xbm_load_image
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-72(%rbp), %rdi
	callq	xfree
	jmp	.LBB81_48
.LBB81_6:                               # %if.else
	movl	$29, %edi
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -520(%rbp)
	movb	$0, -521(%rbp)
	movb	$0, -538(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rdi
	callq	xbm_file_p
	movl	$1062, %edi             # imm = 0x426
	leaq	-496(%rbp), %rdx
	movabsq	$xbm_format, %rsi
	movl	$416, %ecx              # imm = 0x1A0
	movl	%ecx, %r8d
	andb	$1, %al
	movb	%al, -538(%rbp)
	movq	%rdx, %r9
	movl	%edi, -612(%rbp)        # 4-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	120(%rdx), %rdi
	movl	-612(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	callq	builtin_lisp_symbol
	movl	$13, %edx
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	-624(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	andb	$1, %al
	movb	%al, -537(%rbp)
	testb	$1, -538(%rbp)
	jne	.LBB81_10
# BB#7:                                 # %if.then.19
	movq	-408(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 92(%rax)
	movq	-376(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 96(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	92(%rax), %esi
	movq	-24(%rbp), %rax
	movl	96(%rax), %edx
	callq	check_image_size
	testb	$1, %al
	jne	.LBB81_9
# BB#8:                                 # %if.then.27
	callq	image_size_error
	movb	$0, -1(%rbp)
	jmp	.LBB81_49
.LBB81_9:                               # %if.end.28
	jmp	.LBB81_10
.LBB81_10:                              # %if.end.29
	cmpl	$0, -320(%rbp)
	je	.LBB81_13
# BB#11:                                # %land.lhs.true
	movq	-312(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_12
	jmp	.LBB81_13
.LBB81_12:                              # %if.then.36
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-312(%rbp), %rdx
	movq	-512(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -512(%rbp)
	movb	$1, -521(%rbp)
.LBB81_13:                              # %if.end.40
	cmpl	$0, -288(%rbp)
	je	.LBB81_16
# BB#14:                                # %land.lhs.true.44
	movq	-280(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_15
	jmp	.LBB81_16
.LBB81_15:                              # %if.then.49
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-280(%rbp), %rdx
	movq	-520(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -520(%rbp)
	movb	$1, -521(%rbp)
.LBB81_16:                              # %if.end.53
	testb	$1, -538(%rbp)
	je	.LBB81_18
# BB#17:                                # %if.then.55
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-504(%rbp), %rax
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-504(%rbp), %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-504(%rbp), %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-664(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-656(%rbp), %rdx        # 8-byte Reload
	movq	-672(%rbp), %rcx        # 8-byte Reload
	callq	xbm_load_image
	andb	$1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB81_47
.LBB81_18:                              # %if.else.62
	movq	$16384, -552(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -560(%rbp)
	movb	$0, -561(%rbp)
	movq	-504(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB81_19
	jmp	.LBB81_32
.LBB81_19:                              # %if.then.65
	movl	$8, %eax
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %edx
	addl	$8, %edx
	subl	$1, %edx
	movl	%eax, -676(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-676(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -580(%rbp)
# BB#20:                                # %do.body
	movq	-24(%rbp), %rax
	movslq	96(%rax), %rax
	movq	-552(%rbp), %rcx
	shrq	$0, %rcx
	movslq	-580(%rbp), %rdx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%esi, %esi
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movl	%esi, %edx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	divq	%rcx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB81_22
# BB#21:                                # %if.then.74
	movslq	-580(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-552(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -552(%rbp)
	movslq	-580(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	96(%rcx), %rcx
	imulq	%rcx, %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -536(%rbp)
	jmp	.LBB81_23
.LBB81_22:                              # %if.else.85
	movq	-24(%rbp), %rax
	movslq	96(%rax), %rdi
	movslq	-580(%rbp), %rax
	shlq	$0, %rax
	movq	%rax, %rsi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -536(%rbp)
	movb	$1, -561(%rbp)
	movq	-536(%rbp), %rsi
	callq	record_unwind_protect_ptr
.LBB81_23:                              # %if.end.91
	jmp	.LBB81_24
.LBB81_24:                              # %do.end
	movq	-536(%rbp), %rax
	movq	%rax, -576(%rbp)
	movl	$0, -568(%rbp)
.LBB81_25:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-568(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB81_31
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB81_25 Depth=1
	movq	-504(%rbp), %rdi
	movslq	-568(%rbp), %rsi
	callq	AREF
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_27
	jmp	.LBB81_28
.LBB81_27:                              # %if.then.98
                                        #   in Loop: Header=BB81_25 Depth=1
	movq	-576(%rbp), %rdi
	movq	-592(%rbp), %rax
	movq	%rdi, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movslq	-580(%rbp), %rdx
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB81_29
.LBB81_28:                              # %if.else.101
                                        #   in Loop: Header=BB81_25 Depth=1
	movq	-576(%rbp), %rdi
	movq	-592(%rbp), %rax
	movq	%rdi, -712(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	bool_vector_data
	movslq	-580(%rbp), %rdx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
.LBB81_29:                              # %if.end.104
                                        #   in Loop: Header=BB81_25 Depth=1
	jmp	.LBB81_30
.LBB81_30:                              # %for.inc
                                        #   in Loop: Header=BB81_25 Depth=1
	movl	-568(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -568(%rbp)
	movl	-580(%rbp), %eax
	movq	-576(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -576(%rbp)
	jmp	.LBB81_25
.LBB81_31:                              # %for.end
	jmp	.LBB81_36
.LBB81_32:                              # %if.else.106
	movq	-504(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB81_33
	jmp	.LBB81_34
.LBB81_33:                              # %if.then.108
	movq	-504(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -536(%rbp)
	jmp	.LBB81_35
.LBB81_34:                              # %if.else.110
	movq	-504(%rbp), %rdi
	callq	bool_vector_data
	movq	%rax, -536(%rbp)
.LBB81_35:                              # %if.end.112
	jmp	.LBB81_36
.LBB81_36:                              # %if.end.113
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %esi
	movq	-24(%rbp), %rcx
	movl	96(%rcx), %edx
	callq	x_check_image_size
	testb	$1, %al
	jne	.LBB81_37
	jmp	.LBB81_38
.LBB81_37:                              # %if.then.117
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-536(%rbp), %rdx
	movq	-512(%rbp), %rcx
	movq	-520(%rbp), %r8
	movb	-521(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	Create_Pixmap_From_Bitmap_Data
	jmp	.LBB81_39
.LBB81_38:                              # %if.else.119
	movq	-24(%rbp), %rax
	movq	$0, 16(%rax)
.LBB81_39:                              # %if.end.120
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB81_41
# BB#40:                                # %if.then.123
	movb	$1, -25(%rbp)
	jmp	.LBB81_42
.LBB81_41:                              # %if.else.124
	movabsq	$.L.str.46, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_clear_image
.LBB81_42:                              # %if.end.126
	jmp	.LBB81_43
.LBB81_43:                              # %do.body.127
	testb	$1, -561(%rbp)
	je	.LBB81_45
# BB#44:                                # %if.then.129
	xorl	%edi, %edi
	movb	$0, -561(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB81_45:                              # %if.end.132
	jmp	.LBB81_46
.LBB81_46:                              # %do.end.133
	jmp	.LBB81_47
.LBB81_47:                              # %if.end.134
	jmp	.LBB81_48
.LBB81_48:                              # %if.end.135
	movb	-25(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB81_49:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	xbm_load, .Lfunc_end81-xbm_load
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_file_p,@function
xbm_file_p:                             # @xbm_file_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -17(%rbp)          # 1-byte Spill
	jne	.LBB82_1
	jmp	.LBB82_2
.LBB82_1:                               # %land.rhs
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %r8
	movl	$1, %edx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%r9, %rdx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movl	$1, (%rsp)
	callq	xbm_read_bitmap_data
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB82_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	xbm_file_p, .Lfunc_end82-xbm_file_p
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_read_bitmap_data,@function
xbm_read_bitmap_data:                   # @xbm_read_bitmap_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$8336, %rsp             # imm = 0x2090
	movb	16(%rbp), %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movb	$0, -8273(%rbp)
	movb	$0, -8274(%rbp)
	movq	-48(%rbp), %rcx
	movl	$-1, (%rcx)
	movq	-40(%rbp), %rcx
	movl	$-1, (%rcx)
	cmpq	$0, -56(%rbp)
	je	.LBB83_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB83_2:                               # %if.end
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
.LBB83_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$35, -8304(%rbp)
	jne	.LBB83_27
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	jne	.LBB83_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_8
.LBB83_7:                               # %if.else
	jmp	.LBB83_113
.LBB83_8:                               # %if.end.10
                                        #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_9
.LBB83_9:                               # %do.body
                                        #   in Loop: Header=BB83_3 Depth=1
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	je	.LBB83_11
# BB#10:                                # %if.then.12
	jmp	.LBB83_113
.LBB83_11:                              # %if.end.13
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#12:                                # %do.end
                                        #   in Loop: Header=BB83_3 Depth=1
	cmpl	$257, -8304(%rbp)       # imm = 0x101
	jne	.LBB83_22
# BB#13:                                # %if.then.17
                                        #   in Loop: Header=BB83_3 Depth=1
	movl	$95, %esi
	leaq	-8272(%rbp), %rdi
	callq	strrchr
	movq	%rax, -8312(%rbp)
	cmpq	$0, -8312(%rbp)
	je	.LBB83_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB83_3 Depth=1
	movq	-8312(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8328(%rbp)       # 8-byte Spill
	jmp	.LBB83_16
.LBB83_15:                              # %cond.false
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-8272(%rbp), %rax
	movq	%rax, -8328(%rbp)       # 8-byte Spill
.LBB83_16:                              # %cond.end
                                        #   in Loop: Header=BB83_3 Depth=1
	movq	-8328(%rbp), %rax       # 8-byte Reload
	movq	%rax, -8312(%rbp)
	movq	-8312(%rbp), %rdi
	movl	$.L.str.39, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_18
# BB#17:                                # %if.then.24
                                        #   in Loop: Header=BB83_3 Depth=1
	movl	-8300(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB83_21
.LBB83_18:                              # %if.else.25
                                        #   in Loop: Header=BB83_3 Depth=1
	movq	-8312(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_20
# BB#19:                                # %if.then.28
                                        #   in Loop: Header=BB83_3 Depth=1
	movl	-8300(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB83_20:                              # %if.end.29
                                        #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_21
.LBB83_21:                              # %if.end.30
                                        #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_22
.LBB83_22:                              # %if.end.31
                                        #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_23
.LBB83_23:                              # %do.body.32
                                        #   in Loop: Header=BB83_3 Depth=1
	cmpl	$257, -8304(%rbp)       # imm = 0x101
	je	.LBB83_25
# BB#24:                                # %if.then.34
	jmp	.LBB83_113
.LBB83_25:                              # %if.end.35
                                        #   in Loop: Header=BB83_3 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#26:                                # %do.end.38
                                        #   in Loop: Header=BB83_3 Depth=1
	jmp	.LBB83_3
.LBB83_27:                              # %while.end
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	callq	check_image_size
	testb	$1, %al
	jne	.LBB83_31
# BB#28:                                # %if.then.40
	testb	$1, -57(%rbp)
	jne	.LBB83_30
# BB#29:                                # %if.then.42
	callq	image_size_error
.LBB83_30:                              # %if.end.43
	jmp	.LBB83_113
.LBB83_31:                              # %if.else.44
	cmpq	$0, -56(%rbp)
	jne	.LBB83_33
# BB#32:                                # %if.then.46
	jmp	.LBB83_112
.LBB83_33:                              # %if.end.47
	jmp	.LBB83_34
.LBB83_34:                              # %if.end.48
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	jne	.LBB83_37
# BB#35:                                # %land.lhs.true.50
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_37
# BB#36:                                # %if.then.54
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_38
.LBB83_37:                              # %if.else.57
	jmp	.LBB83_113
.LBB83_38:                              # %if.end.58
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	jne	.LBB83_56
# BB#39:                                # %if.then.60
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_45
# BB#40:                                # %if.then.64
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	jne	.LBB83_43
# BB#41:                                # %land.lhs.true.68
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_43
# BB#42:                                # %if.then.72
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_44
.LBB83_43:                              # %if.else.75
	jmp	.LBB83_113
.LBB83_44:                              # %if.end.76
	jmp	.LBB83_55
.LBB83_45:                              # %if.else.77
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.44, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_50
# BB#46:                                # %if.then.81
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	$16, %r8d
	movl	%eax, -8304(%rbp)
	movb	$1, -8274(%rbp)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB83_49
# BB#47:                                # %land.lhs.true.85
	movl	$16, %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%eax, -8332(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8332(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$9, %edx
	jge	.LBB83_49
# BB#48:                                # %if.then.88
	movb	$1, -8273(%rbp)
.LBB83_49:                              # %if.end.89
	jmp	.LBB83_54
.LBB83_50:                              # %if.else.90
	leaq	-8272(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB83_52
# BB#51:                                # %if.then.94
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_53
.LBB83_52:                              # %if.else.97
	jmp	.LBB83_113
.LBB83_53:                              # %if.end.98
	jmp	.LBB83_54
.LBB83_54:                              # %if.end.99
	jmp	.LBB83_55
.LBB83_55:                              # %if.end.100
	jmp	.LBB83_57
.LBB83_56:                              # %if.else.101
	jmp	.LBB83_113
.LBB83_57:                              # %if.end.102
	jmp	.LBB83_58
.LBB83_58:                              # %do.body.103
	cmpl	$256, -8304(%rbp)       # imm = 0x100
	je	.LBB83_60
# BB#59:                                # %if.then.105
	jmp	.LBB83_113
.LBB83_60:                              # %if.end.106
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#61:                                # %do.end.109
	jmp	.LBB83_62
.LBB83_62:                              # %do.body.110
	cmpl	$91, -8304(%rbp)
	je	.LBB83_64
# BB#63:                                # %if.then.112
	jmp	.LBB83_113
.LBB83_64:                              # %if.end.113
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#65:                                # %do.end.116
	jmp	.LBB83_66
.LBB83_66:                              # %do.body.117
	cmpl	$93, -8304(%rbp)
	je	.LBB83_68
# BB#67:                                # %if.then.119
	jmp	.LBB83_113
.LBB83_68:                              # %if.end.120
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#69:                                # %do.end.123
	jmp	.LBB83_70
.LBB83_70:                              # %do.body.124
	cmpl	$61, -8304(%rbp)
	je	.LBB83_72
# BB#71:                                # %if.then.126
	jmp	.LBB83_113
.LBB83_72:                              # %if.end.127
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#73:                                # %do.end.130
	jmp	.LBB83_74
.LBB83_74:                              # %do.body.131
	cmpl	$123, -8304(%rbp)
	je	.LBB83_76
# BB#75:                                # %if.then.133
	jmp	.LBB83_113
.LBB83_76:                              # %if.end.134
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#77:                                # %do.end.137
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edx
	callq	x_check_image_size
	testb	$1, %al
	jne	.LBB83_81
# BB#78:                                # %if.then.139
	testb	$1, -57(%rbp)
	jne	.LBB83_80
# BB#79:                                # %if.then.141
	movabsq	$.L.str.13, %rdi
	movq	-40(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	image_error
.LBB83_80:                              # %if.end.145
	jmp	.LBB83_113
.LBB83_81:                              # %if.end.146
	movl	$8, %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	addl	$7, %edx
	movl	%eax, -8336(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-8336(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movb	-8273(%rbp), %dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	addl	%r8d, %eax
	movl	%eax, -8280(%rbp)
	movl	-8280(%rbp), %eax
	movq	-48(%rbp), %rcx
	imull	(%rcx), %eax
	movl	%eax, -8288(%rbp)
	movslq	-8288(%rbp), %rdi
	callq	xmalloc
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -8296(%rbp)
	testb	$1, -8274(%rbp)
	je	.LBB83_98
# BB#82:                                # %if.then.154
	movl	$0, -8284(%rbp)
.LBB83_83:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-8284(%rbp), %eax
	cmpl	-8288(%rbp), %eax
	jge	.LBB83_97
# BB#84:                                # %for.body
                                        #   in Loop: Header=BB83_83 Depth=1
	movl	-8300(%rbp), %eax
	movl	%eax, -8316(%rbp)
# BB#85:                                # %do.body.157
                                        #   in Loop: Header=BB83_83 Depth=1
	cmpl	$257, -8304(%rbp)       # imm = 0x101
	je	.LBB83_87
# BB#86:                                # %if.then.160
	jmp	.LBB83_113
.LBB83_87:                              # %if.end.161
                                        #   in Loop: Header=BB83_83 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#88:                                # %do.end.164
                                        #   in Loop: Header=BB83_83 Depth=1
	movl	-8316(%rbp), %eax
	movb	%al, %cl
	movq	-8296(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8296(%rbp)
	movb	%cl, (%rdx)
	testb	$1, -8273(%rbp)
	je	.LBB83_90
# BB#89:                                # %lor.lhs.false
                                        #   in Loop: Header=BB83_83 Depth=1
	movl	-8284(%rbp), %eax
	addl	$2, %eax
	cltd
	idivl	-8280(%rbp)
	cmpl	$0, %edx
	je	.LBB83_91
.LBB83_90:                              # %if.then.170
                                        #   in Loop: Header=BB83_83 Depth=1
	movl	-8300(%rbp), %eax
	sarl	$8, %eax
	movb	%al, %cl
	movq	-8296(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8296(%rbp)
	movb	%cl, (%rdx)
.LBB83_91:                              # %if.end.173
                                        #   in Loop: Header=BB83_83 Depth=1
	cmpl	$44, -8304(%rbp)
	je	.LBB83_93
# BB#92:                                # %lor.lhs.false.176
                                        #   in Loop: Header=BB83_83 Depth=1
	cmpl	$125, -8304(%rbp)
	jne	.LBB83_94
.LBB83_93:                              # %if.then.179
                                        #   in Loop: Header=BB83_83 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_95
.LBB83_94:                              # %if.else.182
	jmp	.LBB83_113
.LBB83_95:                              # %if.end.183
                                        #   in Loop: Header=BB83_83 Depth=1
	jmp	.LBB83_96
.LBB83_96:                              # %for.inc
                                        #   in Loop: Header=BB83_83 Depth=1
	movl	-8284(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -8284(%rbp)
	jmp	.LBB83_83
.LBB83_97:                              # %for.end
	jmp	.LBB83_111
.LBB83_98:                              # %if.else.185
	movl	$0, -8284(%rbp)
.LBB83_99:                              # %for.cond.186
                                        # =>This Inner Loop Header: Depth=1
	movl	-8284(%rbp), %eax
	cmpl	-8288(%rbp), %eax
	jge	.LBB83_110
# BB#100:                               # %for.body.189
                                        #   in Loop: Header=BB83_99 Depth=1
	movl	-8300(%rbp), %eax
	movl	%eax, -8320(%rbp)
# BB#101:                               # %do.body.191
                                        #   in Loop: Header=BB83_99 Depth=1
	cmpl	$257, -8304(%rbp)       # imm = 0x101
	je	.LBB83_103
# BB#102:                               # %if.then.194
	jmp	.LBB83_113
.LBB83_103:                             # %if.end.195
                                        #   in Loop: Header=BB83_99 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
# BB#104:                               # %do.end.198
                                        #   in Loop: Header=BB83_99 Depth=1
	movl	-8320(%rbp), %eax
	movb	%al, %cl
	movq	-8296(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8296(%rbp)
	movb	%cl, (%rdx)
	cmpl	$44, -8304(%rbp)
	je	.LBB83_106
# BB#105:                               # %lor.lhs.false.203
                                        #   in Loop: Header=BB83_99 Depth=1
	cmpl	$125, -8304(%rbp)
	jne	.LBB83_107
.LBB83_106:                             # %if.then.206
                                        #   in Loop: Header=BB83_99 Depth=1
	leaq	-72(%rbp), %rdi
	leaq	-8300(%rbp), %rcx
	leaq	-8272(%rbp), %rdx
	movq	-32(%rbp), %rsi
	callq	xbm_scan
	movl	%eax, -8304(%rbp)
	jmp	.LBB83_108
.LBB83_107:                             # %if.else.209
	jmp	.LBB83_113
.LBB83_108:                             # %if.end.210
                                        #   in Loop: Header=BB83_99 Depth=1
	jmp	.LBB83_109
.LBB83_109:                             # %for.inc.211
                                        #   in Loop: Header=BB83_99 Depth=1
	movl	-8284(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8284(%rbp)
	jmp	.LBB83_99
.LBB83_110:                             # %for.end.212
	jmp	.LBB83_111
.LBB83_111:                             # %if.end.213
	jmp	.LBB83_112
.LBB83_112:                             # %success
	movb	$1, -1(%rbp)
	jmp	.LBB83_117
.LBB83_113:                             # %failure
	cmpq	$0, -56(%rbp)
	je	.LBB83_116
# BB#114:                               # %land.lhs.true.215
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB83_116
# BB#115:                               # %if.then.217
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	xfree
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
.LBB83_116:                             # %if.end.218
	movb	$0, -1(%rbp)
.LBB83_117:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$8336, %rsp             # imm = 0x2090
	popq	%rbp
	retq
.Lfunc_end83:
	.size	xbm_read_bitmap_data, .Lfunc_end83-xbm_read_bitmap_data
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_scan,@function
xbm_scan:                               # @xbm_scan
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.LBB84_1:                               # %loop
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB84_2 Depth 2
                                        #     Child Loop BB84_61 Depth 2
	jmp	.LBB84_2
.LBB84_2:                               # %while.cond
                                        #   Parent Loop BB84_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jae	.LBB84_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB84_2 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	c_isspace
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB84_4:                               # %land.end
                                        #   in Loop: Header=BB84_2 Depth=2
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_5
	jmp	.LBB84_6
.LBB84_5:                               # %while.body
                                        #   in Loop: Header=BB84_2 Depth=2
	jmp	.LBB84_2
.LBB84_6:                               # %while.end
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jb	.LBB84_8
# BB#7:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB84_73
.LBB84_8:                               # %if.else
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	-36(%rbp), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB84_9
	jmp	.LBB84_46
.LBB84_9:                               # %if.then.5
	movl	$0, -40(%rbp)
	cmpl	$48, -36(%rbp)
	jne	.LBB84_37
# BB#10:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB84_37
# BB#11:                                # %if.then.10
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	cmpl	$120, -36(%rbp)
	je	.LBB84_13
# BB#12:                                # %lor.lhs.false
	cmpl	$88, -36(%rbp)
	jne	.LBB84_28
.LBB84_13:                              # %if.then.17
	jmp	.LBB84_14
.LBB84_14:                              # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB84_27
# BB#15:                                # %while.body.21
                                        #   in Loop: Header=BB84_14 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB84_16
	jmp	.LBB84_17
.LBB84_16:                              # %if.then.25
                                        #   in Loop: Header=BB84_14 Depth=1
	movl	-36(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB84_26
.LBB84_17:                              # %if.else.26
                                        #   in Loop: Header=BB84_14 Depth=1
	cmpl	$97, -36(%rbp)
	jb	.LBB84_20
# BB#18:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB84_14 Depth=1
	cmpl	$102, -36(%rbp)
	ja	.LBB84_20
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB84_14 Depth=1
	movl	-36(%rbp), %eax
	subl	$97, %eax
	addl	$10, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB84_25
.LBB84_20:                              # %if.else.34
                                        #   in Loop: Header=BB84_14 Depth=1
	cmpl	$65, -36(%rbp)
	jb	.LBB84_23
# BB#21:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB84_14 Depth=1
	cmpl	$70, -36(%rbp)
	ja	.LBB84_23
# BB#22:                                # %if.then.40
                                        #   in Loop: Header=BB84_14 Depth=1
	movl	-36(%rbp), %eax
	subl	$65, %eax
	addl	$10, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB84_24
.LBB84_23:                              # %if.else.43
	jmp	.LBB84_27
.LBB84_24:                              # %if.end
                                        #   in Loop: Header=BB84_14 Depth=1
	jmp	.LBB84_25
.LBB84_25:                              # %if.end.44
                                        #   in Loop: Header=BB84_14 Depth=1
	jmp	.LBB84_26
.LBB84_26:                              # %if.end.45
                                        #   in Loop: Header=BB84_14 Depth=1
	movl	-40(%rbp), %eax
	shll	$4, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB84_14
.LBB84_27:                              # %while.end.47
	jmp	.LBB84_36
.LBB84_28:                              # %if.else.48
	movl	-36(%rbp), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB84_29
	jmp	.LBB84_35
.LBB84_29:                              # %if.then.50
	movl	-36(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -40(%rbp)
.LBB84_30:                              # %while.cond.52
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -46(%rbp)          # 1-byte Spill
	jae	.LBB84_32
# BB#31:                                # %land.rhs.55
                                        #   in Loop: Header=BB84_30 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	c_isdigit
	movb	%al, -46(%rbp)          # 1-byte Spill
.LBB84_32:                              # %land.end.60
                                        #   in Loop: Header=BB84_30 Depth=1
	movb	-46(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_33
	jmp	.LBB84_34
.LBB84_33:                              # %while.body.61
                                        #   in Loop: Header=BB84_30 Depth=1
	movl	-40(%rbp), %eax
	shll	$3, %eax
	addl	-36(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB84_30
.LBB84_34:                              # %while.end.65
	jmp	.LBB84_35
.LBB84_35:                              # %if.end.66
	jmp	.LBB84_36
.LBB84_36:                              # %if.end.67
	jmp	.LBB84_43
.LBB84_37:                              # %if.else.68
	movl	-36(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -40(%rbp)
.LBB84_38:                              # %while.cond.70
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -47(%rbp)          # 1-byte Spill
	jae	.LBB84_40
# BB#39:                                # %land.rhs.73
                                        #   in Loop: Header=BB84_38 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	c_isdigit
	movb	%al, -47(%rbp)          # 1-byte Spill
.LBB84_40:                              # %land.end.78
                                        #   in Loop: Header=BB84_38 Depth=1
	movb	-47(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_41
	jmp	.LBB84_42
.LBB84_41:                              # %while.body.79
                                        #   in Loop: Header=BB84_38 Depth=1
	imull	$10, -40(%rbp), %eax
	addl	-36(%rbp), %eax
	subl	$48, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB84_38
.LBB84_42:                              # %while.end.83
	jmp	.LBB84_43
.LBB84_43:                              # %if.end.84
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB84_45
# BB#44:                                # %if.then.87
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB84_45:                              # %if.end.88
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$257, -36(%rbp)         # imm = 0x101
	jmp	.LBB84_72
.LBB84_46:                              # %if.else.89
                                        #   in Loop: Header=BB84_1 Depth=1
	movl	-36(%rbp), %edi
	callq	c_isalpha
	testb	$1, %al
	jne	.LBB84_48
# BB#47:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpl	$95, -36(%rbp)
	jne	.LBB84_58
.LBB84_48:                              # %if.then.95
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
.LBB84_49:                              # %while.cond.98
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -48(%rbp)          # 1-byte Spill
	jae	.LBB84_53
# BB#50:                                # %land.rhs.101
                                        #   in Loop: Header=BB84_49 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	c_isalnum
	movb	$1, %r8b
	testb	$1, %al
	movb	%r8b, -49(%rbp)         # 1-byte Spill
	jne	.LBB84_52
# BB#51:                                # %lor.rhs
                                        #   in Loop: Header=BB84_49 Depth=1
	cmpl	$95, -36(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB84_52:                              # %lor.end
                                        #   in Loop: Header=BB84_49 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	movb	%al, -48(%rbp)          # 1-byte Spill
.LBB84_53:                              # %land.end.108
                                        #   in Loop: Header=BB84_49 Depth=1
	movb	-48(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_54
	jmp	.LBB84_55
.LBB84_54:                              # %while.body.109
                                        #   in Loop: Header=BB84_49 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB84_49
.LBB84_55:                              # %while.end.112
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB84_57
# BB#56:                                # %if.then.115
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$-1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB84_57:                              # %if.end.117
	movl	$256, -36(%rbp)         # imm = 0x100
	jmp	.LBB84_71
.LBB84_58:                              # %if.else.118
                                        #   in Loop: Header=BB84_1 Depth=1
	cmpl	$47, -36(%rbp)
	jne	.LBB84_70
# BB#59:                                # %land.lhs.true.121
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB84_70
# BB#60:                                # %if.then.125
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
.LBB84_61:                              # %while.cond.127
                                        #   Parent Loop BB84_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	je	.LBB84_65
# BB#62:                                # %land.rhs.129
                                        #   in Loop: Header=BB84_61 Depth=2
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %edx
	cmpl	$42, %edx
	movb	%al, -51(%rbp)          # 1-byte Spill
	jne	.LBB84_64
# BB#63:                                # %lor.rhs.133
                                        #   in Loop: Header=BB84_61 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	1(%rax), %ecx
	cmpl	$47, %ecx
	setne	%dl
	movb	%dl, -51(%rbp)          # 1-byte Spill
.LBB84_64:                              # %lor.end.138
                                        #   in Loop: Header=BB84_61 Depth=2
	movb	-51(%rbp), %al          # 1-byte Reload
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB84_65:                              # %land.end.139
                                        #   in Loop: Header=BB84_61 Depth=2
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB84_66
	jmp	.LBB84_67
.LBB84_66:                              # %while.body.140
                                        #   in Loop: Header=BB84_61 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB84_61
.LBB84_67:                              # %while.end.142
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB84_69
# BB#68:                                # %if.then.144
                                        #   in Loop: Header=BB84_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$2, %rcx
	movq	%rcx, (%rax)
	jmp	.LBB84_1
.LBB84_69:                              # %if.end.146
	jmp	.LBB84_70
.LBB84_70:                              # %if.end.147
	jmp	.LBB84_71
.LBB84_71:                              # %if.end.148
	jmp	.LBB84_72
.LBB84_72:                              # %if.end.149
	jmp	.LBB84_73
.LBB84_73:                              # %if.end.150
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	xbm_scan, .Lfunc_end84-xbm_scan
	.cfi_endproc

	.align	16, 0x90
	.type	xbm_load_image,@function
xbm_load_image:                         # @xbm_load_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-48(%rbp), %r9
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movb	$0, -49(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	addq	$92, %rcx
	movq	-16(%rbp), %r8
	addq	$96, %r8
	movl	$0, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	xbm_read_bitmap_data
	andb	$1, %al
	movb	%al, -33(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB85_9
# BB#1:                                 # %if.then
	movl	$47, %edi
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB85_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -64(%rbp)
	movb	$1, -73(%rbp)
.LBB85_3:                               # %if.end
	movl	$13, %edi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB85_5
# BB#4:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-72(%rbp), %rcx
	callq	x_alloc_image_color
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-16(%rbp), %rax
	movb	88(%rax), %r8b
	andb	$-3, %r8b
	orb	$2, %r8b
	movb	%r8b, 88(%rax)
	movb	$1, -73(%rbp)
.LBB85_5:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r8
	movb	-73(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	Create_Pixmap_From_Bitmap_Data
	movq	-48(%rbp), %rdi
	callq	xfree
	movq	-16(%rbp), %rcx
	cmpq	$0, 16(%rcx)
	jne	.LBB85_7
# BB#6:                                 # %if.then.17
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image
	movabsq	$.L.str.47, %rdi
	movq	-16(%rbp), %rsi
	movq	120(%rsi), %rsi
	movb	$0, %al
	callq	image_error
	jmp	.LBB85_8
.LBB85_7:                               # %if.else
	movb	$1, -49(%rbp)
.LBB85_8:                               # %if.end.19
	jmp	.LBB85_10
.LBB85_9:                               # %if.else.20
	movabsq	$.L.str.45, %rdi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
.LBB85_10:                              # %if.end.22
	movb	-49(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	xbm_load_image, .Lfunc_end85-xbm_load_image
	.cfi_endproc

	.align	16, 0x90
	.type	Create_Pixmap_From_Bitmap_Data,@function
Create_Pixmap_From_Bitmap_Data:         # @Create_Pixmap_From_Bitmap_Data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%r9b, %al
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rcx
	movl	92(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movq	%r10, %rdi
	callq	x_check_image_size
	testb	$1, %al
	jne	.LBB86_1
	jmp	.LBB86_2
.LBB86_1:                               # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	96(%rax), %r8d
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %r10
	movq	384(%r10), %r10
	movq	424(%r10), %r10
	movq	48(%r10), %r10
	movl	56(%r10), %r11d
	movq	%rax, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	XCreatePixmapFromBitmapData
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB86_3
.LBB86_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Create_Pixmap_From_Bitmap_Data, .Lfunc_end86-Create_Pixmap_From_Bitmap_Data
	.cfi_endproc

	.align	16, 0x90
	.type	png_image_p,@function
png_image_p:                            # @png_image_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movl	$754, %eax              # imm = 0x2F2
	leaq	-336(%rbp), %rcx
	movabsq	$png_format, %rdx
	movl	$320, %esi              # imm = 0x140
	movl	%esi, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movl	-348(%rbp), %eax        # 4-byte Reload
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$10, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	testb	$1, %al
	jne	.LBB87_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB87_3
.LBB87_2:                               # %if.end
	movl	-256(%rbp), %eax
	addl	-288(%rbp), %eax
	cmpl	$1, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB87_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end87:
	.size	png_image_p, .Lfunc_end87-png_image_p
	.cfi_endproc

	.align	16, 0x90
	.type	png_load,@function
png_load:                               # @png_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-64(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	png_load_body
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	png_load, .Lfunc_end88-png_load
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI89_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	png_load_body,@function
png_load_body:                          # @png_load_body
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	subq	$2032, %rsp             # imm = 0x7F0
	movl	$41, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -200(%rbp)
	movq	-24(%rbp), %rdx
	movq	120(%rdx), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movl	$29, %edi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB89_9
# BB#1:                                 # %if.then
	leaq	-204(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	x_find_image_fd
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB89_3
# BB#2:                                 # %if.then.8
	movabsq	$.L.str.27, %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_3:                               # %if.end
	movabsq	$.L.str.34, %rsi
	movl	-204(%rbp), %edi
	callq	fdopen
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB89_5
# BB#4:                                 # %if.then.10
	movabsq	$.L.str.48, %rdi
	movq	-216(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_5:                               # %if.end.11
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rdi
	movq	-96(%rbp), %rcx
	callq	fread
	cmpq	$8, %rax
	jne	.LBB89_7
# BB#6:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-104(%rbp), %rdi
	callq	png_sig_cmp
	cmpl	$0, %eax
	je	.LBB89_8
.LBB89_7:                               # %if.then.17
	movq	-96(%rbp), %rdi
	callq	fclose
	movabsq	$.L.str.49, %rdi
	movq	-216(%rbp), %rsi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_8:                               # %if.end.19
	jmp	.LBB89_15
.LBB89_9:                               # %if.else
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB89_11
# BB#10:                                # %if.then.21
	movabsq	$.L.str.29, %rdi
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_11:                              # %if.end.22
	movq	-48(%rbp), %rdi
	callq	SDATA
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -168(%rbp)
	movq	$0, -160(%rbp)
	cmpq	$8, -168(%rbp)
	jb	.LBB89_13
# BB#12:                                # %lor.lhs.false.27
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$8, %eax
	movl	%eax, %edx
	movq	-176(%rbp), %rdi
	callq	png_sig_cmp
	cmpl	$0, %eax
	je	.LBB89_14
.LBB89_13:                              # %if.then.31
	movabsq	$.L.str.50, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_14:                              # %if.end.33
	movq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -176(%rbp)
.LBB89_15:                              # %if.end.35
	movabsq	$.L.str.51, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$my_png_error, %rdx
	movabsq	$my_png_warning, %rcx
	callq	png_create_read_struct
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB89_17
# BB#16:                                # %if.then.38
	movq	-72(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	png_create_info_struct
	movq	%rax, -88(%rbp)
.LBB89_17:                              # %if.end.41
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 40(%rcx)
	cmpq	$0, -80(%rbp)
	je	.LBB89_19
# BB#18:                                # %land.lhs.true
	cmpq	$0, -88(%rbp)
	jne	.LBB89_20
.LBB89_19:                              # %if.then.50
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
	movq	$0, -72(%rbp)
.LBB89_20:                              # %if.end.54
	cmpq	$0, -72(%rbp)
	jne	.LBB89_24
# BB#21:                                # %if.then.56
	cmpq	$0, -96(%rbp)
	je	.LBB89_23
# BB#22:                                # %if.then.58
	movq	-96(%rbp), %rdi
	callq	fclose
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB89_23:                              # %if.end.60
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_24:                              # %if.end.61
	movabsq	$_longjmp, %rsi
	movl	$200, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB89_31
# BB#25:                                # %if.then.66
	jmp	.LBB89_26
.LBB89_26:                              # %error
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB89_28
# BB#27:                                # %if.then.69
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
.LBB89_28:                              # %if.end.73
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB89_30
# BB#29:                                # %if.then.78
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fclose
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB89_30:                              # %if.end.81
	movb	$0, -1(%rbp)
	jmp	.LBB89_915
.LBB89_31:                              # %if.end.82
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB89_33
# BB#32:                                # %if.then.85
	movabsq	$png_read_from_memory, %rdx
	leaq	-176(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rax, %rsi
	callq	png_set_read_fn
	jmp	.LBB89_34
.LBB89_33:                              # %if.else.86
	movabsq	$png_read_from_file, %rdx
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	png_set_read_fn
.LBB89_34:                              # %if.end.87
	movl	$8, %esi
	movq	-72(%rbp), %rdi
	callq	png_set_sig_bytes
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_read_info
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-132(%rbp), %r8
	leaq	-136(%rbp), %r9
	leaq	-140(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-72(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	png_get_IHDR
	cmpl	$2147483647, -124(%rbp) # imm = 0x7FFFFFFF
	movl	%eax, -356(%rbp)        # 4-byte Spill
	ja	.LBB89_37
# BB#35:                                # %land.lhs.true.90
	cmpl	$2147483647, -128(%rbp) # imm = 0x7FFFFFFF
	ja	.LBB89_37
# BB#36:                                # %land.lhs.true.92
	movq	-16(%rbp), %rdi
	movl	-124(%rbp), %esi
	movl	-128(%rbp), %edx
	callq	check_image_size
	testb	$1, %al
	jne	.LBB89_38
.LBB89_37:                              # %if.then.94
	callq	image_size_error
	jmp	.LBB89_26
.LBB89_38:                              # %if.end.95
	xorl	%r8d, %r8d
	leaq	-192(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	$0, (%rsp)
	callq	image_create_x_image_and_pixmap
	testb	$1, %al
	jne	.LBB89_40
# BB#39:                                # %if.then.97
	jmp	.LBB89_26
.LBB89_40:                              # %if.end.98
	movl	$16, %edx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB89_42
# BB#41:                                # %if.then.101
	movb	$1, -149(%rbp)
	jmp	.LBB89_43
.LBB89_42:                              # %if.else.102
	movb	$0, -149(%rbp)
.LBB89_43:                              # %if.end.103
	cmpl	$16, -132(%rbp)
	jne	.LBB89_45
# BB#44:                                # %if.then.105
	movq	-72(%rbp), %rdi
	callq	png_set_strip_16
.LBB89_45:                              # %if.end.106
	movq	-72(%rbp), %rdi
	callq	png_set_expand
	cmpl	$0, -136(%rbp)
	je	.LBB89_47
# BB#46:                                # %lor.lhs.false.108
	cmpl	$4, -136(%rbp)
	jne	.LBB89_48
.LBB89_47:                              # %if.then.110
	movq	-72(%rbp), %rdi
	callq	png_set_gray_to_rgb
.LBB89_48:                              # %if.end.111
	testb	$1, -149(%rbp)
	jne	.LBB89_54
# BB#49:                                # %if.then.113
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB89_50
	jmp	.LBB89_51
.LBB89_50:                              # %cond.true
	movq	-16(%rbp), %rdi
	movq	-224(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-240(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	x_defined_color
	testb	$1, %al
	jne	.LBB89_52
	jmp	.LBB89_53
.LBB89_51:                              # %cond.false
	leaq	-240(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	x_query_frame_background_color
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_52
	jmp	.LBB89_53
.LBB89_52:                              # %if.then.120
	leaq	-256(%rbp), %rax
	movl	$1, %edx
	xorl	%ecx, %ecx
	movsd	.LCPI89_0, %xmm0        # xmm0 = mem[0],zero
	movl	$10, %esi
	movl	%esi, %edi
	movl	$8, %esi
	cmpl	$16, -132(%rbp)
	cmovel	%ecx, %esi
	movl	%esi, -244(%rbp)
	movq	%rax, %r8
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%ecx, %esi
	movq	-384(%rbp), %r8         # 8-byte Reload
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	memset
	movzwl	-232(%rbp), %ecx
	movl	-244(%rbp), %esi
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-420(%rbp), %esi        # 4-byte Reload
	sarl	%cl, %esi
	movw	%si, %r9w
	movw	%r9w, -254(%rbp)
	movzwl	-230(%rbp), %esi
	movl	-244(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movw	%si, %r9w
	movw	%r9w, -252(%rbp)
	movzwl	-228(%rbp), %esi
	movl	-244(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movw	%si, %r9w
	movw	%r9w, -250(%rbp)
	movq	-72(%rbp), %rdi
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movl	-388(%rbp), %edx        # 4-byte Reload
	movl	-404(%rbp), %ecx        # 4-byte Reload
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	png_set_background
.LBB89_53:                              # %if.end.132
	jmp	.LBB89_54
.LBB89_54:                              # %if.end.133
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_read_update_info
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_get_channels
	movb	%al, -141(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_get_rowbytes
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	testb	$1, %dl
	jne	.LBB89_55
	jmp	.LBB89_134
.LBB89_55:                              # %cond.true.137
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_56
	jmp	.LBB89_95
.LBB89_56:                              # %cond.true.138
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_58
# BB#57:                                # %cond.true.143
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB89_59
.LBB89_58:                              # %cond.false.161
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB89_59:                              # %cond.end
	movl	-424(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_61
# BB#60:                                # %land.lhs.true.170
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jl	.LBB89_87
.LBB89_61:                              # %lor.lhs.false.175
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_62
	jmp	.LBB89_73
.LBB89_62:                              # %cond.true.176
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB89_67
# BB#63:                                # %cond.true.181
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-148(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jge	.LBB89_65
# BB#64:                                # %cond.true.191
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
	jmp	.LBB89_66
.LBB89_65:                              # %cond.false.201
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -432(%rbp)        # 4-byte Spill
.LBB89_66:                              # %cond.end.207
	movl	-432(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-428(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_87
	jmp	.LBB89_84
.LBB89_67:                              # %cond.false.211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_68
	jmp	.LBB89_69
.LBB89_68:                              # %cond.true.212
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_87
	jmp	.LBB89_84
.LBB89_69:                              # %cond.false.213
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_71
# BB#70:                                # %cond.true.221
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB89_72
.LBB89_71:                              # %cond.false.241
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -436(%rbp)        # 4-byte Spill
.LBB89_72:                              # %cond.end.247
	movl	-436(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-148(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_87
	jmp	.LBB89_84
.LBB89_73:                              # %cond.false.254
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_74
	jmp	.LBB89_75
.LBB89_74:                              # %cond.true.255
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_87
	jmp	.LBB89_84
.LBB89_75:                              # %cond.false.256
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB89_80
# BB#76:                                # %cond.true.261
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	-148(%rbp), %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jge	.LBB89_78
# BB#77:                                # %cond.true.271
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
	jmp	.LBB89_79
.LBB89_78:                              # %cond.false.291
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB89_79:                              # %cond.end.297
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-440(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_87
	jmp	.LBB89_84
.LBB89_80:                              # %cond.false.302
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_82
# BB#81:                                # %cond.true.310
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
	jmp	.LBB89_83
.LBB89_82:                              # %cond.false.320
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB89_83:                              # %cond.end.326
	movl	-448(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-148(%rbp), %ecx
	movb	%cl, %sil
	movsbl	%sil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_87
.LBB89_84:                              # %lor.lhs.false.333
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	shll	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_86
# BB#85:                                # %land.lhs.true.341
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	shll	$0, %eax
	cmpl	$-128, %eax
	jl	.LBB89_87
.LBB89_86:                              # %lor.lhs.false.347
	movl	$127, %eax
	movl	-148(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	shll	$0, %ecx
	cmpl	%ecx, %eax
	jge	.LBB89_91
.LBB89_87:                              # %cond.true.353
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	cmpl	$127, %eax
	jg	.LBB89_89
# BB#88:                                # %cond.true.359
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
	jmp	.LBB89_90
.LBB89_89:                              # %cond.false.365
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB89_90:                              # %cond.end.373
	movl	-452(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_91:                              # %cond.false.376
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	cmpl	$127, %eax
	jg	.LBB89_93
# BB#92:                                # %cond.true.382
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB89_94
.LBB89_93:                              # %cond.false.388
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -456(%rbp)        # 4-byte Spill
.LBB89_94:                              # %cond.end.396
	movl	-456(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_95:                              # %cond.false.399
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_97
# BB#96:                                # %cond.true.406
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB89_98
.LBB89_97:                              # %cond.false.425
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
.LBB89_98:                              # %cond.end.430
	movq	-464(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_100
# BB#99:                                # %land.lhs.true.434
	cmpl	$0, -148(%rbp)
	jb	.LBB89_126
.LBB89_100:                             # %lor.lhs.false.437
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_101
	jmp	.LBB89_112
.LBB89_101:                             # %cond.true.438
	cmpl	$0, -148(%rbp)
	jae	.LBB89_106
# BB#102:                               # %cond.true.441
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jae	.LBB89_104
# BB#103:                               # %cond.true.449
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB89_105
.LBB89_104:                             # %cond.false.458
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
.LBB89_105:                             # %cond.end.463
	movq	-480(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_126
	jmp	.LBB89_123
.LBB89_106:                             # %cond.false.468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_107
	jmp	.LBB89_108
.LBB89_107:                             # %cond.true.469
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_126
	jmp	.LBB89_123
.LBB89_108:                             # %cond.false.470
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_110
# BB#109:                               # %cond.true.477
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB89_111
.LBB89_110:                             # %cond.false.496
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
.LBB89_111:                             # %cond.end.501
	movq	-488(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_126
	jmp	.LBB89_123
.LBB89_112:                             # %cond.false.507
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_113
	jmp	.LBB89_114
.LBB89_113:                             # %cond.true.508
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_126
	jmp	.LBB89_123
.LBB89_114:                             # %cond.false.509
	cmpl	$0, -148(%rbp)
	jae	.LBB89_119
# BB#115:                               # %cond.true.512
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jae	.LBB89_117
# BB#116:                               # %cond.true.520
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	jmp	.LBB89_118
.LBB89_117:                             # %cond.false.539
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
.LBB89_118:                             # %cond.end.544
	movq	-504(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_126
	jmp	.LBB89_123
.LBB89_119:                             # %cond.false.549
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_121
# BB#120:                               # %cond.true.556
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB89_122
.LBB89_121:                             # %cond.false.565
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
.LBB89_122:                             # %cond.end.570
	movq	-512(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_126
.LBB89_123:                             # %lor.lhs.false.576
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_125
# BB#124:                               # %land.lhs.true.583
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	cmpq	$-128, %rcx
	jb	.LBB89_126
.LBB89_125:                             # %lor.lhs.false.588
	movl	$127, %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB89_130
.LBB89_126:                             # %cond.true.593
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	cmpl	$127, %eax
	jg	.LBB89_128
# BB#127:                               # %cond.true.599
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB89_129
.LBB89_128:                             # %cond.false.605
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB89_129:                             # %cond.end.613
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_130:                             # %cond.false.616
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	cmpl	$127, %eax
	jg	.LBB89_132
# BB#131:                               # %cond.true.622
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
	jmp	.LBB89_133
.LBB89_132:                             # %cond.false.628
	movl	-148(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	shll	$0, %eax
	subl	$-128, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	addl	$-128, %eax
	movl	%eax, -520(%rbp)        # 4-byte Spill
.LBB89_133:                             # %cond.end.636
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_134:                             # %cond.false.639
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_135
	jmp	.LBB89_214
.LBB89_135:                             # %cond.true.640
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_136
	jmp	.LBB89_175
.LBB89_136:                             # %cond.true.641
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_138
# BB#137:                               # %cond.true.649
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB89_139
.LBB89_138:                             # %cond.false.669
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
.LBB89_139:                             # %cond.end.675
	movl	-524(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_141
# BB#140:                               # %land.lhs.true.679
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jl	.LBB89_167
.LBB89_141:                             # %lor.lhs.false.684
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_142
	jmp	.LBB89_153
.LBB89_142:                             # %cond.true.685
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB89_147
# BB#143:                               # %cond.true.690
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-148(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -528(%rbp)        # 4-byte Spill
	jge	.LBB89_145
# BB#144:                               # %cond.true.700
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	jmp	.LBB89_146
.LBB89_145:                             # %cond.false.710
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
.LBB89_146:                             # %cond.end.716
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-528(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_167
	jmp	.LBB89_164
.LBB89_147:                             # %cond.false.721
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_148
	jmp	.LBB89_149
.LBB89_148:                             # %cond.true.722
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_167
	jmp	.LBB89_164
.LBB89_149:                             # %cond.false.723
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_151
# BB#150:                               # %cond.true.731
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB89_152
.LBB89_151:                             # %cond.false.751
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB89_152:                             # %cond.end.757
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-148(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_167
	jmp	.LBB89_164
.LBB89_153:                             # %cond.false.764
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_154
	jmp	.LBB89_155
.LBB89_154:                             # %cond.true.765
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_167
	jmp	.LBB89_164
.LBB89_155:                             # %cond.false.766
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB89_160
# BB#156:                               # %cond.true.771
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	-148(%rbp), %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jge	.LBB89_158
# BB#157:                               # %cond.true.781
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB89_159
.LBB89_158:                             # %cond.false.801
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB89_159:                             # %cond.end.807
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-540(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_167
	jmp	.LBB89_164
.LBB89_160:                             # %cond.false.812
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_162
# BB#161:                               # %cond.true.820
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB89_163
.LBB89_162:                             # %cond.false.830
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB89_163:                             # %cond.end.836
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-148(%rbp), %ecx
	movw	%cx, %si
	movswl	%si, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_167
.LBB89_164:                             # %lor.lhs.false.843
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	shll	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_166
# BB#165:                               # %land.lhs.true.851
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	shll	$0, %eax
	cmpl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB89_167
.LBB89_166:                             # %lor.lhs.false.857
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-148(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	shll	$0, %ecx
	cmpl	%ecx, %eax
	jge	.LBB89_171
.LBB89_167:                             # %cond.true.863
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB89_169
# BB#168:                               # %cond.true.869
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	jmp	.LBB89_170
.LBB89_169:                             # %cond.false.875
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB89_170:                             # %cond.end.883
	movl	-552(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_171:                             # %cond.false.886
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB89_173
# BB#172:                               # %cond.true.892
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB89_174
.LBB89_173:                             # %cond.false.898
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB89_174:                             # %cond.end.906
	movl	-556(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_175:                             # %cond.false.909
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_177
# BB#176:                               # %cond.true.916
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB89_178
.LBB89_177:                             # %cond.false.935
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
.LBB89_178:                             # %cond.end.940
	movq	-568(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_180
# BB#179:                               # %land.lhs.true.944
	cmpl	$0, -148(%rbp)
	jb	.LBB89_206
.LBB89_180:                             # %lor.lhs.false.947
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_181
	jmp	.LBB89_192
.LBB89_181:                             # %cond.true.948
	cmpl	$0, -148(%rbp)
	jae	.LBB89_186
# BB#182:                               # %cond.true.951
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jae	.LBB89_184
# BB#183:                               # %cond.true.959
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB89_185
.LBB89_184:                             # %cond.false.968
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
.LBB89_185:                             # %cond.end.973
	movq	-584(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_206
	jmp	.LBB89_203
.LBB89_186:                             # %cond.false.978
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_187
	jmp	.LBB89_188
.LBB89_187:                             # %cond.true.979
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_206
	jmp	.LBB89_203
.LBB89_188:                             # %cond.false.980
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_190
# BB#189:                               # %cond.true.987
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB89_191
.LBB89_190:                             # %cond.false.1006
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
.LBB89_191:                             # %cond.end.1011
	movq	-592(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_206
	jmp	.LBB89_203
.LBB89_192:                             # %cond.false.1017
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_193
	jmp	.LBB89_194
.LBB89_193:                             # %cond.true.1018
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_206
	jmp	.LBB89_203
.LBB89_194:                             # %cond.false.1019
	cmpl	$0, -148(%rbp)
	jae	.LBB89_199
# BB#195:                               # %cond.true.1022
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jae	.LBB89_197
# BB#196:                               # %cond.true.1030
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	jmp	.LBB89_198
.LBB89_197:                             # %cond.false.1049
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -608(%rbp)        # 8-byte Spill
.LBB89_198:                             # %cond.end.1054
	movq	-608(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_206
	jmp	.LBB89_203
.LBB89_199:                             # %cond.false.1059
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_201
# BB#200:                               # %cond.true.1066
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB89_202
.LBB89_201:                             # %cond.false.1075
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
.LBB89_202:                             # %cond.end.1080
	movq	-616(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_206
.LBB89_203:                             # %lor.lhs.false.1086
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_205
# BB#204:                               # %land.lhs.true.1093
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	cmpq	$-32768, %rcx           # imm = 0xFFFFFFFFFFFF8000
	jb	.LBB89_206
.LBB89_205:                             # %lor.lhs.false.1098
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB89_210
.LBB89_206:                             # %cond.true.1103
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB89_208
# BB#207:                               # %cond.true.1109
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	jmp	.LBB89_209
.LBB89_208:                             # %cond.false.1115
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -620(%rbp)        # 4-byte Spill
.LBB89_209:                             # %cond.end.1123
	movl	-620(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_210:                             # %cond.false.1126
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB89_212
# BB#211:                               # %cond.true.1132
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	movl	%eax, -624(%rbp)        # 4-byte Spill
	jmp	.LBB89_213
.LBB89_212:                             # %cond.false.1138
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$0, %eax
	subl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movw	%ax, %cx
	movswl	%cx, %eax
	addl	$-32768, %eax           # imm = 0xFFFFFFFFFFFF8000
	movl	%eax, -624(%rbp)        # 4-byte Spill
.LBB89_213:                             # %cond.end.1146
	movl	-624(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_214:                             # %cond.false.1149
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_215
	jmp	.LBB89_294
.LBB89_215:                             # %cond.true.1150
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_216
	jmp	.LBB89_255
.LBB89_216:                             # %cond.true.1151
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_218
# BB#217:                               # %cond.true.1157
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
	jmp	.LBB89_219
.LBB89_218:                             # %cond.false.1173
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -628(%rbp)        # 4-byte Spill
.LBB89_219:                             # %cond.end.1177
	movl	-628(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_221
# BB#220:                               # %land.lhs.true.1181
	cmpl	$0, -148(%rbp)
	jl	.LBB89_247
.LBB89_221:                             # %lor.lhs.false.1184
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_222
	jmp	.LBB89_233
.LBB89_222:                             # %cond.true.1185
	cmpl	$0, -148(%rbp)
	jge	.LBB89_227
# BB#223:                               # %cond.true.1188
	movl	-148(%rbp), %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -632(%rbp)        # 4-byte Spill
	jge	.LBB89_225
# BB#224:                               # %cond.true.1194
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
	jmp	.LBB89_226
.LBB89_225:                             # %cond.false.1202
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -636(%rbp)        # 4-byte Spill
.LBB89_226:                             # %cond.end.1206
	movl	-636(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-632(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_247
	jmp	.LBB89_244
.LBB89_227:                             # %cond.false.1211
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_228
	jmp	.LBB89_229
.LBB89_228:                             # %cond.true.1212
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_247
	jmp	.LBB89_244
.LBB89_229:                             # %cond.false.1213
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_231
# BB#230:                               # %cond.true.1219
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
	jmp	.LBB89_232
.LBB89_231:                             # %cond.false.1235
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -640(%rbp)        # 4-byte Spill
.LBB89_232:                             # %cond.end.1239
	movl	-640(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	cmpl	-148(%rbp), %eax
	jl	.LBB89_247
	jmp	.LBB89_244
.LBB89_233:                             # %cond.false.1244
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_234
	jmp	.LBB89_235
.LBB89_234:                             # %cond.true.1245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_247
	jmp	.LBB89_244
.LBB89_235:                             # %cond.false.1246
	cmpl	$0, -148(%rbp)
	jge	.LBB89_240
# BB#236:                               # %cond.true.1249
	movl	-148(%rbp), %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	jge	.LBB89_238
# BB#237:                               # %cond.true.1255
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-148(%rbp), %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
	jmp	.LBB89_239
.LBB89_238:                             # %cond.false.1271
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -648(%rbp)        # 4-byte Spill
.LBB89_239:                             # %cond.end.1275
	movl	-648(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	movl	-644(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_247
	jmp	.LBB89_244
.LBB89_240:                             # %cond.false.1280
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_242
# BB#241:                               # %cond.true.1286
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
	jmp	.LBB89_243
.LBB89_242:                             # %cond.false.1294
	movl	-148(%rbp), %eax
	addl	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -652(%rbp)        # 4-byte Spill
.LBB89_243:                             # %cond.end.1298
	movl	-652(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	cltd
	idivl	%ecx
	cmpl	-148(%rbp), %eax
	jl	.LBB89_247
.LBB89_244:                             # %lor.lhs.false.1303
	movl	-148(%rbp), %eax
	shll	$0, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_246
# BB#245:                               # %land.lhs.true.1309
	movl	-148(%rbp), %eax
	shll	$0, %eax
	cmpl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	jl	.LBB89_247
.LBB89_246:                             # %lor.lhs.false.1313
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	-148(%rbp), %ecx
	shll	$0, %ecx
	cmpl	%ecx, %eax
	jge	.LBB89_251
.LBB89_247:                             # %cond.true.1317
	movl	-148(%rbp), %eax
	shll	$0, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB89_249
# BB#248:                               # %cond.true.1321
	movl	-148(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -656(%rbp)        # 4-byte Spill
	jmp	.LBB89_250
.LBB89_249:                             # %cond.false.1323
	movl	-148(%rbp), %eax
	shll	$0, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -656(%rbp)        # 4-byte Spill
.LBB89_250:                             # %cond.end.1327
	movl	-656(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_251:                             # %cond.false.1330
	movl	-148(%rbp), %eax
	shll	$0, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB89_253
# BB#252:                               # %cond.true.1334
	movl	-148(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB89_254
.LBB89_253:                             # %cond.false.1336
	movl	-148(%rbp), %eax
	shll	$0, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -660(%rbp)        # 4-byte Spill
.LBB89_254:                             # %cond.end.1340
	movl	-660(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_255:                             # %cond.false.1343
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_257
# BB#256:                               # %cond.true.1350
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	jmp	.LBB89_258
.LBB89_257:                             # %cond.false.1369
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -672(%rbp)        # 8-byte Spill
.LBB89_258:                             # %cond.end.1374
	movq	-672(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_260
# BB#259:                               # %land.lhs.true.1378
	cmpl	$0, -148(%rbp)
	jb	.LBB89_286
.LBB89_260:                             # %lor.lhs.false.1381
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_261
	jmp	.LBB89_272
.LBB89_261:                             # %cond.true.1382
	cmpl	$0, -148(%rbp)
	jae	.LBB89_266
# BB#262:                               # %cond.true.1385
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jae	.LBB89_264
# BB#263:                               # %cond.true.1393
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB89_265
.LBB89_264:                             # %cond.false.1402
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
.LBB89_265:                             # %cond.end.1407
	movq	-688(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_286
	jmp	.LBB89_283
.LBB89_266:                             # %cond.false.1412
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_267
	jmp	.LBB89_268
.LBB89_267:                             # %cond.true.1413
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_286
	jmp	.LBB89_283
.LBB89_268:                             # %cond.false.1414
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_270
# BB#269:                               # %cond.true.1421
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	jmp	.LBB89_271
.LBB89_270:                             # %cond.false.1440
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -696(%rbp)        # 8-byte Spill
.LBB89_271:                             # %cond.end.1445
	movq	-696(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_286
	jmp	.LBB89_283
.LBB89_272:                             # %cond.false.1451
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_273
	jmp	.LBB89_274
.LBB89_273:                             # %cond.true.1452
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_286
	jmp	.LBB89_283
.LBB89_274:                             # %cond.false.1453
	cmpl	$0, -148(%rbp)
	jae	.LBB89_279
# BB#275:                               # %cond.true.1456
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jae	.LBB89_277
# BB#276:                               # %cond.true.1464
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB89_278
.LBB89_277:                             # %cond.false.1483
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
.LBB89_278:                             # %cond.end.1488
	movq	-712(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_286
	jmp	.LBB89_283
.LBB89_279:                             # %cond.false.1493
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_281
# BB#280:                               # %cond.true.1500
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB89_282
.LBB89_281:                             # %cond.false.1509
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
.LBB89_282:                             # %cond.end.1514
	movq	-720(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_286
.LBB89_283:                             # %lor.lhs.false.1520
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_285
# BB#284:                               # %land.lhs.true.1527
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	cmpq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	jb	.LBB89_286
.LBB89_285:                             # %lor.lhs.false.1532
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB89_290
.LBB89_286:                             # %cond.true.1537
	movl	-148(%rbp), %eax
	shll	$0, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB89_288
# BB#287:                               # %cond.true.1541
	movl	-148(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -724(%rbp)        # 4-byte Spill
	jmp	.LBB89_289
.LBB89_288:                             # %cond.false.1543
	movl	-148(%rbp), %eax
	shll	$0, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB89_289:                             # %cond.end.1547
	movl	-724(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_290:                             # %cond.false.1550
	movl	-148(%rbp), %eax
	shll	$0, %eax
	cmpl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB89_292
# BB#291:                               # %cond.true.1554
	movl	-148(%rbp), %eax
	shll	$0, %eax
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB89_293
.LBB89_292:                             # %cond.false.1556
	movl	-148(%rbp), %eax
	shll	$0, %eax
	subl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -728(%rbp)        # 4-byte Spill
.LBB89_293:                             # %cond.end.1560
	movl	-728(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_294:                             # %cond.false.1563
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_295
	jmp	.LBB89_374
.LBB89_295:                             # %cond.true.1564
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_296
	jmp	.LBB89_335
.LBB89_296:                             # %cond.true.1565
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_298
# BB#297:                               # %cond.true.1572
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB89_299
.LBB89_298:                             # %cond.false.1591
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
.LBB89_299:                             # %cond.end.1596
	movq	-736(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_301
# BB#300:                               # %land.lhs.true.1600
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jl	.LBB89_327
.LBB89_301:                             # %lor.lhs.false.1604
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_302
	jmp	.LBB89_313
.LBB89_302:                             # %cond.true.1605
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_307
# BB#303:                               # %cond.true.1609
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jge	.LBB89_305
# BB#304:                               # %cond.true.1617
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB89_306
.LBB89_305:                             # %cond.false.1626
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
.LBB89_306:                             # %cond.end.1631
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_327
	jmp	.LBB89_324
.LBB89_307:                             # %cond.false.1636
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_308
	jmp	.LBB89_309
.LBB89_308:                             # %cond.true.1637
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_327
	jmp	.LBB89_324
.LBB89_309:                             # %cond.false.1638
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_311
# BB#310:                               # %cond.true.1645
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB89_312
.LBB89_311:                             # %cond.false.1664
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
.LBB89_312:                             # %cond.end.1669
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	-148(%rbp), %ecx
	movl	%ecx, %edi
	cmpq	%rdi, %rax
	jl	.LBB89_327
	jmp	.LBB89_324
.LBB89_313:                             # %cond.false.1675
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_314
	jmp	.LBB89_315
.LBB89_314:                             # %cond.true.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_327
	jmp	.LBB89_324
.LBB89_315:                             # %cond.false.1677
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_320
# BB#316:                               # %cond.true.1681
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jge	.LBB89_318
# BB#317:                               # %cond.true.1689
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB89_319
.LBB89_318:                             # %cond.false.1708
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
.LBB89_319:                             # %cond.end.1713
	movq	-792(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	cqto
	movq	-800(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_327
	jmp	.LBB89_324
.LBB89_320:                             # %cond.false.1718
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_322
# BB#321:                               # %cond.true.1725
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB89_323
.LBB89_322:                             # %cond.false.1734
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
.LBB89_323:                             # %cond.end.1739
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	-148(%rbp), %ecx
	movl	%ecx, %edi
	cmpq	%rdi, %rax
	jl	.LBB89_327
.LBB89_324:                             # %lor.lhs.false.1745
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_326
# BB#325:                               # %land.lhs.true.1752
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	jl	.LBB89_327
.LBB89_326:                             # %lor.lhs.false.1757
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rax
	jge	.LBB89_331
.LBB89_327:                             # %cond.true.1762
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_329
# BB#328:                               # %cond.true.1767
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB89_330
.LBB89_329:                             # %cond.false.1770
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
.LBB89_330:                             # %cond.end.1775
	movq	-824(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_331:                             # %cond.false.1777
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_333
# BB#332:                               # %cond.true.1782
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB89_334
.LBB89_333:                             # %cond.false.1785
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
.LBB89_334:                             # %cond.end.1790
	movq	-832(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_335:                             # %cond.false.1792
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_337
# BB#336:                               # %cond.true.1799
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB89_338
.LBB89_337:                             # %cond.false.1818
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
.LBB89_338:                             # %cond.end.1823
	movq	-840(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_340
# BB#339:                               # %land.lhs.true.1827
	cmpl	$0, -148(%rbp)
	jb	.LBB89_366
.LBB89_340:                             # %lor.lhs.false.1830
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_341
	jmp	.LBB89_352
.LBB89_341:                             # %cond.true.1831
	cmpl	$0, -148(%rbp)
	jae	.LBB89_346
# BB#342:                               # %cond.true.1834
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jae	.LBB89_344
# BB#343:                               # %cond.true.1842
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	jmp	.LBB89_345
.LBB89_344:                             # %cond.false.1851
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
.LBB89_345:                             # %cond.end.1856
	movq	-856(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_366
	jmp	.LBB89_363
.LBB89_346:                             # %cond.false.1861
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_347
	jmp	.LBB89_348
.LBB89_347:                             # %cond.true.1862
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_366
	jmp	.LBB89_363
.LBB89_348:                             # %cond.false.1863
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_350
# BB#349:                               # %cond.true.1870
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB89_351
.LBB89_350:                             # %cond.false.1889
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
.LBB89_351:                             # %cond.end.1894
	movq	-864(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_366
	jmp	.LBB89_363
.LBB89_352:                             # %cond.false.1900
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_353
	jmp	.LBB89_354
.LBB89_353:                             # %cond.true.1901
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_366
	jmp	.LBB89_363
.LBB89_354:                             # %cond.false.1902
	cmpl	$0, -148(%rbp)
	jae	.LBB89_359
# BB#355:                               # %cond.true.1905
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jae	.LBB89_357
# BB#356:                               # %cond.true.1913
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB89_358
.LBB89_357:                             # %cond.false.1932
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -880(%rbp)        # 8-byte Spill
.LBB89_358:                             # %cond.end.1937
	movq	-880(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_366
	jmp	.LBB89_363
.LBB89_359:                             # %cond.false.1942
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_361
# BB#360:                               # %cond.true.1949
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB89_362
.LBB89_361:                             # %cond.false.1958
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
.LBB89_362:                             # %cond.end.1963
	movq	-888(%rbp), %rax        # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_366
.LBB89_363:                             # %lor.lhs.false.1969
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_365
# BB#364:                               # %land.lhs.true.1976
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	jb	.LBB89_366
.LBB89_365:                             # %lor.lhs.false.1981
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rax
	jae	.LBB89_370
.LBB89_366:                             # %cond.true.1986
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_368
# BB#367:                               # %cond.true.1991
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB89_369
.LBB89_368:                             # %cond.false.1994
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
.LBB89_369:                             # %cond.end.1999
	movq	-896(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_370:                             # %cond.false.2001
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_372
# BB#371:                               # %cond.true.2006
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB89_373
.LBB89_372:                             # %cond.false.2009
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -904(%rbp)        # 8-byte Spill
.LBB89_373:                             # %cond.end.2014
	movq	-904(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_374:                             # %cond.false.2016
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_375
	jmp	.LBB89_414
.LBB89_375:                             # %cond.true.2017
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_377
# BB#376:                               # %cond.true.2024
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	jmp	.LBB89_378
.LBB89_377:                             # %cond.false.2043
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -912(%rbp)        # 8-byte Spill
.LBB89_378:                             # %cond.end.2048
	movq	-912(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_380
# BB#379:                               # %land.lhs.true.2052
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jl	.LBB89_406
.LBB89_380:                             # %lor.lhs.false.2056
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_381
	jmp	.LBB89_392
.LBB89_381:                             # %cond.true.2057
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_386
# BB#382:                               # %cond.true.2061
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jge	.LBB89_384
# BB#383:                               # %cond.true.2069
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB89_385
.LBB89_384:                             # %cond.false.2078
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -928(%rbp)        # 8-byte Spill
.LBB89_385:                             # %cond.end.2083
	movq	-928(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -936(%rbp)        # 8-byte Spill
	cqto
	movq	-936(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-920(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_406
	jmp	.LBB89_403
.LBB89_386:                             # %cond.false.2088
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_387
	jmp	.LBB89_388
.LBB89_387:                             # %cond.true.2089
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_406
	jmp	.LBB89_403
.LBB89_388:                             # %cond.false.2090
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_390
# BB#389:                               # %cond.true.2097
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB89_391
.LBB89_390:                             # %cond.false.2116
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
.LBB89_391:                             # %cond.end.2121
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	-148(%rbp), %ecx
	movl	%ecx, %edi
	cmpq	%rdi, %rax
	jl	.LBB89_406
	jmp	.LBB89_403
.LBB89_392:                             # %cond.false.2127
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_393
	jmp	.LBB89_394
.LBB89_393:                             # %cond.true.2128
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_406
	jmp	.LBB89_403
.LBB89_394:                             # %cond.false.2129
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_399
# BB#395:                               # %cond.true.2133
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jge	.LBB89_397
# BB#396:                               # %cond.true.2141
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	jmp	.LBB89_398
.LBB89_397:                             # %cond.false.2160
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -968(%rbp)        # 8-byte Spill
.LBB89_398:                             # %cond.end.2165
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-960(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_406
	jmp	.LBB89_403
.LBB89_399:                             # %cond.false.2170
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_401
# BB#400:                               # %cond.true.2177
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB89_402
.LBB89_401:                             # %cond.false.2186
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
.LBB89_402:                             # %cond.end.2191
	movq	-984(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	cqto
	movq	-992(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movl	-148(%rbp), %ecx
	movl	%ecx, %edi
	cmpq	%rdi, %rax
	jl	.LBB89_406
.LBB89_403:                             # %lor.lhs.false.2197
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_405
# BB#404:                               # %land.lhs.true.2204
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	jl	.LBB89_406
.LBB89_405:                             # %lor.lhs.false.2209
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rax
	jge	.LBB89_410
.LBB89_406:                             # %cond.true.2214
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_408
# BB#407:                               # %cond.true.2219
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB89_409
.LBB89_408:                             # %cond.false.2222
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
.LBB89_409:                             # %cond.end.2227
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_410:                             # %cond.false.2229
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_412
# BB#411:                               # %cond.true.2234
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB89_413
.LBB89_412:                             # %cond.false.2237
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
.LBB89_413:                             # %cond.end.2242
	movq	-1008(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_414:                             # %cond.false.2244
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_416
# BB#415:                               # %cond.true.2251
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB89_417
.LBB89_416:                             # %cond.false.2270
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
.LBB89_417:                             # %cond.end.2275
	movq	-1016(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_419
# BB#418:                               # %land.lhs.true.2279
	cmpl	$0, -148(%rbp)
	jb	.LBB89_445
.LBB89_419:                             # %lor.lhs.false.2282
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_420
	jmp	.LBB89_431
.LBB89_420:                             # %cond.true.2283
	cmpl	$0, -148(%rbp)
	jae	.LBB89_425
# BB#421:                               # %cond.true.2286
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jae	.LBB89_423
# BB#422:                               # %cond.true.2294
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB89_424
.LBB89_423:                             # %cond.false.2303
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1032(%rbp)       # 8-byte Spill
.LBB89_424:                             # %cond.end.2308
	movq	-1032(%rbp), %rax       # 8-byte Reload
	shrq	$0, %rax
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_445
	jmp	.LBB89_442
.LBB89_425:                             # %cond.false.2313
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_426
	jmp	.LBB89_427
.LBB89_426:                             # %cond.true.2314
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_445
	jmp	.LBB89_442
.LBB89_427:                             # %cond.false.2315
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_429
# BB#428:                               # %cond.true.2322
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB89_430
.LBB89_429:                             # %cond.false.2341
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
.LBB89_430:                             # %cond.end.2346
	movq	-1040(%rbp), %rax       # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_445
	jmp	.LBB89_442
.LBB89_431:                             # %cond.false.2352
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_432
	jmp	.LBB89_433
.LBB89_432:                             # %cond.true.2353
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_445
	jmp	.LBB89_442
.LBB89_433:                             # %cond.false.2354
	cmpl	$0, -148(%rbp)
	jae	.LBB89_438
# BB#434:                               # %cond.true.2357
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	movl	-148(%rbp), %eax
	movl	%eax, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jae	.LBB89_436
# BB#435:                               # %cond.true.2365
	xorl	%eax, %eax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	addq	$0, %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-148(%rbp), %eax
	movl	%eax, %edi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB89_437
.LBB89_436:                             # %cond.false.2384
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
.LBB89_437:                             # %cond.end.2389
	movq	-1056(%rbp), %rax       # 8-byte Reload
	shrq	$0, %rax
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jb	.LBB89_445
	jmp	.LBB89_442
.LBB89_438:                             # %cond.false.2394
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_440
# BB#439:                               # %cond.true.2401
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB89_441
.LBB89_440:                             # %cond.false.2410
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
.LBB89_441:                             # %cond.end.2415
	movq	-1064(%rbp), %rax       # 8-byte Reload
	shrq	$0, %rax
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jb	.LBB89_445
.LBB89_442:                             # %lor.lhs.false.2421
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jae	.LBB89_444
# BB#443:                               # %land.lhs.true.2428
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	jb	.LBB89_445
.LBB89_444:                             # %lor.lhs.false.2433
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rdx, %rax
	jae	.LBB89_449
.LBB89_445:                             # %cond.true.2438
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_447
# BB#446:                               # %cond.true.2443
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB89_448
.LBB89_447:                             # %cond.false.2446
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
.LBB89_448:                             # %cond.end.2451
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_453
.LBB89_449:                             # %cond.false.2453
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$0, %rdx
	cmpq	%rax, %rdx
	ja	.LBB89_451
# BB#450:                               # %cond.true.2458
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB89_452
.LBB89_451:                             # %cond.false.2461
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
.LBB89_452:                             # %cond.end.2466
	movq	-1080(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
.LBB89_453:                             # %lor.lhs.false.2468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_454
	jmp	.LBB89_539
.LBB89_454:                             # %cond.true.2469
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_455
	jmp	.LBB89_497
.LBB89_455:                             # %cond.true.2470
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_457
# BB#456:                               # %cond.true.2481
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	jmp	.LBB89_458
.LBB89_457:                             # %cond.false.2507
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1084(%rbp)       # 4-byte Spill
.LBB89_458:                             # %cond.end.2516
	movl	-1084(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_463
# BB#459:                               # %land.lhs.true.2520
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB89_461
# BB#460:                               # %land.lhs.true.2525
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_489
.LBB89_461:                             # %lor.lhs.false.2530
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB89_463
# BB#462:                               # %land.lhs.true.2535
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB89_489
.LBB89_463:                             # %lor.lhs.false.2540
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jge	.LBB89_475
# BB#464:                               # %cond.true.2545
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB89_469
# BB#465:                               # %cond.true.2550
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1088(%rbp)       # 4-byte Spill
	jge	.LBB89_467
# BB#466:                               # %cond.true.2563
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB89_468
.LBB89_467:                             # %cond.false.2576
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1092(%rbp)       # 4-byte Spill
.LBB89_468:                             # %cond.end.2585
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-1088(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_489
	jmp	.LBB89_486
.LBB89_469:                             # %cond.false.2592
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$-1, %eax
	jne	.LBB89_471
# BB#470:                               # %cond.true.2597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_489
	jmp	.LBB89_486
.LBB89_471:                             # %cond.false.2598
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_473
# BB#472:                               # %cond.true.2609
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	jmp	.LBB89_474
.LBB89_473:                             # %cond.false.2635
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
.LBB89_474:                             # %cond.end.2644
	movl	-1096(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_489
	jmp	.LBB89_486
.LBB89_475:                             # %cond.false.2653
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	cmpl	$0, %eax
	jne	.LBB89_477
# BB#476:                               # %cond.true.2658
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_489
	jmp	.LBB89_486
.LBB89_477:                             # %cond.false.2659
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB89_482
# BB#478:                               # %cond.true.2664
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1100(%rbp)       # 4-byte Spill
	jge	.LBB89_480
# BB#479:                               # %cond.true.2677
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dl
	movsbl	%dl, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	jmp	.LBB89_481
.LBB89_480:                             # %cond.false.2703
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1104(%rbp)       # 4-byte Spill
.LBB89_481:                             # %cond.end.2712
	movl	-1104(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movl	-1100(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_489
	jmp	.LBB89_486
.LBB89_482:                             # %cond.false.2719
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_484
# BB#483:                               # %cond.true.2730
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB89_485
.LBB89_484:                             # %cond.false.2743
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movb	%dl, %cl
	movsbl	%cl, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1108(%rbp)       # 4-byte Spill
.LBB89_485:                             # %cond.end.2752
	movl	-1108(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	cltd
	idivl	%ecx
	movq	-184(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_489
.LBB89_486:                             # %lor.lhs.false.2761
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB89_488
# BB#487:                               # %land.lhs.true.2771
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movsbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB89_489
.LBB89_488:                             # %lor.lhs.false.2779
	movl	$127, %eax
	movq	-184(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	-128(%rbp), %edi
	movb	%dil, %dl
	movsbl	%dl, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB89_493
.LBB89_489:                             # %cond.true.2787
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB89_491
# BB#490:                               # %cond.true.2795
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB89_492
.LBB89_491:                             # %cond.false.2803
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1112(%rbp)       # 4-byte Spill
.LBB89_492:                             # %cond.end.2813
	movl	-1112(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_493:                             # %cond.false.2816
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB89_495
# BB#494:                               # %cond.true.2824
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1116(%rbp)       # 4-byte Spill
	jmp	.LBB89_496
.LBB89_495:                             # %cond.false.2832
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1116(%rbp)       # 4-byte Spill
.LBB89_496:                             # %cond.end.2842
	movl	-1116(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_497:                             # %cond.false.2845
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_499
# BB#498:                               # %cond.true.2853
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB89_500
.LBB89_499:                             # %cond.false.2874
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
.LBB89_500:                             # %cond.end.2880
	movq	-1128(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_505
# BB#501:                               # %land.lhs.true.2884
	cmpq	$0, -184(%rbp)
	jge	.LBB89_503
# BB#502:                               # %land.lhs.true.2887
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jb	.LBB89_531
.LBB89_503:                             # %lor.lhs.false.2890
	cmpl	$0, -128(%rbp)
	jae	.LBB89_505
# BB#504:                               # %land.lhs.true.2893
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_531
.LBB89_505:                             # %lor.lhs.false.2896
	cmpl	$0, -128(%rbp)
	jae	.LBB89_517
# BB#506:                               # %cond.true.2899
	cmpq	$0, -184(%rbp)
	jge	.LBB89_511
# BB#507:                               # %cond.true.2902
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jge	.LBB89_509
# BB#508:                               # %cond.true.2910
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB89_510
.LBB89_509:                             # %cond.false.2920
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
.LBB89_510:                             # %cond.end.2926
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
	cqto
	movq	-1152(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_531
	jmp	.LBB89_528
.LBB89_511:                             # %cond.false.2932
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_513
# BB#512:                               # %cond.true.2935
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_531
	jmp	.LBB89_528
.LBB89_513:                             # %cond.false.2936
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_515
# BB#514:                               # %cond.true.2944
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB89_516
.LBB89_515:                             # %cond.false.2965
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
.LBB89_516:                             # %cond.end.2971
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	cqto
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_531
	jmp	.LBB89_528
.LBB89_517:                             # %cond.false.2977
	cmpl	$0, -128(%rbp)
	jne	.LBB89_519
# BB#518:                               # %cond.true.2980
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_531
	jmp	.LBB89_528
.LBB89_519:                             # %cond.false.2981
	cmpq	$0, -184(%rbp)
	jge	.LBB89_524
# BB#520:                               # %cond.true.2984
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jge	.LBB89_522
# BB#521:                               # %cond.true.2992
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB89_523
.LBB89_522:                             # %cond.false.3013
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
.LBB89_523:                             # %cond.end.3019
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1192(%rbp)       # 8-byte Spill
	cqto
	movq	-1192(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_531
	jmp	.LBB89_528
.LBB89_524:                             # %cond.false.3025
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_526
# BB#525:                               # %cond.true.3033
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB89_527
.LBB89_526:                             # %cond.false.3043
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
.LBB89_527:                             # %cond.end.3049
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
	cqto
	movq	-1208(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_531
.LBB89_528:                             # %lor.lhs.false.3055
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_530
# BB#529:                               # %land.lhs.true.3062
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	cmpq	$-128, %rax
	jl	.LBB89_531
.LBB89_530:                             # %lor.lhs.false.3067
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB89_535
.LBB89_531:                             # %cond.true.3072
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB89_533
# BB#532:                               # %cond.true.3080
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB89_534
.LBB89_533:                             # %cond.false.3088
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1212(%rbp)       # 4-byte Spill
.LBB89_534:                             # %cond.end.3098
	movl	-1212(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_535:                             # %cond.false.3101
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB89_537
# BB#536:                               # %cond.true.3109
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1216(%rbp)       # 4-byte Spill
	jmp	.LBB89_538
.LBB89_537:                             # %cond.false.3117
	movq	-184(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	-128(%rbp), %esi
	movb	%sil, %cl
	movzbl	%cl, %esi
	imull	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1216(%rbp)       # 4-byte Spill
.LBB89_538:                             # %cond.end.3127
	movl	-1216(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_539:                             # %cond.false.3130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_540
	jmp	.LBB89_625
.LBB89_540:                             # %cond.true.3131
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_541
	jmp	.LBB89_583
.LBB89_541:                             # %cond.true.3132
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_543
# BB#542:                               # %cond.true.3143
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB89_544
.LBB89_543:                             # %cond.false.3169
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
.LBB89_544:                             # %cond.end.3178
	movl	-1220(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_549
# BB#545:                               # %land.lhs.true.3182
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB89_547
# BB#546:                               # %land.lhs.true.3187
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_575
.LBB89_547:                             # %lor.lhs.false.3192
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB89_549
# BB#548:                               # %land.lhs.true.3197
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB89_575
.LBB89_549:                             # %lor.lhs.false.3202
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jge	.LBB89_561
# BB#550:                               # %cond.true.3207
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB89_555
# BB#551:                               # %cond.true.3212
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1224(%rbp)       # 4-byte Spill
	jge	.LBB89_553
# BB#552:                               # %cond.true.3225
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB89_554
.LBB89_553:                             # %cond.false.3238
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1228(%rbp)       # 4-byte Spill
.LBB89_554:                             # %cond.end.3247
	movl	-1228(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-1224(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_575
	jmp	.LBB89_572
.LBB89_555:                             # %cond.false.3254
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$-1, %eax
	jne	.LBB89_557
# BB#556:                               # %cond.true.3259
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_575
	jmp	.LBB89_572
.LBB89_557:                             # %cond.false.3260
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_559
# BB#558:                               # %cond.true.3271
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	jmp	.LBB89_560
.LBB89_559:                             # %cond.false.3297
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1232(%rbp)       # 4-byte Spill
.LBB89_560:                             # %cond.end.3306
	movl	-1232(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movq	-184(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_575
	jmp	.LBB89_572
.LBB89_561:                             # %cond.false.3315
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	cmpl	$0, %eax
	jne	.LBB89_563
# BB#562:                               # %cond.true.3320
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_575
	jmp	.LBB89_572
.LBB89_563:                             # %cond.false.3321
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB89_568
# BB#564:                               # %cond.true.3326
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1236(%rbp)       # 4-byte Spill
	jge	.LBB89_566
# BB#565:                               # %cond.true.3339
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %ecx
	subl	%ecx, %eax
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	imull	$0, %ecx, %ecx
	movq	-184(%rbp), %rsi
	movw	%si, %dx
	movswl	%dx, %edi
	addl	%edi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1240(%rbp)       # 4-byte Spill
	jmp	.LBB89_567
.LBB89_566:                             # %cond.false.3365
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1240(%rbp)       # 4-byte Spill
.LBB89_567:                             # %cond.end.3374
	movl	-1240(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movl	-1236(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_575
	jmp	.LBB89_572
.LBB89_568:                             # %cond.false.3381
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_570
# BB#569:                               # %cond.true.3392
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	jmp	.LBB89_571
.LBB89_570:                             # %cond.false.3405
	movl	-128(%rbp), %eax
	movw	%ax, %cx
	movswl	%cx, %eax
	imull	$0, %eax, %eax
	movq	-184(%rbp), %rdx
	movw	%dx, %cx
	movswl	%cx, %esi
	addl	%esi, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1244(%rbp)       # 4-byte Spill
.LBB89_571:                             # %cond.end.3414
	movl	-1244(%rbp), %eax       # 4-byte Reload
	movl	-128(%rbp), %ecx
	movw	%cx, %dx
	movswl	%dx, %ecx
	cltd
	idivl	%ecx
	movq	-184(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB89_575
.LBB89_572:                             # %lor.lhs.false.3423
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB89_574
# BB#573:                               # %land.lhs.true.3433
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movswl	%cx, %esi
	imull	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB89_575
.LBB89_574:                             # %lor.lhs.false.3441
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-184(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movl	-128(%rbp), %edi
	movw	%di, %dx
	movswl	%dx, %edi
	imull	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB89_579
.LBB89_575:                             # %cond.true.3449
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB89_577
# BB#576:                               # %cond.true.3457
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1248(%rbp)       # 4-byte Spill
	jmp	.LBB89_578
.LBB89_577:                             # %cond.false.3465
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1248(%rbp)       # 4-byte Spill
.LBB89_578:                             # %cond.end.3475
	movl	-1248(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_579:                             # %cond.false.3478
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB89_581
# BB#580:                               # %cond.true.3486
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1252(%rbp)       # 4-byte Spill
	jmp	.LBB89_582
.LBB89_581:                             # %cond.false.3494
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1252(%rbp)       # 4-byte Spill
.LBB89_582:                             # %cond.end.3504
	movl	-1252(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_583:                             # %cond.false.3507
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_585
# BB#584:                               # %cond.true.3515
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB89_586
.LBB89_585:                             # %cond.false.3536
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1264(%rbp)       # 8-byte Spill
.LBB89_586:                             # %cond.end.3542
	movq	-1264(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_591
# BB#587:                               # %land.lhs.true.3546
	cmpq	$0, -184(%rbp)
	jge	.LBB89_589
# BB#588:                               # %land.lhs.true.3549
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jb	.LBB89_617
.LBB89_589:                             # %lor.lhs.false.3552
	cmpl	$0, -128(%rbp)
	jae	.LBB89_591
# BB#590:                               # %land.lhs.true.3555
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_617
.LBB89_591:                             # %lor.lhs.false.3558
	cmpl	$0, -128(%rbp)
	jae	.LBB89_603
# BB#592:                               # %cond.true.3561
	cmpq	$0, -184(%rbp)
	jge	.LBB89_597
# BB#593:                               # %cond.true.3564
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	jge	.LBB89_595
# BB#594:                               # %cond.true.3572
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB89_596
.LBB89_595:                             # %cond.false.3582
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
.LBB89_596:                             # %cond.end.3588
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_617
	jmp	.LBB89_614
.LBB89_597:                             # %cond.false.3594
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_599
# BB#598:                               # %cond.true.3597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_617
	jmp	.LBB89_614
.LBB89_599:                             # %cond.false.3598
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_601
# BB#600:                               # %cond.true.3606
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB89_602
.LBB89_601:                             # %cond.false.3627
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
.LBB89_602:                             # %cond.end.3633
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
	cqto
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_617
	jmp	.LBB89_614
.LBB89_603:                             # %cond.false.3639
	cmpl	$0, -128(%rbp)
	jne	.LBB89_605
# BB#604:                               # %cond.true.3642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_617
	jmp	.LBB89_614
.LBB89_605:                             # %cond.false.3643
	cmpq	$0, -184(%rbp)
	jge	.LBB89_610
# BB#606:                               # %cond.true.3646
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jge	.LBB89_608
# BB#607:                               # %cond.true.3654
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB89_609
.LBB89_608:                             # %cond.false.3675
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1320(%rbp)       # 8-byte Spill
.LBB89_609:                             # %cond.end.3681
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
	cqto
	movq	-1328(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_617
	jmp	.LBB89_614
.LBB89_610:                             # %cond.false.3687
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_612
# BB#611:                               # %cond.true.3695
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB89_613
.LBB89_612:                             # %cond.false.3705
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1336(%rbp)       # 8-byte Spill
.LBB89_613:                             # %cond.end.3711
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1344(%rbp)       # 8-byte Spill
	cqto
	movq	-1344(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_617
.LBB89_614:                             # %lor.lhs.false.3717
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_616
# BB#615:                               # %land.lhs.true.3724
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB89_617
.LBB89_616:                             # %lor.lhs.false.3729
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB89_621
.LBB89_617:                             # %cond.true.3734
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB89_619
# BB#618:                               # %cond.true.3742
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1348(%rbp)       # 4-byte Spill
	jmp	.LBB89_620
.LBB89_619:                             # %cond.false.3750
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1348(%rbp)       # 4-byte Spill
.LBB89_620:                             # %cond.end.3760
	movl	-1348(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_621:                             # %cond.false.3763
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB89_623
# BB#622:                               # %cond.true.3771
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1352(%rbp)       # 4-byte Spill
	jmp	.LBB89_624
.LBB89_623:                             # %cond.false.3779
	movq	-184(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movl	-128(%rbp), %esi
	movw	%si, %cx
	movzwl	%cx, %esi
	imull	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1352(%rbp)       # 4-byte Spill
.LBB89_624:                             # %cond.end.3789
	movl	-1352(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_625:                             # %cond.false.3792
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_626
	jmp	.LBB89_711
.LBB89_626:                             # %cond.true.3793
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_627
	jmp	.LBB89_669
.LBB89_627:                             # %cond.true.3794
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_629
# BB#628:                               # %cond.true.3802
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1356(%rbp)       # 4-byte Spill
	jmp	.LBB89_630
.LBB89_629:                             # %cond.false.3822
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1356(%rbp)       # 4-byte Spill
.LBB89_630:                             # %cond.end.3828
	movl	-1356(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB89_635
# BB#631:                               # %land.lhs.true.3832
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB89_633
# BB#632:                               # %land.lhs.true.3836
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jl	.LBB89_661
.LBB89_633:                             # %lor.lhs.false.3839
	cmpl	$0, -128(%rbp)
	jge	.LBB89_635
# BB#634:                               # %land.lhs.true.3842
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB89_661
.LBB89_635:                             # %lor.lhs.false.3846
	cmpl	$0, -128(%rbp)
	jge	.LBB89_647
# BB#636:                               # %cond.true.3849
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB89_641
# BB#637:                               # %cond.true.3853
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -128(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1360(%rbp)       # 4-byte Spill
	jge	.LBB89_639
# BB#638:                               # %cond.true.3862
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	jmp	.LBB89_640
.LBB89_639:                             # %cond.false.3872
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1364(%rbp)       # 4-byte Spill
.LBB89_640:                             # %cond.end.3878
	movl	-1364(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-128(%rbp)
	movl	-1360(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_661
	jmp	.LBB89_658
.LBB89_641:                             # %cond.false.3883
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_643
# BB#642:                               # %cond.true.3886
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_661
	jmp	.LBB89_658
.LBB89_643:                             # %cond.false.3887
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_645
# BB#644:                               # %cond.true.3895
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1368(%rbp)       # 4-byte Spill
	jmp	.LBB89_646
.LBB89_645:                             # %cond.false.3915
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1368(%rbp)       # 4-byte Spill
.LBB89_646:                             # %cond.end.3921
	movl	-1368(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-128(%rbp)
	movq	-184(%rbp), %rcx
	movl	%ecx, %esi
	cmpl	%esi, %eax
	jl	.LBB89_661
	jmp	.LBB89_658
.LBB89_647:                             # %cond.false.3927
	cmpl	$0, -128(%rbp)
	jne	.LBB89_649
# BB#648:                               # %cond.true.3930
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_661
	jmp	.LBB89_658
.LBB89_649:                             # %cond.false.3931
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB89_654
# BB#650:                               # %cond.true.3935
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, -128(%rbp), %edx
	movq	-184(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1372(%rbp)       # 4-byte Spill
	jge	.LBB89_652
# BB#651:                               # %cond.true.3944
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	xorl	$-1, %ecx
	cmpl	$-1, %ecx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %ecx
	subl	%ecx, %eax
	imull	$0, -128(%rbp), %ecx
	movq	-184(%rbp), %rdx
	movl	%edx, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -1376(%rbp)       # 4-byte Spill
	jmp	.LBB89_653
.LBB89_652:                             # %cond.false.3964
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$0, %eax
	movl	%eax, -1376(%rbp)       # 4-byte Spill
.LBB89_653:                             # %cond.end.3970
	movl	-1376(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-128(%rbp)
	movl	-1372(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB89_661
	jmp	.LBB89_658
.LBB89_654:                             # %cond.false.3975
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB89_656
# BB#655:                               # %cond.true.3983
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	addl	$1, %eax
	shll	$30, %eax
	subl	$1, %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, -1380(%rbp)       # 4-byte Spill
	jmp	.LBB89_657
.LBB89_656:                             # %cond.false.3993
	imull	$0, -128(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	addl	%edx, %eax
	imull	$0, %eax, %eax
	subl	$1, %eax
	movl	%eax, -1380(%rbp)       # 4-byte Spill
.LBB89_657:                             # %cond.end.3999
	movl	-1380(%rbp), %eax       # 4-byte Reload
	cltd
	idivl	-128(%rbp)
	movq	-184(%rbp), %rcx
	movl	%ecx, %esi
	cmpl	%esi, %eax
	jl	.LBB89_661
.LBB89_658:                             # %lor.lhs.false.4005
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB89_660
# BB#659:                               # %land.lhs.true.4012
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB89_661
.LBB89_660:                             # %lor.lhs.false.4017
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-184(%rbp), %rcx
	movl	%ecx, %edx
	imull	-128(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB89_665
.LBB89_661:                             # %cond.true.4022
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB89_663
# BB#662:                               # %cond.true.4027
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	movl	%ecx, -1384(%rbp)       # 4-byte Spill
	jmp	.LBB89_664
.LBB89_663:                             # %cond.false.4030
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1384(%rbp)       # 4-byte Spill
.LBB89_664:                             # %cond.end.4035
	movl	-1384(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_665:                             # %cond.false.4038
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB89_667
# BB#666:                               # %cond.true.4043
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	movl	%ecx, -1388(%rbp)       # 4-byte Spill
	jmp	.LBB89_668
.LBB89_667:                             # %cond.false.4046
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1388(%rbp)       # 4-byte Spill
.LBB89_668:                             # %cond.end.4051
	movl	-1388(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_669:                             # %cond.false.4054
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_671
# BB#670:                               # %cond.true.4062
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB89_672
.LBB89_671:                             # %cond.false.4083
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
.LBB89_672:                             # %cond.end.4089
	movq	-1400(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_677
# BB#673:                               # %land.lhs.true.4093
	cmpq	$0, -184(%rbp)
	jge	.LBB89_675
# BB#674:                               # %land.lhs.true.4096
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jb	.LBB89_703
.LBB89_675:                             # %lor.lhs.false.4099
	cmpl	$0, -128(%rbp)
	jae	.LBB89_677
# BB#676:                               # %land.lhs.true.4102
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_703
.LBB89_677:                             # %lor.lhs.false.4105
	cmpl	$0, -128(%rbp)
	jae	.LBB89_689
# BB#678:                               # %cond.true.4108
	cmpq	$0, -184(%rbp)
	jge	.LBB89_683
# BB#679:                               # %cond.true.4111
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	jge	.LBB89_681
# BB#680:                               # %cond.true.4119
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB89_682
.LBB89_681:                             # %cond.false.4129
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1416(%rbp)       # 8-byte Spill
.LBB89_682:                             # %cond.end.4135
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
	cqto
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_703
	jmp	.LBB89_700
.LBB89_683:                             # %cond.false.4141
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_685
# BB#684:                               # %cond.true.4144
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_703
	jmp	.LBB89_700
.LBB89_685:                             # %cond.false.4145
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_687
# BB#686:                               # %cond.true.4153
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB89_688
.LBB89_687:                             # %cond.false.4174
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
.LBB89_688:                             # %cond.end.4180
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1440(%rbp)       # 8-byte Spill
	cqto
	movq	-1440(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_703
	jmp	.LBB89_700
.LBB89_689:                             # %cond.false.4186
	cmpl	$0, -128(%rbp)
	jne	.LBB89_691
# BB#690:                               # %cond.true.4189
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_703
	jmp	.LBB89_700
.LBB89_691:                             # %cond.false.4190
	cmpq	$0, -184(%rbp)
	jge	.LBB89_696
# BB#692:                               # %cond.true.4193
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	jge	.LBB89_694
# BB#693:                               # %cond.true.4201
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1456(%rbp)       # 8-byte Spill
	jmp	.LBB89_695
.LBB89_694:                             # %cond.false.4222
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1456(%rbp)       # 8-byte Spill
.LBB89_695:                             # %cond.end.4228
	movq	-1456(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1464(%rbp)       # 8-byte Spill
	cqto
	movq	-1464(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_703
	jmp	.LBB89_700
.LBB89_696:                             # %cond.false.4234
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_698
# BB#697:                               # %cond.true.4242
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB89_699
.LBB89_698:                             # %cond.false.4252
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
.LBB89_699:                             # %cond.end.4258
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1480(%rbp)       # 8-byte Spill
	cqto
	movq	-1480(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_703
.LBB89_700:                             # %lor.lhs.false.4264
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_702
# BB#701:                               # %land.lhs.true.4271
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB89_703
.LBB89_702:                             # %lor.lhs.false.4276
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-184(%rbp), %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %esi
	imulq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB89_707
.LBB89_703:                             # %cond.true.4281
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB89_705
# BB#704:                               # %cond.true.4286
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	movl	%ecx, -1484(%rbp)       # 4-byte Spill
	jmp	.LBB89_706
.LBB89_705:                             # %cond.false.4289
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1484(%rbp)       # 4-byte Spill
.LBB89_706:                             # %cond.end.4294
	movl	-1484(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_707:                             # %cond.false.4297
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB89_709
# BB#708:                               # %cond.true.4302
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	movl	%ecx, -1488(%rbp)       # 4-byte Spill
	jmp	.LBB89_710
.LBB89_709:                             # %cond.false.4305
	movq	-184(%rbp), %rax
	movl	%eax, %ecx
	imull	-128(%rbp), %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1488(%rbp)       # 4-byte Spill
.LBB89_710:                             # %cond.end.4310
	movl	-1488(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_711:                             # %cond.false.4313
	movb	$1, %al
	testb	$1, %al
	jne	.LBB89_712
	jmp	.LBB89_797
.LBB89_712:                             # %cond.true.4314
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_713
	jmp	.LBB89_755
.LBB89_713:                             # %cond.true.4315
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_715
# BB#714:                               # %cond.true.4323
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB89_716
.LBB89_715:                             # %cond.false.4344
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
.LBB89_716:                             # %cond.end.4350
	movq	-1496(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_721
# BB#717:                               # %land.lhs.true.4354
	cmpq	$0, -184(%rbp)
	jge	.LBB89_719
# BB#718:                               # %land.lhs.true.4357
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-128(%rbp), %eax
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jl	.LBB89_747
.LBB89_719:                             # %lor.lhs.false.4361
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_721
# BB#720:                               # %land.lhs.true.4365
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_747
.LBB89_721:                             # %lor.lhs.false.4368
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_733
# BB#722:                               # %cond.true.4372
	cmpq	$0, -184(%rbp)
	jge	.LBB89_727
# BB#723:                               # %cond.true.4375
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	jge	.LBB89_725
# BB#724:                               # %cond.true.4383
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB89_726
.LBB89_725:                             # %cond.false.4393
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1512(%rbp)       # 8-byte Spill
.LBB89_726:                             # %cond.end.4399
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1520(%rbp)       # 8-byte Spill
	cqto
	movq	-1520(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_747
	jmp	.LBB89_744
.LBB89_727:                             # %cond.false.4405
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$-1, %rcx
	jne	.LBB89_729
# BB#728:                               # %cond.true.4409
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_747
	jmp	.LBB89_744
.LBB89_729:                             # %cond.false.4410
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_731
# BB#730:                               # %cond.true.4418
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB89_732
.LBB89_731:                             # %cond.false.4439
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
.LBB89_732:                             # %cond.end.4445
	movq	-1528(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1536(%rbp)       # 8-byte Spill
	cqto
	movq	-1536(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_747
	jmp	.LBB89_744
.LBB89_733:                             # %cond.false.4451
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jne	.LBB89_735
# BB#734:                               # %cond.true.4455
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_747
	jmp	.LBB89_744
.LBB89_735:                             # %cond.false.4456
	cmpq	$0, -184(%rbp)
	jge	.LBB89_740
# BB#736:                               # %cond.true.4459
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jge	.LBB89_738
# BB#737:                               # %cond.true.4467
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1552(%rbp)       # 8-byte Spill
	jmp	.LBB89_739
.LBB89_738:                             # %cond.false.4488
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1552(%rbp)       # 8-byte Spill
.LBB89_739:                             # %cond.end.4494
	movq	-1552(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1560(%rbp)       # 8-byte Spill
	cqto
	movq	-1560(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1544(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_747
	jmp	.LBB89_744
.LBB89_740:                             # %cond.false.4500
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_742
# BB#741:                               # %cond.true.4508
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
	jmp	.LBB89_743
.LBB89_742:                             # %cond.false.4518
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1568(%rbp)       # 8-byte Spill
.LBB89_743:                             # %cond.end.4524
	movq	-1568(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1576(%rbp)       # 8-byte Spill
	cqto
	movq	-1576(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_747
.LBB89_744:                             # %lor.lhs.false.4530
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_746
# BB#745:                               # %land.lhs.true.4537
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB89_747
.LBB89_746:                             # %lor.lhs.false.4542
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB89_751
.LBB89_747:                             # %cond.true.4547
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_749
# BB#748:                               # %cond.true.4552
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	jmp	.LBB89_750
.LBB89_749:                             # %cond.false.4555
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
.LBB89_750:                             # %cond.end.4560
	movq	-1584(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_751:                             # %cond.false.4562
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_753
# BB#752:                               # %cond.true.4567
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	jmp	.LBB89_754
.LBB89_753:                             # %cond.false.4570
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
.LBB89_754:                             # %cond.end.4575
	movq	-1592(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_755:                             # %cond.false.4577
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_757
# BB#756:                               # %cond.true.4585
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1600(%rbp)       # 8-byte Spill
	jmp	.LBB89_758
.LBB89_757:                             # %cond.false.4606
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1600(%rbp)       # 8-byte Spill
.LBB89_758:                             # %cond.end.4612
	movq	-1600(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_763
# BB#759:                               # %land.lhs.true.4616
	cmpq	$0, -184(%rbp)
	jge	.LBB89_761
# BB#760:                               # %land.lhs.true.4619
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jb	.LBB89_789
.LBB89_761:                             # %lor.lhs.false.4622
	cmpl	$0, -128(%rbp)
	jae	.LBB89_763
# BB#762:                               # %land.lhs.true.4625
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_789
.LBB89_763:                             # %lor.lhs.false.4628
	cmpl	$0, -128(%rbp)
	jae	.LBB89_775
# BB#764:                               # %cond.true.4631
	cmpq	$0, -184(%rbp)
	jge	.LBB89_769
# BB#765:                               # %cond.true.4634
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	jge	.LBB89_767
# BB#766:                               # %cond.true.4642
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1616(%rbp)       # 8-byte Spill
	jmp	.LBB89_768
.LBB89_767:                             # %cond.false.4652
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1616(%rbp)       # 8-byte Spill
.LBB89_768:                             # %cond.end.4658
	movq	-1616(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1624(%rbp)       # 8-byte Spill
	cqto
	movq	-1624(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1608(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_789
	jmp	.LBB89_786
.LBB89_769:                             # %cond.false.4664
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_771
# BB#770:                               # %cond.true.4667
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_789
	jmp	.LBB89_786
.LBB89_771:                             # %cond.false.4668
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_773
# BB#772:                               # %cond.true.4676
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
	jmp	.LBB89_774
.LBB89_773:                             # %cond.false.4697
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1632(%rbp)       # 8-byte Spill
.LBB89_774:                             # %cond.end.4703
	movq	-1632(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1640(%rbp)       # 8-byte Spill
	cqto
	movq	-1640(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_789
	jmp	.LBB89_786
.LBB89_775:                             # %cond.false.4709
	cmpl	$0, -128(%rbp)
	jne	.LBB89_777
# BB#776:                               # %cond.true.4712
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_789
	jmp	.LBB89_786
.LBB89_777:                             # %cond.false.4713
	cmpq	$0, -184(%rbp)
	jge	.LBB89_782
# BB#778:                               # %cond.true.4716
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	jge	.LBB89_780
# BB#779:                               # %cond.true.4724
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1656(%rbp)       # 8-byte Spill
	jmp	.LBB89_781
.LBB89_780:                             # %cond.false.4745
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1656(%rbp)       # 8-byte Spill
.LBB89_781:                             # %cond.end.4751
	movq	-1656(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1664(%rbp)       # 8-byte Spill
	cqto
	movq	-1664(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1648(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_789
	jmp	.LBB89_786
.LBB89_782:                             # %cond.false.4757
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_784
# BB#783:                               # %cond.true.4765
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1672(%rbp)       # 8-byte Spill
	jmp	.LBB89_785
.LBB89_784:                             # %cond.false.4775
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1672(%rbp)       # 8-byte Spill
.LBB89_785:                             # %cond.end.4781
	movq	-1672(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1680(%rbp)       # 8-byte Spill
	cqto
	movq	-1680(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_789
.LBB89_786:                             # %lor.lhs.false.4787
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_788
# BB#787:                               # %land.lhs.true.4794
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB89_789
.LBB89_788:                             # %lor.lhs.false.4799
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB89_793
.LBB89_789:                             # %cond.true.4804
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_791
# BB#790:                               # %cond.true.4809
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	jmp	.LBB89_792
.LBB89_791:                             # %cond.false.4812
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
.LBB89_792:                             # %cond.end.4817
	movq	-1688(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_793:                             # %cond.false.4819
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_795
# BB#794:                               # %cond.true.4824
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	jmp	.LBB89_796
.LBB89_795:                             # %cond.false.4827
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
.LBB89_796:                             # %cond.end.4832
	movq	-1696(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_797:                             # %cond.false.4834
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_798
	jmp	.LBB89_840
.LBB89_798:                             # %cond.true.4835
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_800
# BB#799:                               # %cond.true.4843
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1704(%rbp)       # 8-byte Spill
	jmp	.LBB89_801
.LBB89_800:                             # %cond.false.4864
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1704(%rbp)       # 8-byte Spill
.LBB89_801:                             # %cond.end.4870
	movq	-1704(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_806
# BB#802:                               # %land.lhs.true.4874
	cmpq	$0, -184(%rbp)
	jge	.LBB89_804
# BB#803:                               # %land.lhs.true.4877
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-128(%rbp), %eax
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jl	.LBB89_832
.LBB89_804:                             # %lor.lhs.false.4881
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_806
# BB#805:                               # %land.lhs.true.4885
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_832
.LBB89_806:                             # %lor.lhs.false.4888
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jge	.LBB89_818
# BB#807:                               # %cond.true.4892
	cmpq	$0, -184(%rbp)
	jge	.LBB89_812
# BB#808:                               # %cond.true.4895
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	jge	.LBB89_810
# BB#809:                               # %cond.true.4903
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1720(%rbp)       # 8-byte Spill
	jmp	.LBB89_811
.LBB89_810:                             # %cond.false.4913
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1720(%rbp)       # 8-byte Spill
.LBB89_811:                             # %cond.end.4919
	movq	-1720(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1728(%rbp)       # 8-byte Spill
	cqto
	movq	-1728(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1712(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_832
	jmp	.LBB89_829
.LBB89_812:                             # %cond.false.4925
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$-1, %rcx
	jne	.LBB89_814
# BB#813:                               # %cond.true.4929
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_832
	jmp	.LBB89_829
.LBB89_814:                             # %cond.false.4930
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_816
# BB#815:                               # %cond.true.4938
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1736(%rbp)       # 8-byte Spill
	jmp	.LBB89_817
.LBB89_816:                             # %cond.false.4959
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1736(%rbp)       # 8-byte Spill
.LBB89_817:                             # %cond.end.4965
	movq	-1736(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1744(%rbp)       # 8-byte Spill
	cqto
	movq	-1744(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_832
	jmp	.LBB89_829
.LBB89_818:                             # %cond.false.4971
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$0, %rcx
	jne	.LBB89_820
# BB#819:                               # %cond.true.4975
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_832
	jmp	.LBB89_829
.LBB89_820:                             # %cond.false.4976
	cmpq	$0, -184(%rbp)
	jge	.LBB89_825
# BB#821:                               # %cond.true.4979
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jge	.LBB89_823
# BB#822:                               # %cond.true.4987
	xorl	%eax, %eax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$0, %rdx, %rdx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	imulq	$0, %rdi, %rdi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB89_824
.LBB89_823:                             # %cond.false.5008
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1760(%rbp)       # 8-byte Spill
.LBB89_824:                             # %cond.end.5014
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1768(%rbp)       # 8-byte Spill
	cqto
	movq	-1768(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_832
	jmp	.LBB89_829
.LBB89_825:                             # %cond.false.5020
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_827
# BB#826:                               # %cond.true.5028
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1776(%rbp)       # 8-byte Spill
	jmp	.LBB89_828
.LBB89_827:                             # %cond.false.5038
	movl	-128(%rbp), %eax
	movl	%eax, %ecx
	imulq	$0, %rcx, %rcx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1776(%rbp)       # 8-byte Spill
.LBB89_828:                             # %cond.end.5044
	movq	-1776(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1784(%rbp)       # 8-byte Spill
	cqto
	movq	-1784(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_832
.LBB89_829:                             # %lor.lhs.false.5050
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_831
# BB#830:                               # %land.lhs.true.5057
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB89_832
.LBB89_831:                             # %lor.lhs.false.5062
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB89_836
.LBB89_832:                             # %cond.true.5067
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_834
# BB#833:                               # %cond.true.5072
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	jmp	.LBB89_835
.LBB89_834:                             # %cond.false.5075
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1792(%rbp)       # 8-byte Spill
.LBB89_835:                             # %cond.end.5080
	movq	-1792(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_836:                             # %cond.false.5082
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_838
# BB#837:                               # %cond.true.5087
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB89_839
.LBB89_838:                             # %cond.false.5090
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB89_839:                             # %cond.end.5095
	movq	-1800(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_840:                             # %cond.false.5097
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_842
# BB#841:                               # %cond.true.5105
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1808(%rbp)       # 8-byte Spill
	jmp	.LBB89_843
.LBB89_842:                             # %cond.false.5126
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1808(%rbp)       # 8-byte Spill
.LBB89_843:                             # %cond.end.5132
	movq	-1808(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB89_848
# BB#844:                               # %land.lhs.true.5136
	cmpq	$0, -184(%rbp)
	jge	.LBB89_846
# BB#845:                               # %land.lhs.true.5139
	xorl	%eax, %eax
	cmpl	-128(%rbp), %eax
	jb	.LBB89_874
.LBB89_846:                             # %lor.lhs.false.5142
	cmpl	$0, -128(%rbp)
	jae	.LBB89_848
# BB#847:                               # %land.lhs.true.5145
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-184(%rbp), %rcx
	jl	.LBB89_874
.LBB89_848:                             # %lor.lhs.false.5148
	cmpl	$0, -128(%rbp)
	jae	.LBB89_860
# BB#849:                               # %cond.true.5151
	cmpq	$0, -184(%rbp)
	jge	.LBB89_854
# BB#850:                               # %cond.true.5154
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jge	.LBB89_852
# BB#851:                               # %cond.true.5162
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1824(%rbp)       # 8-byte Spill
	jmp	.LBB89_853
.LBB89_852:                             # %cond.false.5172
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1824(%rbp)       # 8-byte Spill
.LBB89_853:                             # %cond.end.5178
	movq	-1824(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1832(%rbp)       # 8-byte Spill
	cqto
	movq	-1832(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1816(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_874
	jmp	.LBB89_871
.LBB89_854:                             # %cond.false.5184
	cmpl	$-1, -128(%rbp)
	jne	.LBB89_856
# BB#855:                               # %cond.true.5187
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_874
	jmp	.LBB89_871
.LBB89_856:                             # %cond.false.5188
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_858
# BB#857:                               # %cond.true.5196
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1840(%rbp)       # 8-byte Spill
	jmp	.LBB89_859
.LBB89_858:                             # %cond.false.5217
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1840(%rbp)       # 8-byte Spill
.LBB89_859:                             # %cond.end.5223
	movq	-1840(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1848(%rbp)       # 8-byte Spill
	cqto
	movq	-1848(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_874
	jmp	.LBB89_871
.LBB89_860:                             # %cond.false.5229
	cmpl	$0, -128(%rbp)
	jne	.LBB89_862
# BB#861:                               # %cond.true.5232
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB89_874
	jmp	.LBB89_871
.LBB89_862:                             # %cond.false.5233
	cmpq	$0, -184(%rbp)
	jge	.LBB89_867
# BB#863:                               # %cond.true.5236
	movq	-184(%rbp), %rax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	subq	$1, %rdx
	cmpq	$0, %rdx
	movq	%rax, -1856(%rbp)       # 8-byte Spill
	jge	.LBB89_865
# BB#864:                               # %cond.true.5244
	xorl	%eax, %eax
	imull	$0, -128(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	-184(%rbp), %rdx
	imulq	$0, %rdx, %rdx
	addq	$0, %rdx
	xorq	$-1, %rdx
	cmpq	$-1, %rdx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %ecx
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	addq	-184(%rbp), %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rdx
	movq	%rdx, -1864(%rbp)       # 8-byte Spill
	jmp	.LBB89_866
.LBB89_865:                             # %cond.false.5265
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	movq	%rcx, -1864(%rbp)       # 8-byte Spill
.LBB89_866:                             # %cond.end.5271
	movq	-1864(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1872(%rbp)       # 8-byte Spill
	cqto
	movq	-1872(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB89_874
	jmp	.LBB89_871
.LBB89_867:                             # %cond.false.5277
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	jge	.LBB89_869
# BB#868:                               # %cond.true.5285
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	addq	$1, %rcx
	shlq	$62, %rcx
	subq	$1, %rcx
	shlq	$1, %rcx
	addq	$1, %rcx
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB89_870
.LBB89_869:                             # %cond.false.5295
	imull	$0, -128(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	addq	-184(%rbp), %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
.LBB89_870:                             # %cond.end.5301
	movq	-1880(%rbp), %rax       # 8-byte Reload
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rdx, -1888(%rbp)       # 8-byte Spill
	cqto
	movq	-1888(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-184(%rbp), %rax
	jl	.LBB89_874
.LBB89_871:                             # %lor.lhs.false.5307
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB89_873
# BB#872:                               # %land.lhs.true.5314
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	jl	.LBB89_874
.LBB89_873:                             # %lor.lhs.false.5319
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rcx, %rax
	jge	.LBB89_878
.LBB89_874:                             # %cond.true.5324
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_876
# BB#875:                               # %cond.true.5329
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	jmp	.LBB89_877
.LBB89_876:                             # %cond.false.5332
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
.LBB89_877:                             # %cond.end.5337
	movq	-1896(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -184(%rbp)
	testb	$1, %cl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_878:                             # %cond.false.5339
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-184(%rbp), %rcx
	movl	-128(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	cmpq	%rax, %rcx
	ja	.LBB89_880
# BB#879:                               # %cond.true.5344
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jmp	.LBB89_881
.LBB89_880:                             # %cond.false.5347
	movq	-184(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	imulq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	subq	%rdx, %rax
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	addq	%rdx, %rax
	movq	%rax, -1904(%rbp)       # 8-byte Spill
.LBB89_881:                             # %cond.end.5352
	movq	-1904(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -184(%rbp)
	testb	$1, %dl
	jne	.LBB89_882
	jmp	.LBB89_883
.LBB89_882:                             # %if.then.5354
	movq	$-1, %rdi
	callq	memory_full
.LBB89_883:                             # %if.end.5355
	movq	-184(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movl	-128(%rbp), %ecx
	movl	%ecx, %eax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	$0, -64(%rbp)
.LBB89_884:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movl	-128(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jge	.LBB89_887
# BB#885:                               # %for.body
                                        #   in Loop: Header=BB89_884 Depth=1
	movq	-112(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	-148(%rbp), %edx
	movl	%edx, %esi
	imulq	%rsi, %rcx
	addq	%rcx, %rax
	movq	-64(%rbp), %rcx
	movq	-120(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#886:                               # %for.inc
                                        #   in Loop: Header=BB89_884 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB89_884
.LBB89_887:                             # %for.end
	movq	-72(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	png_read_image
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_read_end
	cmpq	$0, -96(%rbp)
	je	.LBB89_889
# BB#888:                               # %if.then.5369
	movq	-96(%rbp), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movq	$0, 24(%rdi)
	movl	%eax, -1908(%rbp)       # 4-byte Spill
.LBB89_889:                             # %if.end.5372
	movzbl	-141(%rbp), %eax
	cmpl	$4, %eax
	jne	.LBB89_893
# BB#890:                               # %land.lhs.true.5376
	testb	$1, -149(%rbp)
	jne	.LBB89_893
# BB#891:                               # %land.lhs.true.5378
	movl	$1, %r8d
	leaq	-200(%rbp), %r9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	$1, (%rsp)
	callq	image_create_x_image_and_pixmap
	testb	$1, %al
	jne	.LBB89_893
# BB#892:                               # %if.then.5380
	movq	-192(%rbp), %rdi
	callq	x_destroy_x_image
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_clear_image_1
	jmp	.LBB89_26
.LBB89_893:                             # %if.end.5381
	callq	init_color_table
	movl	$0, -56(%rbp)
.LBB89_894:                             # %for.cond.5382
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB89_896 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jae	.LBB89_905
# BB#895:                               # %for.body.5385
                                        #   in Loop: Header=BB89_894 Depth=1
	movslq	-56(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -264(%rbp)
	movl	$0, -52(%rbp)
.LBB89_896:                             # %for.cond.5387
                                        #   Parent Loop BB89_894 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jae	.LBB89_903
# BB#897:                               # %for.body.5390
                                        #   in Loop: Header=BB89_896 Depth=2
	movq	-264(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -264(%rbp)
	movzbl	(%rax), %edx
	shll	$8, %edx
	movl	%edx, -268(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -264(%rbp)
	movzbl	(%rax), %edx
	shll	$8, %edx
	movl	%edx, -272(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -264(%rbp)
	movzbl	(%rax), %edx
	shll	$8, %edx
	movl	%edx, -276(%rbp)
	movq	-192(%rbp), %rax
	movq	112(%rax), %rax
	movq	-192(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	-268(%rbp), %r8d
	movl	-272(%rbp), %r9d
	movl	-276(%rbp), %r10d
	movq	%rdi, -1920(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movl	%esi, -1924(%rbp)       # 4-byte Spill
	movl	%r8d, %esi
	movl	%edx, -1928(%rbp)       # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	lookup_rgb_color
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	movl	-1924(%rbp), %esi       # 4-byte Reload
	movl	-1928(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movq	-1936(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	movzbl	-141(%rbp), %edx
	cmpl	$4, %edx
	movl	%eax, -1940(%rbp)       # 4-byte Spill
	jne	.LBB89_901
# BB#898:                               # %if.then.5405
                                        #   in Loop: Header=BB89_896 Depth=2
	cmpq	$0, -200(%rbp)
	je	.LBB89_900
# BB#899:                               # %if.then.5407
                                        #   in Loop: Header=BB89_896 Depth=2
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-200(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	-200(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %r8d
	movq	-264(%rbp), %r9
	movzbl	(%r9), %r10d
	cmpl	$0, %r10d
	cmovgl	%ecx, %eax
	movslq	%eax, %rcx
	movq	%rdx, -1952(%rbp)       # 8-byte Spill
	movl	%r8d, %edx
	movq	-1952(%rbp), %r9        # 8-byte Reload
	callq	*%r9
	movl	%eax, -1956(%rbp)       # 4-byte Spill
.LBB89_900:                             # %if.end.5416
                                        #   in Loop: Header=BB89_896 Depth=2
	movq	-264(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)
.LBB89_901:                             # %if.end.5418
                                        #   in Loop: Header=BB89_896 Depth=2
	jmp	.LBB89_902
.LBB89_902:                             # %for.inc.5419
                                        #   in Loop: Header=BB89_896 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB89_896
.LBB89_903:                             # %for.end.5421
                                        #   in Loop: Header=BB89_894 Depth=1
	jmp	.LBB89_904
.LBB89_904:                             # %for.inc.5422
                                        #   in Loop: Header=BB89_894 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB89_894
.LBB89_905:                             # %for.end.5424
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-1968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1976(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB89_909
# BB#906:                               # %if.then.5431
	leaq	-288(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	png_get_bKGD
	cmpl	$0, %eax
	je	.LBB89_908
# BB#907:                               # %if.then.5435
	movq	-16(%rbp), %rdi
	movq	-288(%rbp), %rax
	movzwl	2(%rax), %esi
	movq	-288(%rbp), %rax
	movzwl	4(%rax), %edx
	movq	-288(%rbp), %rax
	movzwl	6(%rax), %ecx
	callq	lookup_rgb_color
	movq	-24(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-24(%rbp), %rax
	movb	88(%rax), %r8b
	andb	$-3, %r8b
	orb	$2, %r8b
	movb	%r8b, 88(%rax)
.LBB89_908:                             # %if.end.5443
	jmp	.LBB89_909
.LBB89_909:                             # %if.end.5444
	movq	-24(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	colors_in_color_table
	movq	-24(%rbp), %rdi
	movq	%rax, 48(%rdi)
	callq	free_color_table
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	png_destroy_read_struct
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movq	-112(%rbp), %rdi
	callq	xfree
	movl	-124(%rbp), %r8d
	movq	-24(%rbp), %rax
	movl	%r8d, 92(%rax)
	movl	-128(%rbp), %r8d
	movq	-24(%rbp), %rax
	movl	%r8d, 96(%rax)
	movq	-24(%rbp), %rax
	movb	88(%rax), %r9b
	shrb	$1, %r9b
	andb	$1, %r9b
	testb	$1, %r9b
	je	.LBB89_911
# BB#910:                               # %cond.true.5455
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	jmp	.LBB89_912
.LBB89_911:                             # %cond.false.5457
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	image_background
	movq	%rax, -1992(%rbp)       # 8-byte Spill
.LBB89_912:                             # %cond.end.5459
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	image_put_x_image
	cmpq	$0, -200(%rbp)
	je	.LBB89_914
# BB#913:                               # %if.then.5462
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-200(%rbp), %rdx
	callq	image_background_transparent
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-200(%rbp), %rdx
	movl	%eax, -1996(%rbp)       # 4-byte Spill
	callq	image_put_x_image
.LBB89_914:                             # %if.end.5464
	movb	$1, -1(%rbp)
.LBB89_915:                             # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$2032, %rsp             # imm = 0x7F0
	popq	%rbp
	retq
.Lfunc_end89:
	.size	png_load_body, .Lfunc_end89-png_load_body
	.cfi_endproc

	.align	16, 0x90
	.type	my_png_error,@function
my_png_error:                           # @my_png_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	build_string
	movabsq	$.L.str.52, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	image_error
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	png_longjmp
.Lfunc_end90:
	.size	my_png_error, .Lfunc_end90-my_png_error
	.cfi_endproc

	.align	16, 0x90
	.type	my_png_warning,@function
my_png_warning:                         # @my_png_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	build_string
	movabsq	$.L.str.53, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	image_error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	my_png_warning, .Lfunc_end91-my_png_warning
	.cfi_endproc

	.align	16, 0x90
	.type	png_read_from_memory,@function
png_read_from_memory:                   # @png_read_from_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	png_get_io_ptr
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-32(%rbp), %rsi
	subq	16(%rsi), %rdx
	cmpq	%rdx, %rax
	jbe	.LBB92_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.54, %rsi
	movq	-8(%rbp), %rdi
	callq	png_error
.LBB92_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	addq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	png_read_from_memory, .Lfunc_end92-png_read_from_memory
	.cfi_endproc

	.align	16, 0x90
	.type	png_read_from_file,@function
png_read_from_file:                     # @png_read_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	png_get_io_ptr
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	-24(%rbp), %rax
	jae	.LBB93_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.54, %rsi
	movq	-8(%rbp), %rdi
	callq	png_error
.LBB93_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	png_read_from_file, .Lfunc_end93-png_read_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	x_query_frame_background_color,@function
x_query_frame_background_color:         # @x_query_frame_background_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_query_color
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	x_query_frame_background_color, .Lfunc_end94-x_query_frame_background_color
	.cfi_endproc

	.align	16, 0x90
	.type	gs_image_p,@function
gs_image_p:                             # @gs_image_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movl	$765, %eax              # imm = 0x2FD
	leaq	-432(%rbp), %rcx
	movabsq	$gs_format, %rdx
	movl	$416, %esi              # imm = 0x1A0
	movl	%esi, %r8d
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movl	-460(%rbp), %eax        # 4-byte Reload
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$13, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	parse_image_spec
	testb	$1, %al
	jne	.LBB95_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_2:                               # %if.end
	movq	-248(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_13
# BB#3:                                 # %if.then.3
	movl	$0, -444(%rbp)
.LBB95_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -444(%rbp)
	jge	.LBB95_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB95_4 Depth=1
	movq	-440(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB95_4 Depth=1
	movq	-440(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB95_8
.LBB95_7:                               # %if.then.15
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_8:                               # %if.end.16
                                        #   in Loop: Header=BB95_4 Depth=1
	jmp	.LBB95_9
.LBB95_9:                               # %for.inc
                                        #   in Loop: Header=BB95_4 Depth=1
	movl	-444(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -444(%rbp)
	movq	-440(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -440(%rbp)
	jmp	.LBB95_4
.LBB95_10:                              # %for.end
	xorl	%edi, %edi
	movq	-440(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB95_12
# BB#11:                                # %if.then.21
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_12:                              # %if.end.22
	jmp	.LBB95_25
.LBB95_13:                              # %if.else
	movq	-440(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB95_14
	jmp	.LBB95_23
.LBB95_14:                              # %if.then.24
	movq	-440(%rbp), %rdi
	callq	ASIZE
	cmpq	$4, %rax
	je	.LBB95_16
# BB#15:                                # %if.then.28
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_16:                              # %if.end.29
	movl	$0, -444(%rbp)
.LBB95_17:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -444(%rbp)
	jge	.LBB95_22
# BB#18:                                # %for.body.33
                                        #   in Loop: Header=BB95_17 Depth=1
	movq	-440(%rbp), %rdi
	movslq	-444(%rbp), %rsi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB95_20
# BB#19:                                # %if.then.41
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_20:                              # %if.end.42
                                        #   in Loop: Header=BB95_17 Depth=1
	jmp	.LBB95_21
.LBB95_21:                              # %for.inc.43
                                        #   in Loop: Header=BB95_17 Depth=1
	movl	-444(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -444(%rbp)
	jmp	.LBB95_17
.LBB95_22:                              # %for.end.45
	jmp	.LBB95_24
.LBB95_23:                              # %if.else.46
	movb	$0, -1(%rbp)
	jmp	.LBB95_26
.LBB95_24:                              # %if.end.47
	jmp	.LBB95_25
.LBB95_25:                              # %if.end.48
	movb	$1, -1(%rbp)
.LBB95_26:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end95:
	.size	gs_image_p, .Lfunc_end95-gs_image_p
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI96_0:
	.quad	4634766966517661696     # double 72
.LCPI96_1:
	.quad	4746794007244308480     # double 2147483647
	.text
	.align	16, 0x90
	.type	gs_load,@function
gs_load:                                # @gs_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movl	$100, %edi
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB96_2
# BB#1:                                 # %cond.true
	movsd	.LCPI96_0, %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	jmp	.LBB96_3
.LBB96_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB96_3
.LBB96_3:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$99, %edi
	movsd	%xmm0, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB96_5
# BB#4:                                 # %cond.true.15
	movsd	.LCPI96_0, %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	jmp	.LBB96_6
.LBB96_5:                               # %cond.false.19
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB96_6
.LBB96_6:                               # %cond.end.20
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI96_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -120(%rbp)
	ucomisd	-112(%rbp), %xmm1
	jb	.LBB96_9
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI96_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-120(%rbp), %xmm0
	jb	.LBB96_9
# BB#8:                                 # %land.lhs.true.30
	movq	-16(%rbp), %rdi
	cvttsd2si	-112(%rbp), %esi
	cvttsd2si	-120(%rbp), %edx
	callq	check_image_size
	testb	$1, %al
	jne	.LBB96_10
.LBB96_9:                               # %if.then
	callq	image_size_error
	movb	$0, -1(%rbp)
	jmp	.LBB96_17
.LBB96_10:                              # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	cvttsd2si	-112(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 92(%rcx)
	cvttsd2si	-120(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %esi
	movq	-24(%rbp), %rcx
	movl	96(%rcx), %edx
	callq	x_check_image_size
	testb	$1, %al
	jne	.LBB96_11
	jmp	.LBB96_12
.LBB96_11:                              # %if.then.40
	callq	block_input
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movl	56(%rax), %r8d
	callq	XCreatePixmap
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	callq	unblock_input
.LBB96_12:                              # %if.end.52
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB96_14
# BB#13:                                # %if.then.54
	movabsq	$.L.str.59, %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	movb	$0, %al
	callq	image_error
	movb	$0, -1(%rbp)
	jmp	.LBB96_17
.LBB96_14:                              # %if.end.56
	movabsq	$.L.str.60, %rsi
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	make_formatted_string
	movabsq	$.L.str.60, %rsi
	leaq	-64(%rbp), %rdi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movb	$0, %al
	callq	make_formatted_string
	movl	$5, %esi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$76, %edi
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	image_spec_value
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB96_16
# BB#15:                                # %if.then.71
	movabsq	$.L.str.61, %rdi
	callq	intern
	movq	%rax, -80(%rbp)
.LBB96_16:                              # %if.end.73
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdx
	movq	-24(%rbp), %rax
	movslq	92(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movslq	96(%rcx), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-72(%rbp), %r9
	movq	-128(%rbp), %r8
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	call6
	movq	-24(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	PROCESSP
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB96_17:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	gs_load, .Lfunc_end96-gs_load
	.cfi_endproc

	.align	16, 0x90
	.type	gs_clear_image,@function
gs_clear_image:                         # @gs_clear_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_clear_image
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	gs_clear_image, .Lfunc_end97-gs_clear_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid image specification"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Cannot get X image of `%s'; colors will not be freed"
	.size	.L.str.1, 53

	.type	image_types,@object     # @image_types
	.local	image_types
	.comm	image_types,8,8
	.type	syms_of_image.o_fwd,@object # @syms_of_image.o_fwd
	.local	syms_of_image.o_fwd
	.comm	syms_of_image.o_fwd,16,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image-types"
	.size	.L.str.2, 12

	.type	syms_of_image.o_fwd.3,@object # @syms_of_image.o_fwd.3
	.local	syms_of_image.o_fwd.3
	.comm	syms_of_image.o_fwd.3,16,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"max-image-size"
	.size	.L.str.4, 15

	.type	syms_of_image.b_fwd,@object # @syms_of_image.b_fwd
	.local	syms_of_image.b_fwd
	.comm	syms_of_image.b_fwd,16,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cross-disabled-images"
	.size	.L.str.5, 22

	.type	syms_of_image.o_fwd.6,@object # @syms_of_image.o_fwd.6
	.local	syms_of_image.o_fwd.6
	.comm	syms_of_image.o_fwd.6,16,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"x-bitmap-file-path"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/usr/include/X11/bitmaps"
	.size	.L.str.8, 25

	.type	syms_of_image.o_fwd.9,@object # @syms_of_image.o_fwd.9
	.local	syms_of_image.o_fwd.9
	.comm	syms_of_image.o_fwd.9,16,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image-cache-eviction-delay"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"#%04x%04x%04x"
	.size	.L.str.11, 14

	.type	ct_table,@object        # @ct_table
	.local	ct_table
	.comm	ct_table,8,8
	.type	ct_colors_allocated,@object # @ct_colors_allocated
	.local	ct_colors_allocated
	.comm	ct_colors_allocated,4,4
	.type	laplace_matrix,@object  # @laplace_matrix
	.data
	.align	16
laplace_matrix:
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.size	laplace_matrix, 36

	.type	emboss_matrix,@object   # @emboss_matrix
	.align	16
emboss_matrix:
	.long	2                       # 0x2
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	4294967294              # 0xfffffffe
	.size	emboss_matrix, 36

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Unable to allocate X image"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Image too large (%dx%d)"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Unable to create X pixmap"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"images"
	.size	.L.str.15, 7

	.type	pbm_type,@object        # @pbm_type
	.data
	.align	8
pbm_type:
	.long	743                     # 0x2e7
	.zero	4
	.quad	pbm_image_p
	.quad	pbm_load
	.quad	x_clear_image
	.quad	0
	.quad	0
	.size	pbm_type, 48

	.type	xbm_type,@object        # @xbm_type
	.align	8
xbm_type:
	.long	1062                    # 0x426
	.zero	4
	.quad	xbm_image_p
	.quad	xbm_load
	.quad	x_clear_image
	.quad	0
	.quad	0
	.size	xbm_type, 48

	.type	png_type,@object        # @png_type
	.align	8
png_type:
	.long	754                     # 0x2f2
	.zero	4
	.quad	png_image_p
	.quad	png_load
	.quad	x_clear_image
	.quad	0
	.quad	0
	.size	png_type, 48

	.type	gs_type,@object         # @gs_type
	.align	8
gs_type:
	.long	765                     # 0x2fd
	.zero	4
	.quad	gs_image_p
	.quad	gs_load
	.quad	gs_clear_image
	.quad	0
	.quad	0
	.size	gs_type, 48

	.type	pbm_format,@object      # @pbm_format
	.section	.rodata,"a",@progbits
	.align	16
pbm_format:
	.quad	.L.str.16
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.17
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.18
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.19
	.long	7                       # 0x7
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.20
	.long	5                       # 0x5
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.21
	.long	8                       # 0x8
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.22
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.23
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.24
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.25
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.26
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.size	pbm_format, 352

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	":type"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	":file"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	":data"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	":ascent"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	":margin"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	":relief"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	":conversion"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	":heuristic-mask"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	":mask"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	":foreground"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	":background"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Cannot find image file `%s'"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Error reading `%s'"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid image data `%s'"
	.size	.L.str.29, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Not a PBM image: `%s'"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unsupported maximum PBM color value"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Invalid image size in image `%s'"
	.size	.L.str.32, 33

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Invalid pixel value in image `%s'"
	.size	.L.str.33, 34

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"rb"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid image size (see `max-image-size')"
	.size	.L.str.35, 42

	.type	xbm_format,@object      # @xbm_format
	.section	.rodata,"a",@progbits
	.align	16
xbm_format:
	.quad	.L.str.16
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.17
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.36
	.long	4                       # 0x4
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.37
	.long	4                       # 0x4
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.18
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.25
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.26
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.19
	.long	7                       # 0x7
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.20
	.long	5                       # 0x5
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.21
	.long	8                       # 0x8
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.22
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.23
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.24
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.size	xbm_format, 416

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	":width"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	":height"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"define"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"width"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"height"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"static"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"unsigned"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"char"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"short"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Error loading XBM image `%s'"
	.size	.L.str.45, 29

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Unable to create pixmap for XBM image `%s'"
	.size	.L.str.46, 43

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Unable to create X pixmap for `%s'"
	.size	.L.str.47, 35

	.type	png_format,@object      # @png_format
	.section	.rodata,"a",@progbits
	.align	16
png_format:
	.quad	.L.str.16
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.18
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.17
	.long	1                       # 0x1
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.19
	.long	7                       # 0x7
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.20
	.long	5                       # 0x5
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.21
	.long	8                       # 0x8
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.22
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.23
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.24
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.26
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.size	png_format, 320

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"Cannot open image file `%s'"
	.size	.L.str.48, 28

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Not a PNG file: `%s'"
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Not a PNG image: `%s'"
	.size	.L.str.50, 22

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"1.5.13"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"PNG error: %s"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"PNG warning: %s"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Read error"
	.size	.L.str.54, 11

	.type	gs_format,@object       # @gs_format
	.section	.rodata,"a",@progbits
	.align	16
gs_format:
	.quad	.L.str.16
	.long	3                       # 0x3
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.55
	.long	4                       # 0x4
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.56
	.long	4                       # 0x4
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.17
	.long	1                       # 0x1
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.57
	.long	9                       # 0x9
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.58
	.long	0                       # 0x0
	.byte	1                       # 0x1
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.19
	.long	7                       # 0x7
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.20
	.long	5                       # 0x5
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.21
	.long	8                       # 0x8
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.22
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.23
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.24
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	.L.str.26
	.long	2                       # 0x2
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.size	gs_format, 416

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	":pt-width"
	.size	.L.str.55, 10

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	":pt-height"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	":loader"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	":bounding-box"
	.size	.L.str.58, 14

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Unable to create pixmap for `%s'"
	.size	.L.str.59, 33

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%lu %lu"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gs-load-image"
	.size	.L.str.61, 14

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"init-image-library"
	.size	.L.str.62, 19

	.type	Sinit_image_library,@object # @Sinit_image_library
	.data
	.align	8
Sinit_image_library:
	.quad	167772160               # 0xa000000
	.quad	Finit_image_library
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Sinit_image_library, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"clear-image-cache"
	.size	.L.str.63, 18

	.type	Sclear_image_cache,@object # @Sclear_image_cache
	.data
	.align	8
Sclear_image_cache:
	.quad	167772160               # 0xa000000
	.quad	Fclear_image_cache
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Sclear_image_cache, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"image-flush"
	.size	.L.str.64, 12

	.type	Simage_flush,@object    # @Simage_flush
	.data
	.align	8
Simage_flush:
	.quad	167772160               # 0xa000000
	.quad	Fimage_flush
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Simage_flush, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"image-size"
	.size	.L.str.65, 11

	.type	Simage_size,@object     # @Simage_size
	.data
	.align	8
Simage_size:
	.quad	167772160               # 0xa000000
	.quad	Fimage_size
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Simage_size, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"image-mask-p"
	.size	.L.str.66, 13

	.type	Simage_mask_p,@object   # @Simage_mask_p
	.data
	.align	8
Simage_mask_p:
	.quad	167772160               # 0xa000000
	.quad	Fimage_mask_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Simage_mask_p, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"image-metadata"
	.size	.L.str.67, 15

	.type	Simage_metadata,@object # @Simage_metadata
	.data
	.align	8
Simage_metadata:
	.quad	167772160               # 0xa000000
	.quad	Fimage_metadata
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Simage_metadata, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
