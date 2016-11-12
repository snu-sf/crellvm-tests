	.text
	.file	"gimplayer.bc"
	.globl	gimp_layer_get_type
	.align	16, 0x90
	.type	gimp_layer_get_type,@function
gimp_layer_get_type:                    # @gimp_layer_get_type
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
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_layer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_layer_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_drawable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$712, %edx              # imm = 0x2C8
	movabsq	$gimp_layer_class_intern_init, %rdi
	movl	$104, %r8d
	movabsq	$gimp_layer_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movabsq	$gimp_layer_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_layer_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_layer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_layer_get_type, .Lfunc_end0-gimp_layer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_class_intern_init,@function
gimp_layer_class_intern_init:           # @gimp_layer_class_intern_init
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
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_layer_parent_class
	cmpl	$0, GimpLayer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLayer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_layer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_layer_class_intern_init, .Lfunc_end1-gimp_layer_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_layer_init,@function
gimp_layer_init:                        # @gimp_layer_init
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 52(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_init, .Lfunc_end2-gimp_layer_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_pickable_iface_init,@function
gimp_layer_pickable_iface_init:         # @gimp_layer_pickable_iface_init
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
	movabsq	$gimp_layer_get_opacity_at, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_layer_pickable_iface_init, .Lfunc_end3-gimp_layer_pickable_iface_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_layer_new
	.align	16, 0x90
	.type	gimp_layer_new,@function
gimp_layer_new:                         # @gimp_layer_new
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r9d, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_29
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jle	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_29
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpl	$0, -24(%rbp)
	jle	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_29
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	callq	gimp_layer_get_type
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %r8d
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_24
# BB#23:                                # %cond.true
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB4_28
.LBB4_24:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB4_26
# BB#25:                                # %cond.true.29
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB4_27
.LBB4_26:                               # %cond.false.30
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB4_27:                               # %cond.end
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB4_28:                               # %cond.end.31
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movl	-52(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_layer_new, .Lfunc_end4-gimp_layer_new
	.cfi_endproc

	.globl	gimp_layer_new_from_tiles
	.align	16, 0x90
	.type	gimp_layer_new_from_tiles,@function
gimp_layer_new_from_tiles:              # @gimp_layer_new_from_tiles
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_tiles, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.2
	movl	$0, -140(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %if.else.3
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.7
	movl	$1, -140(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.8
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB5_12:                               # %if.end.10
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.11
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_tiles, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	tile_manager_width
	movq	-16(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-156(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	callq	gimp_layer_new_from_region
	movq	%rax, -8(%rbp)
.LBB5_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_layer_new_from_tiles, .Lfunc_end5-gimp_layer_new_from_tiles
	.cfi_endproc

	.globl	gimp_layer_new_from_region
	.align	16, 0x90
	.type	gimp_layer_new_from_region,@function
gimp_layer_new_from_region:             # @gimp_layer_new_from_region
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_53
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.2
	movl	$0, -164(%rbp)
	jmp	.LBB6_13
.LBB6_8:                                # %if.else.3
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_11
# BB#9:                                 # %land.lhs.true
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB6_11
# BB#10:                                # %if.then.7
	movl	$1, -164(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.8
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB6_12:                               # %if.end.10
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.11
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_53
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	ja	.LBB6_22
# BB#54:                                # %do.end.16
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_18:                               # %sw.bb
	movl	$2, -132(%rbp)
	jmp	.LBB6_24
.LBB6_19:                               # %sw.bb.17
	movl	$3, -132(%rbp)
	jmp	.LBB6_24
.LBB6_20:                               # %sw.bb.18
	movl	$0, -132(%rbp)
	jmp	.LBB6_24
.LBB6_21:                               # %sw.bb.19
	movl	$1, -132(%rbp)
	jmp	.LBB6_24
.LBB6_22:                               # %sw.default
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.20
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movl	$1294, %r8d             # imm = 0x50E
	movabsq	$.L__func__.gimp_layer_new_from_region, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
	jmp	.LBB6_53
.LBB6_24:                               # %sw.epilog
	movq	-24(%rbp), %rdi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r9d
	callq	gimp_layer_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_26
# BB#25:                                # %if.then.24
	movabsq	$.L.str.12, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_53
.LBB6_26:                               # %if.end.25
	movq	-64(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	-136(%rbp), %r8d
	movl	-140(%rbp), %r9d
	movq	%rsp, %rsi
	movl	$1, (%rsi)
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	pixel_region_init
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	ja	.LBB6_52
# BB#55:                                # %if.end.25
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_27:                               # %sw.bb.29
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB6_29
	jmp	.LBB6_28
.LBB6_28:                               # %sw.bb.30
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	copy_region
	jmp	.LBB6_30
.LBB6_29:                               # %sw.default.31
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_30:                               # %sw.epilog.32
	jmp	.LBB6_52
.LBB6_31:                               # %sw.bb.33
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB6_33
	jmp	.LBB6_58
.LBB6_58:                               # %sw.bb.33
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	je	.LBB6_32
	jmp	.LBB6_59
.LBB6_59:                               # %sw.bb.33
	movl	-212(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jb	.LBB6_34
	jmp	.LBB6_35
.LBB6_32:                               # %sw.bb.34
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	copy_region
	jmp	.LBB6_36
.LBB6_33:                               # %sw.bb.35
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	add_alpha_region
	jmp	.LBB6_36
.LBB6_34:                               # %sw.bb.36
	leaq	-128(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-28(%rbp), %r8d
	callq	gimp_layer_transform_color
	jmp	.LBB6_36
.LBB6_35:                               # %sw.default.37
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_36:                               # %sw.epilog.38
	jmp	.LBB6_52
.LBB6_37:                               # %sw.bb.39
	movl	-132(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jne	.LBB6_39
	jmp	.LBB6_38
.LBB6_38:                               # %sw.bb.40
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	copy_region
	jmp	.LBB6_40
.LBB6_39:                               # %sw.default.41
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_40:                               # %sw.epilog.42
	jmp	.LBB6_52
.LBB6_41:                               # %sw.bb.43
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	jb	.LBB6_42
	jmp	.LBB6_56
.LBB6_56:                               # %sw.bb.43
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB6_44
	jmp	.LBB6_57
.LBB6_57:                               # %sw.bb.43
	movl	-228(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB6_43
	jmp	.LBB6_45
.LBB6_42:                               # %sw.bb.44
	leaq	-128(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-28(%rbp), %r8d
	callq	gimp_layer_transform_color
	jmp	.LBB6_46
.LBB6_43:                               # %sw.bb.45
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	copy_region
	jmp	.LBB6_46
.LBB6_44:                               # %sw.bb.46
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	add_alpha_region
	jmp	.LBB6_46
.LBB6_45:                               # %sw.default.47
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_46:                               # %sw.epilog.48
	jmp	.LBB6_52
.LBB6_47:                               # %sw.bb.49
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB6_52
.LBB6_48:                               # %sw.bb.50
	movl	-132(%rbp), %eax
	subl	$3, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	ja	.LBB6_50
	jmp	.LBB6_49
.LBB6_49:                               # %sw.bb.51
	leaq	-128(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-132(%rbp), %edx
	movl	-28(%rbp), %r8d
	callq	gimp_layer_transform_color
	jmp	.LBB6_51
.LBB6_50:                               # %sw.default.52
	movabsq	$.L.str.13, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_region, %rsi
	movb	$0, %al
	callq	g_warning
.LBB6_51:                               # %sw.epilog.53
	jmp	.LBB6_52
.LBB6_52:                               # %sw.epilog.54
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_53:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_layer_new_from_region, .Lfunc_end6-gimp_layer_new_from_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_18
	.quad	.LBB6_19
	.quad	.LBB6_20
	.quad	.LBB6_21
.LJTI6_1:
	.quad	.LBB6_27
	.quad	.LBB6_31
	.quad	.LBB6_37
	.quad	.LBB6_41
	.quad	.LBB6_47
	.quad	.LBB6_48

	.text
	.globl	gimp_layer_new_from_pixbuf
	.align	16, 0x90
	.type	gimp_layer_new_from_pixbuf,@function
gimp_layer_new_from_pixbuf:             # @gimp_layer_new_from_pixbuf
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movl	$64, %r9d
	movl	%r9d, %r10d
	leaq	-120(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r11, %rdi
	movl	%eax, %esi
	movq	%r10, %rdx
	callq	memset
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gdk_pixbuf_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_pixbuf, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_40
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_pixbuf, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_40
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	jmp	.LBB7_25
.LBB7_25:                               # %do.body.39
	cmpl	$0, -28(%rbp)
	je	.LBB7_27
# BB#26:                                # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jne	.LBB7_28
.LBB7_27:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB7_35
.LBB7_28:                               # %cond.false
	cmpl	$2, -28(%rbp)
	je	.LBB7_30
# BB#29:                                # %lor.lhs.false.43
	cmpl	$3, -28(%rbp)
	jne	.LBB7_31
.LBB7_30:                               # %cond.true.45
	movl	$1, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB7_34
.LBB7_31:                               # %cond.false.46
	movb	$1, %al
	cmpl	$4, -28(%rbp)
	movb	%al, -177(%rbp)         # 1-byte Spill
	je	.LBB7_33
# BB#32:                                # %lor.rhs
	cmpl	$5, -28(%rbp)
	sete	%al
	movb	%al, -177(%rbp)         # 1-byte Spill
.LBB7_33:                               # %lor.end
	movb	-177(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -176(%rbp)        # 4-byte Spill
.LBB7_34:                               # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB7_35:                               # %cond.end.50
	movl	-172(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-184(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB7_37
# BB#36:                                # %if.then.54
	jmp	.LBB7_38
.LBB7_37:                               # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_new_from_pixbuf, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_40
.LBB7_38:                               # %if.end.56
	jmp	.LBB7_39
.LBB7_39:                               # %do.end.57
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gdk_pixbuf_get_n_channels
	movq	-16(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_rowstride
	movq	-16(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gdk_pixbuf_get_height
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	-200(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-208(%rbp), %r8d        # 4-byte Reload
	movl	-208(%rbp), %r9d        # 4-byte Reload
	movl	-204(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	pixel_region_init_data
	leaq	-120(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	callq	gimp_layer_new_from_region
	movq	%rax, -8(%rbp)
.LBB7_40:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_layer_new_from_pixbuf, .Lfunc_end7-gimp_layer_new_from_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
	movq	-8(%rbp), %rdx
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_transform_color,@function
gimp_layer_transform_color:             # @gimp_layer_transform_color
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -20(%rbp)
	jne	.LBB9_3
.LBB9_2:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB9_10
.LBB9_3:                                # %cond.false
	cmpl	$2, -20(%rbp)
	je	.LBB9_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$3, -20(%rbp)
	jne	.LBB9_6
.LBB9_5:                                # %cond.true.5
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB9_9
.LBB9_6:                                # %cond.false.6
	movb	$1, %al
	cmpl	$4, -20(%rbp)
	movb	%al, -109(%rbp)         # 1-byte Spill
	je	.LBB9_8
# BB#7:                                 # %lor.rhs
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB9_8:                                # %lor.end
	movb	-109(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB9_9:                                # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB9_10:                               # %cond.end.10
	movl	-104(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -40(%rbp)
	cmpl	$1, -20(%rbp)
	movb	%cl, -110(%rbp)         # 1-byte Spill
	je	.LBB9_13
# BB#11:                                # %lor.lhs.false.13
	movb	$1, %al
	cmpl	$3, -20(%rbp)
	movb	%al, -110(%rbp)         # 1-byte Spill
	je	.LBB9_13
# BB#12:                                # %lor.rhs.15
	cmpl	$5, -20(%rbp)
	sete	%al
	movb	%al, -110(%rbp)         # 1-byte Spill
.LBB9_13:                               # %lor.end.17
	movb	-110(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -44(%rbp)
	cmpl	$1, -36(%rbp)
	movb	%cl, -111(%rbp)         # 1-byte Spill
	je	.LBB9_16
# BB#14:                                # %lor.lhs.false.19
	movb	$1, %al
	cmpl	$3, -36(%rbp)
	movb	%al, -111(%rbp)         # 1-byte Spill
	je	.LBB9_16
# BB#15:                                # %lor.rhs.21
	cmpl	$5, -36(%rbp)
	sete	%al
	movb	%al, -111(%rbp)         # 1-byte Spill
.LBB9_16:                               # %lor.end.23
	movb	-111(%rbp), %al         # 1-byte Reload
	movl	$2, %edi
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -56(%rbp)
.LBB9_17:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_19 Depth 2
                                        #       Child Loop BB9_21 Depth 3
	cmpq	$0, -56(%rbp)
	je	.LBB9_32
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB9_19:                               # %while.cond
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_21 Depth 3
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB9_30
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB9_21:                               # %for.cond.28
                                        #   Parent Loop BB9_17 Depth=1
                                        #     Parent Loop BB9_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-100(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	44(%rcx), %eax
	jge	.LBB9_29
# BB#22:                                # %for.body.30
                                        #   in Loop: Header=BB9_21 Depth=3
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movq	-96(%rbp), %rdx
	movl	-40(%rbp), %ecx
	movq	-88(%rbp), %r8
	callq	gimp_image_transform_color
	cmpl	$0, -48(%rbp)
	je	.LBB9_27
# BB#23:                                # %if.then
                                        #   in Loop: Header=BB9_21 Depth=3
	cmpl	$0, -44(%rbp)
	je	.LBB9_25
# BB#24:                                # %cond.true.33
                                        #   in Loop: Header=BB9_21 Depth=3
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-88(%rbp), %rdx
	movzbl	(%rdx,%rax), %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_25:                               # %cond.false.34
                                        #   in Loop: Header=BB9_21 Depth=3
	movl	$255, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_26:                               # %cond.end.35
                                        #   in Loop: Header=BB9_21 Depth=3
	movl	-116(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	52(%rdx), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-96(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB9_27:                               # %if.end
                                        #   in Loop: Header=BB9_21 Depth=3
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-96(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
# BB#28:                                # %for.inc
                                        #   in Loop: Header=BB9_21 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB9_21
.LBB9_29:                               # %for.end
                                        #   in Loop: Header=BB9_19 Depth=2
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB9_19
.LBB9_30:                               # %while.end
                                        #   in Loop: Header=BB9_17 Depth=1
	jmp	.LBB9_31
.LBB9_31:                               # %for.inc.51
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -56(%rbp)
	jmp	.LBB9_17
.LBB9_32:                               # %for.end.53
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_layer_transform_color, .Lfunc_end9-gimp_layer_transform_color
	.cfi_endproc

	.globl	gimp_layer_get_parent
	.align	16, 0x90
	.type	gimp_layer_get_parent,@function
gimp_layer_get_parent:                  # @gimp_layer_get_parent
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_parent, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_layer_get_parent, .Lfunc_end10-gimp_layer_get_parent
	.cfi_endproc

	.globl	gimp_layer_get_mask
	.align	16, 0x90
	.type	gimp_layer_get_mask,@function
gimp_layer_get_mask:                    # @gimp_layer_get_mask
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_mask, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_layer_get_mask, .Lfunc_end11-gimp_layer_get_mask
	.cfi_endproc

	.globl	gimp_layer_add_mask
	.align	16, 0x90
	.type	gimp_layer_add_mask,@function
gimp_layer_add_mask:                    # @gimp_layer_add_mask
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_add_mask, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB12_20
.LBB12_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_19:                              # %if.end.31
	jmp	.LBB12_20
.LBB12_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.35
	jmp	.LBB12_23
.LBB12_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_add_mask, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_23:                              # %if.end.37
	jmp	.LBB12_24
.LBB12_24:                              # %do.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-24(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_27
# BB#26:                                # %if.then.47
	jmp	.LBB12_28
.LBB12_27:                              # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_add_mask, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_28:                              # %if.end.49
	jmp	.LBB12_29
.LBB12_29:                              # %do.end.50
	jmp	.LBB12_30
.LBB12_30:                              # %do.body.51
	cmpq	$0, -40(%rbp)
	je	.LBB12_32
# BB#31:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_33
.LBB12_32:                              # %if.then.54
	jmp	.LBB12_34
.LBB12_33:                              # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_add_mask, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_34:                              # %if.end.56
	jmp	.LBB12_35
.LBB12_35:                              # %do.end.57
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB12_37
# BB#36:                                # %if.then.62
	movl	$0, -28(%rbp)
.LBB12_37:                              # %if.end.63
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB12_39
# BB#38:                                # %if.then.69
	movq	-40(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.18, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_39:                              # %if.end.72
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rsi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-172(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB12_41
# BB#40:                                # %lor.lhs.false.80
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-24(%rbp), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-196(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB12_42
.LBB12_41:                              # %if.then.88
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.19, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movq	$0, -8(%rbp)
	jmp	.LBB12_52
.LBB12_42:                              # %if.end.91
	cmpl	$0, -28(%rbp)
	je	.LBB12_44
# BB#43:                                # %if.then.93
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_layer_mask_add
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB12_44:                              # %if.end.96
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_layer_mask_set_layer
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB12_46
# BB#45:                                # %if.then.100
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_source_node
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rcx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB12_46:                              # %if.end.109
	movq	-24(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	jne	.LBB12_48
# BB#47:                                # %lor.lhs.false.112
	movq	-24(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	je	.LBB12_49
.LBB12_48:                              # %if.then.115
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-284(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB12_49:                              # %if.end.124
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_layer_layer_mask_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movl	layer_signals+12, %esi
	movq	%rcx, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_removed
	cmpl	$0, %eax
	je	.LBB12_51
# BB#50:                                # %if.then.131
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_unset_removed
.LBB12_51:                              # %if.end.134
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_52:                              # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_add_mask, .Lfunc_end12-gimp_layer_add_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_layer_mask_update,@function
gimp_layer_layer_mask_update:           # @gimp_layer_layer_mask_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	je	.LBB13_3
.LBB13_2:                               # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
.LBB13_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_layer_layer_mask_update, .Lfunc_end13-gimp_layer_layer_mask_update
	.cfi_endproc

	.globl	gimp_layer_create_mask
	.align	16, 0x90
	.type	gimp_layer_create_mask,@function
gimp_layer_create_mask:                 # @gimp_layer_create_mask
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$808, %rsp              # imm = 0x328
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	.Lgimp_layer_create_mask.black, %rdx
	movq	%rdx, -256(%rbp)
	movq	.Lgimp_layer_create_mask.black+8, %rdx
	movq	%rdx, -248(%rbp)
	movq	.Lgimp_layer_create_mask.black+16, %rdx
	movq	%rdx, -240(%rbp)
	movq	.Lgimp_layer_create_mask.black+24, %rdx
	movq	%rdx, -232(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -272(%rbp)
	cmpq	$0, -264(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -276(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-264(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-272(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -276(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -276(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	cmpl	$0, -280(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_create_mask, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB14_82
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	jmp	.LBB14_13
.LBB14_13:                              # %do.body.11
	cmpl	$6, -44(%rbp)
	jne	.LBB14_22
# BB#14:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -296(%rbp)
	cmpq	$0, -288(%rbp)
	jne	.LBB14_16
# BB#15:                                # %if.then.21
	movl	$0, -300(%rbp)
	jmp	.LBB14_21
.LBB14_16:                              # %if.else.22
	movq	-288(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_19
# BB#17:                                # %land.lhs.true.25
	movq	-288(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB14_19
# BB#18:                                # %if.then.29
	movl	$1, -300(%rbp)
	jmp	.LBB14_20
.LBB14_19:                              # %if.else.30
	movq	-288(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -300(%rbp)
.LBB14_20:                              # %if.end.32
	jmp	.LBB14_21
.LBB14_21:                              # %if.end.33
	movl	-300(%rbp), %eax
	movl	%eax, -304(%rbp)
	cmpl	$0, -304(%rbp)
	je	.LBB14_23
.LBB14_22:                              # %if.then.36
	jmp	.LBB14_24
.LBB14_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_create_mask, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB14_82
.LBB14_24:                              # %if.end.38
	jmp	.LBB14_25
.LBB14_25:                              # %do.end.39
	movq	-40(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -216(%rbp)
	movl	$.L.str.26, %ecx
	movl	%ecx, %edi
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, %al
	callq	g_strdup_printf
	movq	%rax, -224(%rbp)
	movq	-216(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movq	-224(%rbp), %rcx
	leaq	-256(%rbp), %r8
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	-412(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_layer_mask_new
	movq	%rax, -208(%rbp)
	movq	-224(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -416(%rbp)        # 4-byte Spill
	je	.LBB14_26
	jmp	.LBB14_83
.LBB14_83:                              # %do.end.39
	movl	-416(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB14_27
	jmp	.LBB14_28
.LBB14_26:                              # %sw.bb
	movq	-208(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_channel_all
	movq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_82
.LBB14_27:                              # %sw.bb.53
	movq	-208(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
	movq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_82
.LBB14_28:                              # %sw.default
	jmp	.LBB14_29
.LBB14_29:                              # %sw.epilog
	movq	-208(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-208(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-208(%rbp), %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	%rsp, %rsi
	movl	$1, (%rsi)
	leaq	-200(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-468(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	callq	pixel_region_init
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$6, %rdi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	ja	.LBB14_81
# BB#84:                                # %sw.epilog
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_30:                              # %sw.bb.65
	jmp	.LBB14_81
.LBB14_31:                              # %sw.bb.66
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB14_45
# BB#32:                                # %if.then.69
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-72(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-508(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-200(%rbp), %rdx
	callq	extract_alpha_region
	cmpl	$3, -44(%rbp)
	jne	.LBB14_44
# BB#33:                                # %if.then.74
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.27, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-72(%rbp), %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %edx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	-532(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_drawable_push_undo
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-72(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -560(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-556(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-136(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -312(%rbp)
.LBB14_34:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_36 Depth 2
                                        #       Child Loop BB14_38 Depth 3
	cmpq	$0, -312(%rbp)
	je	.LBB14_43
# BB#35:                                # %for.body
                                        #   in Loop: Header=BB14_34 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -320(%rbp)
.LBB14_36:                              # %while.cond
                                        #   Parent Loop BB14_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_38 Depth 3
	movl	-320(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -320(%rbp)
	cmpl	$0, %eax
	je	.LBB14_41
# BB#37:                                # %while.body
                                        #   in Loop: Header=BB14_36 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, -316(%rbp)
	movq	-136(%rbp), %rcx
	movl	-320(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movq	%rcx, -328(%rbp)
.LBB14_38:                              # %while.cond.93
                                        #   Parent Loop BB14_34 Depth=1
                                        #     Parent Loop BB14_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-316(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -316(%rbp)
	cmpl	$0, %eax
	je	.LBB14_40
# BB#39:                                # %while.body.96
                                        #   in Loop: Header=BB14_38 Depth=3
	movq	-328(%rbp), %rax
	movb	$-1, (%rax)
	movl	-84(%rbp), %ecx
	movq	-328(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -328(%rbp)
	jmp	.LBB14_38
.LBB14_40:                              # %while.end
                                        #   in Loop: Header=BB14_36 Depth=2
	jmp	.LBB14_36
.LBB14_41:                              # %while.end.100
                                        #   in Loop: Header=BB14_34 Depth=1
	jmp	.LBB14_42
.LBB14_42:                              # %for.inc
                                        #   in Loop: Header=BB14_34 Depth=1
	movq	-312(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -312(%rbp)
	jmp	.LBB14_34
.LBB14_43:                              # %for.end
	jmp	.LBB14_44
.LBB14_44:                              # %if.end.102
	jmp	.LBB14_45
.LBB14_45:                              # %if.end.103
	jmp	.LBB14_81
.LBB14_46:                              # %sw.bb.104
	cmpl	$4, -44(%rbp)
	jne	.LBB14_48
# BB#47:                                # %if.then.113
	movq	-216(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
.LBB14_48:                              # %if.end.117
	movq	-56(%rbp), %rdi
	callq	gimp_channel_is_empty
	leaq	-336(%rbp), %rsi
	leaq	-340(%rbp), %rdx
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-216(%rbp), %rdi
	callq	gimp_image_get_width
	movq	-216(%rbp), %rdi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-336(%rbp), %r8d
	movl	-340(%rbp), %r9d
	movq	-72(%rbp), %rdi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	movl	%r8d, -580(%rbp)        # 4-byte Spill
	movl	%r9d, -584(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -588(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%r8d, %r8d
	leaq	-344(%rbp), %rdx
	leaq	-348(%rbp), %rsi
	leaq	-352(%rbp), %rdi
	leaq	-356(%rbp), %rcx
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movl	-572(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -616(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	-576(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movl	-580(%rbp), %r8d        # 4-byte Reload
	movl	-584(%rbp), %r9d        # 4-byte Reload
	movl	-588(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-616(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-608(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-600(%rbp), %r14        # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-624(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	callq	gimp_rectangle_intersect
	movl	-352(%rbp), %ecx
	movq	-72(%rbp), %rdi
	movl	%eax, -628(%rbp)        # 4-byte Spill
	movl	%ecx, -632(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-632(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB14_51
# BB#49:                                # %lor.lhs.false.126
	movl	-356(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -636(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-636(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB14_51
# BB#50:                                # %lor.lhs.false.129
	cmpl	$0, -332(%rbp)
	je	.LBB14_52
.LBB14_51:                              # %if.then.131
	movq	-208(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
.LBB14_52:                              # %if.end.134
	cmpl	$0, -352(%rbp)
	jne	.LBB14_54
# BB#53:                                # %lor.lhs.false.136
	cmpl	$0, -356(%rbp)
	je	.LBB14_56
.LBB14_54:                              # %land.lhs.true.138
	cmpl	$0, -332(%rbp)
	jne	.LBB14_56
# BB#55:                                # %if.then.140
	movq	-56(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-344(%rbp), %edx
	movl	-348(%rbp), %r8d
	movl	-352(%rbp), %r9d
	movl	-356(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-208(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-200(%rbp), %rdi
	movl	$1, %ecx
	movl	-344(%rbp), %edx
	subl	-336(%rbp), %edx
	movl	-348(%rbp), %r8d
	subl	-340(%rbp), %r8d
	movl	-352(%rbp), %r9d
	movl	-356(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -676(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	copy_region
	movq	-208(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
.LBB14_56:                              # %if.end.150
	jmp	.LBB14_81
.LBB14_57:                              # %sw.bb.151
	movq	$0, -368(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB14_74
# BB#58:                                # %if.then.155
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	movl	$2, %ecx
	movl	$3, %edx
	cmpl	$0, %eax
	cmovnel	%edx, %ecx
	movl	%ecx, -372(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -692(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$1, -372(%rbp)
	movl	%eax, -696(%rbp)        # 4-byte Spill
	jne	.LBB14_60
# BB#59:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	jmp	.LBB14_73
.LBB14_60:                              # %cond.false
	cmpl	$0, -372(%rbp)
	jne	.LBB14_62
# BB#61:                                # %cond.true.163
	movl	$3, %eax
	movl	%eax, -704(%rbp)        # 4-byte Spill
	jmp	.LBB14_72
.LBB14_62:                              # %cond.false.164
	cmpl	$3, -372(%rbp)
	jne	.LBB14_64
# BB#63:                                # %cond.true.166
	movl	$2, %eax
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB14_71
.LBB14_64:                              # %cond.false.167
	cmpl	$2, -372(%rbp)
	jne	.LBB14_66
# BB#65:                                # %cond.true.169
	movl	$1, %eax
	movl	%eax, -712(%rbp)        # 4-byte Spill
	jmp	.LBB14_70
.LBB14_66:                              # %cond.false.170
	cmpl	$5, -372(%rbp)
	jne	.LBB14_68
# BB#67:                                # %cond.true.172
	movl	$2, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
	jmp	.LBB14_69
.LBB14_68:                              # %cond.false.173
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -372(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -716(%rbp)        # 4-byte Spill
.LBB14_69:                              # %cond.end
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	%eax, -712(%rbp)        # 4-byte Spill
.LBB14_70:                              # %cond.end.177
	movl	-712(%rbp), %eax        # 4-byte Reload
	movl	%eax, -708(%rbp)        # 4-byte Spill
.LBB14_71:                              # %cond.end.179
	movl	-708(%rbp), %eax        # 4-byte Reload
	movl	%eax, -704(%rbp)        # 4-byte Spill
.LBB14_72:                              # %cond.end.181
	movl	-704(%rbp), %eax        # 4-byte Reload
	movl	%eax, -700(%rbp)        # 4-byte Spill
.LBB14_73:                              # %cond.end.183
	movl	-700(%rbp), %eax        # 4-byte Reload
	movl	-692(%rbp), %edi        # 4-byte Reload
	movl	-696(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -368(%rbp)
	movq	-64(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	gimp_drawable_convert_tiles_grayscale
	movq	-368(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rsi, -728(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -732(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movq	-728(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -736(%rbp)        # 4-byte Spill
	movl	-736(%rbp), %ecx        # 4-byte Reload
	movl	-732(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	jmp	.LBB14_75
.LBB14_74:                              # %if.else.188
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-72(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-72(%rbp), %rdi
	movl	%eax, -748(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-748(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
.LBB14_75:                              # %if.end.192
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB14_77
# BB#76:                                # %if.then.195
	leaq	-136(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	leaq	-376(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$4, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %r8
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -768(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	memset
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	-768(%rbp), %rsi        # 8-byte Reload
	movq	-776(%rbp), %rdx        # 8-byte Reload
	callq	flatten_region
	jmp	.LBB14_78
.LBB14_77:                              # %if.else.197
	leaq	-136(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	copy_region
.LBB14_78:                              # %if.end.198
	cmpq	$0, -368(%rbp)
	je	.LBB14_80
# BB#79:                                # %if.then.200
	movq	-368(%rbp), %rdi
	callq	tile_manager_unref
.LBB14_80:                              # %if.end.201
	movq	-208(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
.LBB14_81:                              # %sw.epilog.205
	movq	-208(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB14_82:                              # %return
	movq	-32(%rbp), %rax
	addq	$808, %rsp              # imm = 0x328
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_layer_create_mask, .Lfunc_end14-gimp_layer_create_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_30
	.quad	.LBB14_30
	.quad	.LBB14_31
	.quad	.LBB14_31
	.quad	.LBB14_46
	.quad	.LBB14_57
	.quad	.LBB14_46

	.text
	.globl	gimp_layer_apply_mask
	.align	16, 0x90
	.type	gimp_layer_apply_mask,@function
gimp_layer_apply_mask:                  # @gimp_layer_apply_mask
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -172(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_apply_mask, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_50
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_14
# BB#13:                                # %if.then.13
	jmp	.LBB15_50
.LBB15_14:                              # %if.end.14
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB15_22
# BB#15:                                # %if.then.19
	jmp	.LBB15_16
.LBB15_16:                              # %do.body.20
	cmpl	$1, -12(%rbp)
	je	.LBB15_18
# BB#17:                                # %lor.lhs.false
	cmpl	$1, -16(%rbp)
	jne	.LBB15_19
.LBB15_18:                              # %if.then.23
	jmp	.LBB15_20
.LBB15_19:                              # %if.else.24
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_apply_mask, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_50
.LBB15_20:                              # %if.end.25
	jmp	.LBB15_21
.LBB15_21:                              # %do.end.26
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.27
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_24
# BB#23:                                # %if.then.32
	jmp	.LBB15_50
.LBB15_24:                              # %if.end.33
	cmpl	$0, -16(%rbp)
	je	.LBB15_32
# BB#25:                                # %if.then.35
	movq	-32(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	jne	.LBB15_27
# BB#26:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.29, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB15_28
.LBB15_27:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.30, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB15_28:                              # %cond.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$25, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_push_layer_mask_remove
	cmpl	$0, -12(%rbp)
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB15_31
# BB#29:                                # %land.lhs.true.42
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB15_31
# BB#30:                                # %if.then.47
	movq	-8(%rbp), %rdi
	callq	gimp_layer_add_alpha
.LBB15_31:                              # %if.end.48
	jmp	.LBB15_32
.LBB15_32:                              # %if.end.49
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	jne	.LBB15_37
# BB#33:                                # %lor.lhs.false.52
	cmpl	$0, -12(%rbp)
	jne	.LBB15_35
# BB#34:                                # %land.lhs.true.54
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	je	.LBB15_37
.LBB15_35:                              # %lor.lhs.false.57
	cmpl	$1, -12(%rbp)
	jne	.LBB15_38
# BB#36:                                # %land.lhs.true.59
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	je	.LBB15_38
.LBB15_37:                              # %if.then.62
	movl	$1, -172(%rbp)
.LBB15_38:                              # %if.end.63
	cmpl	$0, -12(%rbp)
	jne	.LBB15_42
# BB#39:                                # %if.then.65
	cmpl	$0, -16(%rbp)
	je	.LBB15_41
# BB#40:                                # %if.then.67
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_drawable_push_undo
.LBB15_41:                              # %if.end.72
	movq	-8(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-24(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-300(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-24(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movl	$255, %edx
	callq	apply_mask_to_region
.LBB15_42:                              # %if.end.83
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_layer_mask_update, %rdx
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r9, -344(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-344(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_removed
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	cmpl	$0, -16(%rbp)
	je	.LBB15_44
# BB#43:                                # %if.then.89
	movq	-32(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB15_44:                              # %if.end.91
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB15_46
# BB#45:                                # %if.then.93
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gegl_node_disconnect
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB15_46:                              # %if.end.96
	cmpl	$0, -172(%rbp)
	je	.LBB15_48
# BB#47:                                # %if.then.98
	movq	-8(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	jmp	.LBB15_49
.LBB15_48:                              # %if.else.103
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB15_49:                              # %if.end.106
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	layer_signals+12, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB15_50:                              # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_layer_apply_mask, .Lfunc_end15-gimp_layer_apply_mask
	.cfi_endproc

	.globl	gimp_layer_add_alpha
	.align	16, 0x90
	.type	gimp_layer_add_alpha,@function
gimp_layer_add_alpha:                   # @gimp_layer_add_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -184(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -188(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-176(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-184(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -188(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -188(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	cmpl	$0, -192(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_add_alpha, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_30
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB16_14
# BB#13:                                # %if.then.15
	jmp	.LBB16_30
.LBB16_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_type_with_alpha
	movl	%eax, -164(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$1, -164(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jne	.LBB16_16
# BB#15:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB16_29
.LBB16_16:                              # %cond.false
	cmpl	$0, -164(%rbp)
	jne	.LBB16_18
# BB#17:                                # %cond.true.26
	movl	$3, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB16_28
.LBB16_18:                              # %cond.false.27
	cmpl	$3, -164(%rbp)
	jne	.LBB16_20
# BB#19:                                # %cond.true.29
	movl	$2, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB16_27
.LBB16_20:                              # %cond.false.30
	cmpl	$2, -164(%rbp)
	jne	.LBB16_22
# BB#21:                                # %cond.true.32
	movl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB16_26
.LBB16_22:                              # %cond.false.33
	cmpl	$5, -164(%rbp)
	jne	.LBB16_24
# BB#23:                                # %cond.true.35
	movl	$2, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB16_25
.LBB16_24:                              # %cond.false.36
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -164(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB16_25:                              # %cond.end
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB16_26:                              # %cond.end.39
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB16_27:                              # %cond.end.41
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB16_28:                              # %cond.end.43
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB16_29:                              # %cond.end.45
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	-220(%rbp), %edi        # 4-byte Reload
	movl	-224(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -264(%rbp)        # 4-byte Spill
	movl	-264(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-160(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-16(%rbp), %rdi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	add_alpha_region
	movq	-8(%rbp), %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.31, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	movq	-160(%rbp), %rcx
	movl	-164(%rbp), %r8d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_set_tiles
	movq	-160(%rbp), %rdi
	callq	tile_manager_unref
.LBB16_30:                              # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_layer_add_alpha, .Lfunc_end16-gimp_layer_add_alpha
	.cfi_endproc

	.globl	gimp_layer_flatten
	.align	16, 0x90
	.type	gimp_layer_flatten,@function
gimp_layer_flatten:                     # @gimp_layer_flatten
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -196(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -196(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_flatten, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_42
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -220(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -220(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_flatten, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_42
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB17_26
# BB#25:                                # %if.then.43
	jmp	.LBB17_42
.LBB17_26:                              # %if.end.44
	movq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type_without_alpha
	movl	%eax, -172(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-176(%rbp), %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$1, -172(%rbp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jne	.LBB17_28
# BB#27:                                # %cond.true
	movl	$4, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB17_41
.LBB17_28:                              # %cond.false
	cmpl	$0, -172(%rbp)
	jne	.LBB17_30
# BB#29:                                # %cond.true.56
	movl	$3, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB17_40
.LBB17_30:                              # %cond.false.57
	cmpl	$3, -172(%rbp)
	jne	.LBB17_32
# BB#31:                                # %cond.true.59
	movl	$2, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB17_39
.LBB17_32:                              # %cond.false.60
	cmpl	$2, -172(%rbp)
	jne	.LBB17_34
# BB#33:                                # %cond.true.62
	movl	$1, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB17_38
.LBB17_34:                              # %cond.false.63
	cmpl	$5, -172(%rbp)
	jne	.LBB17_36
# BB#35:                                # %cond.true.65
	movl	$2, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB17_37
.LBB17_36:                              # %cond.false.66
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -172(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB17_37:                              # %cond.end
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB17_38:                              # %cond.end.69
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB17_39:                              # %cond.end.71
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB17_40:                              # %cond.end.73
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB17_41:                              # %cond.end.75
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	-268(%rbp), %edi        # 4-byte Reload
	movl	-272(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -168(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-96(%rbp), %rdi
	xorl	%edx, %edx
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -312(%rbp)        # 4-byte Spill
	movl	-312(%rbp), %ecx        # 4-byte Reload
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -328(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-324(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	flatten_region
	movq	-8(%rbp), %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.33, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	g_dpgettext
	movq	-168(%rbp), %rcx
	movl	-172(%rbp), %r8d
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	-356(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_drawable_set_tiles
	movq	-168(%rbp), %rdi
	callq	tile_manager_unref
.LBB17_42:                              # %return
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_layer_flatten, .Lfunc_end17-gimp_layer_flatten
	.cfi_endproc

	.globl	gimp_layer_resize_to_image
	.align	16, 0x90
	.type	gimp_layer_resize_to_image,@function
gimp_layer_resize_to_image:             # @gimp_layer_resize_to_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_resize_to_image, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB18_15
# BB#14:                                # %if.then.16
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_resize_to_image, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_16:                              # %if.end.18
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.19
	jmp	.LBB18_18
.LBB18_18:                              # %do.body.20
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB18_20
# BB#19:                                # %if.then.29
	movl	$0, -76(%rbp)
	jmp	.LBB18_25
.LBB18_20:                              # %if.else.30
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_23
# BB#21:                                # %land.lhs.true.33
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB18_23
# BB#22:                                # %if.then.37
	movl	$1, -76(%rbp)
	jmp	.LBB18_24
.LBB18_23:                              # %if.else.38
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB18_24:                              # %if.end.40
	jmp	.LBB18_25
.LBB18_25:                              # %if.end.41
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB18_27
# BB#26:                                # %if.then.44
	jmp	.LBB18_28
.LBB18_27:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_resize_to_image, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_30
.LBB18_28:                              # %if.end.46
	jmp	.LBB18_29
.LBB18_29:                              # %do.end.47
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.35, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$22, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_item_resize
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB18_30:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_layer_resize_to_image, .Lfunc_end18-gimp_layer_resize_to_image
	.cfi_endproc

	.globl	gimp_layer_get_floating_sel_drawable
	.align	16, 0x90
	.type	gimp_layer_get_floating_sel_drawable,@function
gimp_layer_get_floating_sel_drawable:   # @gimp_layer_get_floating_sel_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_floating_sel_drawable, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB19_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_layer_get_floating_sel_drawable, .Lfunc_end19-gimp_layer_get_floating_sel_drawable
	.cfi_endproc

	.globl	gimp_layer_set_floating_sel_drawable
	.align	16, 0x90
	.type	gimp_layer_set_floating_sel_drawable,@function
gimp_layer_set_floating_sel_drawable:   # @gimp_layer_set_floating_sel_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_floating_sel_drawable, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_29
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	jmp	.LBB20_13
.LBB20_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB20_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB20_21
.LBB20_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB20_20
.LBB20_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_20:                              # %if.end.32
	jmp	.LBB20_21
.LBB20_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_23
.LBB20_22:                              # %if.then.36
	jmp	.LBB20_24
.LBB20_23:                              # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_floating_sel_drawable, %rsi
	movabsq	$.L.str.36, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_29
.LBB20_24:                              # %if.end.38
	jmp	.LBB20_25
.LBB20_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB20_29
# BB#26:                                # %if.then.42
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB20_28
# BB#27:                                # %if.then.45
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 96(%rax)
.LBB20_28:                              # %if.end.51
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 72(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB20_29:                              # %if.end.55
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_layer_set_floating_sel_drawable, .Lfunc_end20-gimp_layer_set_floating_sel_drawable
	.cfi_endproc

	.globl	gimp_layer_is_floating_sel
	.align	16, 0x90
	.type	gimp_layer_is_floating_sel,@function
gimp_layer_is_floating_sel:             # @gimp_layer_is_floating_sel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_is_floating_sel, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_layer_is_floating_sel, .Lfunc_end21-gimp_layer_is_floating_sel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_layer_set_opacity
	.align	16, 0x90
	.type	gimp_layer_set_opacity,@function
gimp_layer_set_opacity:                 # @gimp_layer_set_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_opacity, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_25
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_14
# BB#13:                                # %cond.true
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB22_18
.LBB22_14:                              # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB22_16
# BB#15:                                # %cond.true.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB22_17
.LBB22_16:                              # %cond.false.14
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB22_17:                              # %cond.end
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB22_18:                              # %cond.end.15
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB22_19
	jp	.LBB22_19
	jmp	.LBB22_25
.LBB22_19:                              # %if.then.19
	cmpl	$0, -20(%rbp)
	je	.LBB22_22
# BB#20:                                # %land.lhs.true.21
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB22_22
# BB#21:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_layer_opacity
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB22_22:                              # %if.end.32
	xorl	%edx, %edx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-8(%rbp), %rax
	movl	layer_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB22_24
# BB#23:                                # %if.then.36
	movabsq	$.L.str.39, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gegl_node_set
.LBB22_24:                              # %if.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB22_25:                              # %if.end.48
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_layer_set_opacity, .Lfunc_end22-gimp_layer_set_opacity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_layer_get_opacity
	.align	16, 0x90
	.type	gimp_layer_get_opacity,@function
gimp_layer_get_opacity:                 # @gimp_layer_get_opacity
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_opacity, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB23_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_layer_get_opacity, .Lfunc_end23-gimp_layer_get_opacity
	.cfi_endproc

	.globl	gimp_layer_set_mode
	.align	16, 0x90
	.type	gimp_layer_set_mode,@function
gimp_layer_set_mode:                    # @gimp_layer_set_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_mode, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_17
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB24_17
# BB#13:                                # %if.then.13
	cmpl	$0, -16(%rbp)
	je	.LBB24_16
# BB#14:                                # %land.lhs.true.15
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB24_16
# BB#15:                                # %if.then.20
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_layer_mode
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB24_16:                              # %if.end.26
	xorl	%edx, %edx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-8(%rbp), %rcx
	movl	layer_signals+4, %esi
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movq	-8(%rbp), %rdi
	callq	gimp_layer_sync_mode_node
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rcx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB24_17:                              # %if.end.37
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_layer_set_mode, .Lfunc_end24-gimp_layer_set_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_sync_mode_node,@function
gimp_layer_sync_mode_node:              # @gimp_layer_sync_mode_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 64(%rdi)
	je	.LBB25_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_mode_node
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	decl	%ecx
	subl	$24, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB25_3
	jmp	.LBB25_2
.LBB25_2:                               # %sw.bb
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.73, %rdx
	movabsq	$.L.str.74, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %r8
	movl	48(%r8), %r8d
	movb	$0, %al
	callq	gegl_node_set
	jmp	.LBB25_4
.LBB25_3:                               # %sw.default
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gimp_layer_mode_to_gegl_operation
	movabsq	$.L.str.70, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gegl_node_set
.LBB25_4:                               # %sw.epilog
	jmp	.LBB25_5
.LBB25_5:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_layer_sync_mode_node, .Lfunc_end25-gimp_layer_sync_mode_node
	.cfi_endproc

	.globl	gimp_layer_get_mode
	.align	16, 0x90
	.type	gimp_layer_get_mode,@function
gimp_layer_get_mode:                    # @gimp_layer_get_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_mode, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB26_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_layer_get_mode, .Lfunc_end26-gimp_layer_get_mode
	.cfi_endproc

	.globl	gimp_layer_set_lock_alpha
	.align	16, 0x90
	.type	gimp_layer_set_lock_alpha,@function
gimp_layer_set_lock_alpha:              # @gimp_layer_set_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_lock_alpha, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_22
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	jmp	.LBB27_13
.LBB27_13:                              # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_layer_can_lock_alpha
	cmpl	$0, %eax
	je	.LBB27_15
# BB#14:                                # %if.then.14
	jmp	.LBB27_16
.LBB27_15:                              # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_set_lock_alpha, %rsi
	movabsq	$.L.str.41, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_22
.LBB27_16:                              # %if.end.16
	jmp	.LBB27_17
.LBB27_17:                              # %do.end.17
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdx
	movl	52(%rdx), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB27_22
# BB#18:                                # %if.then.21
	cmpl	$0, -16(%rbp)
	je	.LBB27_21
# BB#19:                                # %land.lhs.true.23
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB27_21
# BB#20:                                # %if.then.28
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_layer_lock_alpha
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB27_21:                              # %if.end.34
	xorl	%edx, %edx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-8(%rbp), %rcx
	movl	layer_signals+8, %esi
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$80, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB27_22:                              # %if.end.37
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_layer_set_lock_alpha, .Lfunc_end27-gimp_layer_set_lock_alpha
	.cfi_endproc

	.globl	gimp_layer_can_lock_alpha
	.align	16, 0x90
	.type	gimp_layer_can_lock_alpha,@function
gimp_layer_can_lock_alpha:              # @gimp_layer_can_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_can_lock_alpha, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_15
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB28_14
# BB#13:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB28_15
.LBB28_14:                              # %if.end.16
	movl	$1, -4(%rbp)
.LBB28_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_layer_can_lock_alpha, .Lfunc_end28-gimp_layer_can_lock_alpha
	.cfi_endproc

	.globl	gimp_layer_get_lock_alpha
	.align	16, 0x90
	.type	gimp_layer_get_lock_alpha,@function
gimp_layer_get_lock_alpha:              # @gimp_layer_get_lock_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_get_lock_alpha, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB29_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_layer_get_lock_alpha, .Lfunc_end29-gimp_layer_get_lock_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_layer_class_init,@function
gimp_layer_class_init:                  # @gimp_layer_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.43, %rdi
	movl	$1, %edx
	movl	$680, %ecx              # imm = 0x2A8
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.44, %rdi
	movl	$1, %edx
	movl	$688, %ecx              # imm = 0x2B0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, layer_signals
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r8, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -176(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -180(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.45, %rdi
	movl	$1, %edx
	movl	$696, %ecx              # imm = 0x2B8
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, layer_signals+4
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-200(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -212(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.46, %rdi
	movl	$1, %edx
	movl	$704, %ecx              # imm = 0x2C0
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, layer_signals+8
	movq	-48(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r8, -232(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -240(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -244(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.48, %rdi
	movabsq	$gimp_layer_get_node, %rsi
	movabsq	$gimp_layer_to_selection, %r8
	movabsq	$gimp_layer_transform, %r9
	movabsq	$gimp_layer_rotate, %r10
	movabsq	$gimp_layer_flip, %r11
	movabsq	$gimp_layer_resize, %r14
	movabsq	$gimp_layer_scale, %r15
	movabsq	$gimp_layer_translate, %r12
	movabsq	$gimp_layer_rename, %r13
	movabsq	$gimp_layer_convert, %rcx
	movabsq	$gimp_layer_duplicate, %rdx
	movabsq	$gimp_layer_get_tree, %rbx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_is_attached, %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_unset_removed, %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_removed, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_get_description, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_invalidate_preview, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movabsq	$.L.str.47, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_get_memsize, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_name_changed, %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_finalize, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_dispose, %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_get_property, %rcx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_set_property, %rcx
	movl	%eax, layer_signals+12
	movq	-56(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	-56(%rbp), %rax
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 144(%rax)
	movq	-64(%rbp), %rax
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-72(%rbp), %rax
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 176(%rax)
	movq	-72(%rbp), %rax
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 248(%rax)
	movq	-80(%rbp), %rax
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 280(%rax)
	movq	-80(%rbp), %rax
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 312(%rax)
	movq	-80(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 320(%rax)
	movq	-80(%rbp), %rax
	movq	%rbx, 336(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 344(%rax)
	movq	-80(%rbp), %rax
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 352(%rax)
	movq	-80(%rbp), %rax
	movq	%r13, 360(%rax)
	movq	-80(%rbp), %rax
	movq	%r12, 368(%rax)
	movq	-80(%rbp), %rax
	movq	%r15, 376(%rax)
	movq	-80(%rbp), %rax
	movq	%r14, 384(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 392(%rax)
	movq	-80(%rbp), %rax
	movq	%r10, 400(%rax)
	movq	-80(%rbp), %rax
	movq	%r9, 408(%rax)
	movq	-80(%rbp), %rax
	movq	%r8, 424(%rax)
	movq	-80(%rbp), %rax
	movq	%rsi, 432(%rax)
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.49, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.50, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 448(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.51, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.52, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 464(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.53, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 472(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.54, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 480(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.55, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 488(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.56, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 496(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.57, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 504(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.58, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 520(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.59, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 528(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.60, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 536(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.61, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 544(%rcx)
	callq	g_dpgettext
	movabsq	$.L.str.62, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 552(%rcx)
	callq	gettext
	movabsq	$.L.str.63, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 560(%rcx)
	callq	gettext
	movabsq	$.L.str.38, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI30_0, %xmm1        # xmm1 = mem[0],zero
	movl	$225, %r8d
	movabsq	$gimp_layer_project_region, %rdx
	movabsq	$gimp_layer_convert_type, %rsi
	movabsq	$gimp_layer_get_active_components, %r9
	movabsq	$gimp_layer_invalidate_boundary, %r10
	movabsq	$gimp_layer_estimate_memsize, %r11
	movq	-80(%rbp), %rbx
	movq	%rax, 568(%rbx)
	movq	-88(%rbp), %rax
	movq	%r11, 592(%rax)
	movq	-88(%rbp), %rax
	movq	%r10, 600(%rax)
	movq	-88(%rbp), %rax
	movq	%r9, 608(%rax)
	movq	-88(%rbp), %rax
	movq	%rsi, 616(%rax)
	movq	-88(%rbp), %rax
	movq	%rdx, 640(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 680(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 688(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 696(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 704(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%r8d, %ecx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.40, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$225, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.42, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-56(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movabsq	$.L.str.24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$225, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.37, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$225, %r8d
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_layer_class_init, .Lfunc_end30-gimp_layer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_set_property,@function
gimp_layer_set_property:                # @gimp_layer_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB31_2
.LBB31_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.64, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$358, %edx              # imm = 0x166
	movabsq	$.L.str.65, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB31_4
.LBB31_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_layer_set_property, .Lfunc_end31-gimp_layer_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_property,@function
gimp_layer_get_property:                # @gimp_layer_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB32_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI32_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB32_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_opacity
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	g_value_set_double
	jmp	.LBB32_9
.LBB32_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_mode
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_enum
	jmp	.LBB32_9
.LBB32_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_lock_alpha
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB32_9
.LBB32_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB32_9
.LBB32_5:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_value_set_boolean
	jmp	.LBB32_9
.LBB32_6:                               # %sw.default
	jmp	.LBB32_7
.LBB32_7:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.64, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$390, %edx              # imm = 0x186
	movabsq	$.L.str.65, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB32_9
.LBB32_9:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_layer_get_property, .Lfunc_end32-gimp_layer_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_1
	.quad	.LBB32_2
	.quad	.LBB32_3
	.quad	.LBB32_4
	.quad	.LBB32_5

	.text
	.align	16, 0x90
	.type	gimp_layer_dispose,@function
gimp_layer_dispose:                     # @gimp_layer_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_layer_mask_update, %rdx
	movq	-16(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB33_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB33_6
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_floating_sel
	cmpq	-16(%rbp), %rax
	jne	.LBB33_5
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_detach_floating_sel
.LBB33_5:                               # %if.end.10
	jmp	.LBB33_6
.LBB33_6:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_layer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_layer_dispose, .Lfunc_end33-gimp_layer_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_finalize,@function
gimp_layer_finalize:                    # @gimp_layer_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB34_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 96(%rax)
.LBB34_4:                               # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_layer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_layer_finalize, .Lfunc_end34-gimp_layer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_name_changed,@function
gimp_layer_name_changed:                # @gimp_layer_name_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 144(%rax)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	144(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB35_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB35_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
.LBB35_4:                               # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_layer_name_changed, .Lfunc_end35-gimp_layer_name_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_memsize,@function
gimp_layer_get_memsize:                 # @gimp_layer_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	96(%rax), %rax
	imulq	$20, %rax, %rax
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	gimp_layer_parent_class, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_layer_get_memsize, .Lfunc_end36-gimp_layer_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_invalidate_preview,@function
gimp_layer_invalidate_preview:          # @gimp_layer_invalidate_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB37_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	floating_sel_invalidate
.LBB37_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_layer_invalidate_preview, .Lfunc_end37-gimp_layer_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_description,@function
gimp_layer_get_description:             # @gimp_layer_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB38_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB38_3
.LBB38_2:                               # %if.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB38_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_layer_get_description, .Lfunc_end38-gimp_layer_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_removed,@function
gimp_layer_removed:                     # @gimp_layer_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_removed
.LBB39_2:                               # %if.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 280(%rax)
	je	.LBB39_4
# BB#3:                                 # %if.then.8
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB39_4:                               # %if.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_layer_removed, .Lfunc_end39-gimp_layer_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_unset_removed,@function
gimp_layer_unset_removed:               # @gimp_layer_unset_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_unset_removed
.LBB40_2:                               # %if.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 312(%rax)
	je	.LBB40_4
# BB#3:                                 # %if.then.8
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB40_4:                               # %if.end.12
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_layer_unset_removed, .Lfunc_end40-gimp_layer_unset_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_is_attached,@function
gimp_layer_is_attached:                 # @gimp_layer_is_attached
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB41_7
.LBB41_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB41_5
# BB#4:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB41_6
.LBB41_5:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB41_6:                               # %if.end
	jmp	.LBB41_7
.LBB41_7:                               # %if.end.7
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB41_9
# BB#8:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB41_9:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_layer_is_attached, .Lfunc_end41-gimp_layer_is_attached
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_tree,@function
gimp_layer_get_tree:                    # @gimp_layer_get_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_layer_tree
	movq	%rax, -8(%rbp)
	jmp	.LBB42_3
.LBB42_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB42_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_layer_get_tree, .Lfunc_end42-gimp_layer_get_tree
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_duplicate,@function
gimp_layer_duplicate:                   # @gimp_layer_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB43_3
# BB#2:                                 # %if.then
	jmp	.LBB43_4
.LBB43_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_layer_duplicate, %rsi
	movabsq	$.L.str.67, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB43_19
.LBB43_4:                               # %if.end
	jmp	.LBB43_5
.LBB43_5:                               # %do.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB43_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB43_12
.LBB43_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB43_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB43_11:                              # %if.end.14
	jmp	.LBB43_12
.LBB43_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB43_18
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_mode
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_layer_set_mode
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_layer_get_opacity
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_layer_set_opacity
	movq	-72(%rbp), %rdi
	callq	gimp_layer_can_lock_alpha
	cmpl	$0, %eax
	je	.LBB43_15
# BB#14:                                # %if.then.28
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_lock_alpha
	xorl	%edx, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_layer_set_lock_alpha
.LBB43_15:                              # %if.end.30
	movq	-64(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB43_17
# BB#16:                                # %if.then.32
	movq	-64(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_add_mask
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB43_17:                              # %if.end.45
	jmp	.LBB43_18
.LBB43_18:                              # %if.end.46
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB43_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_layer_duplicate, .Lfunc_end43-gimp_layer_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_convert,@function
gimp_layer_convert:                     # @gimp_layer_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB44_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB44_3
.LBB44_2:                               # %cond.true
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB44_10
.LBB44_3:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB44_5
# BB#4:                                 # %lor.lhs.false.9
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB44_6
.LBB44_5:                               # %cond.true.12
	movl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB44_9
.LBB44_6:                               # %cond.false.13
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB44_8
# BB#7:                                 # %lor.rhs
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB44_8:                               # %lor.end
	movb	-65(%rbp), %al          # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB44_9:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB44_10:                              # %cond.end.19
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	je	.LBB44_12
# BB#11:                                # %if.then
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	gimp_drawable_convert_type
.LBB44_12:                              # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB44_14
# BB#13:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_set_image
.LBB44_14:                              # %if.end.27
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_layer_convert, .Lfunc_end44-gimp_layer_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_rename,@function
gimp_layer_rename:                      # @gimp_layer_rename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB45_13
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -72(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then.8
	movl	$0, -84(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.11
	movl	$1, -84(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.12
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.14
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.16
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.68, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB45_17
.LBB45_10:                              # %if.end.19
	cmpl	$0, -60(%rbp)
	je	.LBB45_12
# BB#11:                                # %if.then.21
	movl	$19, %esi
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	floating_sel_to_layer
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB45_12:                              # %if.end.24
	jmp	.LBB45_13
.LBB45_13:                              # %if.end.25
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	360(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	*%rax
	cmpl	$0, -60(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB45_16
# BB#14:                                # %land.lhs.true.30
	cmpl	$0, -64(%rbp)
	je	.LBB45_16
# BB#15:                                # %if.then.32
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB45_16:                              # %if.end.34
	movl	$1, -4(%rbp)
.LBB45_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_layer_rename, .Lfunc_end45-gimp_layer_rename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_translate,@function
gimp_layer_translate:                   # @gimp_layer_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB46_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_item_displace
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB46_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movq	-32(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	368(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movq	-32(%rbp), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB46_4
# BB#3:                                 # %if.then.17
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB46_4:                               # %if.end.24
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_layer_translate, .Lfunc_end46-gimp_layer_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_scale,@function
gimp_layer_scale:                       # @gimp_layer_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_scale
.LBB47_2:                               # %if.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	376(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %r10
	movq	%r10, (%rsp)
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_layer_scale, .Lfunc_end47-gimp_layer_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_resize,@function
gimp_layer_resize:                      # @gimp_layer_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	384(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	*%rax
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB48_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_resize
.LBB48_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_layer_resize, .Lfunc_end48-gimp_layer_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_flip,@function
gimp_layer_flip:                        # @gimp_layer_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	*%rax
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB49_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB49_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_layer_flip, .Lfunc_end49-gimp_layer_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_rotate,@function
gimp_layer_rotate:                      # @gimp_layer_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	400(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	callq	*%rax
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
.LBB50_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_layer_rotate, .Lfunc_end50-gimp_layer_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_transform,@function
gimp_layer_transform:                   # @gimp_layer_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB51_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rdi
	callq	gimp_layer_add_alpha
.LBB51_3:                               # %if.end
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	408(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-48(%rbp), %r11
	movl	%r10d, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	movq	-56(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB51_5
# BB#4:                                 # %if.then.8
	movq	-56(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB51_5:                               # %if.end.12
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_layer_transform, .Lfunc_end51-gimp_layer_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_to_selection,@function
gimp_layer_to_selection:                # @gimp_layer_to_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-48(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %edx
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_channel_select_alpha
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_layer_to_selection, .Lfunc_end52-gimp_layer_to_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_node,@function
gimp_layer_get_node:                    # @gimp_layer_get_node
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -60(%rbp)
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	432(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_source_node
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gegl_node_get_parent
	cmpq	$0, %rax
	je	.LBB53_2
# BB#1:                                 # %if.then
	movl	$1, -60(%rbp)
.LBB53_2:                               # %if.end
	cmpl	$0, -60(%rbp)
	jne	.LBB53_4
# BB#3:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gegl_node_add_child
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB53_4:                               # %if.end.12
	jmp	.LBB53_5
.LBB53_5:                               # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB53_7
# BB#6:                                 # %if.then.13
	jmp	.LBB53_8
.LBB53_7:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$833, %edx              # imm = 0x341
	movabsq	$.L__func__.gimp_layer_get_node, %rcx
	movabsq	$.L.str.69, %r8
	callq	g_warn_message
.LBB53_8:                               # %if.end.14
	jmp	.LBB53_9
.LBB53_9:                               # %do.end
	movabsq	$.L.str.70, %rsi
	movabsq	$.L.str.71, %rdx
	movabsq	$.L.str.39, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movsd	40(%r9), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	gegl_node_new_child
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	cmpl	$0, -60(%rbp)
	jne	.LBB53_11
# BB#10:                                # %if.then.18
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.72, %rcx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB53_11:                              # %if.end.21
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB53_13
# BB#12:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_source_node
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rcx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB53_13:                              # %if.end.31
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_offset_node
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.72, %rcx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_layer_sync_mode_node
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_mode_node
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rcx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-32(%rbp), %rcx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_layer_get_node, .Lfunc_end53-gimp_layer_get_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_estimate_memsize,@function
gimp_layer_estimate_memsize:            # @gimp_layer_estimate_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_drawable_estimate_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB54_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	gimp_layer_parent_class, %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	592(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_layer_estimate_memsize, .Lfunc_end54-gimp_layer_estimate_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_invalidate_boundary,@function
gimp_layer_invalidate_boundary:         # @gimp_layer_invalidate_boundary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB55_2
# BB#1:                                 # %if.then
	jmp	.LBB55_6
.LBB55_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_selection_invalidate
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB55_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 104(%rax)
.LBB55_4:                               # %if.end.9
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB55_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rdi
	callq	floating_sel_invalidate
.LBB55_6:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_layer_invalidate_boundary, .Lfunc_end55-gimp_layer_invalidate_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_active_components,@function
gimp_layer_get_active_components:       # @gimp_layer_get_active_components
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
.Ltmp177:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp178:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_get_active_array
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB56_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 52(%rax)
	je	.LBB56_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_bytes
	subl	$1, %eax
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movl	$0, (%rcx,%rdi,4)
.LBB56_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_layer_get_active_components, .Lfunc_end56-gimp_layer_get_active_components
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_convert_type,@function
gimp_layer_convert_type:                # @gimp_layer_convert_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp181:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%edx, -184(%rbp)        # 4-byte Spill
	jb	.LBB57_1
	jmp	.LBB57_37
.LBB57_37:                              # %entry
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB57_2
	jmp	.LBB57_36
.LBB57_1:                               # %sw.bb
	movq	gimp_layer_parent_class, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	616(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	*%rax
	jmp	.LBB57_36
.LBB57_2:                               # %sw.bb.2
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB57_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB57_8
.LBB57_4:                               # %cond.false
	cmpl	$1, -20(%rbp)
	jne	.LBB57_6
# BB#5:                                 # %cond.true.6
	movl	$2, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB57_7
.LBB57_6:                               # %cond.false.7
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	cmpl	$2, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB57_7:                               # %cond.end
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB57_8:                               # %cond.end.10
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB57_20
# BB#9:                                 # %if.then
	cmpl	$0, -44(%rbp)
	je	.LBB57_11
# BB#10:                                # %lor.lhs.false
	cmpl	$1, -44(%rbp)
	jne	.LBB57_12
.LBB57_11:                              # %cond.true.15
	movl	$1, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB57_19
.LBB57_12:                              # %cond.false.16
	cmpl	$2, -44(%rbp)
	je	.LBB57_14
# BB#13:                                # %lor.lhs.false.18
	cmpl	$3, -44(%rbp)
	jne	.LBB57_15
.LBB57_14:                              # %cond.true.20
	movl	$3, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB57_18
.LBB57_15:                              # %cond.false.21
	movb	$1, %al
	cmpl	$4, -44(%rbp)
	movb	%al, -225(%rbp)         # 1-byte Spill
	je	.LBB57_17
# BB#16:                                # %lor.rhs
	cmpl	$5, -44(%rbp)
	sete	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB57_17:                              # %lor.end
	movb	-225(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -224(%rbp)        # 4-byte Spill
.LBB57_18:                              # %cond.end.25
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB57_19:                              # %cond.end.27
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
.LBB57_20:                              # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	cmpl	$1, -44(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jne	.LBB57_22
# BB#21:                                # %cond.true.32
	movl	$4, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB57_35
.LBB57_22:                              # %cond.false.33
	cmpl	$0, -44(%rbp)
	jne	.LBB57_24
# BB#23:                                # %cond.true.35
	movl	$3, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB57_34
.LBB57_24:                              # %cond.false.36
	cmpl	$3, -44(%rbp)
	jne	.LBB57_26
# BB#25:                                # %cond.true.38
	movl	$2, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB57_33
.LBB57_26:                              # %cond.false.39
	cmpl	$2, -44(%rbp)
	jne	.LBB57_28
# BB#27:                                # %cond.true.41
	movl	$1, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB57_32
.LBB57_28:                              # %cond.false.42
	cmpl	$5, -44(%rbp)
	jne	.LBB57_30
# BB#29:                                # %cond.true.44
	movl	$2, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB57_31
.LBB57_30:                              # %cond.false.45
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	cmpl	$4, -44(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB57_31:                              # %cond.end.48
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB57_32:                              # %cond.end.50
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB57_33:                              # %cond.end.52
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB57_34:                              # %cond.end.54
	movl	-244(%rbp), %eax        # 4-byte Reload
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB57_35:                              # %cond.end.56
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	-232(%rbp), %edi        # 4-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-32(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%edx, %edx
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -272(%rbp)        # 4-byte Spill
	movl	-272(%rbp), %ecx        # 4-byte Reload
	movl	-268(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-280(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -288(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_drawable_type
	leaq	-112(%rbp), %rsi
	leaq	-176(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_layer_transform_color
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	callq	gimp_drawable_set_tiles
	movq	-40(%rbp), %rdi
	callq	tile_manager_unref
.LBB57_36:                              # %sw.epilog
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_layer_convert_type, .Lfunc_end57-gimp_layer_convert_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_get_opacity_at,@function
gimp_layer_get_opacity_at:              # @gimp_layer_get_opacity_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB58_12
# BB#1:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB58_12
# BB#2:                                 # %land.lhs.true.6
	cmpl	$0, -16(%rbp)
	jl	.LBB58_12
# BB#3:                                 # %land.lhs.true.8
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-84(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB58_12
# BB#4:                                 # %land.lhs.true.13
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	je	.LBB58_12
# BB#5:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB58_7
# BB#6:                                 # %if.then.21
	movl	$255, -28(%rbp)
	jmp	.LBB58_8
.LBB58_7:                               # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_data_pointer
	movq	-48(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	tile_bpp
	xorl	%esi, %esi
	movslq	%eax, %rdi
	movq	-128(%rbp), %r9         # 8-byte Reload
	movzbl	-1(%r9,%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rdi
	callq	tile_release
.LBB58_8:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB58_11
# BB#9:                                 # %land.lhs.true.31
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	je	.LBB58_11
# BB#10:                                # %if.then.34
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_pickable_get_opacity_at
	movl	$255, %edx
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	imull	-52(%rbp), %eax
	movl	%edx, -140(%rbp)        # 4-byte Spill
	cltd
	movl	-140(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -28(%rbp)
.LBB58_11:                              # %if.end.38
	jmp	.LBB58_12
.LBB58_12:                              # %if.end.39
	movl	-28(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_layer_get_opacity_at, .Lfunc_end58-gimp_layer_get_opacity_at
	.cfi_endproc

	.type	gimp_layer_get_type.g_define_type_id__volatile,@object # @gimp_layer_get_type.g_define_type_id__volatile
	.local	gimp_layer_get_type.g_define_type_id__volatile
	.comm	gimp_layer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLayer"
	.size	.L.str, 10

	.type	gimp_layer_get_type.g_implement_interface_info,@object # @gimp_layer_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_layer_get_type.g_implement_interface_info:
	.quad	gimp_layer_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_layer_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_layer_new,@object # @__func__.gimp_layer_new
.L__func__.gimp_layer_new:
	.asciz	"gimp_layer_new"
	.size	.L__func__.gimp_layer_new, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"width > 0"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"height > 0"
	.size	.L.str.4, 11

	.type	.L__func__.gimp_layer_new_from_tiles,@object # @__func__.gimp_layer_new_from_tiles
.L__func__.gimp_layer_new_from_tiles:
	.asciz	"gimp_layer_new_from_tiles"
	.size	.L__func__.gimp_layer_new_from_tiles, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tiles != NULL"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_IMAGE (dest_image)"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_layer_new_from_pixbuf,@object # @__func__.gimp_layer_new_from_pixbuf
.L__func__.gimp_layer_new_from_pixbuf:
	.asciz	"gimp_layer_new_from_pixbuf"
	.size	.L__func__.gimp_layer_new_from_pixbuf, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GDK_IS_PIXBUF (pixbuf)"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IMAGE_TYPE_BASE_TYPE (type) == gimp_image_base_type (dest_image)"
	.size	.L.str.8, 70

	.type	.L__func__.gimp_layer_new_from_region,@object # @__func__.gimp_layer_new_from_region
.L__func__.gimp_layer_new_from_region:
	.asciz	"gimp_layer_new_from_region"
	.size	.L__func__.gimp_layer_new_from_region, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"region != NULL"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.10, 45

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimplayer.c"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: could not allocate new layer"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s: unhandled type conversion"
	.size	.L.str.13, 30

	.type	.L__func__.gimp_layer_get_parent,@object # @__func__.gimp_layer_get_parent
.L__func__.gimp_layer_get_parent:
	.asciz	"gimp_layer_get_parent"
	.size	.L__func__.gimp_layer_get_parent, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.14, 22

	.type	.L__func__.gimp_layer_get_mask,@object # @__func__.gimp_layer_get_mask
.L__func__.gimp_layer_get_mask:
	.asciz	"gimp_layer_get_mask"
	.size	.L__func__.gimp_layer_get_mask, 20

	.type	.L__func__.gimp_layer_add_mask,@object # @__func__.gimp_layer_add_mask
.L__func__.gimp_layer_add_mask:
	.asciz	"gimp_layer_add_mask"
	.size	.L__func__.gimp_layer_add_mask, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GIMP_IS_LAYER_MASK (mask)"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp_item_get_image (GIMP_ITEM (layer)) == gimp_item_get_image (GIMP_ITEM (mask))"
	.size	.L.str.16, 82

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Unable to add a layer mask since the layer already has one."
	.size	.L.str.18, 60

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Cannot add layer mask of different dimensions than specified layer."
	.size	.L.str.19, 68

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"undo-type\004Add Layer Mask"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"output"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"aux"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"update"
	.size	.L.str.23, 7

	.type	layer_signals,@object   # @layer_signals
	.local	layer_signals
	.comm	layer_signals,16,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"mask"
	.size	.L.str.24, 5

	.type	.Lgimp_layer_create_mask.black,@object # @gimp_layer_create_mask.black
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_layer_create_mask.black:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.size	.Lgimp_layer_create_mask.black, 32

	.type	.L__func__.gimp_layer_create_mask,@object # @__func__.gimp_layer_create_mask
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_layer_create_mask:
	.asciz	"gimp_layer_create_mask"
	.size	.L__func__.gimp_layer_create_mask, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"add_mask_type != GIMP_ADD_CHANNEL_MASK || GIMP_IS_CHANNEL (channel)"
	.size	.L.str.25, 68

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s mask"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"undo-type\004Transfer Alpha to Mask"
	.size	.L.str.27, 33

	.type	.L__func__.gimp_layer_apply_mask,@object # @__func__.gimp_layer_apply_mask
.L__func__.gimp_layer_apply_mask:
	.asciz	"gimp_layer_apply_mask"
	.size	.L__func__.gimp_layer_apply_mask, 22

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"mode == GIMP_MASK_DISCARD || push_undo == TRUE"
	.size	.L.str.28, 47

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"undo-type\004Apply Layer Mask"
	.size	.L.str.29, 27

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"undo-type\004Delete Layer Mask"
	.size	.L.str.30, 28

	.type	.L__func__.gimp_layer_add_alpha,@object # @__func__.gimp_layer_add_alpha
.L__func__.gimp_layer_add_alpha:
	.asciz	"gimp_layer_add_alpha"
	.size	.L__func__.gimp_layer_add_alpha, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"undo-type\004Add Alpha Channel"
	.size	.L.str.31, 28

	.type	.L__func__.gimp_layer_flatten,@object # @__func__.gimp_layer_flatten
.L__func__.gimp_layer_flatten:
	.asciz	"gimp_layer_flatten"
	.size	.L__func__.gimp_layer_flatten, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"undo-type\004Remove Alpha Channel"
	.size	.L.str.33, 31

	.type	.L__func__.gimp_layer_resize_to_image,@object # @__func__.gimp_layer_resize_to_image
.L__func__.gimp_layer_resize_to_image:
	.asciz	"gimp_layer_resize_to_image"
	.size	.L__func__.gimp_layer_resize_to_image, 27

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (layer))"
	.size	.L.str.34, 42

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"undo-type\004Layer to Image Size"
	.size	.L.str.35, 30

	.type	.L__func__.gimp_layer_get_floating_sel_drawable,@object # @__func__.gimp_layer_get_floating_sel_drawable
.L__func__.gimp_layer_get_floating_sel_drawable:
	.asciz	"gimp_layer_get_floating_sel_drawable"
	.size	.L__func__.gimp_layer_get_floating_sel_drawable, 37

	.type	.L__func__.gimp_layer_set_floating_sel_drawable,@object # @__func__.gimp_layer_set_floating_sel_drawable
.L__func__.gimp_layer_set_floating_sel_drawable:
	.asciz	"gimp_layer_set_floating_sel_drawable"
	.size	.L__func__.gimp_layer_set_floating_sel_drawable, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.36, 48

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"floating-selection"
	.size	.L.str.37, 19

	.type	.L__func__.gimp_layer_is_floating_sel,@object # @__func__.gimp_layer_is_floating_sel
.L__func__.gimp_layer_is_floating_sel:
	.asciz	"gimp_layer_is_floating_sel"
	.size	.L__func__.gimp_layer_is_floating_sel, 27

	.type	.L__func__.gimp_layer_set_opacity,@object # @__func__.gimp_layer_set_opacity
.L__func__.gimp_layer_set_opacity:
	.asciz	"gimp_layer_set_opacity"
	.size	.L__func__.gimp_layer_set_opacity, 23

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"opacity"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"value"
	.size	.L.str.39, 6

	.type	.L__func__.gimp_layer_get_opacity,@object # @__func__.gimp_layer_get_opacity
.L__func__.gimp_layer_get_opacity:
	.asciz	"gimp_layer_get_opacity"
	.size	.L__func__.gimp_layer_get_opacity, 23

	.type	.L__func__.gimp_layer_set_mode,@object # @__func__.gimp_layer_set_mode
.L__func__.gimp_layer_set_mode:
	.asciz	"gimp_layer_set_mode"
	.size	.L__func__.gimp_layer_set_mode, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"mode"
	.size	.L.str.40, 5

	.type	.L__func__.gimp_layer_get_mode,@object # @__func__.gimp_layer_get_mode
.L__func__.gimp_layer_get_mode:
	.asciz	"gimp_layer_get_mode"
	.size	.L__func__.gimp_layer_get_mode, 20

	.type	.L__func__.gimp_layer_set_lock_alpha,@object # @__func__.gimp_layer_set_lock_alpha
.L__func__.gimp_layer_set_lock_alpha:
	.asciz	"gimp_layer_set_lock_alpha"
	.size	.L__func__.gimp_layer_set_lock_alpha, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp_layer_can_lock_alpha (layer)"
	.size	.L.str.41, 34

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"lock-alpha"
	.size	.L.str.42, 11

	.type	.L__func__.gimp_layer_get_lock_alpha,@object # @__func__.gimp_layer_get_lock_alpha
.L__func__.gimp_layer_get_lock_alpha:
	.asciz	"gimp_layer_get_lock_alpha"
	.size	.L__func__.gimp_layer_get_lock_alpha, 26

	.type	.L__func__.gimp_layer_can_lock_alpha,@object # @__func__.gimp_layer_can_lock_alpha
.L__func__.gimp_layer_can_lock_alpha:
	.asciz	"gimp_layer_can_lock_alpha"
	.size	.L__func__.gimp_layer_can_lock_alpha, 26

	.type	gimp_layer_parent_class,@object # @gimp_layer_parent_class
	.local	gimp_layer_parent_class
	.comm	gimp_layer_parent_class,8,8
	.type	GimpLayer_private_offset,@object # @GimpLayer_private_offset
	.local	GimpLayer_private_offset
	.comm	GimpLayer_private_offset,4,4
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"opacity-changed"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"mode-changed"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"lock-alpha-changed"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"mask-changed"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-layer"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Layer"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"undo-type\004Rename Layer"
	.size	.L.str.49, 23

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"undo-type\004Move Layer"
	.size	.L.str.50, 21

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"undo-type\004Scale Layer"
	.size	.L.str.51, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"undo-type\004Resize Layer"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"undo-type\004Flip Layer"
	.size	.L.str.53, 21

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"undo-type\004Rotate Layer"
	.size	.L.str.54, 23

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"undo-type\004Transform Layer"
	.size	.L.str.55, 26

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"undo-type\004Alpha to Selection"
	.size	.L.str.56, 29

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"undo-type\004Reorder Layer"
	.size	.L.str.57, 24

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"undo-type\004Raise Layer"
	.size	.L.str.58, 22

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"undo-type\004Raise Layer to Top"
	.size	.L.str.59, 29

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"undo-type\004Lower Layer"
	.size	.L.str.60, 22

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"undo-type\004Lower Layer to Bottom"
	.size	.L.str.61, 32

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Layer cannot be raised higher."
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Layer cannot be lowered more."
	.size	.L.str.63, 30

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.64, 54

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"property"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Floating Selection\n(%s)"
	.size	.L.str.66, 24

	.type	.L__func__.gimp_layer_duplicate,@object # @__func__.gimp_layer_duplicate
.L__func__.gimp_layer_duplicate:
	.asciz	"gimp_layer_duplicate"
	.size	.L__func__.gimp_layer_duplicate, 21

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.67, 43

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Cannot create a new layer from the floating selection because it belongs to a layer mask or channel."
	.size	.L.str.68, 101

	.type	.L__func__.gimp_layer_get_node,@object # @__func__.gimp_layer_get_node
.L__func__.gimp_layer_get_node:
	.asciz	"gimp_layer_get_node"
	.size	.L__func__.gimp_layer_get_node, 20

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"layer->opacity_node == NULL"
	.size	.L.str.69, 28

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"operation"
	.size	.L.str.70, 10

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gegl:opacity"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"input"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp:point-layer-mode"
	.size	.L.str.73, 22

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"blend-mode"
	.size	.L.str.74, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
