	.text
	.file	"gimpchannel.bc"
	.globl	gimp_channel_get_type
	.align	16, 0x90
	.type	gimp_channel_get_type,@function
gimp_channel_get_type:                  # @gimp_channel_get_type
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
	movq	gimp_channel_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_channel_get_type.g_define_type_id__volatile, %rax
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
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_channel_class_intern_init, %rdi
	movl	$160, %r8d
	movabsq	$gimp_channel_init, %rcx
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
	movabsq	$gimp_channel_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_channel_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_channel_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_get_type, .Lfunc_end0-gimp_channel_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_class_intern_init,@function
gimp_channel_class_intern_init:         # @gimp_channel_class_intern_init
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
	movq	%rax, gimp_channel_parent_class
	cmpl	$0, GimpChannel_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpChannel_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_channel_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_channel_class_intern_init, .Lfunc_end1-gimp_channel_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_channel_init,@function
gimp_channel_init:                      # @gimp_channel_init
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
	subq	$16, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$40, %rdi
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-16(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movq	-8(%rbp), %rdi
	movl	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 132(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 140(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 148(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_channel_init, .Lfunc_end2-gimp_channel_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_pickable_iface_init,@function
gimp_channel_pickable_iface_init:       # @gimp_channel_pickable_iface_init
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
	movabsq	$gimp_channel_get_opacity_at, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_channel_pickable_iface_init, .Lfunc_end3-gimp_channel_pickable_iface_init
	.cfi_endproc

	.globl	gimp_channel_new
	.align	16, 0x90
	.type	gimp_channel_new,@function
gimp_channel_new:                       # @gimp_channel_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_channel_get_type
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r8d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$2, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.16
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 64(%rax)
.LBB4_14:                               # %if.end.18
	movq	-48(%rbp), %rax
	movl	$1, 72(%rax)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 152(%rax)
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 156(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_new, .Lfunc_end4-gimp_channel_new
	.cfi_endproc

	.globl	gimp_channel_new_from_alpha
	.align	16, 0x90
	.type	gimp_channel_new_from_alpha,@function
gimp_channel_new_from_alpha:            # @gimp_channel_new_from_alpha
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -204(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -204(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_from_alpha, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_30
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -228(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -228(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_from_alpha, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_30
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB5_27
# BB#26:                                # %if.then.42
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.43
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_from_alpha, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_30
.LBB5_28:                               # %if.end.44
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.45
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_channel_new
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_channel_clear
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-184(%rbp), %rdx
	callq	extract_alpha_region
	movq	-48(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_new_from_alpha, .Lfunc_end5-gimp_channel_new_from_alpha
	.cfi_endproc

	.globl	gimp_channel_clear
	.align	16, 0x90
	.type	gimp_channel_clear,@function
gimp_channel_clear:                     # @gimp_channel_clear
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_clear, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_15
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB6_14
# BB#13:                                # %if.then.15
	movl	$0, -20(%rbp)
.LBB6_14:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	728(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
.LBB6_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_clear, .Lfunc_end6-gimp_channel_clear
	.cfi_endproc

	.globl	gimp_channel_new_from_component
	.align	16, 0x90
	.type	gimp_channel_new_from_component,@function
gimp_channel_new_from_component:        # @gimp_channel_new_from_component
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -228(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -228(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_from_component, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_image_get_component_index
	movl	%eax, -204(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$-1, -204(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.14
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_from_component, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.16
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.17
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -196(%rbp)
	movq	-64(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -200(%rbp)
	movq	-16(%rbp), %rdi
	movl	-196(%rbp), %esi
	movl	-200(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_channel_new
	leaq	-128(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rsi
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-192(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-196(%rbp), %r8d
	movl	-200(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-128(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	movl	-204(%rbp), %edx
	callq	copy_component
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_channel_new_from_component, .Lfunc_end7-gimp_channel_new_from_component
	.cfi_endproc

	.globl	gimp_channel_get_parent
	.align	16, 0x90
	.type	gimp_channel_get_parent,@function
gimp_channel_get_parent:                # @gimp_channel_get_parent
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_get_parent, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB8_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_channel_get_parent, .Lfunc_end8-gimp_channel_get_parent
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.globl	gimp_channel_set_color
	.align	16, 0x90
	.type	gimp_channel_set_color,@function
gimp_channel_set_color:                 # @gimp_channel_set_color
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_set_color, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_24
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_set_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_24
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgba_distance
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB9_24
# BB#18:                                # %if.then.20
	cmpl	$0, -20(%rbp)
	je	.LBB9_21
# BB#19:                                # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB9_21
# BB#20:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_channel_color
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB9_21:                               # %if.end.34
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 48(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 56(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 64(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB9_23
# BB#22:                                # %if.then.37
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gegl_color_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gegl_color_set_rgba
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB9_23:                               # %if.end.45
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
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	channel_signals, %esi
	movb	$0, %al
	callq	g_signal_emit
.LBB9_24:                               # %if.end.54
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_channel_set_color, .Lfunc_end9-gimp_channel_set_color
	.cfi_endproc

	.globl	gimp_channel_get_color
	.align	16, 0x90
	.type	gimp_channel_get_color,@function
gimp_channel_get_color:                 # @gimp_channel_get_color
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_get_color, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_get_color, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_18
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	48(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	64(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB10_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_channel_get_color, .Lfunc_end10-gimp_channel_get_color
	.cfi_endproc

	.globl	gimp_channel_get_opacity
	.align	16, 0x90
	.type	gimp_channel_get_opacity,@function
gimp_channel_get_opacity:               # @gimp_channel_get_opacity
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
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_get_opacity, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB11_13:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_channel_get_opacity, .Lfunc_end11-gimp_channel_get_opacity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_channel_set_opacity
	.align	16, 0x90
	.type	gimp_channel_set_opacity,@function
gimp_channel_set_opacity:               # @gimp_channel_set_opacity
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_set_opacity, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_25
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_14
# BB#13:                                # %cond.true
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB12_18
.LBB12_14:                              # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB12_16
# BB#15:                                # %cond.true.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB12_17
.LBB12_16:                              # %cond.false.14
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB12_17:                              # %cond.end
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB12_18:                              # %cond.end.15
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jne	.LBB12_19
	jp	.LBB12_19
	jmp	.LBB12_25
.LBB12_19:                              # %if.then.18
	cmpl	$0, -20(%rbp)
	je	.LBB12_22
# BB#20:                                # %land.lhs.true.20
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB12_22
# BB#21:                                # %if.then.25
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
	movabsq	$.L.str.10, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movq	-8(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_push_channel_color
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB12_22:                              # %if.end.32
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB12_24
# BB#23:                                # %if.then.36
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gegl_color_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gegl_color_set_rgba
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB12_24:                              # %if.end.45
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	channel_signals, %esi
	movb	$0, %al
	callq	g_signal_emit
.LBB12_25:                              # %if.end.54
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_channel_set_opacity, .Lfunc_end12-gimp_channel_set_opacity
	.cfi_endproc

	.globl	gimp_channel_get_show_masked
	.align	16, 0x90
	.type	gimp_channel_get_show_masked,@function
gimp_channel_get_show_masked:           # @gimp_channel_get_show_masked
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_get_show_masked, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_channel_get_show_masked, .Lfunc_end13-gimp_channel_get_show_masked
	.cfi_endproc

	.globl	gimp_channel_set_show_masked
	.align	16, 0x90
	.type	gimp_channel_set_show_masked,@function
gimp_channel_set_show_masked:           # @gimp_channel_set_show_masked
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_set_show_masked, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_19
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	72(%rcx), %eax
	je	.LBB14_19
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 72(%rdx)
	movq	-8(%rbp), %rdx
	cmpq	$0, 88(%rdx)
	je	.LBB14_18
# BB#14:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_source_node
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB14_16
# BB#15:                                # %if.then.24
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-8(%rbp), %rdx
	movq	88(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	96(%rdx), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %if.else.29
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gegl_node_disconnect
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	96(%rdx), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB14_17:                              # %if.end.34
	jmp	.LBB14_18
.LBB14_18:                              # %if.end.35
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB14_19:                              # %if.end.44
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_channel_set_show_masked, .Lfunc_end14-gimp_channel_set_show_masked
	.cfi_endproc

	.globl	gimp_channel_push_undo
	.align	16, 0x90
	.type	gimp_channel_push_undo,@function
gimp_channel_push_undo:                 # @gimp_channel_push_undo
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_push_undo, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_18
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB15_15
# BB#14:                                # %if.then.16
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_push_undo, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_18
.LBB15_16:                              # %if.end.18
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.19
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_mask
	movq	-8(%rbp), %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB15_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_channel_push_undo, .Lfunc_end15-gimp_channel_push_undo
	.cfi_endproc

	.globl	gimp_channel_new_mask
	.align	16, 0x90
	.type	gimp_channel_new_mask,@function
gimp_channel_new_mask:                  # @gimp_channel_new_mask
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_new_mask, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_channel_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movabsq	$gimp_channel_validate_tile, %rcx
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	tile_manager_set_validate_proc
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_channel_new_mask, .Lfunc_end16-gimp_channel_new_mask
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_validate_tile,@function
gimp_channel_validate_tile:             # @gimp_channel_validate_tile
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tile_data_pointer
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	tile_size
	xorl	%esi, %esi
	movslq	%eax, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	memset
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_channel_validate_tile, .Lfunc_end17-gimp_channel_validate_tile
	.cfi_endproc

	.globl	gimp_channel_boundary
	.align	16, 0x90
	.type	gimp_channel_boundary,@function
gimp_channel_boundary:                  # @gimp_channel_boundary
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp57:
	.cfi_offset %rbx, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	%r11d, -64(%rbp)
	movl	%r10d, -68(%rbp)
	movl	%eax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_boundary, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB18_33
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_boundary, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB18_33
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	jmp	.LBB18_18
.LBB18_18:                              # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB18_20
# BB#19:                                # %if.then.19
	jmp	.LBB18_21
.LBB18_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_boundary, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB18_33
.LBB18_21:                              # %if.end.21
	jmp	.LBB18_22
.LBB18_22:                              # %do.end.22
	jmp	.LBB18_23
.LBB18_23:                              # %do.body.23
	cmpq	$0, -48(%rbp)
	je	.LBB18_25
# BB#24:                                # %if.then.25
	jmp	.LBB18_26
.LBB18_25:                              # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_boundary, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB18_33
.LBB18_26:                              # %if.end.27
	jmp	.LBB18_27
.LBB18_27:                              # %do.end.28
	jmp	.LBB18_28
.LBB18_28:                              # %do.body.29
	cmpq	$0, -56(%rbp)
	je	.LBB18_30
# BB#29:                                # %if.then.31
	jmp	.LBB18_31
.LBB18_30:                              # %if.else.32
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_boundary, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -12(%rbp)
	jmp	.LBB18_33
.LBB18_31:                              # %if.end.33
	jmp	.LBB18_32
.LBB18_32:                              # %do.end.34
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	688(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movl	-68(%rbp), %r11d
	movl	-72(%rbp), %ebx
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	*%rax
	movl	%eax, -12(%rbp)
.LBB18_33:                              # %return
	movl	-12(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_channel_boundary, .Lfunc_end18-gimp_channel_boundary
	.cfi_endproc

	.globl	gimp_channel_bounds
	.align	16, 0x90
	.type	gimp_channel_bounds,@function
gimp_channel_bounds:                    # @gimp_channel_bounds
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.9
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_bounds, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_21
.LBB19_11:                              # %if.end.11
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	696(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -68(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_14
# BB#13:                                # %if.then.15
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB19_14:                              # %if.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB19_16
# BB#15:                                # %if.then.18
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB19_16:                              # %if.end.19
	cmpq	$0, -40(%rbp)
	je	.LBB19_18
# BB#17:                                # %if.then.21
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB19_18:                              # %if.end.22
	cmpq	$0, -48(%rbp)
	je	.LBB19_20
# BB#19:                                # %if.then.24
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB19_20:                              # %if.end.25
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_channel_bounds, .Lfunc_end19-gimp_channel_bounds
	.cfi_endproc

	.globl	gimp_channel_is_empty
	.align	16, 0x90
	.type	gimp_channel_is_empty,@function
gimp_channel_is_empty:                  # @gimp_channel_is_empty
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_is_empty, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	704(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_channel_is_empty, .Lfunc_end20-gimp_channel_is_empty
	.cfi_endproc

	.globl	gimp_channel_feather
	.align	16, 0x90
	.type	gimp_channel_feather,@function
gimp_channel_feather:                   # @gimp_channel_feather
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_feather, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_15
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB21_14
# BB#13:                                # %if.then.15
	movl	$0, -28(%rbp)
.LBB21_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	712(%rax), %rax
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-28(%rbp), %esi
	callq	*%rax
.LBB21_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_channel_feather, .Lfunc_end21-gimp_channel_feather
	.cfi_endproc

	.globl	gimp_channel_sharpen
	.align	16, 0x90
	.type	gimp_channel_sharpen,@function
gimp_channel_sharpen:                   # @gimp_channel_sharpen
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_sharpen, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_15
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB22_14
# BB#13:                                # %if.then.15
	movl	$0, -12(%rbp)
.LBB22_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	720(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB22_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_channel_sharpen, .Lfunc_end22-gimp_channel_sharpen
	.cfi_endproc

	.globl	gimp_channel_all
	.align	16, 0x90
	.type	gimp_channel_all,@function
gimp_channel_all:                       # @gimp_channel_all
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_all, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_15
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB23_14
# BB#13:                                # %if.then.15
	movl	$0, -12(%rbp)
.LBB23_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	736(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB23_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_channel_all, .Lfunc_end23-gimp_channel_all
	.cfi_endproc

	.globl	gimp_channel_invert
	.align	16, 0x90
	.type	gimp_channel_invert,@function
gimp_channel_invert:                    # @gimp_channel_invert
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_channel_get_type
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
	movabsq	$.L__func__.gimp_channel_invert, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_15
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB24_14
# BB#13:                                # %if.then.15
	movl	$0, -12(%rbp)
.LBB24_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	744(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
.LBB24_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_channel_invert, .Lfunc_end24-gimp_channel_invert
	.cfi_endproc

	.globl	gimp_channel_border
	.align	16, 0x90
	.type	gimp_channel_border,@function
gimp_channel_border:                    # @gimp_channel_border
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_border, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_15
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB25_14
# BB#13:                                # %if.then.15
	movl	$0, -28(%rbp)
.LBB25_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	752(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	callq	*%rax
.LBB25_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_channel_border, .Lfunc_end25-gimp_channel_border
	.cfi_endproc

	.globl	gimp_channel_grow
	.align	16, 0x90
	.type	gimp_channel_grow,@function
gimp_channel_grow:                      # @gimp_channel_grow
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_grow, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_15
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB26_14
# BB#13:                                # %if.then.15
	movl	$0, -20(%rbp)
.LBB26_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	760(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	*%rax
.LBB26_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_channel_grow, .Lfunc_end26-gimp_channel_grow
	.cfi_endproc

	.globl	gimp_channel_shrink
	.align	16, 0x90
	.type	gimp_channel_shrink,@function
gimp_channel_shrink:                    # @gimp_channel_shrink
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_shrink, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_15
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB27_14
# BB#13:                                # %if.then.15
	movl	$0, -24(%rbp)
.LBB27_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	768(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	*%rax
.LBB27_15:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_channel_shrink, .Lfunc_end27-gimp_channel_shrink
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_class_init,@function
gimp_channel_class_init:                # @gimp_channel_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp88:
	.cfi_offset %rbx, -56
.Ltmp89:
	.cfi_offset %r12, -48
.Ltmp90:
	.cfi_offset %r13, -40
.Ltmp91:
	.cfi_offset %r14, -32
.Ltmp92:
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
	movabsq	$.L.str.20, %rdi
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
	movabsq	$.L.str.22, %rdi
	movabsq	$gimp_channel_get_node, %rsi
	movabsq	$gimp_channel_to_selection, %r8
	movabsq	$gimp_channel_stroke, %r9
	movabsq	$gimp_channel_transform, %r10
	movabsq	$gimp_channel_rotate, %r11
	movabsq	$gimp_channel_flip, %rbx
	movabsq	$gimp_channel_resize, %r14
	movabsq	$gimp_channel_scale, %r15
	movabsq	$gimp_channel_translate, %r12
	movabsq	$gimp_channel_convert, %r13
	movabsq	$gimp_channel_duplicate, %rcx
	movabsq	$gimp_channel_get_tree, %rdx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_is_attached, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movabsq	$.L.str.21, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_get_description, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_get_memsize, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_finalize, %rcx
	movl	%eax, channel_signals
	movq	-56(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 248(%rax)
	movq	-72(%rbp), %rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-80(%rbp), %rax
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 320(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 336(%rax)
	movq	-80(%rbp), %rax
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 344(%rax)
	movq	-80(%rbp), %rax
	movq	%r13, 352(%rax)
	movq	-80(%rbp), %rax
	movq	%r12, 368(%rax)
	movq	-80(%rbp), %rax
	movq	%r15, 376(%rax)
	movq	-80(%rbp), %rax
	movq	%r14, 384(%rax)
	movq	-80(%rbp), %rax
	movq	%rbx, 392(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 400(%rax)
	movq	-80(%rbp), %rax
	movq	%r10, 408(%rax)
	movq	-80(%rbp), %rax
	movq	%r9, 416(%rax)
	movq	-80(%rbp), %rax
	movq	%r8, 424(%rax)
	movq	-80(%rbp), %rax
	movq	%rsi, 432(%rax)
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.23, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.24, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 448(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.25, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.26, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 464(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.27, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 472(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.28, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 480(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.29, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 488(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.30, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 496(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.31, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 512(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.32, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 504(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.33, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 520(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.34, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 528(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.35, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 536(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.36, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 544(%rcx)
	callq	g_dpgettext
	movabsq	$.L.str.37, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 552(%rcx)
	callq	gettext
	movabsq	$.L.str.38, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, 560(%rcx)
	callq	gettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.39, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movabsq	$gimp_channel_real_shrink, %rcx
	movabsq	$gimp_channel_real_grow, %r9
	movabsq	$gimp_channel_real_border, %r10
	movabsq	$gimp_channel_real_invert, %r11
	movabsq	$gimp_channel_real_all, %rbx
	movabsq	$gimp_channel_real_clear, %r14
	movabsq	$gimp_channel_real_sharpen, %r15
	movabsq	$gimp_channel_real_feather, %r12
	movabsq	$gimp_channel_real_is_empty, %r13
	movabsq	$gimp_channel_real_bounds, %r8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_real_boundary, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_swap_pixels, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_set_tiles, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_project_region, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_replace_region, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_apply_region, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_get_active_components, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movabsq	$gimp_channel_invalidate_boundary, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 568(%rax)
	movq	-88(%rbp), %rax
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 600(%rax)
	movq	-88(%rbp), %rax
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 608(%rax)
	movq	-88(%rbp), %rax
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 624(%rax)
	movq	-88(%rbp), %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 632(%rax)
	movq	-88(%rbp), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 640(%rax)
	movq	-88(%rbp), %rax
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 656(%rax)
	movq	-88(%rbp), %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 672(%rax)
	movq	-48(%rbp), %rax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 688(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 696(%rax)
	movq	-48(%rbp), %rax
	movq	%r13, 704(%rax)
	movq	-48(%rbp), %rax
	movq	%r12, 712(%rax)
	movq	-48(%rbp), %rax
	movq	%r15, 720(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 728(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 736(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 744(%rax)
	movq	-48(%rbp), %rax
	movq	%r10, 752(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 760(%rax)
	movq	-48(%rbp), %rax
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	%r8, 768(%rax)
	callq	g_dpgettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.40, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 776(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.41, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 784(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.42, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 792(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.43, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 800(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.44, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 808(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.45, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 816(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.46, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-48(%rbp), %rcx
	movq	%rax, 824(%rcx)
	callq	g_dpgettext
	movq	-48(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_channel_class_init, .Lfunc_end28-gimp_channel_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_finalize,@function
gimp_channel_finalize:                  # @gimp_channel_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
.LBB29_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB29_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB29_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_channel_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_channel_finalize, .Lfunc_end29-gimp_channel_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_memsize,@function
gimp_channel_get_memsize:               # @gimp_channel_get_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	128(%rax), %rax
	imulq	$20, %rax, %rax
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movslq	132(%rax), %rax
	imulq	$20, %rax, %rax
	movq	-16(%rbp), %rsi
	addq	(%rsi), %rax
	movq	%rax, (%rsi)
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_channel_get_memsize, .Lfunc_end30-gimp_channel_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_description,@function
gimp_channel_get_description:           # @gimp_channel_get_description
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gimp_object_get_name
	movl	$.L.str.47, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB31_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_channel_get_description, .Lfunc_end31-gimp_channel_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_is_attached,@function
gimp_channel_is_attached:               # @gimp_channel_is_attached
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
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
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB32_7
.LBB32_2:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB32_5
# BB#4:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB32_6
.LBB32_5:                               # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB32_6:                               # %if.end
	jmp	.LBB32_7
.LBB32_7:                               # %if.end.7
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB32_9
# BB#8:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channels
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
.LBB32_9:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_channel_is_attached, .Lfunc_end32-gimp_channel_is_attached
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_tree,@function
gimp_channel_get_tree:                  # @gimp_channel_get_tree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_channel_tree
	movq	%rax, -8(%rbp)
	jmp	.LBB33_3
.LBB33_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB33_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_channel_get_tree, .Lfunc_end33-gimp_channel_get_tree
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_duplicate,@function
gimp_channel_duplicate:                 # @gimp_channel_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB34_3
# BB#2:                                 # %if.then
	jmp	.LBB34_4
.LBB34_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_channel_duplicate, %rsi
	movabsq	$.L.str.49, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB34_15
.LBB34_4:                               # %if.end
	jmp	.LBB34_5
.LBB34_5:                               # %do.end
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB34_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB34_12
.LBB34_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB34_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB34_11:                              # %if.end.14
	jmp	.LBB34_12
.LBB34_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB34_14
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rdi, 40(%rax)
	movq	48(%rsi), %rdi
	movq	%rdi, 48(%rax)
	movq	56(%rsi), %rdi
	movq	%rdi, 56(%rax)
	movq	64(%rsi), %rsi
	movq	%rsi, 64(%rax)
	movq	-64(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 72(%rax)
	movq	-64(%rbp), %rax
	movl	140(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 140(%rax)
	movq	-64(%rbp), %rax
	movl	136(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 136(%rax)
	movq	-64(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 144(%rax)
	movq	-64(%rbp), %rax
	movl	148(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 148(%rax)
	movq	-64(%rbp), %rax
	movl	152(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 152(%rax)
	movq	-64(%rbp), %rax
	movl	156(%rax), %ecx
	movq	-72(%rbp), %rax
	movl	%ecx, 156(%rax)
.LBB34_14:                              # %if.end.32
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_channel_duplicate, .Lfunc_end34-gimp_channel_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_convert,@function
gimp_channel_convert:                   # @gimp_channel_convert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	jne	.LBB35_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_convert_type
.LBB35_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB35_4
# BB#3:                                 # %if.then.7
	xorl	%esi, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-169(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	$1, %edx
	movl	-204(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	callq	tile_manager_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -224(%rbp)        # 4-byte Spill
	movl	-224(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-168(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-104(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	leaq	-169(%rbp), %rdx
	callq	flatten_region
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_offset_x
	movq	-8(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	$2, %r8d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	-260(%rbp), %r9d        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	movq	-40(%rbp), %rdi
	callq	tile_manager_unref
.LBB35_4:                               # %if.end.18
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB35_9
# BB#5:                                 # %if.then.20
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -176(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_height
	xorl	%ecx, %ecx
	movl	%eax, -180(%rbp)
	movq	-8(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_item_set_offset
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_width
	cmpl	-176(%rbp), %eax
	jne	.LBB35_7
# BB#6:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_height
	cmpl	-180(%rbp), %eax
	je	.LBB35_8
.LBB35_7:                               # %if.then.27
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	xorl	%ecx, %ecx
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%esi, -284(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-284(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -288(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-288(%rbp), %r8d        # 4-byte Reload
	movl	-288(%rbp), %r9d        # 4-byte Reload
	callq	gimp_item_resize
.LBB35_8:                               # %if.end.29
	jmp	.LBB35_9
.LBB35_9:                               # %if.end.30
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_channel_convert, .Lfunc_end35-gimp_channel_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_translate,@function
gimp_channel_translate:                 # @gimp_channel_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-180(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_channel_bounds
	movq	-8(%rbp), %rcx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-180(%rbp), %esi
	movl	-184(%rbp), %edx
	movl	-188(%rbp), %r9d
	subl	-180(%rbp), %r9d
	movl	-192(%rbp), %r10d
	subl	-184(%rbp), %r10d
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	callq	gimp_drawable_update
	cmpl	$0, -20(%rbp)
	je	.LBB36_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_channel_push_undo
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB36_3:                               # %if.end
	movl	-180(%rbp), %eax
	addl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-228(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB36_5
# BB#4:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB36_9
.LBB36_5:                               # %cond.false
	movl	-180(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB36_7
# BB#6:                                 # %cond.true.16
	xorl	%eax, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB36_8
.LBB36_7:                               # %cond.false.17
	movl	-180(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB36_8:                               # %cond.end
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB36_9:                               # %cond.end.19
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -180(%rbp)
	movl	-184(%rbp), %eax
	addl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-260(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB36_11
# BB#10:                                # %cond.true.26
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB36_15
.LBB36_11:                              # %cond.false.30
	movl	-184(%rbp), %eax
	addl	-16(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB36_13
# BB#12:                                # %cond.true.33
	xorl	%eax, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB36_14
.LBB36_13:                              # %cond.false.34
	movl	-184(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB36_14:                              # %cond.end.36
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB36_15:                              # %cond.end.38
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)
	movl	-188(%rbp), %eax
	addl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-292(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB36_17
# BB#16:                                # %cond.true.45
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB36_21
.LBB36_17:                              # %cond.false.49
	movl	-188(%rbp), %eax
	addl	-12(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB36_19
# BB#18:                                # %cond.true.52
	xorl	%eax, %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB36_20
.LBB36_19:                              # %cond.false.53
	movl	-188(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB36_20:                              # %cond.end.55
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB36_21:                              # %cond.end.57
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)
	movl	-192(%rbp), %eax
	addl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-324(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB36_23
# BB#22:                                # %cond.true.64
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB36_27
.LBB36_23:                              # %cond.false.68
	movl	-192(%rbp), %eax
	addl	-16(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB36_25
# BB#24:                                # %cond.true.71
	xorl	%eax, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB36_26
.LBB36_25:                              # %cond.false.72
	movl	-192(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB36_26:                              # %cond.end.74
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB36_27:                              # %cond.end.76
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)
	movl	-188(%rbp), %eax
	subl	-180(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-192(%rbp), %eax
	subl	-184(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB36_30
# BB#28:                                # %land.lhs.true
	cmpl	$0, -48(%rbp)
	je	.LBB36_30
# BB#29:                                # %if.then.82
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_channel_new_mask
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	xorl	%edx, %edx
	movl	-180(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	-184(%rbp), %r8d
	subl	-16(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movq	%rax, %rsi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-40(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	%rax, %rsi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
.LBB36_30:                              # %if.end.93
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-32(%rbp), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rsi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -428(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	callq	clear_region
	cmpl	$0, -44(%rbp)
	je	.LBB36_33
# BB#31:                                # %land.lhs.true.104
	cmpl	$0, -48(%rbp)
	je	.LBB36_33
# BB#32:                                # %if.then.106
	movq	-40(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	movl	$1, %ecx
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-112(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	copy_region
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB36_33:                              # %if.end.113
	cmpl	$0, -44(%rbp)
	je	.LBB36_35
# BB#34:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	jne	.LBB36_36
.LBB36_35:                              # %if.then.116
	movq	-32(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-32(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-32(%rbp), %rsi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-32(%rbp), %rsi
	movl	%eax, 156(%rsi)
	jmp	.LBB36_37
.LBB36_36:                              # %if.else.127
	movl	-180(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movl	-184(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 148(%rcx)
	movl	-188(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movl	-192(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 156(%rcx)
.LBB36_37:                              # %if.end.132
	movq	-8(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	144(%rsi), %esi
	movq	-32(%rbp), %rdi
	movl	148(%rdi), %edx
	movq	-32(%rbp), %rdi
	movl	152(%rdi), %ecx
	movq	-32(%rbp), %rdi
	subl	144(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	156(%rdi), %r8d
	movq	-32(%rbp), %rdi
	subl	148(%rdi), %r8d
	movq	%rax, %rdi
	callq	gimp_drawable_update
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_channel_translate, .Lfunc_end36-gimp_channel_translate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_scale,@function
gimp_channel_scale:                     # @gimp_channel_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB37_2
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB37_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 140(%rax)
	je	.LBB37_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB37_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movq	-56(%rbp), %rax
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-92(%rbp), %edi         # 4-byte Reload
	movl	-96(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	%eax, %r8d
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	movq	-64(%rbp), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
	jmp	.LBB37_6
.LBB37_5:                               # %if.else
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
.LBB37_6:                               # %if.end.15
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_channel_scale, .Lfunc_end37-gimp_channel_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_resize,@function
gimp_channel_resize:                    # @gimp_channel_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	gimp_channel_parent_class, %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_item_set_offset
.LBB38_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_channel_resize, .Lfunc_end38-gimp_channel_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_flip,@function
gimp_channel_flip:                      # @gimp_channel_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movl	$1, -36(%rbp)
.LBB39_2:                               # %if.end
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_channel_flip, .Lfunc_end39-gimp_channel_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_rotate,@function
gimp_channel_rotate:                    # @gimp_channel_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	gimp_channel_parent_class, %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
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
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_channel_rotate, .Lfunc_end40-gimp_channel_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_transform,@function
gimp_channel_transform:                 # @gimp_channel_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
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
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movl	$1, -40(%rbp)
.LBB41_2:                               # %if.end
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
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
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_channel_transform, .Lfunc_end41-gimp_channel_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_stroke,@function
gimp_channel_stroke:                    # @gimp_channel_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$216, %rsp
.Ltmp135:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movl	$0, -100(%rbp)
	movq	-72(%rbp), %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_channel_boundary
	cmpl	$0, %eax
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.50, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -12(%rbp)
	jmp	.LBB42_8
.LBB42_2:                               # %if.end
	movq	-72(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-40(%rbp), %rdi
	callq	gimp_stroke_options_get_method
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	je	.LBB42_3
	jmp	.LBB42_9
.LBB42_9:                               # %if.end
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB42_4
	jmp	.LBB42_5
.LBB42_3:                               # %sw.bb
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-92(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	-44(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_stroke_boundary
	movl	$1, -100(%rbp)
	jmp	.LBB42_7
.LBB42_4:                               # %sw.bb.9
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_context_get_paint_info
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_stroke_options_get_paint_options
	movq	%rax, -136(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_stroke_options_get_emulate_dynamics
	movl	%eax, -140(%rbp)
	movq	-128(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-136(%rbp), %rdx
	movl	-140(%rbp), %ecx
	movq	-80(%rbp), %r8
	movl	-92(%rbp), %r9d
	movl	-104(%rbp), %eax
	movl	-108(%rbp), %r10d
	movl	-44(%rbp), %r11d
	movq	-64(%rbp), %rbx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	gimp_paint_core_stroke_boundary
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
	jmp	.LBB42_7
.LBB42_5:                               # %sw.default
	jmp	.LBB42_6
.LBB42_6:                               # %do.body
	movabsq	$.L.str.1, %rdi
	movl	$8, %esi
	movabsq	$.L.str.51, %rdx
	movabsq	$.L.str.52, %rcx
	movl	$774, %r8d              # imm = 0x306
	movabsq	$.L__func__.gimp_channel_stroke, %r9
	movb	$0, %al
	callq	g_log
	movl	$0, -12(%rbp)
	jmp	.LBB42_8
.LBB42_7:                               # %sw.epilog
	movl	-100(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB42_8:                               # %return
	movl	-12(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_channel_stroke, .Lfunc_end42-gimp_channel_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_to_selection,@function
gimp_channel_to_selection:              # @gimp_channel_to_selection
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	504(%rdx), %rsi
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-12(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	callq	gimp_channel_select_channel
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_channel_to_selection, .Lfunc_end43-gimp_channel_to_selection
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_node,@function
gimp_channel_get_node:                  # @gimp_channel_get_node
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_channel_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	432(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_source_node
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gegl_node_add_child
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gegl_color_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	64(%rax), %xmm3         # xmm3 = mem[0],zero
	callq	gegl_color_set_rgba
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	jmp	.LBB44_4
.LBB44_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.52, %rsi
	movl	$899, %edx              # imm = 0x383
	movabsq	$.L__func__.gimp_channel_get_node, %rcx
	movabsq	$.L.str.53, %r8
	callq	g_warn_message
.LBB44_4:                               # %if.end
	jmp	.LBB44_5
.LBB44_5:                               # %do.end
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.9, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gegl_node_new_child
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#6:                                 # %do.body.16
	movq	-24(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB44_8
# BB#7:                                 # %if.then.18
	jmp	.LBB44_9
.LBB44_8:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.52, %rsi
	movl	$908, %edx              # imm = 0x38C
	movabsq	$.L__func__.gimp_channel_get_node, %rcx
	movabsq	$.L.str.56, %r8
	callq	g_warn_message
.LBB44_9:                               # %if.end.20
	jmp	.LBB44_10
.LBB44_10:                              # %do.end.21
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.57, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#11:                                # %do.body.27
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	jne	.LBB44_13
# BB#12:                                # %if.then.29
	jmp	.LBB44_14
.LBB44_13:                              # %if.else.30
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.52, %rsi
	movl	$916, %edx              # imm = 0x394
	movabsq	$.L__func__.gimp_channel_get_node, %rcx
	movabsq	$.L.str.58, %r8
	callq	g_warn_message
.LBB44_14:                              # %if.end.31
	jmp	.LBB44_15
.LBB44_15:                              # %do.end.32
	movabsq	$.L.str.54, %rsi
	movabsq	$.L.str.59, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movq	-24(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-24(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB44_17
# BB#16:                                # %if.then.35
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-24(%rbp), %rdx
	movq	88(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movq	96(%rdx), %rdx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB44_18
.LBB44_17:                              # %if.else.41
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB44_18:                              # %if.end.44
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_get_mode_node
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.13, %rcx
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-32(%rbp), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_channel_get_node, .Lfunc_end44-gimp_channel_get_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_invalidate_boundary,@function
gimp_channel_invalidate_boundary:       # @gimp_channel_invalidate_boundary
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 104(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_channel_invalidate_boundary, .Lfunc_end45-gimp_channel_invalidate_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_active_components,@function
gimp_channel_get_active_components:     # @gimp_channel_get_active_components
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	$1, (%rsi)
	movq	-16(%rbp), %rsi
	movl	$0, 4(%rsi)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_channel_get_active_components, .Lfunc_end46-gimp_channel_get_active_components
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_apply_region,@function
gimp_channel_apply_region:              # @gimp_channel_apply_region
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp151:
	.cfi_offset %rbx, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movq	%r9, -64(%rbp)
	movq	%r11, -72(%rbp)
	movl	%r10d, -76(%rbp)
	movl	%eax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	gimp_channel_parent_class, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	624(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %r8d
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %r11
	movl	-76(%rbp), %r10d
	movl	-80(%rbp), %ebx
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_channel_apply_region, .Lfunc_end47-gimp_channel_apply_region
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_replace_region,@function
gimp_channel_replace_region:            # @gimp_channel_replace_region
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
	subq	$80, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	gimp_channel_parent_class, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	632(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_channel_replace_region, .Lfunc_end48-gimp_channel_replace_region
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_set_tiles,@function
gimp_channel_set_tiles:                 # @gimp_channel_set_tiles
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	%eax, -44(%rbp)
	movq	gimp_channel_parent_class, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	656(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_channel_set_tiles, .Lfunc_end49-gimp_channel_set_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_swap_pixels,@function
gimp_channel_swap_pixels:               # @gimp_channel_swap_pixels
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
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_invalidate_boundary
	movq	gimp_channel_parent_class, %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	672(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r10d
	movl	%r10d, (%rsp)
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$0, 140(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_channel_swap_pixels, .Lfunc_end50-gimp_channel_swap_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_boundary,@function
gimp_channel_real_boundary:             # @gimp_channel_real_boundary
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
	subq	$240, %rsp
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movl	%r11d, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 104(%rcx)
	jne	.LBB51_21
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	je	.LBB51_19
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	subl	-60(%rbp), %r9d
	movl	-72(%rbp), %r10d
	subl	-64(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	movl	$1, %esi
	movl	$127, %ecx
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movq	-8(%rbp), %rax
	addq	$132, %rax
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$127, (%rsp)
	movq	%rax, 8(%rsp)
	callq	boundary_find
	movq	-8(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movl	-44(%rbp), %ecx
	cmpl	-60(%rbp), %ecx
	jle	.LBB51_4
# BB#3:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB51_5
.LBB51_4:                               # %cond.false
	movl	-60(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB51_5:                               # %cond.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB51_7
# BB#6:                                 # %cond.true.13
	movl	-48(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB51_8
.LBB51_7:                               # %cond.false.14
	movl	-64(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB51_8:                               # %cond.end.15
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB51_10
# BB#9:                                 # %cond.true.18
	movl	-52(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB51_11
.LBB51_10:                              # %cond.false.19
	movl	-68(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB51_11:                              # %cond.end.20
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB51_13
# BB#12:                                # %cond.true.23
	movl	-56(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB51_14
.LBB51_13:                              # %cond.false.24
	movl	-72(%rbp), %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB51_14:                              # %cond.end.25
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB51_17
# BB#15:                                # %land.lhs.true
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB51_17
# BB#16:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	movl	$127, %eax
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	-8(%rbp), %r10
	addq	$128, %r10
	movl	$127, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	boundary_find
	movq	-8(%rbp), %rdi
	movq	%rax, 112(%rdi)
	jmp	.LBB51_18
.LBB51_17:                              # %if.else
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
.LBB51_18:                              # %if.end
	jmp	.LBB51_20
.LBB51_19:                              # %if.else.44
	movq	-8(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 132(%rax)
.LBB51_20:                              # %if.end.49
	movq	-8(%rbp), %rax
	movl	$1, 104(%rax)
.LBB51_21:                              # %if.end.51
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	128(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	132(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 136(%rax)
	setne	%sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_channel_real_boundary, .Lfunc_end51-gimp_channel_real_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_bounds,@function
gimp_channel_real_bounds:               # @gimp_channel_real_bounds
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 140(%rcx)
	je	.LBB52_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	148(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	152(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	156(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB52_64
.LBB52_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -148(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -160(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-220(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-112(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -176(%rbp)
.LBB52_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_20 Depth 2
                                        #       Child Loop BB52_22 Depth 3
                                        #         Child Loop BB52_25 Depth 4
	cmpq	$0, -176(%rbp)
	je	.LBB52_47
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	%rax, -128(%rbp)
	movl	-76(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-72(%rbp), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-76(%rbp), %ecx
	cmpl	-148(%rbp), %ecx
	jl	.LBB52_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-140(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jg	.LBB52_8
# BB#6:                                 # %lor.lhs.false.28
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jl	.LBB52_8
# BB#7:                                 # %lor.lhs.false.31
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-144(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jle	.LBB52_45
.LBB52_8:                               # %if.then.33
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	-120(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB52_19
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-80(%rbp), %eax
	movl	-64(%rbp), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	addl	-68(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-120(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	$0, %eax
	je	.LBB52_19
# BB#10:                                # %if.then.42
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-76(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB52_12
# BB#11:                                # %if.then.46
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB52_12:                              # %if.end.48
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-140(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jle	.LBB52_14
# BB#13:                                # %if.then.51
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-140(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -152(%rbp)
.LBB52_14:                              # %if.end.53
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB52_16
# BB#15:                                # %if.then.57
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB52_16:                              # %if.end.59
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-144(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jle	.LBB52_18
# BB#17:                                # %if.then.62
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-144(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -160(%rbp)
.LBB52_18:                              # %if.end.64
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_44
.LBB52_19:                              # %if.else
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -136(%rbp)
.LBB52_20:                              # %for.cond.66
                                        #   Parent Loop BB52_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB52_22 Depth 3
                                        #         Child Loop BB52_25 Depth 4
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB52_43
# BB#21:                                # %for.body.69
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	-76(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
.LBB52_22:                              # %for.cond.71
                                        #   Parent Loop BB52_3 Depth=1
                                        #     Parent Loop BB52_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB52_25 Depth 4
	movl	-132(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB52_41
# BB#23:                                # %for.body.74
                                        #   in Loop: Header=BB52_22 Depth=3
	movq	-120(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB52_39
# BB#24:                                # %if.then.76
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-132(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB52_25:                              # %for.cond.77
                                        #   Parent Loop BB52_3 Depth=1
                                        #     Parent Loop BB52_20 Depth=2
                                        #       Parent Loop BB52_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-132(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jge	.LBB52_30
# BB#26:                                # %for.body.80
                                        #   in Loop: Header=BB52_25 Depth=4
	movq	-120(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB52_28
# BB#27:                                # %if.then.82
                                        #   in Loop: Header=BB52_25 Depth=4
	movl	-132(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB52_28:                              # %if.end.83
                                        #   in Loop: Header=BB52_25 Depth=4
	jmp	.LBB52_29
.LBB52_29:                              # %for.inc
                                        #   in Loop: Header=BB52_25 Depth=4
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB52_25
.LBB52_30:                              # %for.end
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-164(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB52_32
# BB#31:                                # %if.then.86
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-164(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB52_32:                              # %if.end.87
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-168(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jle	.LBB52_34
# BB#33:                                # %if.then.90
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-168(%rbp), %eax
	movl	%eax, -152(%rbp)
.LBB52_34:                              # %if.end.91
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-136(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB52_36
# BB#35:                                # %if.then.94
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-136(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB52_36:                              # %if.end.95
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-136(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jle	.LBB52_38
# BB#37:                                # %if.then.98
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-136(%rbp), %eax
	movl	%eax, -160(%rbp)
.LBB52_38:                              # %if.end.99
                                        #   in Loop: Header=BB52_22 Depth=3
	jmp	.LBB52_39
.LBB52_39:                              # %if.end.100
                                        #   in Loop: Header=BB52_22 Depth=3
	jmp	.LBB52_40
.LBB52_40:                              # %for.inc.101
                                        #   in Loop: Header=BB52_22 Depth=3
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB52_22
.LBB52_41:                              # %for.end.104
                                        #   in Loop: Header=BB52_20 Depth=2
	jmp	.LBB52_42
.LBB52_42:                              # %for.inc.105
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	-80(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	jmp	.LBB52_20
.LBB52_43:                              # %for.end.108
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_44
.LBB52_44:                              # %if.end.109
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_45
.LBB52_45:                              # %if.end.110
                                        #   in Loop: Header=BB52_3 Depth=1
	jmp	.LBB52_46
.LBB52_46:                              # %for.inc.111
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -176(%rbp)
	jmp	.LBB52_3
.LBB52_47:                              # %for.end.113
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-236(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB52_49
# BB#48:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB52_53
.LBB52_49:                              # %cond.false
	movl	-152(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_51
# BB#50:                                # %cond.true.126
	xorl	%eax, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB52_52
.LBB52_51:                              # %cond.false.127
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB52_52:                              # %cond.end
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB52_53:                              # %cond.end.129
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -152(%rbp)
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-268(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB52_55
# BB#54:                                # %cond.true.137
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB52_59
.LBB52_55:                              # %cond.false.141
	movl	-160(%rbp), %eax
	addl	$1, %eax
	cmpl	$0, %eax
	jge	.LBB52_57
# BB#56:                                # %cond.true.145
	xorl	%eax, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	jmp	.LBB52_58
.LBB52_57:                              # %cond.false.146
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB52_58:                              # %cond.end.148
	movl	-296(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB52_59:                              # %cond.end.150
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
	movl	-148(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -300(%rbp)        # 4-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-300(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB52_62
# BB#60:                                # %land.lhs.true.157
	movl	-156(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-316(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB52_62
# BB#61:                                # %if.then.163
	movq	-16(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-16(%rbp), %rsi
	movl	%eax, 156(%rsi)
	jmp	.LBB52_63
.LBB52_62:                              # %if.else.175
	movq	-16(%rbp), %rax
	movl	$0, 136(%rax)
	movl	-148(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 144(%rax)
	movl	-156(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 148(%rax)
	movl	-152(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 152(%rax)
	movl	-160(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 156(%rax)
.LBB52_63:                              # %if.end.181
	movq	-16(%rbp), %rax
	movl	$1, 140(%rax)
	movq	-16(%rbp), %rax
	movl	144(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	152(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	148(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	156(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 136(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -4(%rbp)
.LBB52_64:                              # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_channel_real_bounds, .Lfunc_end52-gimp_channel_real_bounds
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_is_empty,@function
gimp_channel_real_is_empty:             # @gimp_channel_real_is_empty
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 140(%rdi)
	je	.LBB53_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB53_21
.LBB53_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-16(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-80(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -104(%rbp)
.LBB53_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB53_5 Depth 2
                                        #       Child Loop BB53_7 Depth 3
	cmpq	$0, -104(%rbp)
	je	.LBB53_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB53_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -96(%rbp)
.LBB53_5:                               # %for.cond.11
                                        #   Parent Loop BB53_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB53_7 Depth 3
	movl	-96(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB53_14
# BB#6:                                 # %for.body.13
                                        #   in Loop: Header=BB53_5 Depth=2
	movl	$0, -92(%rbp)
.LBB53_7:                               # %for.cond.14
                                        #   Parent Loop BB53_3 Depth=1
                                        #     Parent Loop BB53_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB53_12
# BB#8:                                 # %for.body.16
                                        #   in Loop: Header=BB53_7 Depth=3
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -88(%rbp)
	cmpb	$0, (%rax)
	je	.LBB53_10
# BB#9:                                 # %if.then.18
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process_stop
	movl	$0, -4(%rbp)
	jmp	.LBB53_21
.LBB53_10:                              # %if.end.19
                                        #   in Loop: Header=BB53_7 Depth=3
	jmp	.LBB53_11
.LBB53_11:                              # %for.inc
                                        #   in Loop: Header=BB53_7 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB53_7
.LBB53_12:                              # %for.end
                                        #   in Loop: Header=BB53_5 Depth=2
	jmp	.LBB53_13
.LBB53_13:                              # %for.inc.20
                                        #   in Loop: Header=BB53_5 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB53_5
.LBB53_14:                              # %for.end.22
                                        #   in Loop: Header=BB53_3 Depth=1
	jmp	.LBB53_15
.LBB53_15:                              # %for.inc.23
                                        #   in Loop: Header=BB53_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -104(%rbp)
	jmp	.LBB53_3
.LBB53_16:                              # %for.end.25
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB53_18
# BB#17:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB53_18:                              # %if.end.29
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB53_20
# BB#19:                                # %if.then.31
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB53_20:                              # %if.end.33
	movq	-16(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 128(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 132(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 140(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 104(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-16(%rbp), %rsi
	movl	%eax, 156(%rsi)
	movl	$1, -4(%rbp)
.LBB53_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_channel_real_is_empty, .Lfunc_end53-gimp_channel_real_is_empty
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_feather,@function
gimp_channel_real_feather:              # @gimp_channel_real_feather
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	776(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB54_3
.LBB54_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB54_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gaussian_blur_region
	movq	-8(%rbp), %rsi
	movl	$0, 140(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_channel_real_feather, .Lfunc_end54-gimp_channel_real_feather
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI55_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_channel_real_sharpen,@function
gimp_channel_real_sharpen:              # @gimp_channel_real_sharpen
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB55_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	784(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB55_3
.LBB55_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB55_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
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
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movsd	.LCPI55_0, %xmm0        # xmm0 = mem[0],zero
	movl	$1, %edi
	callq	threshold_lut_new
	movabsq	$gimp_lut_process_inline, %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	movq	-88(%rbp), %rdi
	callq	gimp_lut_free
	movq	-8(%rbp), %rcx
	movl	$0, 140(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rcx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_channel_real_sharpen, .Lfunc_end55-gimp_channel_real_sharpen
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_clear,@function
gimp_channel_real_clear:                # @gimp_channel_real_clear
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB56_4
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	jne	.LBB56_3
# BB#2:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	792(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB56_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB56_5
.LBB56_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB56_5:                               # %if.end.4
	movq	-8(%rbp), %rax
	cmpl	$0, 140(%rax)
	je	.LBB56_8
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 136(%rax)
	jne	.LBB56_8
# BB#7:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-88(%rbp), %rdi
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	144(%rsi), %edx
	movq	-8(%rbp), %rsi
	movl	148(%rsi), %r8d
	movq	-8(%rbp), %rsi
	movl	152(%rsi), %r9d
	movq	-8(%rbp), %rsi
	subl	144(%rsi), %r9d
	movq	-8(%rbp), %rsi
	movl	156(%rsi), %r10d
	movq	-8(%rbp), %rsi
	subl	148(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	callq	clear_region
	jmp	.LBB56_9
.LBB56_8:                               # %if.else.14
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movq	-8(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	callq	clear_region
.LBB56_9:                               # %if.end.24
	movq	-8(%rbp), %rax
	movl	$1, 140(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 144(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 148(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-8(%rbp), %rsi
	movl	%eax, 156(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-204(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_channel_real_clear, .Lfunc_end56-gimp_channel_real_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_all,@function
gimp_channel_real_all:                  # @gimp_channel_real_all
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$-1, -81(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB57_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	800(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB57_3
.LBB57_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB57_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
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
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-80(%rbp), %rdi
	leaq	-81(%rbp), %rsi
	callq	color_region
	movq	-8(%rbp), %rsi
	movl	$1, 140(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 136(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 144(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 148(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, 152(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movq	-8(%rbp), %rsi
	movl	%eax, 156(%rsi)
	movq	-8(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_channel_real_all, .Lfunc_end57-gimp_channel_real_all
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_invert,@function
gimp_channel_real_invert:               # @gimp_channel_real_invert
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB58_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	808(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB58_3
.LBB58_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB58_3:                               # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 140(%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB58_6
# BB#5:                                 # %if.then.4
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_channel_all
	jmp	.LBB58_7
.LBB58_6:                               # %if.else.5
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
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
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	callq	invert_lut_new
	movabsq	$gimp_lut_process_inline, %rsi
	movl	$1, %edx
	leaq	-80(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	pixel_regions_process_parallel
	movq	-88(%rbp), %rdi
	callq	gimp_lut_free
	movq	-8(%rbp), %rcx
	movl	$0, 140(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-8(%rbp), %rcx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB58_7:                               # %if.end.25
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_channel_real_invert, .Lfunc_end58-gimp_channel_real_invert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_border,@function
gimp_channel_real_border:               # @gimp_channel_real_border
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$232, %rsp
.Ltmp188:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB59_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jge	.LBB59_3
.LBB59_2:                               # %if.then
	jmp	.LBB59_23
.LBB59_3:                               # %if.end
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB59_5
# BB#4:                                 # %if.then.2
	jmp	.LBB59_23
.LBB59_5:                               # %if.end.3
	movq	-16(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB59_7
# BB#6:                                 # %if.then.6
	jmp	.LBB59_23
.LBB59_7:                               # %if.end.7
	movl	-108(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB59_9
# BB#8:                                 # %if.then.9
	movl	$0, -108(%rbp)
	jmp	.LBB59_10
.LBB59_9:                               # %if.else
	movl	-20(%rbp), %eax
	movl	-108(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -108(%rbp)
.LBB59_10:                              # %if.end.11
	movl	-116(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-124(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB59_12
# BB#11:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -116(%rbp)
	jmp	.LBB59_13
.LBB59_12:                              # %if.else.20
	movl	-20(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB59_13:                              # %if.end.22
	movl	-112(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB59_15
# BB#14:                                # %if.then.25
	movl	$0, -112(%rbp)
	jmp	.LBB59_16
.LBB59_15:                              # %if.else.26
	movl	-24(%rbp), %eax
	movl	-112(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -112(%rbp)
.LBB59_16:                              # %if.end.28
	movl	-120(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-148(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jle	.LBB59_18
# BB#17:                                # %if.then.34
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -120(%rbp)
	jmp	.LBB59_19
.LBB59_18:                              # %if.else.38
	movl	-24(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB59_19:                              # %if.end.40
	cmpl	$0, -36(%rbp)
	je	.LBB59_21
# BB#20:                                # %if.then.42
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	816(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB59_22
.LBB59_21:                              # %if.else.43
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB59_22:                              # %if.end.46
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-104(%rbp), %rdi
	movl	$1, %ecx
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	subl	-108(%rbp), %r9d
	movl	-120(%rbp), %r10d
	subl	-112(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-104(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movw	%cx, %r11w
	movl	-24(%rbp), %ecx
	movw	%cx, %bx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movswl	%r11w, %esi
	movswl	%bx, %edx
	callq	border_region
	movq	-16(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB59_23:                              # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_channel_real_border, .Lfunc_end59-gimp_channel_real_border
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_grow,@function
gimp_channel_real_grow:                 # @gimp_channel_real_grow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$232, %rsp
.Ltmp192:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB60_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jne	.LBB60_3
# BB#2:                                 # %if.then
	jmp	.LBB60_29
.LBB60_3:                               # %if.end
	cmpl	$0, -20(%rbp)
	jg	.LBB60_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -24(%rbp)
	jg	.LBB60_6
# BB#5:                                 # %if.then.5
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %ecx
	subl	-20(%rbp), %ecx
	movl	%eax, %edx
	subl	-24(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	%ecx, %esi
	movl	%eax, %ecx
	callq	gimp_channel_shrink
	jmp	.LBB60_29
.LBB60_6:                               # %if.end.7
	cmpl	$0, -20(%rbp)
	jl	.LBB60_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jge	.LBB60_9
.LBB60_8:                               # %if.then.10
	jmp	.LBB60_29
.LBB60_9:                               # %if.end.11
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB60_11
# BB#10:                                # %if.then.12
	jmp	.LBB60_29
.LBB60_11:                              # %if.end.13
	movq	-16(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB60_13
# BB#12:                                # %if.then.16
	jmp	.LBB60_29
.LBB60_13:                              # %if.end.17
	movl	-100(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB60_15
# BB#14:                                # %if.then.20
	movl	-100(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB60_16
.LBB60_15:                              # %if.else
	movl	$0, -100(%rbp)
.LBB60_16:                              # %if.end.22
	movl	-104(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB60_18
# BB#17:                                # %if.then.25
	movl	-104(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB60_19
.LBB60_18:                              # %if.else.27
	movl	$0, -104(%rbp)
.LBB60_19:                              # %if.end.28
	movl	-108(%rbp), %eax
	addl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-116(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB60_21
# BB#20:                                # %if.then.33
	movl	-108(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB60_22
.LBB60_21:                              # %if.else.35
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -108(%rbp)
.LBB60_22:                              # %if.end.39
	movl	-112(%rbp), %eax
	addl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-140(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB60_24
# BB#23:                                # %if.then.45
	movl	-112(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB60_25
.LBB60_24:                              # %if.else.47
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -112(%rbp)
.LBB60_25:                              # %if.end.51
	cmpl	$0, -28(%rbp)
	je	.LBB60_27
# BB#26:                                # %if.then.53
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	824(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB60_28
.LBB60_27:                              # %if.else.54
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB60_28:                              # %if.end.57
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-96(%rbp), %rdi
	movl	$1, %ecx
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	subl	-100(%rbp), %r9d
	movl	-112(%rbp), %r10d
	subl	-104(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movw	%cx, %r11w
	movl	-24(%rbp), %ecx
	movw	%cx, %bx
	movswl	%r11w, %esi
	movswl	%bx, %edx
	callq	fatten_region
	movq	-16(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB60_29:                              # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_channel_real_grow, .Lfunc_end60-gimp_channel_real_grow
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_real_shrink,@function
gimp_channel_real_shrink:               # @gimp_channel_real_shrink
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp196:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB61_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jne	.LBB61_3
# BB#2:                                 # %if.then
	jmp	.LBB61_25
.LBB61_3:                               # %if.end
	cmpl	$0, -20(%rbp)
	jg	.LBB61_6
# BB#4:                                 # %land.lhs.true.3
	cmpl	$0, -24(%rbp)
	jg	.LBB61_6
# BB#5:                                 # %if.then.5
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	%eax, %ecx
	subl	-20(%rbp), %ecx
	subl	-24(%rbp), %eax
	movl	-32(%rbp), %edx
	movl	%ecx, %esi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	callq	gimp_channel_grow
	jmp	.LBB61_25
.LBB61_6:                               # %if.end.7
	cmpl	$0, -20(%rbp)
	jl	.LBB61_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jge	.LBB61_9
.LBB61_8:                               # %if.then.10
	jmp	.LBB61_25
.LBB61_9:                               # %if.end.11
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB61_11
# BB#10:                                # %if.then.12
	jmp	.LBB61_25
.LBB61_11:                              # %if.end.13
	movq	-16(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB61_13
# BB#12:                                # %if.then.16
	jmp	.LBB61_25
.LBB61_13:                              # %if.end.17
	cmpl	$0, -100(%rbp)
	jle	.LBB61_15
# BB#14:                                # %if.then.19
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
.LBB61_15:                              # %if.end.20
	cmpl	$0, -104(%rbp)
	jle	.LBB61_17
# BB#16:                                # %if.then.22
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
.LBB61_17:                              # %if.end.24
	movl	-108(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-120(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB61_19
# BB#18:                                # %if.then.29
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
.LBB61_19:                              # %if.end.30
	movl	-112(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-132(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB61_21
# BB#20:                                # %if.then.35
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
.LBB61_21:                              # %if.end.37
	cmpl	$0, -32(%rbp)
	je	.LBB61_23
# BB#22:                                # %if.then.39
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	832(%rax), %rsi
	callq	gimp_channel_push_undo
	jmp	.LBB61_24
.LBB61_23:                              # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB61_24:                              # %if.end.42
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-96(%rbp), %rdi
	movl	$1, %ecx
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	subl	-100(%rbp), %r9d
	movl	-112(%rbp), %r10d
	subl	-104(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rdi
	movl	-20(%rbp), %ecx
	movw	%cx, %r11w
	movl	-24(%rbp), %ecx
	movw	%cx, %bx
	movl	-28(%rbp), %ecx
	movswl	%r11w, %esi
	movswl	%bx, %edx
	callq	thin_region
	movq	-16(%rbp), %rax
	movl	$0, 140(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-16(%rbp), %rsi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
.LBB61_25:                              # %return
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_channel_real_shrink, .Lfunc_end61-gimp_channel_real_shrink
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_get_opacity_at,@function
gimp_channel_get_opacity_at:            # @gimp_channel_get_opacity_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 140(%rax)
	je	.LBB62_10
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 136(%rax)
	je	.LBB62_3
# BB#2:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB62_17
.LBB62_3:                               # %if.else
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	144(%rcx), %eax
	jl	.LBB62_7
# BB#4:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	152(%rcx), %eax
	jge	.LBB62_7
# BB#5:                                 # %lor.lhs.false.5
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	148(%rcx), %eax
	jl	.LBB62_7
# BB#6:                                 # %lor.lhs.false.7
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	156(%rcx), %eax
	jl	.LBB62_8
.LBB62_7:                               # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB62_17
.LBB62_8:                               # %if.end
	jmp	.LBB62_9
.LBB62_9:                               # %if.end.10
	jmp	.LBB62_16
.LBB62_10:                              # %if.else.11
	cmpl	$0, -20(%rbp)
	jl	.LBB62_14
# BB#11:                                # %lor.lhs.false.13
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-60(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jge	.LBB62_14
# BB#12:                                # %lor.lhs.false.18
	cmpl	$0, -24(%rbp)
	jl	.LBB62_14
# BB#13:                                # %lor.lhs.false.20
	movl	-24(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-76(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB62_15
.LBB62_14:                              # %if.then.25
	movl	$0, -4(%rbp)
	jmp	.LBB62_17
.LBB62_15:                              # %if.end.26
	jmp	.LBB62_16
.LBB62_16:                              # %if.end.27
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	tile_manager_get_tile
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	tile_data_pointer
	xorl	%esi, %esi
	movzbl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	tile_release
	movl	-44(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB62_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_channel_get_opacity_at, .Lfunc_end62-gimp_channel_get_opacity_at
	.cfi_endproc

	.type	gimp_channel_get_type.g_define_type_id__volatile,@object # @gimp_channel_get_type.g_define_type_id__volatile
	.local	gimp_channel_get_type.g_define_type_id__volatile
	.comm	gimp_channel_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpChannel"
	.size	.L.str, 12

	.type	gimp_channel_get_type.g_implement_interface_info,@object # @gimp_channel_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_channel_get_type.g_implement_interface_info:
	.quad	gimp_channel_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_channel_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_channel_new,@object # @__func__.gimp_channel_new
.L__func__.gimp_channel_new:
	.asciz	"gimp_channel_new"
	.size	.L__func__.gimp_channel_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.2, 22

	.type	.L__func__.gimp_channel_new_from_alpha,@object # @__func__.gimp_channel_new_from_alpha
.L__func__.gimp_channel_new_from_alpha:
	.asciz	"gimp_channel_new_from_alpha"
	.size	.L__func__.gimp_channel_new_from_alpha, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_drawable_has_alpha (drawable)"
	.size	.L.str.4, 35

	.type	.L__func__.gimp_channel_new_from_component,@object # @__func__.gimp_channel_new_from_component
.L__func__.gimp_channel_new_from_component:
	.asciz	"gimp_channel_new_from_component"
	.size	.L__func__.gimp_channel_new_from_component, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"pixel != -1"
	.size	.L.str.5, 12

	.type	.L__func__.gimp_channel_get_parent,@object # @__func__.gimp_channel_get_parent
.L__func__.gimp_channel_get_parent:
	.asciz	"gimp_channel_get_parent"
	.size	.L__func__.gimp_channel_get_parent, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CHANNEL (channel)"
	.size	.L.str.6, 26

	.type	.L__func__.gimp_channel_set_color,@object # @__func__.gimp_channel_set_color
.L__func__.gimp_channel_set_color:
	.asciz	"gimp_channel_set_color"
	.size	.L__func__.gimp_channel_set_color, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"color != NULL"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"undo-type\004Set Channel Color"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"value"
	.size	.L.str.9, 6

	.type	channel_signals,@object # @channel_signals
	.local	channel_signals
	.comm	channel_signals,4,4
	.type	.L__func__.gimp_channel_get_color,@object # @__func__.gimp_channel_get_color
.L__func__.gimp_channel_get_color:
	.asciz	"gimp_channel_get_color"
	.size	.L__func__.gimp_channel_get_color, 23

	.type	.L__func__.gimp_channel_get_opacity,@object # @__func__.gimp_channel_get_opacity
.L__func__.gimp_channel_get_opacity:
	.asciz	"gimp_channel_get_opacity"
	.size	.L__func__.gimp_channel_get_opacity, 25

	.type	.L__func__.gimp_channel_set_opacity,@object # @__func__.gimp_channel_set_opacity
.L__func__.gimp_channel_set_opacity:
	.asciz	"gimp_channel_set_opacity"
	.size	.L__func__.gimp_channel_set_opacity, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Set Channel Opacity"
	.size	.L.str.10, 30

	.type	.L__func__.gimp_channel_get_show_masked,@object # @__func__.gimp_channel_get_show_masked
.L__func__.gimp_channel_get_show_masked:
	.asciz	"gimp_channel_get_show_masked"
	.size	.L__func__.gimp_channel_get_show_masked, 29

	.type	.L__func__.gimp_channel_set_show_masked,@object # @__func__.gimp_channel_set_show_masked
.L__func__.gimp_channel_set_show_masked:
	.asciz	"gimp_channel_set_show_masked"
	.size	.L__func__.gimp_channel_set_show_masked, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"output"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"input"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"aux"
	.size	.L.str.13, 4

	.type	.L__func__.gimp_channel_push_undo,@object # @__func__.gimp_channel_push_undo
.L__func__.gimp_channel_push_undo:
	.asciz	"gimp_channel_push_undo"
	.size	.L__func__.gimp_channel_push_undo, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (channel))"
	.size	.L.str.14, 44

	.type	.L__func__.gimp_channel_new_mask,@object # @__func__.gimp_channel_new_mask
.L__func__.gimp_channel_new_mask:
	.asciz	"gimp_channel_new_mask"
	.size	.L__func__.gimp_channel_new_mask, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Selection Mask"
	.size	.L.str.15, 15

	.type	.L__func__.gimp_channel_boundary,@object # @__func__.gimp_channel_boundary
.L__func__.gimp_channel_boundary:
	.asciz	"gimp_channel_boundary"
	.size	.L__func__.gimp_channel_boundary, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"segs_in != NULL"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"segs_out != NULL"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"num_segs_in != NULL"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"num_segs_out != NULL"
	.size	.L.str.19, 21

	.type	.L__func__.gimp_channel_bounds,@object # @__func__.gimp_channel_bounds
.L__func__.gimp_channel_bounds:
	.asciz	"gimp_channel_bounds"
	.size	.L__func__.gimp_channel_bounds, 20

	.type	.L__func__.gimp_channel_is_empty,@object # @__func__.gimp_channel_is_empty
.L__func__.gimp_channel_is_empty:
	.asciz	"gimp_channel_is_empty"
	.size	.L__func__.gimp_channel_is_empty, 22

	.type	.L__func__.gimp_channel_feather,@object # @__func__.gimp_channel_feather
.L__func__.gimp_channel_feather:
	.asciz	"gimp_channel_feather"
	.size	.L__func__.gimp_channel_feather, 21

	.type	.L__func__.gimp_channel_sharpen,@object # @__func__.gimp_channel_sharpen
.L__func__.gimp_channel_sharpen:
	.asciz	"gimp_channel_sharpen"
	.size	.L__func__.gimp_channel_sharpen, 21

	.type	.L__func__.gimp_channel_clear,@object # @__func__.gimp_channel_clear
.L__func__.gimp_channel_clear:
	.asciz	"gimp_channel_clear"
	.size	.L__func__.gimp_channel_clear, 19

	.type	.L__func__.gimp_channel_all,@object # @__func__.gimp_channel_all
.L__func__.gimp_channel_all:
	.asciz	"gimp_channel_all"
	.size	.L__func__.gimp_channel_all, 17

	.type	.L__func__.gimp_channel_invert,@object # @__func__.gimp_channel_invert
.L__func__.gimp_channel_invert:
	.asciz	"gimp_channel_invert"
	.size	.L__func__.gimp_channel_invert, 20

	.type	.L__func__.gimp_channel_border,@object # @__func__.gimp_channel_border
.L__func__.gimp_channel_border:
	.asciz	"gimp_channel_border"
	.size	.L__func__.gimp_channel_border, 20

	.type	.L__func__.gimp_channel_grow,@object # @__func__.gimp_channel_grow
.L__func__.gimp_channel_grow:
	.asciz	"gimp_channel_grow"
	.size	.L__func__.gimp_channel_grow, 18

	.type	.L__func__.gimp_channel_shrink,@object # @__func__.gimp_channel_shrink
.L__func__.gimp_channel_shrink:
	.asciz	"gimp_channel_shrink"
	.size	.L__func__.gimp_channel_shrink, 20

	.type	gimp_channel_parent_class,@object # @gimp_channel_parent_class
	.local	gimp_channel_parent_class
	.comm	gimp_channel_parent_class,8,8
	.type	GimpChannel_private_offset,@object # @GimpChannel_private_offset
	.local	GimpChannel_private_offset
	.comm	GimpChannel_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"color-changed"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-channel"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Channel"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"undo-type\004Rename Channel"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"undo-type\004Move Channel"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"undo-type\004Scale Channel"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"undo-type\004Resize Channel"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"undo-type\004Flip Channel"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"undo-type\004Rotate Channel"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"undo-type\004Transform Channel"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"undo-type\004Stroke Channel"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"undo-type\004Channel to Selection"
	.size	.L.str.31, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"undo-type\004Reorder Channel"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"undo-type\004Raise Channel"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"undo-type\004Raise Channel to Top"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"undo-type\004Lower Channel"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"undo-type\004Lower Channel to Bottom"
	.size	.L.str.36, 34

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Channel cannot be raised higher."
	.size	.L.str.37, 33

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Channel cannot be lowered more."
	.size	.L.str.38, 32

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"undo-type\004Feather Channel"
	.size	.L.str.39, 26

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"undo-type\004Sharpen Channel"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"undo-type\004Clear Channel"
	.size	.L.str.41, 24

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"undo-type\004Fill Channel"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"undo-type\004Invert Channel"
	.size	.L.str.43, 25

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"undo-type\004Border Channel"
	.size	.L.str.44, 25

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"undo-type\004Grow Channel"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"undo-type\004Shrink Channel"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Qmask"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Quick Mask"
	.size	.L.str.48, 11

	.type	.L__func__.gimp_channel_duplicate,@object # @__func__.gimp_channel_duplicate
.L__func__.gimp_channel_duplicate:
	.asciz	"gimp_channel_duplicate"
	.size	.L__func__.gimp_channel_duplicate, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.49, 43

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Cannot stroke empty channel."
	.size	.L.str.50, 29

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.51, 45

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimpchannel.c"
	.size	.L.str.52, 14

	.type	.L__func__.gimp_channel_stroke,@object # @__func__.gimp_channel_stroke
.L__func__.gimp_channel_stroke:
	.asciz	"gimp_channel_stroke"
	.size	.L__func__.gimp_channel_stroke, 20

	.type	.L__func__.gimp_channel_get_node,@object # @__func__.gimp_channel_get_node
.L__func__.gimp_channel_get_node:
	.asciz	"gimp_channel_get_node"
	.size	.L__func__.gimp_channel_get_node, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"channel->color_node == NULL"
	.size	.L.str.53, 28

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"operation"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gegl:color"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"channel->mask_node == NULL"
	.size	.L.str.56, 27

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gegl:opacity"
	.size	.L.str.57, 13

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"channel->invert_node == NULL"
	.size	.L.str.58, 29

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gegl:invert"
	.size	.L.str.59, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
