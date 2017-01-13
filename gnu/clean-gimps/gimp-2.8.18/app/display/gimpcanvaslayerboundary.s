	.text
	.file	"gimpcanvaslayerboundary.bc"
	.globl	gimp_canvas_layer_boundary_get_type
	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_get_type,@function
gimp_canvas_layer_boundary_get_type:    # @gimp_canvas_layer_boundary_get_type
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
	movq	gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_rectangle_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_layer_boundary_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_layer_boundary_init, %rcx
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
	movabsq	$gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_layer_boundary_get_type, .Lfunc_end0-gimp_canvas_layer_boundary_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_class_intern_init,@function
gimp_canvas_layer_boundary_class_intern_init: # @gimp_canvas_layer_boundary_class_intern_init
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
	movq	%rax, gimp_canvas_layer_boundary_parent_class
	cmpl	$0, GimpCanvasLayerBoundary_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasLayerBoundary_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_layer_boundary_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_layer_boundary_class_intern_init, .Lfunc_end1-gimp_canvas_layer_boundary_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_init,@function
gimp_canvas_layer_boundary_init:        # @gimp_canvas_layer_boundary_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_canvas_layer_boundary_init, .Lfunc_end2-gimp_canvas_layer_boundary_init
	.cfi_endproc

	.globl	gimp_canvas_layer_boundary_new
	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_new,@function
gimp_canvas_layer_boundary_new:         # @gimp_canvas_layer_boundary_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_layer_boundary_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_canvas_layer_boundary_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_layer_boundary_new, .Lfunc_end3-gimp_canvas_layer_boundary_new
	.cfi_endproc

	.globl	gimp_canvas_layer_boundary_set_layer
	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_set_layer,@function
