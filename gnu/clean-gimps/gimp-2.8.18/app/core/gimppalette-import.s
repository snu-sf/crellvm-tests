	.text
	.file	"gimppalette-import.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_palette_import_from_gradient
	.align	16, 0x90
	.type	gimp_palette_import_from_gradient,@function
gimp_palette_import_from_gradient:      # @gimp_palette_import_from_gradient
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_gradient_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -140(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -140(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_gradient, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -164(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -164(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_gradient, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -40(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.41
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_gradient, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_28:                               # %if.end.43
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.44
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.45
	cmpl	$1, -44(%rbp)
	jle	.LBB0_32
# BB#31:                                # %if.then.47
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_gradient, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_39
.LBB0_33:                               # %if.end.49
	jmp	.LBB0_34
.LBB0_34:                               # %do.end.50
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$0, -116(%rbp)
	movsd	%xmm0, -80(%rbp)
.LBB0_35:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_38
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB0_35 Depth=1
	leaq	-112(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %ecx
	callq	gimp_gradient_get_color_at
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB0_35 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	jmp	.LBB0_35
.LBB0_38:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_import_from_gradient, .Lfunc_end0-gimp_palette_import_from_gradient
	.cfi_endproc

	.globl	gimp_palette_import_from_image
	.align	16, 0x90
	.type	gimp_palette_import_from_image,@function
gimp_palette_import_from_image:         # @gimp_palette_import_from_image
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp6:
	.cfi_offset %rbx, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_image, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB1_43
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.20
	movl	$0, -148(%rbp)
	jmp	.LBB1_20
.LBB1_15:                               # %if.else.21
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_18
# BB#16:                                # %land.lhs.true.24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movl	$1, -148(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.29
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB1_19:                               # %if.end.31
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.32
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB1_22
# BB#21:                                # %if.then.35
	jmp	.LBB1_23
.LBB1_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB1_43
.LBB1_23:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_24:                               # %do.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %do.body.39
	cmpq	$0, -56(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.41
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB1_43
.LBB1_28:                               # %if.end.43
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.44
	jmp	.LBB1_30
.LBB1_30:                               # %do.body.45
	cmpl	$1, -60(%rbp)
	jle	.LBB1_32
# BB#31:                                # %if.then.47
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_image, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB1_43
.LBB1_33:                               # %if.end.49
	jmp	.LBB1_34
.LBB1_34:                               # %do.end.50
	jmp	.LBB1_35
.LBB1_35:                               # %do.body.51
	cmpl	$0, -64(%rbp)
	jle	.LBB1_37
# BB#36:                                # %if.then.53
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.54
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB1_43
.LBB1_38:                               # %if.end.55
	jmp	.LBB1_39
.LBB1_39:                               # %do.end.56
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	cmpl	$0, -68(%rbp)
	je	.LBB1_41
# BB#40:                                # %if.then.61
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-92(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	movl	-92(%rbp), %r9d
	movl	-100(%rbp), %r10d
	subl	%r9d, %r10d
	movl	%r10d, -100(%rbp)
	movl	-96(%rbp), %r9d
	movl	-104(%rbp), %r10d
	subl	%r9d, %r10d
	movl	%r10d, -104(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.65
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -100(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -104(%rbp)
.LBB1_42:                               # %if.end.68
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-68(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %r10d
	movl	-104(%rbp), %r11d
	movl	-60(%rbp), %ebx
	movl	-64(%rbp), %r14d
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-188(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	callq	gimp_palette_import_extract
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	callq	gimp_palette_import_make_palette
	movq	%rax, -32(%rbp)
.LBB1_43:                               # %return
	movq	-32(%rbp), %rax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_import_from_image, .Lfunc_end1-gimp_palette_import_from_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_import_extract,@function
gimp_palette_import_extract:            # @gimp_palette_import_extract
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
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movl	48(%rbp), %eax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%r14d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%r11d, -60(%rbp)
	movl	%r10d, -64(%rbp)
	movl	%eax, -68(%rbp)
	movq	$0, -224(%rbp)
	movq	$0, -240(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -84(%rbp)
	movq	-80(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	cmpl	$0, -44(%rbp)
	je	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-216(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-48(%rbp), %edx
	addl	-36(%rbp), %edx
	movl	-52(%rbp), %r8d
	addl	-40(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-216(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB2_3:                                # %if.end
	leaq	-152(%rbp), %rsi
	movl	$1, %eax
	movl	$2, %ecx
	cmpq	$0, -224(%rbp)
	cmovnel	%ecx, %eax
	movq	-224(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -232(%rbp)
.LBB2_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
                                        #       Child Loop BB2_10 Depth 3
	cmpq	$0, -232(%rbp)
	je	.LBB2_26
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -264(%rbp)
	cmpq	$0, -224(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.14
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)
.LBB2_7:                                # %if.end.16
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$0, -268(%rbp)
.LBB2_8:                                # %for.cond.17
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
	movl	-268(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB2_24
# BB#9:                                 # %for.body.19
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-256(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -288(%rbp)
	movl	$0, -272(%rbp)
.LBB2_10:                               # %for.cond.20
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-272(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB2_20
# BB#11:                                # %for.body.22
                                        #   in Loop: Header=BB2_10 Depth=3
	cmpq	$0, -288(%rbp)
	je	.LBB2_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_10 Depth=3
	movq	-288(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_16
.LBB2_13:                               # %if.then.25
                                        #   in Loop: Header=BB2_10 Depth=3
	leaq	-292(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-84(%rbp), %esi
	movq	-280(%rbp), %rdx
	callq	gimp_image_get_color
	cmpb	$0, -289(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.27
                                        #   in Loop: Header=BB2_10 Depth=3
	leaq	-296(%rbp), %rdx
	leaq	-292(%rbp), %rsi
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
	movzbl	-292(%rbp), %eax
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cltd
	idivl	-68(%rbp)
	imull	-68(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -292(%rbp)
	movzbl	-291(%rbp), %eax
	cltd
	idivl	-68(%rbp)
	imull	-68(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -291(%rbp)
	movzbl	-290(%rbp), %eax
	cltd
	idivl	-68(%rbp)
	imull	-68(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -290(%rbp)
	movq	-240(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%r8, %rdx
	callq	gimp_palette_import_store_colors
	movq	%rax, -240(%rbp)
.LBB2_15:                               # %if.end.47
                                        #   in Loop: Header=BB2_10 Depth=3
	jmp	.LBB2_16
.LBB2_16:                               # %if.end.48
                                        #   in Loop: Header=BB2_10 Depth=3
	movl	-100(%rbp), %eax
	movq	-280(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -280(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.50
                                        #   in Loop: Header=BB2_10 Depth=3
	movq	-224(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-288(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -288(%rbp)
.LBB2_18:                               # %if.end.54
                                        #   in Loop: Header=BB2_10 Depth=3
	jmp	.LBB2_19
.LBB2_19:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=3
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB2_10
.LBB2_20:                               # %for.end
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	-120(%rbp), %eax
	movq	-256(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -256(%rbp)
	cmpq	$0, -264(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.58
                                        #   in Loop: Header=BB2_8 Depth=2
	movq	-224(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-264(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
.LBB2_22:                               # %if.end.62
                                        #   in Loop: Header=BB2_8 Depth=2
	jmp	.LBB2_23
.LBB2_23:                               # %for.inc.63
                                        #   in Loop: Header=BB2_8 Depth=2
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB2_8
.LBB2_24:                               # %for.end.65
                                        #   in Loop: Header=BB2_4 Depth=1
	jmp	.LBB2_25
.LBB2_25:                               # %for.inc.66
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -232(%rbp)
	jmp	.LBB2_4
.LBB2_26:                               # %for.end.68
	movq	-240(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_import_extract, .Lfunc_end2-gimp_palette_import_extract
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_import_make_palette,@function
gimp_palette_import_make_palette:       # @gimp_palette_import_make_palette
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_9
.LBB3_2:                                # %if.end
	movabsq	$gimp_palette_import_create_list, %rsi
	leaq	-56(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movabsq	$gimp_palette_import_sort_colors, %rsi
	movq	-56(%rbp), %rdi
	callq	g_slist_sort
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movslq	-36(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$gimp_palette_import_create_image_palette, %rsi
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_slist_foreach
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-16(%rbp), %rdi
	callq	g_hash_table_destroy
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB3_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %do.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$20, %eax
	movl	%eax, %edi
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rsi
	callq	g_slice_free1
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
	movq	-56(%rbp), %rdi
	callq	g_slist_free
	movq	-48(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB3_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_import_make_palette, .Lfunc_end3-gimp_palette_import_make_palette
	.cfi_endproc

	.globl	gimp_palette_import_from_indexed_image
	.align	16, 0x90
	.type	gimp_palette_import_from_indexed_image,@function
gimp_palette_import_from_indexed_image: # @gimp_palette_import_from_indexed_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp20:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_indexed_image, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_39
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_indexed_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_39
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.39
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB4_27
# BB#26:                                # %if.then.42
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_indexed_image, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_39
.LBB4_28:                               # %if.end.44
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.45
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.46
	cmpq	$0, -40(%rbp)
	je	.LBB4_32
# BB#31:                                # %if.then.48
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_indexed_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB4_39
.LBB4_33:                               # %if.end.50
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.51
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_palette_new
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movl	%eax, -60(%rbp)
	movl	$0, -64(%rbp)
.LBB4_35:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB4_38
# BB#36:                                # %for.body
                                        #   in Loop: Header=BB4_35 Depth=1
	movabsq	$.L.str.8, %rdi
	leaq	-400(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movl	-64(%rbp), %ecx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	leaq	-96(%rbp), %rdi
	movl	$255, %r8d
	imull	$3, -64(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %r9b
	imull	$3, -64(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi
	movb	(%rsi,%rdx), %r10b
	imull	$3, -64(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-56(%rbp), %rsi
	movzbl	%r9b, %ecx
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movzbl	%r10b, %ecx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-424(%rbp), %r11        # 8-byte Reload
	movq	-432(%rbp), %rbx        # 8-byte Reload
	movzbl	(%r11,%rbx), %ecx
	movl	%eax, -436(%rbp)        # 4-byte Spill
	callq	gimp_rgba_set_uchar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-96(%rbp), %rcx
	leaq	-400(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -448(%rbp)        # 8-byte Spill
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB4_35 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_35
.LBB4_38:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB4_39:                               # %return
	movq	-16(%rbp), %rax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_import_from_indexed_image, .Lfunc_end4-gimp_palette_import_from_indexed_image
	.cfi_endproc

	.globl	gimp_palette_import_from_drawable
	.align	16, 0x90
	.type	gimp_palette_import_from_drawable,@function
gimp_palette_import_from_drawable:      # @gimp_palette_import_from_drawable
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	$0, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -148(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -148(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.body.39
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_27
# BB#26:                                # %if.then.44
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_28:                               # %if.end.46
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.47
	jmp	.LBB5_30
.LBB5_30:                               # %do.body.48
	cmpq	$0, -56(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.50
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_33:                               # %if.end.52
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.53
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.54
	cmpl	$1, -60(%rbp)
	jle	.LBB5_37
# BB#36:                                # %if.then.56
	jmp	.LBB5_38
.LBB5_37:                               # %if.else.57
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_38:                               # %if.end.58
	jmp	.LBB5_39
.LBB5_39:                               # %do.end.59
	jmp	.LBB5_40
.LBB5_40:                               # %do.body.60
	cmpl	$0, -64(%rbp)
	jle	.LBB5_42
# BB#41:                                # %if.then.62
	jmp	.LBB5_43
.LBB5_42:                               # %if.else.63
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_drawable, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_43:                               # %if.end.64
	jmp	.LBB5_44
.LBB5_44:                               # %do.end.65
	cmpl	$0, -68(%rbp)
	je	.LBB5_48
# BB#45:                                # %if.then.67
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_47
# BB#46:                                # %if.then.72
	movq	$0, -32(%rbp)
	jmp	.LBB5_50
.LBB5_47:                               # %if.end.73
	jmp	.LBB5_49
.LBB5_48:                               # %if.else.74
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -96(%rbp)
.LBB5_49:                               # %if.end.81
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	-88(%rbp), %r10d
	movl	-92(%rbp), %r11d
	movl	-96(%rbp), %ebx
	movl	-60(%rbp), %r14d
	movl	-64(%rbp), %r15d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movl	%r15d, 32(%rsp)
	callq	gimp_palette_import_extract
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-60(%rbp), %ecx
	callq	gimp_palette_import_make_palette
	movq	%rax, -32(%rbp)
.LBB5_50:                               # %return
	movq	-32(%rbp), %rax
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_import_from_drawable, .Lfunc_end5-gimp_palette_import_from_drawable
	.cfi_endproc

	.globl	gimp_palette_import_from_file
	.align	16, 0x90
	.type	gimp_palette_import_from_file,@function
gimp_palette_import_from_file:          # @gimp_palette_import_from_file
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_file, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_39
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_file, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_39
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.19
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_file, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_39
.LBB6_21:                               # %if.end.21
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.22
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.23
	cmpq	$0, -40(%rbp)
	je	.LBB6_25
# BB#24:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_26
.LBB6_25:                               # %if.then.26
	jmp	.LBB6_27
.LBB6_26:                               # %if.else.27
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_palette_import_from_file, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_39
.LBB6_27:                               # %if.end.28
	jmp	.LBB6_28
.LBB6_28:                               # %do.end.29
	movq	-24(%rbp), %rdi
	callq	gimp_palette_load_detect_format
	decl	%eax
	movl	%eax, %edi
	subl	$5, %eax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB6_35
# BB#40:                                # %do.end.29
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_29:                               # %sw.bb
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_30:                               # %sw.bb.32
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load_act
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_31:                               # %sw.bb.34
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load_riff
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_32:                               # %sw.bb.36
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load_psp
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_33:                               # %sw.bb.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load_aco
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_34:                               # %sw.bb.40
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_palette_load_css
	movq	%rax, -48(%rbp)
	jmp	.LBB6_36
.LBB6_35:                               # %sw.default
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_error_quark
	movabsq	$.L.str.13, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$1, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
.LBB6_36:                               # %sw.epilog
	cmpq	$0, -48(%rbp)
	je	.LBB6_38
# BB#37:                                # %if.then.46
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_object_ref
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movabsq	$g_object_unref, %rsi
	movq	-48(%rbp), %rdi
	callq	g_list_free_full
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_39
.LBB6_38:                               # %if.end.51
	movq	$0, -8(%rbp)
.LBB6_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_palette_import_from_file, .Lfunc_end6-gimp_palette_import_from_file
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_29
	.quad	.LBB6_31
	.quad	.LBB6_30
	.quad	.LBB6_32
	.quad	.LBB6_33
	.quad	.LBB6_34

	.text
	.align	16, 0x90
	.type	gimp_palette_import_store_colors,@function
gimp_palette_import_store_colors:       # @gimp_palette_import_store_colors
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %ecx
	shll	$8, %ecx
	shll	$8, %ecx
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %eax
	shll	$8, %eax
	addl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	addl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$g_direct_hash, %rdi
	movabsq	$g_direct_equal, %rsi
	callq	g_hash_table_new
	movq	%rax, -16(%rbp)
	movl	$0, count_color_entries
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %eax
	movl	%eax, %esi
	callq	g_hash_table_lookup
	movq	%rax, -48(%rbp)
.LBB7_3:                                # %if.end
	cmpq	$0, -48(%rbp)
	jne	.LBB7_7
# BB#4:                                 # %if.then.13
	cmpl	$20000, count_color_entries # imm = 0x4E20
	jle	.LBB7_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_17
.LBB7_6:                                # %if.end.17
	movl	$20, %eax
	movl	%eax, %edi
	movl	count_color_entries, %eax
	addl	$1, %eax
	movl	%eax, count_color_entries
	callq	g_slice_alloc
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 16(%rax)
	movq	-24(%rbp), %rax
	movb	1(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 17(%rax)
	movq	-24(%rbp), %rax
	movb	2(%rax), %cl
	movq	-56(%rbp), %rax
	movb	%cl, 18(%rax)
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_16
.LBB7_7:                                # %if.else.24
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$2147483646, (%rax)     # imm = 0x7FFFFFFE
	jae	.LBB7_9
# BB#8:                                 # %if.then.28
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB7_9:                                # %if.end.31
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movq	-56(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, 4(%rax)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	subl	%edx, %ecx
	movq	-56(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	subl	%edx, %ecx
	movq	-56(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, 12(%rax)
	movq	-56(%rbp), %rax
	cmpl	$2147483392, 4(%rax)    # imm = 0x7FFFFF00
	jbe	.LBB7_11
# BB#10:                                # %if.then.55
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 4(%rsi)
.LBB7_11:                               # %if.end.58
	movq	-56(%rbp), %rax
	cmpl	$2147483392, 8(%rax)    # imm = 0x7FFFFF00
	jbe	.LBB7_13
# BB#12:                                # %if.then.62
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 8(%rsi)
.LBB7_13:                               # %if.end.66
	movq	-56(%rbp), %rax
	cmpl	$2147483392, 12(%rax)   # imm = 0x7FFFFF00
	jbe	.LBB7_15
# BB#14:                                # %if.then.70
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	12(%rax), %edx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%eax, 12(%rsi)
.LBB7_15:                               # %if.end.74
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.75
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_17:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_palette_import_store_colors, .Lfunc_end7-gimp_palette_import_store_colors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_import_create_list,@function
gimp_palette_import_create_list:        # @gimp_palette_import_create_list
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_slist_prepend
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_palette_import_create_list, .Lfunc_end8-gimp_palette_import_create_list
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_import_sort_colors,@function
gimp_palette_import_sort_colors:        # @gimp_palette_import_sort_colors
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-40(%rbp), %rsi
	cmpl	(%rsi), %eax
	jbe	.LBB9_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jae	.LBB9_4
# BB#3:                                 # %if.then.5
	movl	$1, -4(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.end.6
	movl	$0, -4(%rbp)
.LBB9_5:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_palette_import_sort_colors, .Lfunc_end9-gimp_palette_import_sort_colors
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_import_create_image_palette,@function
gimp_palette_import_create_image_palette: # @gimp_palette_import_create_image_palette
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp42:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	-44(%rbp), %eax
	jl	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-88(%rbp), %rdi
	movl	$255, %r8d
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movzbl	16(%rax), %edx
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movq	-40(%rbp), %rcx
	xorl	%r9d, %r9d
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	divl	(%rcx)
	movl	-92(%rbp), %r9d         # 4-byte Reload
	addl	%eax, %r9d
	movb	%r9b, %r10b
	movq	-40(%rbp), %rcx
	movzbl	17(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r9d
	movq	-40(%rbp), %rcx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r9d, %eax
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divl	(%rcx)
	movl	-96(%rbp), %r9d         # 4-byte Reload
	addl	%eax, %r9d
	movb	%r9b, %r11b
	movq	-40(%rbp), %rcx
	movzbl	18(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %r9d
	movq	-40(%rbp), %rcx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	divl	(%rcx)
	movl	-100(%rbp), %r9d        # 4-byte Reload
	addl	%eax, %r9d
	movb	%r9b, %bl
	movzbl	%r10b, %esi
	movzbl	%r11b, %eax
	movl	%eax, %edx
	movzbl	%bl, %ecx
	callq	gimp_rgba_set_uchar
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gimp_palette_add_entry
	movq	-56(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_free
.LBB10_3:                               # %return
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_palette_import_create_image_palette, .Lfunc_end10-gimp_palette_import_create_image_palette
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_palette_import_from_gradient,@object # @__func__.gimp_palette_import_from_gradient
.L__func__.gimp_palette_import_from_gradient:
	.asciz	"gimp_palette_import_from_gradient"
	.size	.L__func__.gimp_palette_import_from_gradient, 34

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GRADIENT (gradient)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"palette_name != NULL"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"n_colors > 1"
	.size	.L.str.4, 13

	.type	.L__func__.gimp_palette_import_from_image,@object # @__func__.gimp_palette_import_from_image
.L__func__.gimp_palette_import_from_image:
	.asciz	"gimp_palette_import_from_image"
	.size	.L__func__.gimp_palette_import_from_image, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"threshold > 0"
	.size	.L.str.6, 14

	.type	.L__func__.gimp_palette_import_from_indexed_image,@object # @__func__.gimp_palette_import_from_indexed_image
.L__func__.gimp_palette_import_from_indexed_image:
	.asciz	"gimp_palette_import_from_indexed_image"
	.size	.L__func__.gimp_palette_import_from_indexed_image, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp_image_base_type (image) == GIMP_INDEXED"
	.size	.L.str.7, 45

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Index %d"
	.size	.L.str.8, 9

	.type	.L__func__.gimp_palette_import_from_drawable,@object # @__func__.gimp_palette_import_from_drawable
.L__func__.gimp_palette_import_from_drawable:
	.asciz	"gimp_palette_import_from_drawable"
	.size	.L__func__.gimp_palette_import_from_drawable, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.10, 45

	.type	.L__func__.gimp_palette_import_from_file,@object # @__func__.gimp_palette_import_from_file
.L__func__.gimp_palette_import_from_file:
	.asciz	"gimp_palette_import_from_file"
	.size	.L__func__.gimp_palette_import_from_file, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"filename != NULL"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unknown type of palette file: %s"
	.size	.L.str.13, 33

	.type	count_color_entries,@object # @count_color_entries
	.local	count_color_entries
	.comm	count_color_entries,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"import-n-colors"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s (occurs %u)"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Untitled"
	.size	.L.str.16, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
