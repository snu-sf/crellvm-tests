	.text
	.file	"gimpdrawable-blend.bc"
	.globl	gimp_drawable_blend
	.align	16, 0x90
	.type	gimp_drawable_blend,@function
gimp_drawable_blend:                    # @gimp_drawable_blend
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	48(%rbp), %rax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	%r9d, -92(%rbp)
	movl	%r14d, -96(%rbp)
	movl	%ebx, -100(%rbp)
	movl	%r11d, -104(%rbp)
	movsd	%xmm2, -112(%rbp)
	movl	%r10d, -116(%rbp)
	movsd	%xmm3, -128(%rbp)
	movsd	%xmm4, -136(%rbp)
	movsd	%xmm5, -144(%rbp)
	movsd	%xmm6, -152(%rbp)
	movq	%rax, -160(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -280(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -284(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-272(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-280(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -284(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-272(%rbp), %rdi
	movq	-280(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -284(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-284(%rbp), %eax
	movl	%eax, -288(%rbp)
	cmpl	$0, -288(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_blend, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_blend, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -304(%rbp)
	cmpq	$0, -296(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.29
	movl	$0, -308(%rbp)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.30
	movq	-296(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# BB#21:                                # %land.lhs.true.33
	movq	-296(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-304(%rbp), %rax
	jne	.LBB0_23
# BB#22:                                # %if.then.37
	movl	$1, -308(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.38
	movq	-296(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -308(%rbp)
.LBB0_24:                               # %if.end.40
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.41
	movl	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	cmpl	$0, -312(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_blend, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	cmpq	$0, -160(%rbp)
	je	.LBB0_39
# BB#31:                                # %lor.lhs.false
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -328(%rbp)
	cmpq	$0, -320(%rbp)
	jne	.LBB0_33
# BB#32:                                # %if.then.58
	movl	$0, -332(%rbp)
	jmp	.LBB0_38
.LBB0_33:                               # %if.else.59
	movq	-320(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_36
# BB#34:                                # %land.lhs.true.62
	movq	-320(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-328(%rbp), %rax
	jne	.LBB0_36
# BB#35:                                # %if.then.66
	movl	$1, -332(%rbp)
	jmp	.LBB0_37
.LBB0_36:                               # %if.else.67
	movq	-320(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -332(%rbp)
.LBB0_37:                               # %if.end.69
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.70
	movl	-332(%rbp), %eax
	movl	%eax, -336(%rbp)
	cmpl	$0, -336(%rbp)
	je	.LBB0_40
.LBB0_39:                               # %if.then.73
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.74
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_blend, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_47
.LBB0_41:                               # %if.end.75
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.76
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -168(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-248(%rbp), %rsi
	leaq	-252(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	leaq	-260(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB0_44
# BB#43:                                # %if.then.84
	jmp	.LBB0_47
.LBB0_44:                               # %if.end.85
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_set_busy
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_bytes_with_alpha
	movl	%eax, -244(%rbp)
	movl	-256(%rbp), %edi
	movl	-260(%rbp), %esi
	movl	-244(%rbp), %edx
	callq	tile_manager_new
	leaq	-240(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movl	-256(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	%esi, -364(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -368(%rbp)        # 4-byte Spill
	movl	-368(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-240(%rbp), %rcx
	movq	-168(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-256(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	-60(%rbp), %r10d
	movl	-68(%rbp), %r11d
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-92(%rbp), %ebx
	movl	-96(%rbp), %r14d
	movl	-100(%rbp), %r15d
	movl	-104(%rbp), %r12d
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-116(%rbp), %r13d
	movsd	-128(%rbp), %xmm2       # xmm2 = mem[0],zero
	cvtsi2sdl	-248(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	movsd	-136(%rbp), %xmm3       # xmm3 = mem[0],zero
	cvtsi2sdl	-252(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	-144(%rbp), %xmm4       # xmm4 = mem[0],zero
	cvtsi2sdl	-248(%rbp), %xmm5
	subsd	%xmm5, %xmm4
	movsd	-152(%rbp), %xmm5       # xmm5 = mem[0],zero
	cvtsi2sdl	-252(%rbp), %xmm6
	subsd	%xmm6, %xmm5
	movq	-160(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%r12d, 40(%rsp)
	movl	%r13d, 48(%rsp)
	movq	%rax, 56(%rsp)
	callq	gradient_fill_region
	cmpq	$0, distR+8
	je	.LBB0_46
# BB#45:                                # %if.then.95
	movq	distR+8, %rdi
	callq	tile_manager_unref
	movq	$0, distR+8
.LBB0_46:                               # %if.end.96
	leaq	-240(%rbp), %rdi
	xorl	%eax, %eax
	movq	-176(%rbp), %rsi
	movl	-256(%rbp), %r8d
	movl	-260(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.5, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %r10
	movq	%r10, -376(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	leaq	-240(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-64(%rbp), %r8d
	movl	-248(%rbp), %ecx
	movl	-252(%rbp), %r11d
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movl	-380(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-48(%rbp), %rdi
	movl	-248(%rbp), %esi
	movl	-252(%rbp), %edx
	movl	-256(%rbp), %ecx
	movl	-260(%rbp), %r8d
	callq	gimp_drawable_update
	movq	-176(%rbp), %rdi
	callq	tile_manager_unref
	movq	-168(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_unset_busy
.LBB0_47:                               # %return
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_blend, .Lfunc_end0-gimp_drawable_blend
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gradient_fill_region,@function
gradient_fill_region:                   # @gradient_fill_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movl	64(%rbp), %r10d
	movl	56(%rbp), %r11d
	movl	48(%rbp), %ebx
	movl	40(%rbp), %r14d
	movl	32(%rbp), %r15d
	movl	24(%rbp), %r12d
	movl	16(%rbp), %r13d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movl	%r13d, -84(%rbp)
	movl	%r12d, -88(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	%r15d, -100(%rbp)
	movl	%r14d, -104(%rbp)
	movl	%ebx, -108(%rbp)
	movl	%r11d, -112(%rbp)
	movsd	%xmm1, -120(%rbp)
	movl	%r10d, -124(%rbp)
	movsd	%xmm2, -136(%rbp)
	movsd	%xmm3, -144(%rbp)
	movsd	%xmm4, -152(%rbp)
	movsd	%xmm5, -160(%rbp)
	movq	%rax, -168(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_context_get_gradient
	movq	%rax, -328(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)
	movl	-104(%rbp), %r8d
	movl	%r8d, -312(%rbp)
	movq	-328(%rbp), %rdi
	callq	gimp_gradient_has_fg_bg_segments
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-328(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_gradient_flatten
	movq	%rax, -328(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -328(%rbp)
.LBB1_3:                                # %if.end
	movq	-64(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	callq	gimp_context_get_foreground
	movq	-64(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	callq	gimp_context_get_background
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$3, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	ja	.LBB1_8
# BB#39:                                # %if.end
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_4:                                # %sw.bb
	jmp	.LBB1_10
.LBB1_5:                                # %sw.bb.11
	leaq	-360(%rbp), %rsi
	leaq	-328(%rbp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_to_hsv
	leaq	-392(%rbp), %rsi
	leaq	-328(%rbp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_to_hsv
	movq	-360(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-352(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-344(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-368(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB1_10
.LBB1_6:                                # %sw.bb.16
	xorps	%xmm0, %xmm0
	movq	-272(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -216(%rbp)
	movsd	%xmm0, -216(%rbp)
	jmp	.LBB1_10
.LBB1_7:                                # %sw.bb.20
	jmp	.LBB1_10
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %do.body
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$904, %edx              # imm = 0x388
	movabsq	$.L__func__.gradient_fill_region, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB1_10:                               # %sw.epilog
	movl	-88(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$10, %rdx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	ja	.LBB1_20
# BB#40:                                # %sw.epilog
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_11:                               # %sw.bb.21
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB1_22
.LBB1_12:                               # %sw.bb.27
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movapd	.LCPI1_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	movapd	.LCPI1_0(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_14
# BB#13:                                # %cond.true
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movapd	.LCPI1_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %cond.false
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	movapd	.LCPI1_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
.LBB1_15:                               # %cond.end
	movsd	-480(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	jmp	.LBB1_22
.LBB1_16:                               # %sw.bb.37
	xorps	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-136(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-144(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -208(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_18
# BB#17:                                # %if.then.49
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	divsd	-208(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-144(%rbp), %xmm0
	divsd	-208(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)
.LBB1_18:                               # %if.end.57
	jmp	.LBB1_22
.LBB1_19:                               # %sw.bb.58
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-136(%rbp), %xmm0
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-136(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-144(%rbp), %xmm1
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-144(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -208(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-168(%rbp), %rcx
	callq	gradient_precalc_shapeburst
	jmp	.LBB1_22
.LBB1_20:                               # %sw.default.69
	jmp	.LBB1_21
.LBB1_21:                               # %do.body.70
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$944, %edx              # imm = 0x3B0
	movabsq	$.L__func__.gradient_fill_region, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB1_22:                               # %sw.epilog.72
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.80
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)
	movl	-76(%rbp), %ecx
	movq	-72(%rbp), %rax
	imull	52(%rax), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -416(%rbp)
	movq	-72(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -408(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -404(%rbp)
	callq	g_rand_new
	xorl	%ecx, %ecx
	movabsq	$gradient_render_pixel, %r9
	movabsq	$gradient_put_pixel, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$gimp_progress_update_and_flush, %r8
	leaq	-424(%rbp), %r10
	leaq	-328(%rbp), %r11
	movq	%rax, -400(%rbp)
	movl	-76(%rbp), %edx
	subl	$1, %edx
	movl	-80(%rbp), %ebx
	subl	$1, %ebx
	movl	-112(%rbp), %r14d
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	cmpq	$0, -168(%rbp)
	cmovneq	%r8, %rsi
	movq	-168(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	movq	%r11, (%rsp)
	movq	-496(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	-504(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	movq	%rax, 32(%rsp)
	callq	gimp_adaptive_supersample_area
	movq	-400(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_rand_free
	movq	-416(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_38
.LBB1_24:                               # %if.else.95
	movq	$0, -440(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB1_29
# BB#25:                                # %if.then.97
	callq	g_rand_new
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 52(%rax)
	jl	.LBB1_27
# BB#26:                                # %if.then.102
	movabsq	$gradient_fill_single_region_rgb_dither, %rax
	movq	%rax, -432(%rbp)
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.103
	movabsq	$gradient_fill_single_region_gray_dither, %rax
	movq	%rax, -432(%rbp)
.LBB1_28:                               # %if.end.104
	jmp	.LBB1_33
.LBB1_29:                               # %if.else.105
	movq	-72(%rbp), %rax
	cmpl	$3, 52(%rax)
	jl	.LBB1_31
# BB#30:                                # %if.then.109
	movabsq	$gradient_fill_single_region_rgb, %rax
	movq	%rax, -432(%rbp)
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.110
	movabsq	$gradient_fill_single_region_gray, %rax
	movq	%rax, -432(%rbp)
.LBB1_32:                               # %if.end.111
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.112
	cmpq	$0, -168(%rbp)
	je	.LBB1_35
# BB#34:                                # %if.then.114
	movabsq	$gimp_progress_set_value, %rax
	movq	%rax, -440(%rbp)
.LBB1_35:                               # %if.end.115
	movl	$1, %r8d
	leaq	-328(%rbp), %rax
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %rdx
	movq	-168(%rbp), %rcx
	movq	-72(%rbp), %r9
	movq	%rax, %rsi
	movb	$0, %al
	callq	pixel_regions_process_parallel_progress
	cmpl	$0, -124(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.117
	movq	-176(%rbp), %rdi
	callq	g_rand_free
.LBB1_37:                               # %if.end.119
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.120
	movq	-328(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gradient_fill_region, .Lfunc_end1-gradient_fill_region
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_4
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
.LJTI1_1:
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_11
	.quad	.LBB1_12
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_19
	.quad	.LBB1_19
	.quad	.LBB1_19
	.quad	.LBB1_16
	.quad	.LBB1_16

	.text
	.align	16, 0x90
	.type	gradient_precalc_shapeburst,@function
gradient_precalc_shapeburst:            # @gradient_precalc_shapeburst
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp19:
	.cfi_offset %rbx, -24
	movl	$4, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movb	.Lgradient_precalc_shapeburst.white, %r8b
	movb	%r8b, -153(%rbp)
	movq	-32(%rbp), %rcx
	movl	44(%rcx), %edi
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %esi
	movl	%eax, %edx
	callq	tile_manager_new
	movl	$1, %edx
	movq	%rax, distR+8
	movq	-32(%rbp), %rax
	movl	44(%rax), %edi
	movq	-32(%rbp), %rax
	movl	48(%rax), %esi
	callq	tile_manager_new
	leaq	-120(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	44(%rcx), %r8d
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %r9d
	movl	%esi, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -320(%rbp)        # 4-byte Spill
	movl	-320(%rbp), %ecx        # 4-byte Reload
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-228(%rbp), %rsi
	leaq	-232(%rbp), %rdx
	leaq	-236(%rbp), %rcx
	leaq	-240(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	movq	-24(%rbp), %rcx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-224(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	-228(%rbp), %r10d
	addl	-244(%rbp), %r10d
	movl	-232(%rbp), %r11d
	addl	-248(%rbp), %r11d
	movl	-236(%rbp), %r8d
	movl	-240(%rbp), %ebx
	movq	%rax, %rsi
	movl	%r10d, %edx
	movl	%r11d, %ecx
	movl	%r9d, -356(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-224(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	callq	copy_region
	jmp	.LBB2_6
.LBB2_2:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.20
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-312(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdx
	movl	36(%rdx), %edx
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	44(%rsi), %r9d
	movq	-32(%rbp), %rsi
	movl	48(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -360(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-312(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-120(%rbp), %rdx
	callq	extract_alpha_region
	jmp	.LBB2_5
.LBB2_4:                                # %if.else.26
	leaq	-120(%rbp), %rdi
	leaq	-153(%rbp), %rsi
	callq	color_region
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.27
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-112(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	44(%rdx), %r8d
	movq	-32(%rbp), %rdx
	movl	48(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movabsq	$distR, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	distR+8, %rsi
	movq	-32(%rbp), %r10
	movl	44(%r10), %r8d
	movq	-32(%rbp), %r10
	movl	48(%r10), %r9d
	movl	%eax, %edx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-120(%rbp), %rdi
	movabsq	$distR, %rsi
	xorl	%eax, %eax
	movl	%eax, %r10d
	movabsq	$gimp_progress_update_and_flush, %r11
	cmpq	$0, -48(%rbp)
	cmovneq	%r11, %r10
	movq	-48(%rbp), %r11
	movq	%r10, %rdx
	movq	%r11, %rcx
	callq	shapeburst_region
	xorps	%xmm1, %xmm1
	movss	%xmm0, -124(%rbp)
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB2_15
# BB#7:                                 # %if.then.35
	movabsq	$distR, %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	distR+8, %rsi
	movq	-32(%rbp), %rdx
	movl	44(%rdx), %r8d
	movq	-32(%rbp), %rdx
	movl	48(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	movabsq	$distR, %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -152(%rbp)
.LBB2_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	cmpq	$0, -152(%rbp)
	je	.LBB2_14
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	distR, %rax
	movq	%rax, -136(%rbp)
	movl	distR+44, %ecx
	imull	distR+48, %ecx
	movl	%ecx, -140(%rbp)
.LBB2_10:                               # %while.cond
                                        #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -140(%rbp)
	cmpl	$0, %eax
	je	.LBB2_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB2_10 Depth=2
	movss	-124(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movq	-136(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -136(%rbp)
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rax)
	jmp	.LBB2_10
.LBB2_12:                               # %while.end
                                        #   in Loop: Header=BB2_8 Depth=1
	jmp	.LBB2_13
.LBB2_13:                               # %for.inc
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -152(%rbp)
	jmp	.LBB2_8
.LBB2_14:                               # %for.end
	movabsq	$distR, %rdi
	xorl	%eax, %eax
	movq	distR+8, %rsi
	movq	-32(%rbp), %rcx
	movl	44(%rcx), %r8d
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
.LBB2_15:                               # %if.end.44
	movq	-112(%rbp), %rdi
	callq	tile_manager_unref
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gradient_precalc_shapeburst, .Lfunc_end2-gradient_precalc_shapeburst
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_render_pixel,@function
gradient_render_pixel:                  # @gradient_render_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	52(%rsi), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$10, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	ja	.LBB3_12
# BB#36:                                # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_linear_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_2:                                # %sw.bb.2
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_bilinear_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_3:                                # %sw.bb.12
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	32(%rax), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	40(%rax), %xmm3
	callq	gradient_calc_radial_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_4:                                # %sw.bb.20
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	32(%rax), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	40(%rax), %xmm3
	callq	gradient_calc_square_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_5:                                # %sw.bb.28
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_conical_sym_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_6:                                # %sw.bb.38
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_conical_asym_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_7:                                # %sw.bb.48
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gradient_calc_shapeburst_angular_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_8:                                # %sw.bb.50
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gradient_calc_shapeburst_spherical_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %sw.bb.52
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gradient_calc_shapeburst_dimpled_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_10:                               # %sw.bb.54
	movl	$1, %esi
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_spiral_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_11:                               # %sw.bb.64
	xorl	%esi, %esi
	movq	-40(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	addq	$128, %rax
	movq	-40(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	32(%rcx), %xmm2
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-40(%rbp), %rcx
	subsd	40(%rcx), %xmm3
	movq	%rax, %rdi
	callq	gradient_calc_spiral_factor
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %sw.default
	jmp	.LBB3_13
.LBB3_13:                               # %do.body
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$725, %edx              # imm = 0x2D5
	movabsq	$.L__func__.gradient_render_pixel, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB3_14:                               # %sw.epilog
	movq	-40(%rbp), %rax
	movl	144(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_37
.LBB3_37:                               # %sw.epilog
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB3_22
	jmp	.LBB3_38
.LBB3_38:                               # %sw.epilog
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB3_23
	jmp	.LBB3_28
.LBB3_15:                               # %sw.bb.74
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_17
# BB#16:                                # %cond.true
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	jmp	.LBB3_21
.LBB3_17:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB3_19
# BB#18:                                # %cond.true.76
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false.77
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB3_20:                               # %cond.end
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
.LBB3_21:                               # %cond.end.78
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB3_28
.LBB3_22:                               # %sw.bb.80
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB3_28
.LBB3_23:                               # %sw.bb.83
	xorps	%xmm0, %xmm0
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB3_25
# BB#24:                                # %if.then
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB3_25:                               # %if.end
	cvttsd2si	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	-52(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_27
# BB#26:                                # %if.then.88
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB3_27:                               # %if.end.90
	jmp	.LBB3_28
.LBB3_28:                               # %sw.epilog.91
	movq	-40(%rbp), %rax
	cmpl	$3, 48(%rax)
	jne	.LBB3_30
# BB#29:                                # %if.then.94
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-24(%rbp), %r8
	callq	gimp_gradient_get_color_at
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB3_35
.LBB3_30:                               # %if.else
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB3_32
# BB#31:                                # %if.then.98
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB3_32:                               # %if.end.100
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	56(%rax), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	96(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	64(%rax), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-40(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	104(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	72(%rax), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-40(%rbp), %rax
	movsd	80(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	112(%rax), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	80(%rax), %xmm1
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-40(%rbp), %rax
	cmpl	$1, 48(%rax)
	jne	.LBB3_34
# BB#33:                                # %if.then.136
	leaq	-88(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rsi
	callq	gimp_hsv_to_rgb
.LBB3_34:                               # %if.end.137
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.138
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gradient_render_pixel, .Lfunc_end3-gradient_render_pixel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_1
	.quad	.LBB3_2
	.quad	.LBB3_3
	.quad	.LBB3_4
	.quad	.LBB3_5
	.quad	.LBB3_6
	.quad	.LBB3_7
	.quad	.LBB3_8
	.quad	.LBB3_9
	.quad	.LBB3_10
	.quad	.LBB3_11

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4602678819172646912     # double 0.5
.LCPI4_1:
	.quad	4643176031446892544     # double 255
.LCPI4_2:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gradient_put_pixel,@function
gradient_put_pixel:                     # @gradient_put_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movl	16(%rdx), %esi
	imull	-4(%rbp), %esi
	movslq	%esi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	cmpl	$3, 16(%rcx)
	jl	.LBB4_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB4_3
# BB#2:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_rand_int
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI4_2(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	movq	%rdi, %rdx
	incq	%rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rdi)
	movl	-44(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	movb	%cl, (%rdx)
	movl	-44(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	movb	%cl, (%rdx)
	movl	-44(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-44(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -40(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	8(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movaps	%xmm1, %xmm2
	mulsd	16(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%dl, (%rax)
.LBB4_4:                                # %if.end
	jmp	.LBB4_9
.LBB4_5:                                # %if.else.53
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_luminance
	movsd	%xmm0, -56(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	je	.LBB4_7
# BB#6:                                 # %if.then.57
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_rand_int
	movl	%eax, -60(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI4_2(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdi
	movq	%rdi, %rdx
	incq	%rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rdi)
	movl	-60(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rdx
	movsd	24(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-60(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -40(%rbp)
	movb	%cl, (%rdx)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.77
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
	movq	-16(%rbp), %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
.LBB4_8:                                # %if.end.89
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.90
	movl	-4(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB4_11
# BB#10:                                # %if.then.93
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	-8(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-32(%rbp), %rax
	movq	8(%rax), %r8
	callq	pixel_region_set_row
.LBB4_11:                               # %if.end.96
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gradient_put_pixel, .Lfunc_end4-gradient_put_pixel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643176031446892544     # double 255
.LCPI5_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gradient_fill_single_region_rgb_dither,@function
gradient_fill_single_region_rgb_dither: # @gradient_fill_single_region_rgb_dither
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rdi
	callq	g_rand_int
	movl	%eax, %edi
	callq	g_rand_new_with_seed
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %edi
	movq	-16(%rbp), %rax
	addl	44(%rax), %edi
	movl	%edi, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	movq	-16(%rbp), %rax
	addl	48(%rax), %edi
	movl	%edi, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	movl	%edi, -48(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB5_3:                                # %for.cond.7
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB5_3 Depth=2
	movq	-24(%rbp), %rdi
	callq	g_rand_int
	movl	%eax, -84(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	callq	gradient_render_pixel
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI5_1(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
	movl	-84(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -84(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
	movl	-84(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -84(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
	movl	-84(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -84(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.38
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.40
	movq	-24(%rbp), %rdi
	callq	g_rand_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gradient_fill_single_region_rgb_dither, .Lfunc_end5-gradient_fill_single_region_rgb_dither
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
.LCPI6_1:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gradient_fill_single_region_gray_dither,@function
gradient_fill_single_region_gray_dither: # @gradient_fill_single_region_gray_dither
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rdi
	callq	g_rand_int
	movl	%eax, %edi
	callq	g_rand_new_with_seed
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %edi
	movq	-16(%rbp), %rax
	addl	44(%rax), %edi
	movl	%edi, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	movq	-16(%rbp), %rax
	addl	48(%rax), %edi
	movl	%edi, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %edi
	movl	%edi, -48(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB6_3:                                # %for.cond.7
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-24(%rbp), %rdi
	callq	g_rand_int
	movl	%eax, -92(%rbp)
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-48(%rbp), %xmm1
	movq	-8(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gradient_render_pixel
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_luminance
	movsd	%xmm0, -88(%rbp)
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI6_1(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
	movl	-92(%rbp), %eax
	sarl	$8, %eax
	movl	%eax, -92(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -32(%rbp)
	movb	%cl, (%rsi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.23
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end.25
	movq	-24(%rbp), %rdi
	callq	g_rand_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gradient_fill_single_region_gray_dither, .Lfunc_end6-gradient_fill_single_region_gray_dither
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4602678819172646912     # double 0.5
.LCPI7_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gradient_fill_single_region_rgb,@function
gradient_fill_single_region_rgb:        # @gradient_fill_single_region_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %eax
	movq	-16(%rbp), %rsi
	addl	44(%rsi), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movq	-16(%rbp), %rsi
	addl	48(%rsi), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -40(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB7_3:                                # %for.cond.6
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB7_6
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB7_3 Depth=2
	leaq	-72(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gradient_render_pixel
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
	movaps	%xmm1, %xmm2
	mulsd	-64(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
	movaps	%xmm1, %xmm2
	mulsd	-56(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%dl, (%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc.28
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end.30
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gradient_fill_single_region_rgb, .Lfunc_end7-gradient_fill_single_region_rgb
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4602678819172646912     # double 0.5
.LCPI8_1:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	gradient_fill_single_region_gray,@function
gradient_fill_single_region_gray:       # @gradient_fill_single_region_gray
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %eax
	movq	-16(%rbp), %rsi
	addl	44(%rsi), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movq	-16(%rbp), %rsi
	addl	48(%rsi), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -40(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB8_3:                                # %for.cond.6
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_6
# BB#4:                                 # %for.body.8
                                        #   in Loop: Header=BB8_3 Depth=2
	leaq	-72(%rbp), %rdi
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gradient_render_pixel
	leaq	-72(%rbp), %rdi
	callq	gimp_rgb_luminance_uchar
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movb	%al, (%rsi)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movb	%cl, %al
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -24(%rbp)
	movb	%al, (%rsi)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc.14
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gradient_fill_single_region_gray, .Lfunc_end8-gradient_fill_single_region_gray
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_linear_factor,@function
gradient_calc_linear_factor:            # @gradient_calc_linear_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB9_2
	jp	.LBB9_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_10
.LBB9_2:                                # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	-16(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_5
# BB#4:                                 # %if.then.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB9_10
.LBB9_5:                                # %if.else.7
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_7
	jp	.LBB9_7
# BB#6:                                 # %if.then.9
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	cmplesd	-64(%rbp), %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, -8(%rbp)
	jmp	.LBB9_10
.LBB9_7:                                # %if.else.11
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB9_9
# BB#8:                                 # %if.then.13
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB9_10
.LBB9_9:                                # %if.else.15
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	subsd	-32(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB9_10:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gradient_calc_linear_factor, .Lfunc_end9-gradient_calc_linear_factor
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_1:
	.quad	4636737291354636288     # double 100
.LCPI10_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_bilinear_factor,@function
gradient_calc_bilinear_factor:          # @gradient_calc_bilinear_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB10_2
	jp	.LBB10_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_7
.LBB10_2:                               # %if.else
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI10_0(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_4
# BB#3:                                 # %if.then.5
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB10_7
.LBB10_4:                               # %if.else.6
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_6
	jp	.LBB10_6
# BB#5:                                 # %if.then.8
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	cmpeqsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, -8(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.10
	movsd	.LCPI10_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI10_0(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	subsd	-32(%rbp), %xmm1
	subsd	-32(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB10_7:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gradient_calc_bilinear_factor, .Lfunc_end10-gradient_calc_bilinear_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4636737291354636288     # double 100
.LCPI11_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_radial_factor,@function
gradient_calc_radial_factor:            # @gradient_calc_radial_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB11_2
	jp	.LBB11_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_4
# BB#3:                                 # %if.then.4
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB11_7
.LBB11_4:                               # %if.else.5
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_6
	jp	.LBB11_6
# BB#5:                                 # %if.then.7
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	cmplesd	-56(%rbp), %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, -8(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.9
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	subsd	-24(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB11_7:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gradient_calc_radial_factor, .Lfunc_end11-gradient_calc_radial_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4636737291354636288     # double 100
.LCPI12_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_square_factor,@function
gradient_calc_square_factor:            # @gradient_calc_square_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB12_2
	jp	.LBB12_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_10
.LBB12_2:                               # %if.else
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	cvttsd2si	-32(%rbp), %edi
	callq	abs
	cvttsd2si	-40(%rbp), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	abs
	movl	-60(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jle	.LBB12_4
# BB#3:                                 # %cond.true
	cvttsd2si	-32(%rbp), %edi
	callq	abs
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	cvttsd2si	-40(%rbp), %edi
	callq	abs
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB12_5:                               # %cond.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_7
# BB#6:                                 # %if.then.13
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB12_10
.LBB12_7:                               # %if.else.14
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB12_9
	jp	.LBB12_9
# BB#8:                                 # %if.then.17
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movaps	%xmm0, %xmm2
	cmplesd	-56(%rbp), %xmm2
	movaps	%xmm2, %xmm3
	andpd	%xmm0, %xmm3
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movsd	%xmm2, -8(%rbp)
	jmp	.LBB12_10
.LBB12_9:                               # %if.else.21
	movsd	.LCPI12_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	subsd	-24(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
.LBB12_10:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gradient_calc_square_factor, .Lfunc_end12-gradient_calc_square_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_1:
	.quad	4607182418800017408     # double 1
.LCPI13_2:
	.quad	-4616189618054758400    # double -1
.LCPI13_3:
	.quad	4621819117588971520     # double 10
.LCPI13_4:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.align	16, 0x90
	.type	gradient_calc_conical_sym_factor,@function
gradient_calc_conical_sym_factor:       # @gradient_calc_conical_sym_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB13_2
	jp	.LBB13_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_17
.LBB13_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_4
	jp	.LBB13_4
# BB#3:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB13_4
	jp	.LBB13_4
	jmp	.LBB13_16
.LBB13_4:                               # %if.then.3
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-40(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-48(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-72(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_6
# BB#5:                                 # %if.then.15
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB13_9
.LBB13_6:                               # %if.else.16
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB13_8
# BB#7:                                 # %if.then.18
	movsd	.LCPI13_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
.LBB13_8:                               # %if.end
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.19
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	acos
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_4, %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	movaps	%xmm3, %xmm1
	callq	pow
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_11
# BB#10:                                # %cond.true
	movsd	.LCPI13_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB13_15
.LBB13_11:                              # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB13_13
# BB#12:                                # %cond.true.27
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB13_14
.LBB13_13:                              # %cond.false.28
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB13_14:                              # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB13_15:                              # %cond.end.29
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.31
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB13_17:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gradient_calc_conical_sym_factor, .Lfunc_end13-gradient_calc_conical_sym_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
.LCPI14_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI14_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI14_3:
	.quad	4607182418800017408     # double 1
.LCPI14_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gradient_calc_conical_asym_factor,@function
gradient_calc_conical_asym_factor:      # @gradient_calc_conical_asym_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB14_2
	jp	.LBB14_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_14
.LBB14_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB14_4
	jp	.LBB14_4
# BB#3:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB14_4
	jp	.LBB14_4
	jmp	.LBB14_13
.LBB14_4:                               # %if.then.3
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI14_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	xorps	%xmm1, %xmm1
	movsd	.LCPI14_1, %xmm2        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-56(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	ucomisd	-72(%rbp), %xmm1
	jbe	.LBB14_6
# BB#5:                                 # %if.then.8
	movsd	.LCPI14_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB14_6:                               # %if.end
	movsd	.LCPI14_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI14_4, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI14_2, %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -80(%rbp)
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	movaps	%xmm2, %xmm0
	movaps	%xmm3, %xmm1
	callq	pow
	movsd	.LCPI14_3, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_8
# BB#7:                                 # %cond.true
	movsd	.LCPI14_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB14_12
.LBB14_8:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB14_10
# BB#9:                                 # %cond.true.15
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false.16
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB14_11:                              # %cond.end
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB14_12:                              # %cond.end.17
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_14
.LBB14_13:                              # %if.else.19
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB14_14:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gradient_calc_conical_asym_factor, .Lfunc_end14-gradient_calc_conical_asym_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI15_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_shapeburst_angular_factor,@function
gradient_calc_shapeburst_angular_factor: # @gradient_calc_shapeburst_angular_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI15_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_2
# BB#1:                                 # %cond.true
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB15_6
.LBB15_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB15_4
# BB#3:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB15_5
.LBB15_4:                               # %cond.false.7
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB15_5:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB15_6:                               # %cond.end.8
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm2
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB15_8
# BB#7:                                 # %cond.true.15
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jmp	.LBB15_12
.LBB15_8:                               # %cond.false.18
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB15_10
# BB#9:                                 # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB15_11
.LBB15_10:                              # %cond.false.22
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB15_11:                              # %cond.end.23
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB15_12:                              # %cond.end.25
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %ecx
	xorl	%r8d, %r8d
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	distR+8, %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_data_pointer
	xorl	%esi, %esi
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_release
	cvtss2sd	-28(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gradient_calc_shapeburst_angular_factor, .Lfunc_end15-gradient_calc_shapeburst_angular_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI16_1:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.align	16, 0x90
	.type	gradient_calc_shapeburst_spherical_factor,@function
gradient_calc_shapeburst_spherical_factor: # @gradient_calc_shapeburst_spherical_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movsd	.LCPI16_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB16_2
# BB#1:                                 # %cond.true
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB16_6
.LBB16_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB16_4
# BB#3:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB16_5
.LBB16_4:                               # %cond.false.7
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB16_5:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB16_6:                               # %cond.end.8
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI16_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm2
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB16_8
# BB#7:                                 # %cond.true.15
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jmp	.LBB16_12
.LBB16_8:                               # %cond.false.18
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB16_10
# BB#9:                                 # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false.22
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB16_11:                              # %cond.end.23
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB16_12:                              # %cond.end.25
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %ecx
	xorl	%r8d, %r8d
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	distR+8, %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_data_pointer
	xorl	%esi, %esi
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_2, %xmm1        # xmm1 = mem[0],zero
	movss	(%rax), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	%xmm2, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%esi, -84(%rbp)         # 4-byte Spill
	callq	sin
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	callq	tile_release
	cvtss2sd	-28(%rbp), %xmm0
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gradient_calc_shapeburst_spherical_factor, .Lfunc_end16-gradient_calc_shapeburst_spherical_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI17_1:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.align	16, 0x90
	.type	gradient_calc_shapeburst_dimpled_factor,@function
gradient_calc_shapeburst_dimpled_factor: # @gradient_calc_shapeburst_dimpled_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movsd	.LCPI17_0, %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_2
# BB#1:                                 # %cond.true
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+44, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	jmp	.LBB17_6
.LBB17_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.LBB17_4
# BB#3:                                 # %cond.true.6
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB17_5
.LBB17_4:                               # %cond.false.7
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB17_5:                               # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB17_6:                               # %cond.end.8
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm2
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB17_8
# BB#7:                                 # %cond.true.15
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	distR+48, %xmm1
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)        # 8-byte Spill
	jmp	.LBB17_12
.LBB17_8:                               # %cond.false.18
	xorps	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB17_10
# BB#9:                                 # %cond.true.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB17_11
.LBB17_10:                              # %cond.false.22
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB17_11:                              # %cond.end.23
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB17_12:                              # %cond.end.25
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$1, %ecx
	xorl	%r8d, %r8d
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movq	distR+8, %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	tile_data_pointer
	xorl	%esi, %esi
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	%esi, -76(%rbp)         # 4-byte Spill
	callq	cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-76(%rbp), %esi         # 4-byte Reload
	callq	tile_release
	cvtss2sd	-28(%rbp), %xmm0
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gradient_calc_shapeburst_dimpled_factor, .Lfunc_end17-gradient_calc_shapeburst_dimpled_factor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4602678819172646912     # double 0.5
.LCPI18_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI18_2:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI18_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gradient_calc_spiral_factor,@function
gradient_calc_spiral_factor:            # @gradient_calc_spiral_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	%esi, -52(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	jne	.LBB18_2
	jp	.LBB18_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_11
.LBB18_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_4
	jp	.LBB18_4
# BB#3:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB18_4
	jp	.LBB18_4
	jmp	.LBB18_10
.LBB18_4:                               # %if.then.3
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI18_1, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB18_6
# BB#5:                                 # %if.then.7
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.8
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-72(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB18_7:                               # %if.end
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB18_9
# BB#8:                                 # %if.then.11
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB18_9:                               # %if.end.13
	movsd	.LCPI18_3, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI18_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-40(%rbp), %xmm2
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	-48(%rbp), %xmm3
	addsd	%xmm3, %xmm2
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	callq	sqrt
	divsd	-16(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addsd	-88(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	fmod
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.21
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB18_11:                              # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gradient_calc_spiral_factor, .Lfunc_end18-gradient_calc_spiral_factor
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_blend,@object # @__func__.gimp_drawable_blend
.L__func__.gimp_drawable_blend:
	.asciz	"gimp_drawable_blend"
	.size	.L__func__.gimp_drawable_blend, 20

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
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	distR,@object           # @distR
	.data
	.align	8
distR:
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	distR, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"undo-type\004Blend"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpdrawable-blend.c"
	.size	.L.str.6, 21

	.type	.L__func__.gradient_fill_region,@object # @__func__.gradient_fill_region
.L__func__.gradient_fill_region:
	.asciz	"gradient_fill_region"
	.size	.L__func__.gradient_fill_region, 21

	.type	.Lgradient_precalc_shapeburst.white,@object # @gradient_precalc_shapeburst.white
	.section	.rodata,"a",@progbits
.Lgradient_precalc_shapeburst.white:
	.byte	255
	.size	.Lgradient_precalc_shapeburst.white, 1

	.type	.L__func__.gradient_render_pixel,@object # @__func__.gradient_render_pixel
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gradient_render_pixel:
	.asciz	"gradient_render_pixel"
	.size	.L__func__.gradient_render_pixel, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
