	.text
	.file	"gimpdrawable-histogram.bc"
	.globl	gimp_drawable_calculate_histogram
	.align	16, 0x90
	.type	gimp_drawable_calculate_histogram,@function
gimp_drawable_calculate_histogram:      # @gimp_drawable_calculate_histogram
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_calculate_histogram, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.16
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_calculate_histogram, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.22
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_calculate_histogram, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_27
.LBB0_21:                               # %if.end.24
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.25
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-168(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB0_24
# BB#23:                                # %if.then.30
	jmp	.LBB0_27
.LBB0_24:                               # %if.end.31
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %esi
	movl	-164(%rbp), %r8d
	movl	-168(%rbp), %r9d
	movl	%esi, -236(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-236(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then.39
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -200(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-212(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-200(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-156(%rbp), %r8d
	addl	-212(%rbp), %r8d
	movl	-160(%rbp), %r9d
	addl	-216(%rbp), %r9d
	movl	-164(%rbp), %r10d
	movl	-168(%rbp), %r11d
	movq	%rax, %rsi
	movl	%r8d, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_calculate
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.55
	leaq	-88(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_calculate
.LBB0_27:                               # %if.end.56
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_calculate_histogram, .Lfunc_end0-gimp_drawable_calculate_histogram
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_calculate_histogram,@object # @__func__.gimp_drawable_calculate_histogram
.L__func__.gimp_drawable_calculate_histogram:
	.asciz	"gimp_drawable_calculate_histogram"
	.size	.L__func__.gimp_drawable_calculate_histogram, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"histogram != NULL"
	.size	.L.str.3, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
