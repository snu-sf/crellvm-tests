	.text
	.file	"gimpgegltool.bc"
	.globl	gimp_gegl_tool_get_type
	.align	16, 0x90
	.type	gimp_gegl_tool_get_type,@function
gimp_gegl_tool_get_type:                # @gimp_gegl_tool_get_type
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
	movq	gimp_gegl_tool_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_gegl_tool_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_tool_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$392, %edx              # imm = 0x188
	movabsq	$gimp_gegl_tool_class_intern_init, %rdi
	movl	$432, %r8d              # imm = 0x1B0
	movabsq	$gimp_gegl_tool_init, %rcx
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
	movabsq	$gimp_gegl_tool_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_gegl_tool_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_gegl_tool_get_type, .Lfunc_end0-gimp_gegl_tool_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_class_intern_init,@function
gimp_gegl_tool_class_intern_init:       # @gimp_gegl_tool_class_intern_init
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
	movq	%rax, gimp_gegl_tool_parent_class
	cmpl	$0, GimpGeglTool_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGeglTool_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_gegl_tool_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_gegl_tool_class_intern_init, .Lfunc_end1-gimp_gegl_tool_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_init,@function
gimp_gegl_tool_init:                    # @gimp_gegl_tool_init
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
	.size	gimp_gegl_tool_init, .Lfunc_end2-gimp_gegl_tool_init
	.cfi_endproc

	.globl	gimp_gegl_tool_register
	.align	16, 0x90
	.type	gimp_gegl_tool_register,@function
