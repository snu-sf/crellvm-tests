	.text
	.file	"gimpitem-preview.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_item_get_preview_size
	.align	16, 0x90
	.type	gimp_item_get_preview_size,@function
gimp_item_get_preview_size:             # @gimp_item_get_preview_size
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_4
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true.4
	cmpl	$0, -16(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
	cmpq	$0, -56(%rbp)
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true.7
	cmpl	$0, -16(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.9
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_resolution
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%r10d, %edi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-48(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-12(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rsi
	movl	-116(%rbp), %r10d       # 4-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movl	%r10d, %edi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
.LBB0_8:                                # %if.end.14
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_get_preview_size, .Lfunc_end0-gimp_item_get_preview_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_item_get_popup_size
	.align	16, 0x90
	.type	gimp_item_get_popup_size,@function
gimp_item_get_popup_size:               # @gimp_item_get_popup_size
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 344(%rax)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_11
.LBB1_3:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	cmpl	-20(%rbp), %eax
	jg	.LBB1_5
# BB#4:                                 # %lor.lhs.false
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_height
	cmpl	-24(%rbp), %eax
	jle	.LBB1_10
.LBB1_5:                                # %if.then.7
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.9
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_resolution
.LBB1_7:                                # %if.end.10
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-68(%rbp), %rdi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-24(%rbp), %edx
	shll	$1, %edx
	movl	-28(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rsi
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movl	%r10d, %edi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_viewable_calc_preview_size
	cmpl	$0, -68(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.15
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_height
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB1_9:                                # %if.end.18
	movl	$1, -4(%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %if.end.19
	movl	$0, -4(%rbp)
.LBB1_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_get_popup_size, .Lfunc_end1-gimp_item_get_popup_size
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
