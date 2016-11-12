	.text
	.file	"gimplayer-project.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.globl	gimp_layer_project_region
	.align	16, 0x90
	.type	gimp_layer_project_region,@function
gimp_layer_project_region:              # @gimp_layer_project_region
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
	subq	$528, %rsp              # imm = 0x210
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_5
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	je	.LBB0_5
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_drawable_init_src_region
	leaq	-120(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	copy_gray_to_region
	cmpq	$0, -128(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.8
	movq	-128(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_4:                                # %if.end
	jmp	.LBB0_23
.LBB0_5:                                # %if.else
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	leaq	-200(%rbp), %rsi
	leaq	-296(%rbp), %rdi
	movq	%rax, -136(%rbp)
	movq	$0, -272(%rbp)
	movq	$0, -280(%rbp)
	movq	$0, -288(%rbp)
	movq	$0, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_drawable_init_src_region
	cmpq	$0, -56(%rbp)
	je	.LBB0_8
# BB#6:                                 # %land.lhs.true.14
	movq	-56(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.17
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-264(%rbp), %rsi
	leaq	-288(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_drawable_init_src_region
	leaq	-264(%rbp), %rax
	movq	%rax, -272(%rbp)
.LBB0_8:                                # %if.end.20
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, %ecx
	movl	%ecx, %edi
	subl	$5, %eax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movl	%eax, -388(%rbp)        # 4-byte Spill
	ja	.LBB0_13
# BB#24:                                # %if.end.20
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_9:                                # %sw.bb
	movl	$4, -300(%rbp)
	movl	$10, -304(%rbp)
	jmp	.LBB0_15
.LBB0_10:                               # %sw.bb.22
	movl	$5, -300(%rbp)
	movl	$11, -304(%rbp)
	jmp	.LBB0_15
.LBB0_11:                               # %sw.bb.23
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -280(%rbp)
	movl	$2, -300(%rbp)
	movl	$4, -304(%rbp)
	jmp	.LBB0_15
.LBB0_12:                               # %sw.bb.25
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_colormap
	movq	%rax, -280(%rbp)
	movl	$3, -300(%rbp)
	movl	$5, -304(%rbp)
	jmp	.LBB0_15
.LBB0_13:                               # %sw.default
	jmp	.LBB0_14
.LBB0_14:                               # %do.body
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$122, %edx
	movabsq	$.L__func__.gimp_layer_project_region, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB0_15:                               # %sw.epilog
	leaq	-320(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	gimp_image_get_visible_array
	cmpl	$0, -36(%rbp)
	je	.LBB0_17
# BB#16:                                # %if.then.28
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movq	-272(%rbp), %rdx
	movq	-280(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_opacity
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movl	%esi, -428(%rbp)        # 4-byte Spill
	callq	gimp_layer_get_mode
	leaq	-200(%rbp), %rsi
	leaq	-320(%rbp), %rcx
	movl	-304(%rbp), %r9d
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-424(%rbp), %r8         # 8-byte Reload
	movl	-428(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -444(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	%eax, (%rsp)
	movq	-440(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	-444(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	combine_regions
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.32
	movq	-32(%rbp), %rsi
	movq	-272(%rbp), %rdx
	movq	-280(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_opacity
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rcx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	gimp_layer_get_mode
	leaq	-200(%rbp), %rdi
	leaq	-320(%rbp), %rcx
	movl	-300(%rbp), %r8d
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movl	-476(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -492(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%eax, %r9d
	movq	-488(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	initial_region
.LBB0_18:                               # %if.end.38
	cmpq	$0, -296(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.40
	movq	-296(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_20:                               # %if.end.41
	cmpq	$0, -288(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.43
	movq	-288(%rbp), %rdi
	callq	tile_manager_unref
.LBB0_22:                               # %if.end.44
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.45
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_layer_project_region, .Lfunc_end0-gimp_layer_project_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimplayer-project.c"
	.size	.L.str.1, 20

	.type	.L__func__.gimp_layer_project_region,@object # @__func__.gimp_layer_project_region
.L__func__.gimp_layer_project_region:
	.asciz	"gimp_layer_project_region"
	.size	.L__func__.gimp_layer_project_region, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