gimp_gegl_tool_register:                # @gimp_gegl_tool_register
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_map_options_get_type
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$.L.str.1, %r8
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %r9
	movq	-48(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 32(%rsp)
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%r12, 40(%rsp)
	movq	%r10, 48(%rsp)
	movq	-56(%rbp), %r10         # 8-byte Reload
	callq	*%r10
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_gegl_tool_register, .Lfunc_end3-gimp_gegl_tool_register
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_class_init,@function
gimp_gegl_tool_class_init:              # @gimp_gegl_tool_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.2, %rdi
	movabsq	$gimp_gegl_tool_initialize, %rsi
	movabsq	$gimp_gegl_tool_finalize, %rcx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	callq	gettext
	movabsq	$gimp_gegl_tool_reset, %rcx
	movabsq	$gimp_gegl_tool_dialog, %rsi
	movabsq	$gimp_gegl_tool_map, %rdi
	movabsq	$gimp_gegl_tool_get_operation, %rdx
	movq	-32(%rbp), %r8
	movq	%rax, 304(%r8)
	movq	-32(%rbp), %rax
	movq	%rdx, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 360(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 368(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_gegl_tool_class_init, .Lfunc_end4-gimp_gegl_tool_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_finalize,@function
gimp_gegl_tool_finalize:                # @gimp_gegl_tool_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 392(%rax)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 400(%rax)
.LBB5_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_gegl_tool_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_gegl_tool_finalize, .Lfunc_end5-gimp_gegl_tool_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_initialize,@function
gimp_gegl_tool_initialize:              # @gimp_gegl_tool_initialize
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.7, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %if.end.9
	movq	-40(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB6_6:                                # %if.end.15
	movq	gimp_gegl_tool_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB6_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_gegl_tool_initialize, .Lfunc_end6-gimp_gegl_tool_initialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_get_operation,@function
gimp_gegl_tool_get_operation:           # @gimp_gegl_tool_get_operation
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	gegl_node_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_gegl_tool_get_operation, .Lfunc_end7-gimp_gegl_tool_get_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_map,@function
gimp_gegl_tool_map:                     # @gimp_gegl_tool_map
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_18
.LBB8_2:                                # %if.end
	leaq	-28(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	callq	gegl_operation_list_properties
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB8_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB8_17
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB8_3 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_class_find_property
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_15
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	-72(%rbp), %rax
	xorl	%esi, %esi
	movl	$24, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	memset
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	g_value_init
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	400(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	g_object_get_property
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_param_rgb_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_7
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB8_12
.LBB8_7:                                # %if.else
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.19
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_11:                               # %if.end.21
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               # %if.end.22
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gegl_color_new
	leaq	-72(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movq	%rax, -104(%rbp)
	callq	gimp_value_get_rgb
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
	movq	-104(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	callq	gegl_color_set_rgba
	leaq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init
	leaq	-72(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_value_take_object
.LBB8_14:                               # %if.end.30
                                        #   in Loop: Header=BB8_3 Depth=1
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	304(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gegl_node_set_property
	leaq	-72(%rbp), %rdi
	callq	g_value_unset
.LBB8_15:                               # %if.end.33
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_16
.LBB8_16:                               # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_17:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB8_18:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_gegl_tool_map, .Lfunc_end8-gimp_gegl_tool_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_dialog,@function
gimp_gegl_tool_dialog:                  # @gimp_gegl_tool_dialog
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_tool_dialog_get_vbox
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -40(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -24(%rbp)
	callq	gimp_get_geglopclasses
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.6, %rax
	movq	-88(%rbp), %rcx
	movq	136(%rcx), %rcx
	addq	$5, %rcx
	movq	%rcx, -104(%rbp)
	movq	%rax, -96(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -96(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$2, %eax
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %r8
	movq	136(%r8), %r8
	movq	-104(%rbp), %r10
	movq	-96(%rbp), %r11
	movq	%r10, (%rsp)
	movl	$2, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-1, 24(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_insert_with_values
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_new_with_model
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_cell_renderer_pixbuf_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdx
	movl	$2, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_add_attribute
	callq	gtk_cell_renderer_text_new
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_add_attribute
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_gegl_tool_operation_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 408(%rdx)
	movq	-56(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	-16(%rbp), %rcx
	movq	%rax, 416(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	416(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-16(%rbp), %rsi
	movq	%rax, 424(%rsi)
	movq	-16(%rbp), %rax
	movq	424(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-16(%rbp), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	424(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rax
	movq	424(%rax), %rdi
	callq	gtk_widget_show
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_gegl_tool_dialog, .Lfunc_end9-gimp_gegl_tool_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_reset,@function
gimp_gegl_tool_reset:                   # @gimp_gegl_tool_reset
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_gegl_tool_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB10_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_gegl_tool_reset, .Lfunc_end10-gimp_gegl_tool_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_geglopclasses,@function
gimp_get_geglopclasses:                 # @gimp_get_geglopclasses
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
	subq	$16, %rsp
	callq	gegl_operation_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_get_subtype_classes
	movabsq	$gimp_gegl_tool_compare_operation_names, %rsi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_list_sort
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_get_geglopclasses, .Lfunc_end11-gimp_get_geglopclasses
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_operation_changed,@function
gimp_gegl_tool_operation_changed:       # @gimp_gegl_tool_operation_changed
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter
	cmpl	$0, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_15
.LBB12_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 392(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 392(%rax)
.LBB12_4:                               # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB12_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	400(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 400(%rax)
.LBB12_6:                               # %if.end.15
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$392, %rax              # imm = 0x188
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rcx
	cmpq	$0, 392(%rcx)
	jne	.LBB12_8
# BB#7:                                 # %if.then.19
	jmp	.LBB12_15
.LBB12_8:                               # %if.end.20
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 344(%rax)
	je	.LBB12_10
# BB#9:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	344(%rax), %rdi
	callq	gimp_image_map_clear
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	$0, 344(%rax)
.LBB12_10:                              # %if.end.34
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	304(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	392(%rax), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_create_map
	movq	-16(%rbp), %rdi
	callq	gimp_gegl_tool_get_config
	movq	-16(%rbp), %rcx
	movq	%rax, 400(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 424(%rax)
	je	.LBB12_12
# BB#11:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	424(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 424(%rax)
.LBB12_12:                              # %if.end.47
	movq	-16(%rbp), %rax
	cmpq	$0, 400(%rax)
	je	.LBB12_14
# BB#13:                                # %if.then.50
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_gegl_tool_config_notify, %rcx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	400(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tool_get_options
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_table_new
	movq	-16(%rbp), %rcx
	movq	%rax, 424(%rcx)
	movq	-16(%rbp), %rax
	movq	416(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	424(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rax
	movq	424(%rax), %rdi
	callq	gtk_widget_show
.LBB12_14:                              # %if.end.68
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
.LBB12_15:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_gegl_tool_operation_changed, .Lfunc_end12-gimp_gegl_tool_operation_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_subtype_classes,@function
gimp_get_subtype_classes:               # @gimp_get_subtype_classes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_11
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	leaq	-44(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_children
	movabsq	$.L.str.15, %rsi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gegl_operation_class_get_key
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_gegl_tool_operation_blacklisted
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
.LBB13_4:                               # %if.end.9
	movl	$0, -48(%rbp)
.LBB13_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB13_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB13_5 Depth=1
	movslq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_get_subtype_classes
	movq	%rax, -24(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB13_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB13_5
.LBB13_8:                               # %for.end
	cmpq	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB13_10:                              # %if.end.13
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_get_subtype_classes, .Lfunc_end13-gimp_get_subtype_classes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_compare_operation_names,@function
gimp_gegl_tool_compare_operation_names: # @gimp_gegl_tool_compare_operation_names
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_gegl_tool_compare_operation_names, .Lfunc_end14-gimp_gegl_tool_compare_operation_names
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_operation_blacklisted,@function
gimp_gegl_tool_operation_blacklisted:   # @gimp_gegl_tool_operation_blacklisted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_21
.LBB15_2:                               # %if.end
	movl	$0, -36(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$12, %rax
	jae	.LBB15_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	gimp_gegl_tool_operation_blacklisted.name_blacklist(,%rax,8), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB15_21
.LBB15_6:                               # %if.end.4
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_7
.LBB15_7:                               # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_3
.LBB15_8:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB15_10
# BB#9:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB15_21
.LBB15_10:                              # %if.end.7
	movabsq	$.L.str.37, %rsi
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	g_strsplit
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB15_11:                              # %for.cond.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_13 Depth 2
	movslq	-36(%rbp), %rax
	cmpq	$9, %rax
	jae	.LBB15_20
# BB#12:                                # %for.body.13
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$0, -40(%rbp)
.LBB15_13:                              # %for.cond.14
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB15_18
# BB#14:                                # %for.body.18
                                        #   in Loop: Header=BB15_13 Depth=2
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-36(%rbp), %rax
	movq	gimp_gegl_tool_operation_blacklisted.category_blacklist(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB15_16
# BB#15:                                # %if.then.25
	movq	-32(%rbp), %rdi
	callq	g_strfreev
	movl	$1, -4(%rbp)
	jmp	.LBB15_21
.LBB15_16:                              # %if.end.26
                                        #   in Loop: Header=BB15_13 Depth=2
	jmp	.LBB15_17
.LBB15_17:                              # %for.inc.27
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_13
.LBB15_18:                              # %for.end.29
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_19
.LBB15_19:                              # %for.inc.30
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_11
.LBB15_20:                              # %for.end.32
	movq	-32(%rbp), %rdi
	callq	g_strfreev
	movl	$0, -4(%rbp)
.LBB15_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_gegl_tool_operation_blacklisted, .Lfunc_end15-gimp_gegl_tool_operation_blacklisted
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_get_config,@function
gimp_gegl_tool_get_config:              # @gimp_gegl_tool_get_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, gimp_gegl_tool_get_config.config_types
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	g_hash_table_new_full
	movq	%rax, gimp_gegl_tool_get_config.config_types
.LBB16_2:                               # %if.end
	movq	gimp_gegl_tool_get_config.config_types, %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.40, %rdi
	movabsq	$gimp_gegl_tool_config_class_init, %rax
	movw	$160, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rax, -48(%rbp)
	movw	$32, -40(%rbp)
	movw	$0, -38(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	392(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.41, %rsi
	movl	$45, %edx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_strcanon
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	leaq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_type_register_static
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_gegl_tool_get_config.config_info, %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	gimp_gegl_tool_get_config.config_types, %rdi
	movq	-8(%rbp), %rax
	movq	392(%rax), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB16_4:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_gegl_tool_get_config, .Lfunc_end16-gimp_gegl_tool_get_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_notify,@function
gimp_gegl_tool_config_notify:           # @gimp_gegl_tool_config_notify
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_tool_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_image_map_tool_preview
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_gegl_tool_config_notify, .Lfunc_end17-gimp_gegl_tool_config_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_class_init,@function
gimp_gegl_tool_config_class_init:       # @gimp_gegl_tool_config_class_init
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
	subq	$48, %rsp
	leaq	-28(%rbp), %rax
	movabsq	$gimp_gegl_tool_config_get_property, %rcx
	movabsq	$gimp_gegl_tool_config_set_property, %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gegl_operation_list_properties
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jae	.LBB18_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	16(%rax), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB18_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB18_9
# BB#4:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.20, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB18_9
# BB#5:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.21, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB18_9
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gimp_param_spec_duplicate
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.13
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movq	-48(%rbp), %rdx
	movl	%eax, %esi
	callq	g_object_class_install_property
.LBB18_8:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_9
.LBB18_9:                               # %if.end.14
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_10
.LBB18_10:                              # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB18_1
.LBB18_11:                              # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_gegl_tool_config_class_init, .Lfunc_end18-gimp_gegl_tool_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_set_property,@function
gimp_gegl_tool_config_set_property:     # @gimp_gegl_tool_config_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_gegl_tool_config_value_get
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_value_copy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_gegl_tool_config_set_property, .Lfunc_end19-gimp_gegl_tool_config_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_get_property,@function
gimp_gegl_tool_config_get_property:     # @gimp_gegl_tool_config_get_property
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_gegl_tool_config_value_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_value_copy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_gegl_tool_config_get_property, .Lfunc_end20-gimp_gegl_tool_config_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_value_get,@function
gimp_gegl_tool_config_value_get:        # @gimp_gegl_tool_config_value_get
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_gegl_tool_config_get_properties
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_gegl_tool_config_value_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_insert
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB21_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_gegl_tool_config_value_get, .Lfunc_end21-gimp_gegl_tool_config_value_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_get_properties,@function
gimp_gegl_tool_config_get_properties:   # @gimp_gegl_tool_config_get_properties
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
	subq	$16, %rsp
	movabsq	$.L.str.42, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_object_get_data
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_gegl_tool_config_value_free, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movabsq	$.L.str.42, %rsi
	movabsq	$g_hash_table_unref, %rcx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_gegl_tool_config_get_properties, .Lfunc_end22-gimp_gegl_tool_config_get_properties
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_value_new,@function
gimp_gegl_tool_config_value_new:        # @gimp_gegl_tool_config_value_new
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
	subq	$32, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init
	movq	-16(%rbp), %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_gegl_tool_config_value_new, .Lfunc_end23-gimp_gegl_tool_config_value_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_gegl_tool_config_value_free,@function
gimp_gegl_tool_config_value_free:       # @gimp_gegl_tool_config_value_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_value_unset
# BB#1:                                 # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_gegl_tool_config_value_free, .Lfunc_end24-gimp_gegl_tool_config_value_free
	.cfi_endproc

	.type	gimp_gegl_tool_get_type.g_define_type_id__volatile,@object # @gimp_gegl_tool_get_type.g_define_type_id__volatile
	.local	gimp_gegl_tool_get_type.g_define_type_id__volatile
	.comm	gimp_gegl_tool_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGeglTool"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-gegl-tool"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GEGL Operation"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GEGL Tool: Use an arbitrary GEGL operation"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"_GEGL Operation..."
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-tool-gegl"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-gegl"
	.size	.L.str.6, 10

	.type	gimp_gegl_tool_parent_class,@object # @gimp_gegl_tool_parent_class
	.local	gimp_gegl_tool_parent_class
	.comm	gimp_gegl_tool_parent_class,8,8
	.type	GimpGeglTool_private_offset,@object # @GimpGeglTool_private_offset
	.local	GimpGeglTool_private_offset
	.comm	GimpGeglTool_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GEGL operations do not operate on indexed layers."
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Operation:"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gegl:"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stock-id"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"changed"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Operation Settings"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Select an operation from the list above"
	.size	.L.str.14, 40

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"categories"
	.size	.L.str.15, 11

	.type	gimp_gegl_tool_operation_blacklisted.category_blacklist,@object # @gimp_gegl_tool_operation_blacklisted.category_blacklist
	.section	.rodata,"a",@progbits
	.align	16
gimp_gegl_tool_operation_blacklisted.category_blacklist:
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.size	gimp_gegl_tool_operation_blacklisted.category_blacklist, 72

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"compositors"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"core"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"debug"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"hidden"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"input"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"output"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"programming"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"transform"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"video"
	.size	.L.str.24, 6

	.type	gimp_gegl_tool_operation_blacklisted.name_blacklist,@object # @gimp_gegl_tool_operation_blacklisted.name_blacklist
	.section	.rodata,"a",@progbits
	.align	16
gimp_gegl_tool_operation_blacklisted.name_blacklist:
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.size	gimp_gegl_tool_operation_blacklisted.name_blacklist, 96

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"gegl:convert-format"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gegl:introspect"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gegl:path"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gegl:text"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gegl:layer"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gegl:contrast-curve"
	.size	.L.str.30, 20

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gegl:fill-path"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gegl:vector-stroke"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gegl:lens-correct"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gegl:hstack"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp:"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	":"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"operation"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"notify"
	.size	.L.str.39, 7

	.type	gimp_gegl_tool_get_config.config_types,@object # @gimp_gegl_tool_get_config.config_types
	.local	gimp_gegl_tool_get_config.config_types
	.comm	gimp_gegl_tool_get_config.config_types,8,8
	.type	gimp_gegl_tool_get_config.config_info,@object # @gimp_gegl_tool_get_config.config_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_gegl_tool_get_config.config_info:
	.zero	24
	.size	gimp_gegl_tool_get_config.config_info, 24

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"GimpGeglTool-%s-config"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"0123456789-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.size	.L.str.41, 64

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"properties"
	.size	.L.str.42, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
