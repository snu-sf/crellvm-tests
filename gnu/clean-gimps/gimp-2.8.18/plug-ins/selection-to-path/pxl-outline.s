	.text
	.file	"pxl-outline.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	find_outline_pixels
	.align	16, 0x90
	.type	find_outline_pixels,@function
find_outline_pixels:                    # @find_outline_pixels
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
	subq	$128, %rsp
	callq	sel_get_width
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	sel_get_height
	movl	-116(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	callq	local_new_bitmap
	movabsq	$.L.str, %rdi
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	sel_get_height
	movl	%eax, -44(%rbp)
	callq	sel_get_width
	movl	%eax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB0_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -40(%rbp)
.LBB0_3:                                # %for.cond.7
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB0_10
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	sel_pixel_is_white
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_6:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	$1, %edx
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %r8
	callq	next_unmarked_outline_edge
	movl	%eax, -68(%rbp)
	cmpl	$4, -68(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB0_3 Depth=2
	leaq	-64(%rbp), %rcx
	cmpl	$3, -68(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -92(%rbp)
	movl	-68(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	find_one_outline
	leaq	-32(%rbp), %rdi
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-92(%rbp), %esi
	movl	%esi, -76(%rbp)
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	append_pixel_outline
.LBB0_8:                                # %if.end.17
                                        #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_9
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_3
.LBB0_10:                               # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	andl	$15, %eax
	cmpl	$0, %eax
	jne	.LBB0_12
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB0_12:                               # %if.end.24
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %for.inc.25
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_14:                               # %for.end.27
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-64(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	local_free_bitmap
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	find_outline_pixels, .Lfunc_end0-find_outline_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	local_new_bitmap,@function
local_new_bitmap:                       # @local_new_bitmap
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
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %edi
	imull	%esi, %edi
	movl	%edi, -44(%rbp)
	movl	-24(%rbp), %esi
	movl	%esi, -40(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, -36(%rbp)
	movl	-44(%rbp), %esi
	movl	%esi, %edi
	movl	$1, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	local_new_bitmap, .Lfunc_end1-local_new_bitmap
	.cfi_endproc

	.align	16, 0x90
	.type	find_one_outline,@function
find_one_outline:                       # @find_one_outline
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
	subq	$80, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	callq	new_pixel_outline
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	movl	-24(%rbp), %esi
	movl	%esi, -60(%rbp)
	movl	-28(%rbp), %esi
	movl	%esi, -64(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, -68(%rbp)
.LBB2_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %esi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	callq	sel_get_height
	leaq	-56(%rbp), %rdi
	subl	-60(%rbp), %eax
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	append_coordinate
	movl	-68(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	mark_edge
	leaq	-68(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	callq	next_outline_edge
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, %al
	movl	-60(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	movb	%al, -73(%rbp)          # 1-byte Spill
	jne	.LBB2_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	$1, %al
	movl	-64(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	movb	%al, -73(%rbp)          # 1-byte Spill
	jne	.LBB2_5
# BB#4:                                 # %lor.rhs
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setne	%cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB2_5:                                # %lor.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_1
# BB#6:                                 # %do.end
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	find_one_outline, .Lfunc_end2-find_one_outline
	.cfi_endproc

	.align	16, 0x90
	.type	append_pixel_outline,@function
append_pixel_outline:                   # @append_pixel_outline
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
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rdx)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %eax
	movl	%eax, %esi
	shlq	$4, %rsi
	movq	%rdx, %rdi
	callq	g_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	shlq	$4, %rax
	addq	(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	append_pixel_outline, .Lfunc_end3-append_pixel_outline
	.cfi_endproc

	.align	16, 0x90
	.type	local_free_bitmap,@function
local_free_bitmap:                      # @local_free_bitmap
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	local_free_bitmap, .Lfunc_end4-local_free_bitmap
	.cfi_endproc

	.globl	free_pixel_outline_list
	.align	16, 0x90
	.type	free_pixel_outline_list,@function
free_pixel_outline_list:                # @free_pixel_outline_list
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
	movl	$0, -12(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	shlq	$4, %rdx
	addq	(%rsi), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, -32(%rbp)
	movq	8(%rdx), %rdx
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdi
	callq	safe_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB5_6:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_pixel_outline_list, .Lfunc_end5-free_pixel_outline_list
	.cfi_endproc

	.align	16, 0x90
	.type	new_pixel_outline,@function
new_pixel_outline:                      # @new_pixel_outline
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
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	new_pixel_outline, .Lfunc_end6-new_pixel_outline
	.cfi_endproc

	.align	16, 0x90
	.type	append_coordinate,@function
append_coordinate:                      # @append_coordinate
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
	movl	-12(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	-16(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %edi
	movq	%rdi, %rax
	subq	$3, %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	ja	.LBB7_5
# BB#7:                                 # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_6
.LBB7_3:                                # %sw.bb.9
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_6
.LBB7_4:                                # %sw.bb.12
	jmp	.LBB7_6
.LBB7_5:                                # %sw.default
	movabsq	$.L.str.1, %rdi
	movl	-20(%rbp), %esi
	movb	$0, %al
	callq	g_printerr
.LBB7_6:                                # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	append_outline_pixel
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	append_coordinate, .Lfunc_end7-append_coordinate
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_2
	.quad	.LBB7_1
	.quad	.LBB7_4
	.quad	.LBB7_3

	.text
	.align	16, 0x90
	.type	append_outline_pixel,@function
append_outline_pixel:                   # @append_outline_pixel
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
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 8(%rsi)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, %edi
	shlq	$3, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_realloc
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, (%rsi,%rax,8)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	append_outline_pixel, .Lfunc_end8-append_outline_pixel
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Selection to Path"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"append_coordinate: Bad edge (%d)"
	.size	.L.str.1, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