gimp_canvas_layer_boundary_set_layer:   # @gimp_canvas_layer_boundary_set_layer
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_canvas_layer_boundary_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_layer_boundary_set_layer, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_56
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -48(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -100(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -100(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_layer_boundary_set_layer, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_56
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_38
# BB#26:                                # %land.lhs.true.43
	movq	-48(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB4_38
# BB#27:                                # %if.then.46
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB4_29
# BB#28:                                # %if.then.57
	movl	$0, -132(%rbp)
	jmp	.LBB4_34
.LBB4_29:                               # %if.else.58
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_32
# BB#30:                                # %land.lhs.true.61
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB4_32
# BB#31:                                # %if.then.65
	movl	$1, -132(%rbp)
	jmp	.LBB4_33
.LBB4_32:                               # %if.else.66
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB4_33:                               # %if.end.68
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.69
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB4_36
# BB#35:                                # %if.then.72
	movq	$0, -48(%rbp)
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.73
	movq	-112(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB4_37:                               # %if.end.76
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.77
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB4_44
# BB#39:                                # %if.then.80
	movl	$0, -140(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_begin_change
	cmpq	$0, -48(%rbp)
	je	.LBB4_43
# BB#40:                                # %if.then.85
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_mask
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	movb	%dl, -265(%rbp)         # 1-byte Spill
	je	.LBB4_42
# BB#41:                                # %land.rhs
	movq	-160(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -265(%rbp)         # 1-byte Spill
.LBB4_42:                               # %land.end
	movb	-265(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -140(%rbp)
	movq	-40(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_offset_x
	cvtsi2sdl	%eax, %xmm0
	movq	-152(%rbp), %rdi
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_y
	cvtsi2sdl	%eax, %xmm1
	movq	-152(%rbp), %rdi
	movsd	%xmm1, -296(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm2
	movq	-152(%rbp), %rdi
	movsd	%xmm2, -304(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	cvtsi2sdl	%eax, %xmm3
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-304(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movb	$4, %al
	callq	g_object_set
.LBB4_43:                               # %if.end.101
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movl	-140(%rbp), %r8d
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_end_change
	jmp	.LBB4_56
.LBB4_44:                               # %if.else.104
	cmpq	$0, -48(%rbp)
	je	.LBB4_55
# BB#45:                                # %land.lhs.true.106
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB4_55
# BB#46:                                # %if.then.110
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movl	%eax, -180(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	%eax, -184(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -188(%rbp)
	movq	-168(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -192(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_mask
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	movb	%dl, -329(%rbp)         # 1-byte Spill
	je	.LBB4_48
# BB#47:                                # %land.rhs.133
	movq	-176(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -329(%rbp)         # 1-byte Spill
.LBB4_48:                               # %land.end.136
	movb	-329(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	leaq	-200(%rbp), %rdx
	movabsq	$.L.str.7, %rcx
	leaq	-208(%rbp), %r8
	movabsq	$.L.str.8, %r9
	leaq	-216(%rbp), %rdi
	movabsq	$.L.str.9, %r10
	leaq	-224(%rbp), %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	andb	$1, %al
	movzbl	%al, %ebx
	movl	%ebx, -228(%rbp)
	movq	-40(%rbp), %r15
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-344(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r14, -352(%rbp)        # 8-byte Spill
	callq	g_object_get
	movl	-180(%rbp), %ebx
	cvttsd2si	-200(%rbp), %r12d
	cmpl	%r12d, %ebx
	jne	.LBB4_53
# BB#49:                                # %lor.lhs.false.141
	movl	-184(%rbp), %eax
	cvttsd2si	-208(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_53
# BB#50:                                # %lor.lhs.false.145
	movl	-188(%rbp), %eax
	cvttsd2si	-216(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_53
# BB#51:                                # %lor.lhs.false.149
	movl	-192(%rbp), %eax
	cvttsd2si	-224(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_53
# BB#52:                                # %lor.lhs.false.153
	movl	-228(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB4_54
.LBB4_53:                               # %if.then.157
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_begin_change
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r8
	movabsq	$.L.str.11, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %eax
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-180(%rbp), %xmm0
	cvtsi2sdl	-184(%rbp), %xmm1
	cvtsi2sdl	-188(%rbp), %xmm2
	cvtsi2sdl	-192(%rbp), %xmm3
	movl	-228(%rbp), %r10d
	movl	%r10d, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movb	$4, %al
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_canvas_item_end_change
.LBB4_54:                               # %if.end.166
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.167
	jmp	.LBB4_56
.LBB4_56:                               # %if.end.168
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_layer_boundary_set_layer, .Lfunc_end4-gimp_canvas_layer_boundary_set_layer
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_class_init,@function
gimp_canvas_layer_boundary_class_init:  # @gimp_canvas_layer_boundary_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_canvas_layer_boundary_stroke, %rsi
	movabsq	$gimp_canvas_layer_boundary_get_extents, %rdi
	movabsq	$gimp_canvas_layer_boundary_draw, %rcx
	movabsq	$gimp_canvas_layer_boundary_finalize, %rdx
	movabsq	$gimp_canvas_layer_boundary_get_property, %r8
	movabsq	$gimp_canvas_layer_boundary_set_property, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 176(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 184(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_layer_boundary_class_init, .Lfunc_end5-gimp_canvas_layer_boundary_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_set_property,@function
gimp_canvas_layer_boundary_set_property: # @gimp_canvas_layer_boundary_set_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_11
.LBB6_11:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_6
	jmp	.LBB6_7
.LBB6_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB6_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#4:                                 # %if.then.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
.LBB6_5:                                # %if.end.13
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.14
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB6_10
.LBB6_7:                                # %sw.default
	jmp	.LBB6_8
.LBB6_8:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$157, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB6_10
.LBB6_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_layer_boundary_set_property, .Lfunc_end6-gimp_canvas_layer_boundary_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_get_property,@function
gimp_canvas_layer_boundary_get_property: # @gimp_canvas_layer_boundary_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_3
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_6
.LBB7_3:                                # %sw.default
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movl	$180, %edx
	movabsq	$.L.str.14, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_layer_boundary_get_property, .Lfunc_end7-gimp_canvas_layer_boundary_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_finalize,@function
gimp_canvas_layer_boundary_finalize:    # @gimp_canvas_layer_boundary_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_canvas_layer_boundary_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_layer_boundary_finalize, .Lfunc_end8-gimp_canvas_layer_boundary_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_draw,@function
gimp_canvas_layer_boundary_draw:        # @gimp_canvas_layer_boundary_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	gimp_canvas_layer_boundary_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB9_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_canvas_layer_boundary_draw, .Lfunc_end9-gimp_canvas_layer_boundary_draw
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_get_extents,@function
gimp_canvas_layer_boundary_get_extents: # @gimp_canvas_layer_boundary_get_extents
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	gimp_canvas_layer_boundary_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_layer_boundary_get_extents, .Lfunc_end10-gimp_canvas_layer_boundary_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_layer_boundary_stroke,@function
gimp_canvas_layer_boundary_stroke:      # @gimp_canvas_layer_boundary_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_canvas_layer_boundary_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	subl	188(%rax), %r8d
	cvtsi2sdl	%r8d, %xmm0
	movq	-16(%rbp), %rax
	subl	192(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	callq	cairo_translate
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	callq	gimp_display_shell_set_layer_style
	movq	-24(%rbp), %rdi
	callq	cairo_stroke
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_canvas_layer_boundary_stroke, .Lfunc_end11-gimp_canvas_layer_boundary_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.type	gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile,@object # @gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile
	.local	gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_layer_boundary_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasLayerBoundary"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_layer_boundary_new,@object # @__func__.gimp_canvas_layer_boundary_new
.L__func__.gimp_canvas_layer_boundary_new:
	.asciz	"gimp_canvas_layer_boundary_new"
	.size	.L__func__.gimp_canvas_layer_boundary_new, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"shell"
	.size	.L.str.3, 6

	.type	.L__func__.gimp_canvas_layer_boundary_set_layer,@object # @__func__.gimp_canvas_layer_boundary_set_layer
.L__func__.gimp_canvas_layer_boundary_set_layer:
	.asciz	"gimp_canvas_layer_boundary_set_layer"
	.size	.L__func__.gimp_canvas_layer_boundary_set_layer, 37

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CANVAS_LAYER_BOUNDARY (boundary)"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"layer == NULL || GIMP_IS_LAYER (layer)"
	.size	.L.str.5, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"x"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"y"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"width"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"height"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"layer"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"edit-mask"
	.size	.L.str.11, 10

	.type	gimp_canvas_layer_boundary_parent_class,@object # @gimp_canvas_layer_boundary_parent_class
	.local	gimp_canvas_layer_boundary_parent_class
	.comm	gimp_canvas_layer_boundary_parent_class,8,8
	.type	GimpCanvasLayerBoundary_private_offset,@object # @GimpCanvasLayerBoundary_private_offset
	.local	GimpCanvasLayerBoundary_private_offset
	.comm	GimpCanvasLayerBoundary_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.12, 54

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimpcanvaslayerboundary.c"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"property"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
