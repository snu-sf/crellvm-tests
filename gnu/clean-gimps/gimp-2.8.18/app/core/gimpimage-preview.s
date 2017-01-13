	.text
	.file	"gimpimage-preview.bc"
	.globl	gimp_image_get_preview_size
	.align	16, 0x90
	.type	gimp_image_get_preview_size,@function
gimp_image_get_preview_size:            # @gimp_image_get_preview_size
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r10d
	movl	-20(%rbp), %r8d
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rsi
	movl	-76(%rbp), %edi         # 4-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r10d, %ecx
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_get_preview_size, .Lfunc_end0-gimp_image_get_preview_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_image_get_popup_size
	.align	16, 0x90
	.type	gimp_image_get_popup_size,@function
gimp_image_get_popup_size:              # @gimp_image_get_popup_size
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	cmpl	-20(%rbp), %eax
	jg	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	cmpl	-24(%rbp), %eax
	jle	.LBB1_5
.LBB1_2:                                # %if.then
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-60(%rbp), %rdi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-24(%rbp), %edx
	shll	$1, %edx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rsi
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%r10d, %edi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	cmpl	$0, -60(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.8
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_height
	movq	-48(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB1_4:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.end.11
	movl	$0, -4(%rbp)
.LBB1_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_get_popup_size, .Lfunc_end1-gimp_image_get_popup_size
	.cfi_endproc

	.globl	gimp_image_get_preview
	.align	16, 0x90
	.type	gimp_image_get_preview,@function
gimp_image_get_preview:                 # @gimp_image_get_preview
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB2_4
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movl	4(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB2_4
# BB#2:                                 # %land.lhs.true.4
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	344(%rax), %rdi
	callq	temp_buf_free
.LBB2_6:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	gimp_image_get_new_preview
	movq	-40(%rbp), %rsi
	movq	%rax, 344(%rsi)
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB2_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_get_preview, .Lfunc_end2-gimp_image_get_preview
	.cfi_endproc

	.globl	gimp_image_get_new_preview
	.align	16, 0x90
	.type	gimp_image_get_new_preview,@function
gimp_image_get_new_preview:             # @gimp_image_get_new_preview
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -40(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_projection_get_level
	leaq	-80(%rbp), %rdx
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_projection_get_tiles_at_level
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_manager_get_preview
	movq	%rax, -48(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	temp_buf_demultiply
.LBB3_2:                                # %if.end
	movq	-48(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_get_new_preview, .Lfunc_end3-gimp_image_get_new_preview
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
