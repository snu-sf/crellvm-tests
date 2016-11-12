	.text
	.file	"gimpdrawable-transform.bc"
	.globl	gimp_drawable_transform_tiles_affine
	.align	16, 0x90
	.type	gimp_drawable_transform_tiles_affine,@function
gimp_drawable_transform_tiles_affine:   # @gimp_drawable_transform_tiles_affine
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
	subq	$584, %rsp              # imm = 0x248
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
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movl	24(%rbp), %r15d
	movl	16(%rbp), %r12d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	%r12d, -92(%rbp)
	movl	%r15d, -96(%rbp)
	movl	%r14d, -100(%rbp)
	movl	%ebx, -104(%rbp)
	movq	%r11, -112(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -384(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -392(%rbp)
	cmpq	$0, -384(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -396(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-384(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-392(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -396(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -396(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$0, -400(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -416(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.29
	movl	$0, -420(%rbp)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.30
	movq	-408(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# BB#21:                                # %land.lhs.true.33
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-416(%rbp), %rax
	jne	.LBB0_23
# BB#22:                                # %if.then.37
	movl	$1, -420(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.38
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -420(%rbp)
.LBB0_24:                               # %if.end.40
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.41
	movl	-420(%rbp), %eax
	movl	%eax, -424(%rbp)
	cmpl	$0, -424(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	cmpq	$0, -72(%rbp)
	je	.LBB0_32
# BB#31:                                # %if.then.50
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_33:                               # %if.end.52
	jmp	.LBB0_34
.LBB0_34:                               # %do.end.53
	jmp	.LBB0_35
.LBB0_35:                               # %do.body.54
	cmpq	$0, -88(%rbp)
	je	.LBB0_37
# BB#36:                                # %if.then.56
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.57
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_38:                               # %if.end.58
	jmp	.LBB0_39
.LBB0_39:                               # %do.end.59
	jmp	.LBB0_40
.LBB0_40:                               # %do.body.60
	cmpq	$0, -112(%rbp)
	je	.LBB0_42
# BB#41:                                # %if.then.62
	jmp	.LBB0_43
.LBB0_42:                               # %if.else.63
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_43:                               # %if.end.64
	jmp	.LBB0_44
.LBB0_44:                               # %do.end.65
	jmp	.LBB0_45
.LBB0_45:                               # %do.body.66
	cmpq	$0, -120(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.68
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.69
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_48:                               # %if.end.70
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.71
	jmp	.LBB0_50
.LBB0_50:                               # %do.body.72
	cmpq	$0, -128(%rbp)
	je	.LBB0_59
# BB#51:                                # %lor.lhs.false
	movq	-128(%rbp), %rax
	movq	%rax, -432(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -440(%rbp)
	cmpq	$0, -432(%rbp)
	jne	.LBB0_53
# BB#52:                                # %if.then.82
	movl	$0, -444(%rbp)
	jmp	.LBB0_58
.LBB0_53:                               # %if.else.83
	movq	-432(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_56
# BB#54:                                # %land.lhs.true.86
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-440(%rbp), %rax
	jne	.LBB0_56
# BB#55:                                # %if.then.90
	movl	$1, -444(%rbp)
	jmp	.LBB0_57
.LBB0_56:                               # %if.else.91
	movq	-432(%rbp), %rdi
	movq	-440(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -444(%rbp)
.LBB0_57:                               # %if.end.93
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.94
	movl	-444(%rbp), %eax
	movl	%eax, -448(%rbp)
	cmpl	$0, -448(%rbp)
	je	.LBB0_60
.LBB0_59:                               # %if.then.97
	jmp	.LBB0_61
.LBB0_60:                               # %if.else.98
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_affine, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB0_69
.LBB0_61:                               # %if.end.99
	jmp	.LBB0_62
.LBB0_62:                               # %do.end.100
	movl	$72, %eax
	movl	%eax, %ecx
	leaq	-344(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-464(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-88(%rbp), %rcx
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	-480(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	cmpl	$1, -92(%rbp)
	jne	.LBB0_64
# BB#63:                                # %if.then.102
	leaq	-344(%rbp), %rdi
	callq	gimp_matrix3_invert
	jmp	.LBB0_65
.LBB0_64:                               # %if.else.103
	leaq	-272(%rbp), %rdi
	callq	gimp_matrix3_invert
.LBB0_65:                               # %if.end.104
	movl	-76(%rbp), %eax
	movl	%eax, -348(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -352(%rbp)
	movl	-348(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	tile_manager_width
	movl	-484(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -356(%rbp)
	movl	-352(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -488(%rbp)        # 4-byte Spill
	callq	tile_manager_height
	movl	-488(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -360(%rbp)
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB0_68
# BB#66:                                # %land.lhs.true.112
	movq	-72(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB0_68
# BB#67:                                # %if.then.115
	movl	$1, -104(%rbp)
.LBB0_68:                               # %if.end.116
	leaq	-344(%rbp), %rdi
	leaq	-364(%rbp), %rax
	leaq	-368(%rbp), %rcx
	leaq	-372(%rbp), %rdx
	leaq	-376(%rbp), %rsi
	movl	-104(%rbp), %r8d
	movl	-348(%rbp), %r9d
	movl	-352(%rbp), %r10d
	movl	-356(%rbp), %r11d
	movl	-360(%rbp), %ebx
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movl	%r8d, %esi
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movq	%rax, (%rsp)
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-512(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-504(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	callq	gimp_transform_resize_boundary
	movl	-372(%rbp), %ecx
	subl	-364(%rbp), %ecx
	movl	-376(%rbp), %edx
	subl	-368(%rbp), %edx
	movq	-72(%rbp), %rdi
	movl	%ecx, -524(%rbp)        # 4-byte Spill
	movl	%edx, -528(%rbp)        # 4-byte Spill
	callq	tile_manager_bpp
	movl	-524(%rbp), %edi        # 4-byte Reload
	movl	-528(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	leaq	-192(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rsi
	movl	-372(%rbp), %r8d
	subl	-364(%rbp), %r8d
	movl	-376(%rbp), %r9d
	subl	-368(%rbp), %r9d
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-56(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-192(%rbp), %r9
	leaq	-344(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-364(%rbp), %r10d
	movl	-368(%rbp), %r11d
	movl	-372(%rbp), %ebx
	movl	-376(%rbp), %r12d
	movl	-96(%rbp), %r13d
	movl	-100(%rbp), %r14d
	movq	-128(%rbp), %r15
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r12d, 24(%rsp)
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%r14d, 48(%rsp)
	movq	%r15, 56(%rsp)
	callq	gimp_transform_region
	movl	-364(%rbp), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-368(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-200(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_69:                               # %return
	movq	-48(%rbp), %rax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_transform_tiles_affine, .Lfunc_end0-gimp_drawable_transform_tiles_affine
	.cfi_endproc

	.globl	gimp_drawable_transform_tiles_flip
	.align	16, 0x90
	.type	gimp_drawable_transform_tiles_flip,@function
gimp_drawable_transform_tiles_flip:     # @gimp_drawable_transform_tiles_flip
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
	subq	$504, %rsp              # imm = 0x1F8
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
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movsd	%xmm0, -96(%rbp)
	movl	%r11d, -100(%rbp)
	movq	%r10, -112(%rbp)
	movq	%rax, -120(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -320(%rbp)
	cmpq	$0, -312(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -324(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-312(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -324(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-312(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -324(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-324(%rbp), %eax
	movl	%eax, -328(%rbp)
	cmpl	$0, -328(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_flip, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_71
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.16
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_flip, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_71
.LBB1_16:                               # %if.end.18
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.19
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.20
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.29
	movl	$0, -348(%rbp)
	jmp	.LBB1_25
.LBB1_20:                               # %if.else.30
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.33
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB1_23
# BB#22:                                # %if.then.37
	movl	$1, -348(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.38
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB1_24:                               # %if.end.40
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.41
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.44
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_flip, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_71
.LBB1_28:                               # %if.end.46
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.47
	jmp	.LBB1_30
.LBB1_30:                               # %do.body.48
	cmpq	$0, -72(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.50
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_flip, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB1_71
.LBB1_33:                               # %if.end.52
	jmp	.LBB1_34
.LBB1_34:                               # %do.end.53
	movq	-56(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -128(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -268(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -272(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -276(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -280(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -284(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -296(%rbp)
	movl	-280(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -420(%rbp)        # 4-byte Spill
	je	.LBB1_35
	jmp	.LBB1_72
.LBB1_72:                               # %do.end.53
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	je	.LBB1_36
	jmp	.LBB1_73
.LBB1_73:                               # %do.end.53
	movl	-420(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -428(%rbp)        # 4-byte Spill
	je	.LBB1_37
	jmp	.LBB1_39
.LBB1_35:                               # %sw.bb
	cvtsi2sdl	-268(%rbp), %xmm0
	cvtsi2sdl	-276(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	-96(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-96(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -288(%rbp)
	jmp	.LBB1_39
.LBB1_36:                               # %sw.bb.65
	cvtsi2sdl	-272(%rbp), %xmm0
	cvtsi2sdl	-280(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	-96(%rbp), %xmm0
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	addsd	-96(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -292(%rbp)
	jmp	.LBB1_39
.LBB1_37:                               # %sw.bb.74
	jmp	.LBB1_38
.LBB1_38:                               # %do.body.75
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movl	$208, %r8d
	movabsq	$.L__func__.gimp_drawable_transform_tiles_flip, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -48(%rbp)
	jmp	.LBB1_71
.LBB1_39:                               # %sw.epilog
	movl	-296(%rbp), %edi
	movl	-300(%rbp), %esi
	movl	-284(%rbp), %edx
	callq	tile_manager_new
	movq	%rax, -136(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB1_54
# BB#40:                                # %land.lhs.true.79
	movl	-288(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jne	.LBB1_42
# BB#41:                                # %lor.lhs.false
	movl	-292(%rbp), %eax
	cmpl	-272(%rbp), %eax
	je	.LBB1_54
.LBB1_42:                               # %if.then.84
	movl	-268(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-272(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-128(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-356(%rbp), %rcx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-56(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -392(%rbp)
	cmpq	$0, -384(%rbp)
	jne	.LBB1_44
# BB#43:                                # %if.then.99
	movl	$0, -396(%rbp)
	jmp	.LBB1_49
.LBB1_44:                               # %if.else.100
	movq	-384(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_47
# BB#45:                                # %land.lhs.true.103
	movq	-384(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-392(%rbp), %rax
	jne	.LBB1_47
# BB#46:                                # %if.then.108
	movl	$1, -396(%rbp)
	jmp	.LBB1_48
.LBB1_47:                               # %if.else.109
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -396(%rbp)
.LBB1_48:                               # %if.end.111
	jmp	.LBB1_49
.LBB1_49:                               # %if.end.112
	movl	-396(%rbp), %eax
	movl	%eax, -400(%rbp)
	cmpl	$0, -400(%rbp)
	je	.LBB1_51
# BB#50:                                # %if.then.115
	movb	$0, -356(%rbp)
.LBB1_51:                               # %if.end.116
	leaq	-264(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-136(%rbp), %rsi
	movl	-296(%rbp), %r8d
	movl	-300(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-264(%rbp), %rdi
	leaq	-356(%rbp), %rsi
	callq	color_region
	leaq	-360(%rbp), %rsi
	leaq	-364(%rbp), %rdi
	leaq	-368(%rbp), %r10
	leaq	-372(%rbp), %r11
	movl	-268(%rbp), %eax
	movl	-272(%rbp), %ecx
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %r8d
	movl	-288(%rbp), %r9d
	movl	-292(%rbp), %ebx
	movl	-296(%rbp), %r14d
	movl	-300(%rbp), %r15d
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -472(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%ebx, %r9d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	-472(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-464(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB1_53
# BB#52:                                # %if.then.120
	movl	-360(%rbp), %eax
	subl	-268(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	%eax, -268(%rbp)
	movl	-364(%rbp), %eax
	subl	-272(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	%eax, -272(%rbp)
.LBB1_53:                               # %if.end.123
	movl	-368(%rbp), %eax
	movl	%eax, -296(%rbp)
	movl	%eax, -276(%rbp)
	movl	-372(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	%eax, -280(%rbp)
	jmp	.LBB1_55
.LBB1_54:                               # %if.else.124
	movl	-288(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-292(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -268(%rbp)
	movl	$0, -272(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -292(%rbp)
.LBB1_55:                               # %if.end.125
	cmpl	$0, -296(%rbp)
	jne	.LBB1_58
# BB#56:                                # %land.lhs.true.128
	cmpl	$0, -300(%rbp)
	jne	.LBB1_58
# BB#57:                                # %if.then.131
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_71
.LBB1_58:                               # %if.end.132
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	je	.LBB1_59
	jmp	.LBB1_74
.LBB1_74:                               # %if.end.132
	movl	-476(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	je	.LBB1_64
	jmp	.LBB1_75
.LBB1_75:                               # %if.end.132
	movl	-476(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB1_69
	jmp	.LBB1_70
.LBB1_59:                               # %sw.bb.133
	movl	$0, -304(%rbp)
.LBB1_60:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-304(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB1_63
# BB#61:                                # %for.body
                                        #   in Loop: Header=BB1_60 Depth=1
	leaq	-200(%rbp), %rdi
	movl	$1, %r8d
	xorl	%eax, %eax
	movq	-72(%rbp), %rsi
	movl	-304(%rbp), %ecx
	addl	-268(%rbp), %ecx
	movl	-272(%rbp), %edx
	movl	-280(%rbp), %r9d
	movl	%edx, -488(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-488(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	%eax, -492(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-264(%rbp), %rdi
	movl	$1, %r8d
	movq	-136(%rbp), %rsi
	movl	-288(%rbp), %eax
	addl	-296(%rbp), %eax
	subl	-304(%rbp), %eax
	subl	$1, %eax
	movl	-292(%rbp), %ecx
	movl	-300(%rbp), %r9d
	movl	%eax, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-200(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	copy_region
# BB#62:                                # %for.inc
                                        #   in Loop: Header=BB1_60 Depth=1
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	.LBB1_60
.LBB1_63:                               # %for.end
	jmp	.LBB1_70
.LBB1_64:                               # %sw.bb.140
	movl	$0, -304(%rbp)
.LBB1_65:                               # %for.cond.141
                                        # =>This Inner Loop Header: Depth=1
	movl	-304(%rbp), %eax
	cmpl	-280(%rbp), %eax
	jge	.LBB1_68
# BB#66:                                # %for.body.144
                                        #   in Loop: Header=BB1_65 Depth=1
	leaq	-200(%rbp), %rdi
	movl	$1, %r9d
	xorl	%eax, %eax
	movq	-72(%rbp), %rsi
	movl	-268(%rbp), %edx
	movl	-304(%rbp), %ecx
	addl	-272(%rbp), %ecx
	movl	-276(%rbp), %r8d
	movl	$0, (%rsp)
	movl	%eax, -496(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	leaq	-264(%rbp), %rdi
	movl	$1, %r9d
	movq	-136(%rbp), %rsi
	movl	-288(%rbp), %edx
	movl	-292(%rbp), %eax
	addl	-300(%rbp), %eax
	subl	-304(%rbp), %eax
	subl	$1, %eax
	movl	-296(%rbp), %r8d
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-200(%rbp), %rdi
	leaq	-264(%rbp), %rsi
	callq	copy_region
# BB#67:                                # %for.inc.149
                                        #   in Loop: Header=BB1_65 Depth=1
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	.LBB1_65
.LBB1_68:                               # %for.end.151
	jmp	.LBB1_70
.LBB1_69:                               # %sw.bb.152
	jmp	.LBB1_70
.LBB1_70:                               # %sw.epilog.153
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB1_71:                               # %return
	movq	-48(%rbp), %rax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_transform_tiles_flip, .Lfunc_end1-gimp_drawable_transform_tiles_flip
	.cfi_endproc

	.globl	gimp_drawable_transform_tiles_rotate
	.align	16, 0x90
	.type	gimp_drawable_transform_tiles_rotate,@function
gimp_drawable_transform_tiles_rotate:   # @gimp_drawable_transform_tiles_rotate
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$568, %rsp              # imm = 0x238
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movl	16(%rbp), %r11d
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm1, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -280(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -344(%rbp)
	cmpq	$0, -336(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -348(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-336(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-344(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -348(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-336(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -348(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-348(%rbp), %eax
	movl	%eax, -352(%rbp)
	cmpl	$0, -352(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB2_106
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_15
# BB#14:                                # %if.then.16
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB2_106
.LBB2_16:                               # %if.end.18
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.19
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.20
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -368(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB2_20
# BB#19:                                # %if.then.29
	movl	$0, -372(%rbp)
	jmp	.LBB2_25
.LBB2_20:                               # %if.else.30
	movq	-360(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_23
# BB#21:                                # %land.lhs.true.33
	movq	-360(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-368(%rbp), %rax
	jne	.LBB2_23
# BB#22:                                # %if.then.37
	movl	$1, -372(%rbp)
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.38
	movq	-360(%rbp), %rdi
	movq	-368(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -372(%rbp)
.LBB2_24:                               # %if.end.40
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.41
	movl	-372(%rbp), %eax
	movl	%eax, -376(%rbp)
	cmpl	$0, -376(%rbp)
	je	.LBB2_27
# BB#26:                                # %if.then.44
	jmp	.LBB2_28
.LBB2_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB2_106
.LBB2_28:                               # %if.end.46
	jmp	.LBB2_29
.LBB2_29:                               # %do.end.47
	jmp	.LBB2_30
.LBB2_30:                               # %do.body.48
	cmpq	$0, -72(%rbp)
	je	.LBB2_32
# BB#31:                                # %if.then.50
	jmp	.LBB2_33
.LBB2_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB2_106
.LBB2_33:                               # %if.end.52
	jmp	.LBB2_34
.LBB2_34:                               # %do.end.53
	movq	-56(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -136(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, -284(%rbp)
	movl	-80(%rbp), %ecx
	movl	%ecx, -288(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -292(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_height
	movl	%eax, -296(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_bpp
	movl	%eax, -300(%rbp)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -476(%rbp)        # 4-byte Spill
	je	.LBB2_35
	jmp	.LBB2_107
.LBB2_107:                              # %do.end.53
	movl	-476(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -480(%rbp)        # 4-byte Spill
	je	.LBB2_36
	jmp	.LBB2_108
.LBB2_108:                              # %do.end.53
	movl	-476(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	je	.LBB2_37
	jmp	.LBB2_38
.LBB2_35:                               # %sw.bb
	leaq	-304(%rbp), %rcx
	leaq	-308(%rbp), %r8
	movl	-284(%rbp), %edi
	movl	-288(%rbp), %eax
	addl	-296(%rbp), %eax
	movl	-84(%rbp), %edx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, %esi
	callq	gimp_drawable_transform_rotate_point
	movl	-296(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB2_40
.LBB2_36:                               # %sw.bb.60
	leaq	-304(%rbp), %rcx
	leaq	-308(%rbp), %r8
	movl	-284(%rbp), %eax
	addl	-292(%rbp), %eax
	movl	-288(%rbp), %edx
	addl	-296(%rbp), %edx
	movl	-84(%rbp), %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, %edi
	movl	%esi, -488(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-488(%rbp), %edx        # 4-byte Reload
	callq	gimp_drawable_transform_rotate_point
	movl	-292(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-296(%rbp), %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB2_40
.LBB2_37:                               # %sw.bb.63
	leaq	-304(%rbp), %rcx
	leaq	-308(%rbp), %r8
	movl	-284(%rbp), %eax
	addl	-292(%rbp), %eax
	movl	-288(%rbp), %esi
	movl	-84(%rbp), %edx
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, %edi
	callq	gimp_drawable_transform_rotate_point
	movl	-296(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB2_40
.LBB2_38:                               # %sw.default
	jmp	.LBB2_39
.LBB2_39:                               # %do.body.65
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movl	$396, %r8d              # imm = 0x18C
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -48(%rbp)
	jmp	.LBB2_106
.LBB2_40:                               # %sw.epilog
	cmpl	$0, -108(%rbp)
	je	.LBB2_62
# BB#41:                                # %land.lhs.true.68
	movl	-304(%rbp), %eax
	cmpl	-284(%rbp), %eax
	jne	.LBB2_45
# BB#42:                                # %lor.lhs.false
	movl	-308(%rbp), %eax
	cmpl	-288(%rbp), %eax
	jne	.LBB2_45
# BB#43:                                # %lor.lhs.false.71
	movl	-312(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jne	.LBB2_45
# BB#44:                                # %lor.lhs.false.73
	movl	-316(%rbp), %eax
	cmpl	-296(%rbp), %eax
	je	.LBB2_62
.LBB2_45:                               # %if.then.75
	movl	-292(%rbp), %edi
	movl	-296(%rbp), %esi
	movl	-300(%rbp), %edx
	callq	tile_manager_new
	movq	%rax, -144(%rbp)
	movl	-284(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	movl	-288(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movq	-136(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type
	leaq	-380(%rbp), %rcx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_image_get_background
	movq	-56(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -416(%rbp)
	cmpq	$0, -408(%rbp)
	jne	.LBB2_47
# BB#46:                                # %if.then.91
	movl	$0, -420(%rbp)
	jmp	.LBB2_52
.LBB2_47:                               # %if.else.92
	movq	-408(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_50
# BB#48:                                # %land.lhs.true.95
	movq	-408(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-416(%rbp), %rax
	jne	.LBB2_50
# BB#49:                                # %if.then.99
	movl	$1, -420(%rbp)
	jmp	.LBB2_51
.LBB2_50:                               # %if.else.100
	movq	-408(%rbp), %rdi
	movq	-416(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -420(%rbp)
.LBB2_51:                               # %if.end.102
	jmp	.LBB2_52
.LBB2_52:                               # %if.end.103
	movl	-420(%rbp), %eax
	movl	%eax, -424(%rbp)
	cmpl	$0, -424(%rbp)
	je	.LBB2_54
# BB#53:                                # %if.then.106
	movb	$0, -380(%rbp)
.LBB2_54:                               # %if.end.107
	leaq	-272(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-144(%rbp), %rsi
	movl	-292(%rbp), %r8d
	movl	-296(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-272(%rbp), %rdi
	leaq	-380(%rbp), %rsi
	callq	color_region
	leaq	-384(%rbp), %rsi
	leaq	-388(%rbp), %rdi
	leaq	-392(%rbp), %r10
	leaq	-396(%rbp), %r11
	movl	-284(%rbp), %eax
	movl	-288(%rbp), %ecx
	movl	-292(%rbp), %edx
	movl	-296(%rbp), %r8d
	movl	-304(%rbp), %r9d
	movl	-308(%rbp), %ebx
	movl	-312(%rbp), %r14d
	movl	-316(%rbp), %r15d
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%ebx, %r9d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movq	-528(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-520(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB2_60
# BB#55:                                # %if.then.111
	movl	-284(%rbp), %eax
	movl	%eax, -428(%rbp)
	movl	-288(%rbp), %eax
	movl	%eax, -432(%rbp)
	movl	-384(%rbp), %eax
	movl	-284(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -304(%rbp)
	movl	-388(%rbp), %eax
	movl	-288(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -308(%rbp)
	movl	-84(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -532(%rbp)        # 4-byte Spill
	je	.LBB2_56
	jmp	.LBB2_109
.LBB2_109:                              # %if.then.111
	movl	-532(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	je	.LBB2_57
	jmp	.LBB2_110
.LBB2_110:                              # %if.then.111
	movl	-532(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -540(%rbp)        # 4-byte Spill
	je	.LBB2_58
	jmp	.LBB2_59
.LBB2_56:                               # %sw.bb.115
	movl	$2, %edx
	leaq	-284(%rbp), %rcx
	leaq	-288(%rbp), %r8
	movl	-384(%rbp), %eax
	addl	-392(%rbp), %eax
	movl	-388(%rbp), %esi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, %edi
	callq	gimp_drawable_transform_rotate_point
	movl	-428(%rbp), %eax
	movl	-284(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -284(%rbp)
	movl	-432(%rbp), %eax
	movl	-288(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -288(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -296(%rbp)
	jmp	.LBB2_59
.LBB2_57:                               # %sw.bb.119
	movl	-384(%rbp), %eax
	subl	-284(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-388(%rbp), %eax
	subl	-288(%rbp), %eax
	movl	%eax, -288(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -296(%rbp)
	jmp	.LBB2_59
.LBB2_58:                               # %sw.bb.122
	xorl	%edx, %edx
	leaq	-284(%rbp), %rcx
	leaq	-288(%rbp), %r8
	movl	-384(%rbp), %edi
	movl	-388(%rbp), %eax
	addl	-396(%rbp), %eax
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, %esi
	callq	gimp_drawable_transform_rotate_point
	movl	-428(%rbp), %eax
	movl	-284(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -284(%rbp)
	movl	-432(%rbp), %eax
	movl	-288(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -288(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -292(%rbp)
	movl	-392(%rbp), %eax
	movl	%eax, -296(%rbp)
.LBB2_59:                               # %sw.epilog.126
	movl	-392(%rbp), %eax
	movl	%eax, -312(%rbp)
	movl	-396(%rbp), %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB2_61
.LBB2_60:                               # %if.else.127
	movl	$0, -312(%rbp)
	movl	$0, -316(%rbp)
.LBB2_61:                               # %if.end.128
	jmp	.LBB2_63
.LBB2_62:                               # %if.else.129
	movl	-312(%rbp), %edi
	movl	-316(%rbp), %esi
	movl	-300(%rbp), %edx
	callq	tile_manager_new
	movq	%rax, -144(%rbp)
	movl	-304(%rbp), %edx
	movq	-120(%rbp), %rax
	movl	%edx, (%rax)
	movl	-308(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, (%rax)
	movl	$0, -284(%rbp)
	movl	$0, -288(%rbp)
	movl	$0, -304(%rbp)
	movl	$0, -308(%rbp)
.LBB2_63:                               # %if.end.131
	cmpl	$1, -312(%rbp)
	jl	.LBB2_65
# BB#64:                                # %lor.lhs.false.133
	cmpl	$1, -316(%rbp)
	jge	.LBB2_66
.LBB2_65:                               # %if.then.135
	movq	-144(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_106
.LBB2_66:                               # %if.end.136
	movq	-72(%rbp), %rsi
	movl	-284(%rbp), %edx
	movl	-288(%rbp), %ecx
	movl	-292(%rbp), %r8d
	movl	-296(%rbp), %r9d
	movq	%rsp, %rax
	movl	$0, (%rax)
	leaq	-208(%rbp), %rdi
	callq	pixel_region_init
	movq	-144(%rbp), %rsi
	movl	-304(%rbp), %edx
	movl	-308(%rbp), %ecx
	movl	-312(%rbp), %r8d
	movl	-316(%rbp), %r9d
	movq	%rsp, %rax
	movl	$1, (%rax)
	leaq	-272(%rbp), %rdi
	callq	pixel_region_init
	movl	-84(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -544(%rbp)        # 4-byte Spill
	je	.LBB2_67
	jmp	.LBB2_111
.LBB2_111:                              # %if.end.136
	movl	-544(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	je	.LBB2_77
	jmp	.LBB2_112
.LBB2_112:                              # %if.end.136
	movl	-544(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -552(%rbp)        # 4-byte Spill
	je	.LBB2_95
	jmp	.LBB2_105
.LBB2_67:                               # %sw.bb.137
	jmp	.LBB2_68
.LBB2_68:                               # %do.body.138
	movl	-316(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jne	.LBB2_70
# BB#69:                                # %if.then.140
	jmp	.LBB2_71
.LBB2_70:                               # %if.else.141
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$506, %edx              # imm = 0x1FA
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB2_71:                               # %if.end.142
	jmp	.LBB2_72
.LBB2_72:                               # %do.end.143
	movl	$1, %eax
	movl	%eax, %esi
	movl	-316(%rbp), %eax
	imull	-300(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -280(%rbp)
	movl	$0, -320(%rbp)
.LBB2_73:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-320(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB2_76
# BB#74:                                # %for.body
                                        #   in Loop: Header=BB2_73 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-284(%rbp), %esi
	movl	-288(%rbp), %eax
	addl	-296(%rbp), %eax
	subl	$1, %eax
	subl	-320(%rbp), %eax
	movl	-292(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_get_row
	leaq	-272(%rbp), %rdi
	movl	-304(%rbp), %eax
	addl	-320(%rbp), %eax
	movl	-308(%rbp), %edx
	movl	-316(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %esi
	callq	pixel_region_set_col
# BB#75:                                # %for.inc
                                        #   in Loop: Header=BB2_73 Depth=1
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB2_73
.LBB2_76:                               # %for.end
	jmp	.LBB2_105
.LBB2_77:                               # %sw.bb.151
	jmp	.LBB2_78
.LBB2_78:                               # %do.body.152
	movl	-312(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jne	.LBB2_80
# BB#79:                                # %if.then.155
	jmp	.LBB2_81
.LBB2_80:                               # %if.else.156
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$518, %edx              # imm = 0x206
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rcx
	movabsq	$.L.str.12, %r8
	callq	g_assertion_message_expr
.LBB2_81:                               # %if.end.157
	jmp	.LBB2_82
.LBB2_82:                               # %do.end.158
	movl	$1, %eax
	movl	%eax, %esi
	movl	-312(%rbp), %eax
	imull	-300(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -280(%rbp)
	movl	$0, -320(%rbp)
.LBB2_83:                               # %for.cond.162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
                                        #       Child Loop BB2_87 Depth 3
	movl	-320(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jge	.LBB2_94
# BB#84:                                # %for.body.165
                                        #   in Loop: Header=BB2_83 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-284(%rbp), %esi
	movl	-288(%rbp), %eax
	addl	-296(%rbp), %eax
	subl	$1, %eax
	subl	-320(%rbp), %eax
	movl	-292(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_get_row
	movl	$0, -324(%rbp)
.LBB2_85:                               # %for.cond.169
                                        #   Parent Loop BB2_83 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_87 Depth 3
	movl	$2, %eax
	movl	-324(%rbp), %ecx
	movl	-292(%rbp), %edx
	movl	%eax, -556(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-556(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB2_92
# BB#86:                                # %for.body.172
                                        #   in Loop: Header=BB2_85 Depth=2
	movq	-280(%rbp), %rax
	movl	-324(%rbp), %ecx
	imull	-300(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -440(%rbp)
	movq	-280(%rbp), %rax
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	subl	-324(%rbp), %ecx
	imull	-300(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -448(%rbp)
	movl	$0, -328(%rbp)
.LBB2_87:                               # %for.cond.181
                                        #   Parent Loop BB2_83 Depth=1
                                        #     Parent Loop BB2_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-328(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jge	.LBB2_90
# BB#88:                                # %for.body.184
                                        #   in Loop: Header=BB2_87 Depth=3
	movslq	-328(%rbp), %rax
	movq	-440(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -449(%rbp)
	movslq	-328(%rbp), %rax
	movq	-448(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-328(%rbp), %rax
	movq	-440(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movb	-449(%rbp), %dl
	movslq	-328(%rbp), %rax
	movq	-448(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#89:                                # %for.inc.194
                                        #   in Loop: Header=BB2_87 Depth=3
	movl	-328(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -328(%rbp)
	jmp	.LBB2_87
.LBB2_90:                               # %for.end.196
                                        #   in Loop: Header=BB2_85 Depth=2
	jmp	.LBB2_91
.LBB2_91:                               # %for.inc.197
                                        #   in Loop: Header=BB2_85 Depth=2
	movl	-324(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -324(%rbp)
	jmp	.LBB2_85
.LBB2_92:                               # %for.end.199
                                        #   in Loop: Header=BB2_83 Depth=1
	leaq	-272(%rbp), %rdi
	movl	-304(%rbp), %esi
	movl	-308(%rbp), %eax
	addl	-320(%rbp), %eax
	movl	-312(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_set_row
# BB#93:                                # %for.inc.201
                                        #   in Loop: Header=BB2_83 Depth=1
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB2_83
.LBB2_94:                               # %for.end.203
	jmp	.LBB2_105
.LBB2_95:                               # %sw.bb.204
	jmp	.LBB2_96
.LBB2_96:                               # %do.body.205
	movl	-312(%rbp), %eax
	cmpl	-296(%rbp), %eax
	jne	.LBB2_98
# BB#97:                                # %if.then.208
	jmp	.LBB2_99
.LBB2_98:                               # %if.else.209
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$544, %edx              # imm = 0x220
	movabsq	$.L__func__.gimp_drawable_transform_tiles_rotate, %rcx
	movabsq	$.L.str.13, %r8
	callq	g_assertion_message_expr
.LBB2_99:                               # %if.end.210
	jmp	.LBB2_100
.LBB2_100:                              # %do.end.211
	movl	$1, %eax
	movl	%eax, %esi
	movl	-312(%rbp), %eax
	imull	-300(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -280(%rbp)
	movl	$0, -320(%rbp)
.LBB2_101:                              # %for.cond.215
                                        # =>This Inner Loop Header: Depth=1
	movl	-320(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB2_104
# BB#102:                               # %for.body.218
                                        #   in Loop: Header=BB2_101 Depth=1
	leaq	-208(%rbp), %rdi
	movl	$1, %r9d
	movl	-284(%rbp), %eax
	addl	-292(%rbp), %eax
	subl	$1, %eax
	subl	-320(%rbp), %eax
	movl	-288(%rbp), %edx
	movl	-296(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %esi
	callq	pixel_region_get_col
	leaq	-272(%rbp), %rdi
	movl	-304(%rbp), %esi
	movl	-308(%rbp), %eax
	addl	-320(%rbp), %eax
	movl	-312(%rbp), %ecx
	movq	-280(%rbp), %r8
	movl	%eax, %edx
	callq	pixel_region_set_row
# BB#103:                               # %for.inc.223
                                        #   in Loop: Header=BB2_101 Depth=1
	movl	-320(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -320(%rbp)
	jmp	.LBB2_101
.LBB2_104:                              # %for.end.225
	jmp	.LBB2_105
.LBB2_105:                              # %sw.epilog.226
	movq	-280(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	movq	%rdi, -48(%rbp)
.LBB2_106:                              # %return
	movq	-48(%rbp), %rax
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_transform_tiles_rotate, .Lfunc_end2-gimp_drawable_transform_tiles_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_transform_rotate_point,@function
gimp_drawable_transform_rotate_point:   # @gimp_drawable_transform_rotate_point
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_rotate_point, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_rotate_point, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_16
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB3_11
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.6
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB3_12
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.6
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB3_13
	jmp	.LBB3_14
.LBB3_11:                               # %sw.bb
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	-24(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_16
.LBB3_12:                               # %sw.bb.13
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	subsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	subsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_16
.LBB3_13:                               # %sw.bb.24
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	subsd	-32(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	addsd	-24(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_16
.LBB3_14:                               # %sw.default
	jmp	.LBB3_15
.LBB3_15:                               # %do.body.35
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$325, %edx              # imm = 0x145
	movabsq	$.L__func__.gimp_drawable_transform_rotate_point, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB3_16:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_transform_rotate_point, .Lfunc_end3-gimp_drawable_transform_rotate_point
	.cfi_endproc

	.globl	gimp_drawable_transform_affine
	.align	16, 0x90
	.type	gimp_drawable_transform_affine,@function
gimp_drawable_transform_affine:         # @gimp_drawable_transform_affine
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp30:
	.cfi_offset %rbx, -48
.Ltmp31:
	.cfi_offset %r12, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r10d, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	$0, -128(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_affine, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_73
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.16
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_affine, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_73
.LBB4_16:                               # %if.end.18
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.19
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.20
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB4_20
# BB#19:                                # %if.then.29
	movl	$0, -172(%rbp)
	jmp	.LBB4_25
.LBB4_20:                               # %if.else.30
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_23
# BB#21:                                # %land.lhs.true.33
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB4_23
# BB#22:                                # %if.then.37
	movl	$1, -172(%rbp)
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.38
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB4_24:                               # %if.end.40
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.41
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB4_27
# BB#26:                                # %if.then.44
	jmp	.LBB4_28
.LBB4_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_affine, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_73
.LBB4_28:                               # %if.end.46
	jmp	.LBB4_29
.LBB4_29:                               # %do.end.47
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.48
	cmpq	$0, -64(%rbp)
	je	.LBB4_32
# BB#31:                                # %if.then.50
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_affine, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_73
.LBB4_33:                               # %if.end.52
	jmp	.LBB4_34
.LBB4_34:                               # %do.end.53
	jmp	.LBB4_35
.LBB4_35:                               # %do.body.54
	cmpq	$0, -88(%rbp)
	je	.LBB4_44
# BB#36:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB4_38
# BB#37:                                # %if.then.64
	movl	$0, -196(%rbp)
	jmp	.LBB4_43
.LBB4_38:                               # %if.else.65
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_41
# BB#39:                                # %land.lhs.true.68
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB4_41
# BB#40:                                # %if.then.72
	movl	$1, -196(%rbp)
	jmp	.LBB4_42
.LBB4_41:                               # %if.else.73
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB4_42:                               # %if.end.75
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.76
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB4_45
.LBB4_44:                               # %if.then.79
	jmp	.LBB4_46
.LBB4_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_affine, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB4_73
.LBB4_46:                               # %if.end.81
	jmp	.LBB4_47
.LBB4_47:                               # %do.end.82
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.14, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-116(%rbp), %r8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_drawable_transform_cut
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB4_72
# BB#48:                                # %if.then.90
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB4_50
# BB#49:                                # %if.then.102
	movl	$0, -236(%rbp)
	jmp	.LBB4_55
.LBB4_50:                               # %if.else.103
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_53
# BB#51:                                # %land.lhs.true.106
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB4_53
# BB#52:                                # %if.then.110
	movl	$1, -236(%rbp)
	jmp	.LBB4_54
.LBB4_53:                               # %if.else.111
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB4_54:                               # %if.end.113
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.114
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB4_58
# BB#56:                                # %land.lhs.true.117
	movq	-104(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB4_58
# BB#57:                                # %if.then.120
	movl	$1, -80(%rbp)
.LBB4_58:                               # %if.end.121
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -256(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.LBB4_60
# BB#59:                                # %if.then.130
	movl	$0, -260(%rbp)
	jmp	.LBB4_65
.LBB4_60:                               # %if.else.131
	movq	-248(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_63
# BB#61:                                # %land.lhs.true.134
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-256(%rbp), %rax
	jne	.LBB4_63
# BB#62:                                # %if.then.138
	movl	$1, -260(%rbp)
	jmp	.LBB4_64
.LBB4_63:                               # %if.else.139
	movq	-248(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -260(%rbp)
.LBB4_64:                               # %if.end.141
	jmp	.LBB4_65
.LBB4_65:                               # %if.end.142
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB4_69
# BB#66:                                # %land.lhs.true.145
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB4_69
# BB#67:                                # %land.lhs.true.150
	movq	-96(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB4_69
# BB#68:                                # %if.then.154
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-80(%rbp), %r10d
	movq	-88(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB4_69:                               # %if.end.161
	leaq	-212(%rbp), %rax
	leaq	-216(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movq	-64(%rbp), %r10
	movl	-68(%rbp), %r11d
	movl	-72(%rbp), %ebx
	movl	-76(%rbp), %r14d
	movl	-80(%rbp), %r15d
	movq	-88(%rbp), %r12
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movq	%r10, %r9
	movl	%r11d, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_drawable_transform_tiles_affine
	movq	%rax, -208(%rbp)
	movq	-104(%rbp), %rdi
	callq	tile_manager_unref
	cmpq	$0, -208(%rbp)
	je	.LBB4_71
# BB#70:                                # %if.then.164
	movq	-48(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-212(%rbp), %edx
	movl	-216(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	gimp_drawable_transform_paste
	movq	%rax, -128(%rbp)
	movq	-208(%rbp), %rdi
	callq	tile_manager_unref
.LBB4_71:                               # %if.end.166
	jmp	.LBB4_72
.LBB4_72:                               # %if.end.167
	movq	-96(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-128(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB4_73:                               # %return
	movq	-40(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_transform_affine, .Lfunc_end4-gimp_drawable_transform_affine
	.cfi_endproc

	.globl	gimp_drawable_transform_cut
	.align	16, 0x90
	.type	gimp_drawable_transform_cut,@function
gimp_drawable_transform_cut:            # @gimp_drawable_transform_cut
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
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB5_15
# BB#14:                                # %if.then.16
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_16:                               # %if.end.18
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.19
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.20
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_20
# BB#19:                                # %if.then.29
	movl	$0, -124(%rbp)
	jmp	.LBB5_25
.LBB5_20:                               # %if.else.30
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_23
# BB#21:                                # %land.lhs.true.33
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_23
# BB#22:                                # %if.then.37
	movl	$1, -124(%rbp)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.38
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_24:                               # %if.end.40
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.41
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_27
# BB#26:                                # %if.then.44
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_28:                               # %if.end.46
	jmp	.LBB5_29
.LBB5_29:                               # %do.end.47
	jmp	.LBB5_30
.LBB5_30:                               # %do.body.48
	cmpq	$0, -48(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.50
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.51
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_33:                               # %if.end.52
	jmp	.LBB5_34
.LBB5_34:                               # %do.end.53
	jmp	.LBB5_35
.LBB5_35:                               # %do.body.54
	cmpq	$0, -56(%rbp)
	je	.LBB5_37
# BB#36:                                # %if.then.56
	jmp	.LBB5_38
.LBB5_37:                               # %if.else.57
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_38:                               # %if.end.58
	jmp	.LBB5_39
.LBB5_39:                               # %do.end.59
	jmp	.LBB5_40
.LBB5_40:                               # %do.body.60
	cmpq	$0, -64(%rbp)
	je	.LBB5_42
# BB#41:                                # %if.then.62
	jmp	.LBB5_43
.LBB5_42:                               # %if.else.63
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_cut, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB5_58
.LBB5_43:                               # %if.end.64
	jmp	.LBB5_44
.LBB5_44:                               # %do.end.65
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	jne	.LBB5_49
# BB#45:                                # %if.then.72
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	leaq	-140(%rbp), %rcx
	leaq	-144(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	je	.LBB5_47
# BB#46:                                # %if.then.81
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %r9
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r11d       # 4-byte Reload
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_selection_extract
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_channel_clear
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB5_48
.LBB5_47:                               # %if.else.89
	movq	$0, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
.LBB5_48:                               # %if.end.90
	jmp	.LBB5_57
.LBB5_49:                               # %if.else.91
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB5_51
# BB#50:                                # %if.then.105
	movl	$0, -164(%rbp)
	jmp	.LBB5_56
.LBB5_51:                               # %if.else.106
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_54
# BB#52:                                # %land.lhs.true.109
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB5_54
# BB#53:                                # %if.then.113
	movl	$1, -164(%rbp)
	jmp	.LBB5_55
.LBB5_54:                               # %if.else.114
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB5_55:                               # %if.end.116
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.117
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %r9d
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-280(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	-288(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	-304(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-296(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_selection_extract
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
.LBB5_57:                               # %if.end.120
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_58:                               # %return
	movq	-24(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_transform_cut, .Lfunc_end5-gimp_drawable_transform_cut
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_drawable_transform_paste
	.align	16, 0x90
	.type	gimp_drawable_transform_paste,@function
gimp_drawable_transform_paste:          # @gimp_drawable_transform_paste
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_paste, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_58
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %if.then.16
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_paste, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_58
.LBB6_16:                               # %if.end.18
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.19
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.20
	cmpq	$0, -24(%rbp)
	je	.LBB6_20
# BB#19:                                # %if.then.22
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.23
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_paste, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_58
.LBB6_21:                               # %if.end.24
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.25
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_24
# BB#23:                                # %if.then.37
	movl	$0, -108(%rbp)
	jmp	.LBB6_29
.LBB6_24:                               # %if.else.38
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_27
# BB#25:                                # %land.lhs.true.41
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB6_27
# BB#26:                                # %if.then.45
	movl	$1, -108(%rbp)
	jmp	.LBB6_28
.LBB6_27:                               # %if.else.46
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB6_28:                               # %if.end.48
	jmp	.LBB6_29
.LBB6_29:                               # %if.end.49
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB6_31
# BB#30:                                # %if.then.52
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.21, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -64(%rbp)
	jmp	.LBB6_42
.LBB6_31:                               # %if.else.54
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB6_33
# BB#32:                                # %if.then.63
	movl	$0, -132(%rbp)
	jmp	.LBB6_38
.LBB6_33:                               # %if.else.64
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_36
# BB#34:                                # %land.lhs.true.67
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB6_36
# BB#35:                                # %if.then.71
	movl	$1, -132(%rbp)
	jmp	.LBB6_37
.LBB6_36:                               # %if.else.72
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB6_37:                               # %if.end.74
	jmp	.LBB6_38
.LBB6_38:                               # %if.end.75
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB6_40
# BB#39:                                # %if.then.78
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.22, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movq	%rax, -64(%rbp)
	jmp	.LBB6_41
.LBB6_40:                               # %if.else.80
	movq	$0, -8(%rbp)
	jmp	.LBB6_58
.LBB6_41:                               # %if.end.81
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.82
	movl	$29, %esi
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gimp_image_undo_group_start
	cmpl	$0, -36(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB6_44
# BB#43:                                # %if.then.85
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	callq	gimp_drawable_type_with_alpha
	movabsq	$.L.str.23, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movl	-212(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	floating_sel_attach
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	jmp	.LBB6_57
.LBB6_44:                               # %if.else.93
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB6_46
# BB#45:                                # %if.then.103
	movl	$0, -164(%rbp)
	jmp	.LBB6_51
.LBB6_46:                               # %if.else.104
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_49
# BB#47:                                # %land.lhs.true.107
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB6_49
# BB#48:                                # %if.then.111
	movl	$1, -164(%rbp)
	jmp	.LBB6_50
.LBB6_49:                               # %if.else.112
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB6_50:                               # %if.end.114
	jmp	.LBB6_51
.LBB6_51:                               # %if.end.115
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB6_55
# BB#52:                                # %land.lhs.true.118
	movq	-24(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$2, %eax
	je	.LBB6_54
# BB#53:                                # %lor.lhs.false
	movq	-24(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$4, %eax
	jne	.LBB6_55
.LBB6_54:                               # %if.then.123
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type_with_alpha
	movl	%eax, -140(%rbp)
	jmp	.LBB6_56
.LBB6_55:                               # %if.else.125
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_type
	movl	%eax, -140(%rbp)
.LBB6_56:                               # %if.end.127
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-140(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
.LBB6_57:                               # %if.end.128
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB6_58:                               # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_transform_paste, .Lfunc_end6-gimp_drawable_transform_paste
	.cfi_endproc

	.globl	gimp_drawable_transform_flip
	.align	16, 0x90
	.type	gimp_drawable_transform_flip,@function
gimp_drawable_transform_flip:           # @gimp_drawable_transform_flip
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_flip, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_57
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB7_15
# BB#14:                                # %if.then.16
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_flip, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_57
.LBB7_16:                               # %if.end.18
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.19
	jmp	.LBB7_18
.LBB7_18:                               # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB7_20
# BB#19:                                # %if.then.29
	movl	$0, -132(%rbp)
	jmp	.LBB7_25
.LBB7_20:                               # %if.else.30
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_23
# BB#21:                                # %land.lhs.true.33
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB7_23
# BB#22:                                # %if.then.37
	movl	$1, -132(%rbp)
	jmp	.LBB7_24
.LBB7_23:                               # %if.else.38
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB7_24:                               # %if.end.40
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.41
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.44
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_flip, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_57
.LBB7_28:                               # %if.end.46
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.47
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.15, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	leaq	-68(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-76(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_drawable_transform_cut
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB7_56
# BB#30:                                # %if.then.55
	movq	$0, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB7_32
# BB#31:                                # %if.then.67
	movl	$0, -172(%rbp)
	jmp	.LBB7_37
.LBB7_32:                               # %if.else.68
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_35
# BB#33:                                # %land.lhs.true.71
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB7_35
# BB#34:                                # %if.then.75
	movl	$1, -172(%rbp)
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.76
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB7_36:                               # %if.end.78
	jmp	.LBB7_37
.LBB7_37:                               # %if.end.79
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB7_40
# BB#38:                                # %land.lhs.true.82
	movq	-64(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB7_40
# BB#39:                                # %if.then.85
	movl	$1, -44(%rbp)
.LBB7_40:                               # %if.end.86
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB7_42
# BB#41:                                # %if.then.95
	movl	$0, -196(%rbp)
	jmp	.LBB7_47
.LBB7_42:                               # %if.else.96
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_45
# BB#43:                                # %land.lhs.true.99
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB7_45
# BB#44:                                # %if.then.103
	movl	$1, -196(%rbp)
	jmp	.LBB7_46
.LBB7_45:                               # %if.else.104
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB7_46:                               # %if.end.106
	jmp	.LBB7_47
.LBB7_47:                               # %if.end.107
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB7_51
# BB#48:                                # %land.lhs.true.110
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB7_51
# BB#49:                                # %land.lhs.true.115
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB7_51
# BB#50:                                # %if.then.119
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB7_51:                               # %if.end.126
	cmpq	$0, -64(%rbp)
	je	.LBB7_53
# BB#52:                                # %if.then.128
	leaq	-148(%rbp), %rax
	leaq	-152(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %r11d
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	gimp_drawable_transform_tiles_flip
	movq	%rax, -144(%rbp)
	movq	-64(%rbp), %rdi
	callq	tile_manager_unref
.LBB7_53:                               # %if.end.130
	cmpq	$0, -144(%rbp)
	je	.LBB7_55
# BB#54:                                # %if.then.132
	movq	-16(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-76(%rbp), %r8d
	callq	gimp_drawable_transform_paste
	movq	%rax, -88(%rbp)
	movq	-144(%rbp), %rdi
	callq	tile_manager_unref
.LBB7_55:                               # %if.end.134
	jmp	.LBB7_56
.LBB7_56:                               # %if.end.135
	movq	-56(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-88(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB7_57:                               # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_transform_flip, .Lfunc_end7-gimp_drawable_transform_flip
	.cfi_endproc

	.globl	gimp_drawable_transform_rotate
	.align	16, 0x90
	.type	gimp_drawable_transform_rotate,@function
gimp_drawable_transform_rotate:         # @gimp_drawable_transform_rotate
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movq	$0, -96(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_rotate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_55
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB8_15
# BB#14:                                # %if.then.16
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_rotate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_55
.LBB8_16:                               # %if.end.18
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.19
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.20
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB8_20
# BB#19:                                # %if.then.29
	movl	$0, -140(%rbp)
	jmp	.LBB8_25
.LBB8_20:                               # %if.else.30
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_23
# BB#21:                                # %land.lhs.true.33
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB8_23
# BB#22:                                # %if.then.37
	movl	$1, -140(%rbp)
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.38
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB8_24:                               # %if.end.40
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.41
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB8_27
# BB#26:                                # %if.then.44
	jmp	.LBB8_28
.LBB8_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_transform_rotate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_55
.LBB8_28:                               # %if.end.46
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.47
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.16, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$32, %esi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %r8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_drawable_transform_cut
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB8_54
# BB#30:                                # %if.then.55
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB8_32
# BB#31:                                # %if.then.67
	movl	$0, -180(%rbp)
	jmp	.LBB8_37
.LBB8_32:                               # %if.else.68
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_35
# BB#33:                                # %land.lhs.true.71
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB8_35
# BB#34:                                # %if.then.75
	movl	$1, -180(%rbp)
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.76
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB8_36:                               # %if.end.78
	jmp	.LBB8_37
.LBB8_37:                               # %if.end.79
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB8_40
# BB#38:                                # %land.lhs.true.82
	movq	-72(%rbp), %rdi
	callq	tile_manager_bpp
	cmpl	$1, %eax
	jne	.LBB8_40
# BB#39:                                # %if.then.85
	movl	$1, -52(%rbp)
.LBB8_40:                               # %if.end.86
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB8_42
# BB#41:                                # %if.then.95
	movl	$0, -204(%rbp)
	jmp	.LBB8_47
.LBB8_42:                               # %if.else.96
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_45
# BB#43:                                # %land.lhs.true.99
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB8_45
# BB#44:                                # %if.then.103
	movl	$1, -204(%rbp)
	jmp	.LBB8_46
.LBB8_45:                               # %if.else.104
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB8_46:                               # %if.end.106
	jmp	.LBB8_47
.LBB8_47:                               # %if.end.107
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB8_51
# BB#48:                                # %land.lhs.true.110
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB8_51
# BB#49:                                # %land.lhs.true.115
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB8_51
# BB#50:                                # %if.then.119
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-52(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
.LBB8_51:                               # %if.end.126
	leaq	-156(%rbp), %rax
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-52(%rbp), %r11d
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	callq	gimp_drawable_transform_tiles_rotate
	movq	%rax, -152(%rbp)
	movq	-72(%rbp), %rdi
	callq	tile_manager_unref
	cmpq	$0, -152(%rbp)
	je	.LBB8_53
# BB#52:                                # %if.then.129
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %ecx
	movl	-84(%rbp), %r8d
	callq	gimp_drawable_transform_paste
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rdi
	callq	tile_manager_unref
.LBB8_53:                               # %if.end.131
	jmp	.LBB8_54
.LBB8_54:                               # %if.end.132
	movq	-64(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-96(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB8_55:                               # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_transform_rotate, .Lfunc_end8-gimp_drawable_transform_rotate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_transform_tiles_affine,@object # @__func__.gimp_drawable_transform_tiles_affine
.L__func__.gimp_drawable_transform_tiles_affine:
	.asciz	"gimp_drawable_transform_tiles_affine"
	.size	.L__func__.gimp_drawable_transform_tiles_affine, 37

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
	.asciz	"orig_tiles != NULL"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"matrix != NULL"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"new_offset_x != NULL"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"new_offset_y != NULL"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.8, 48

	.type	.L__func__.gimp_drawable_transform_tiles_flip,@object # @__func__.gimp_drawable_transform_tiles_flip
.L__func__.gimp_drawable_transform_tiles_flip:
	.asciz	"gimp_drawable_transform_tiles_flip"
	.size	.L__func__.gimp_drawable_transform_tiles_flip, 35

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpdrawable-transform.c"
	.size	.L.str.10, 25

	.type	.L__func__.gimp_drawable_transform_tiles_rotate,@object # @__func__.gimp_drawable_transform_tiles_rotate
.L__func__.gimp_drawable_transform_tiles_rotate:
	.asciz	"gimp_drawable_transform_tiles_rotate"
	.size	.L__func__.gimp_drawable_transform_tiles_rotate, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"new_height == orig_width"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"new_width == orig_width"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"new_width == orig_height"
	.size	.L.str.13, 25

	.type	.L__func__.gimp_drawable_transform_affine,@object # @__func__.gimp_drawable_transform_affine
.L__func__.gimp_drawable_transform_affine:
	.asciz	"gimp_drawable_transform_affine"
	.size	.L__func__.gimp_drawable_transform_affine, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo-type\004Transform"
	.size	.L.str.14, 20

	.type	.L__func__.gimp_drawable_transform_flip,@object # @__func__.gimp_drawable_transform_flip
.L__func__.gimp_drawable_transform_flip:
	.asciz	"gimp_drawable_transform_flip"
	.size	.L__func__.gimp_drawable_transform_flip, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"undo-type\004Flip"
	.size	.L.str.15, 15

	.type	.L__func__.gimp_drawable_transform_rotate,@object # @__func__.gimp_drawable_transform_rotate
.L__func__.gimp_drawable_transform_rotate:
	.asciz	"gimp_drawable_transform_rotate"
	.size	.L__func__.gimp_drawable_transform_rotate, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"undo-type\004Rotate"
	.size	.L.str.16, 17

	.type	.L__func__.gimp_drawable_transform_cut,@object # @__func__.gimp_drawable_transform_cut
.L__func__.gimp_drawable_transform_cut:
	.asciz	"gimp_drawable_transform_cut"
	.size	.L__func__.gimp_drawable_transform_cut, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"offset_x != NULL"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"offset_y != NULL"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"new_layer != NULL"
	.size	.L.str.19, 18

	.type	.L__func__.gimp_drawable_transform_paste,@object # @__func__.gimp_drawable_transform_paste
.L__func__.gimp_drawable_transform_paste:
	.asciz	"gimp_drawable_transform_paste"
	.size	.L__func__.gimp_drawable_transform_paste, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tiles != NULL"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"undo-type\004Transform Layer"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"undo-type\004Transform Channel"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Transformation"
	.size	.L.str.23, 15

	.type	.L__func__.gimp_drawable_transform_rotate_point,@object # @__func__.gimp_drawable_transform_rotate_point
.L__func__.gimp_drawable_transform_rotate_point:
	.asciz	"gimp_drawable_transform_rotate_point"
	.size	.L__func__.gimp_drawable_transform_rotate_point, 37

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"new_x != NULL"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"new_y != NULL"
	.size	.L.str.25, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
