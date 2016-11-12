	.text
	.file	"gimpoperationpointlayermode.bc"
	.globl	gimp_operation_point_layer_mode_get_type
	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_get_type,@function
gimp_operation_point_layer_mode_get_type: # @gimp_operation_point_layer_mode_get_type
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
	movq	gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, %rax
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
	callq	gegl_operation_point_composer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$400, %edx              # imm = 0x190
	movabsq	$gimp_operation_point_layer_mode_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_operation_point_layer_mode_init, %rcx
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
	movabsq	$gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_point_layer_mode_get_type, .Lfunc_end0-gimp_operation_point_layer_mode_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_class_intern_init,@function
gimp_operation_point_layer_mode_class_intern_init: # @gimp_operation_point_layer_mode_class_intern_init
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
	movq	%rax, gimp_operation_point_layer_mode_parent_class
	cmpl	$0, GimpOperationPointLayerMode_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationPointLayerMode_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_point_layer_mode_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_point_layer_mode_class_intern_init, .Lfunc_end1-gimp_operation_point_layer_mode_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_init,@function
gimp_operation_point_layer_mode_init:   # @gimp_operation_point_layer_mode_init
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
	.size	gimp_operation_point_layer_mode_init, .Lfunc_end2-gimp_operation_point_layer_mode_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_class_init,@function
gimp_operation_point_layer_mode_class_init: # @gimp_operation_point_layer_mode_class_init
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gegl_operation_point_composer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movl	$737893334, %edi        # imm = 0x2BFB5BD6
	movq	%rax, -56(%rbp)
	callq	g_rand_new_with_seed
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %r10
	xorl	%edi, %edi
	movl	%edi, %r11d
	movabsq	$gimp_operation_point_layer_mode_get_property, %rbx
	movabsq	$gimp_operation_point_layer_mode_set_property, %r14
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-48(%rbp), %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -96(%rbp)         # 8-byte Spill
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_point_layer_mode_process, %rcx
	movabsq	$gimp_operation_point_layer_mode_prepare, %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, 176(%rsi)
	movq	-56(%rbp), %rdx
	movq	%rcx, 352(%rdx)
	movq	-40(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$0, -68(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$120000, -68(%rbp)      # imm = 0x1D4C0
	jge	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_rand_int
	movslq	-68(%rbp), %rdi
	movl	%eax, dissolve_lut(,%rdi,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-64(%rbp), %rdi
	callq	g_rand_free
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_point_layer_mode_class_init, .Lfunc_end3-gimp_operation_point_layer_mode_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_set_property,@function
gimp_operation_point_layer_mode_set_property: # @gimp_operation_point_layer_mode_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_point_layer_mode_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB4_2
	jmp	.LBB4_1
.LBB4_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 32(%rdi)
	jmp	.LBB4_5
.LBB4_2:                                # %sw.default
	jmp	.LBB4_3
.LBB4_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$157, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB4_5
.LBB4_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_point_layer_mode_set_property, .Lfunc_end4-gimp_operation_point_layer_mode_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_get_property,@function
gimp_operation_point_layer_mode_get_property: # @gimp_operation_point_layer_mode_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_point_layer_mode_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB5_2
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB5_5
.LBB5_2:                                # %sw.default
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$177, %edx
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB5_5
.LBB5_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_point_layer_mode_get_property, .Lfunc_end5-gimp_operation_point_layer_mode_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_prepare,@function
gimp_operation_point_layer_mode_prepare: # @gimp_operation_point_layer_mode_prepare
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
	subq	$16, %rsp
	movabsq	$.L.str.12, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	babl_format
	movabsq	$.L.str.13, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gegl_operation_set_format
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gegl_operation_set_format
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gegl_operation_set_format
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_operation_point_layer_mode_prepare, .Lfunc_end6-gimp_operation_point_layer_mode_prepare
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1065353216              # float 1
.LCPI7_2:
	.long	1073741824              # float 2
.LCPI7_4:
	.long	1333788672              # float 4.2949673E+9
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_process,@function
gimp_operation_point_layer_mode_process: # @gimp_operation_point_layer_mode_process
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
	subq	$304, %rsp              # imm = 0x130
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_operation_point_layer_mode_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$12, %r10d
	movl	%r10d, %edx
	leaq	-128(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	32(%rax), %r10d
	movl	%r10d, -68(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movq	%rcx, %rdi
	callq	memset
.LBB7_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_38 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_13 Depth 2
                                        #     Child Loop BB7_175 Depth 2
                                        #     Child Loop BB7_164 Depth 2
                                        #     Child Loop BB7_137 Depth 2
                                        #     Child Loop BB7_129 Depth 2
                                        #     Child Loop BB7_121 Depth 2
                                        #     Child Loop BB7_110 Depth 2
                                        #     Child Loop BB7_186 Depth 2
                                        #     Child Loop BB7_195 Depth 2
                                        #     Child Loop BB7_94 Depth 2
                                        #     Child Loop BB7_86 Depth 2
                                        #     Child Loop BB7_156 Depth 2
                                        #     Child Loop BB7_148 Depth 2
                                        #     Child Loop BB7_78 Depth 2
                                        #     Child Loop BB7_102 Depth 2
                                        #     Child Loop BB7_73 Depth 2
                                        #     Child Loop BB7_68 Depth 2
                                        #     Child Loop BB7_63 Depth 2
                                        #     Child Loop BB7_44 Depth 2
                                        #     Child Loop BB7_52 Depth 2
                                        #     Child Loop BB7_58 Depth 2
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -104(%rbp)
	cmpq	$0, %rax
	je	.LBB7_201
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_202
.LBB7_202:                              # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	addl	$-22, %eax
	subl	$3, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	ja	.LBB7_4
	jmp	.LBB7_3
.LBB7_3:                                # %sw.bb
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_4:                                # %sw.default
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	addss	12(%rax), %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	subss	%xmm1, %xmm0
	movq	-96(%rbp), %rax
	movss	%xmm0, 12(%rax)
.LBB7_5:                                # %sw.epilog
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$25, %rdx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	ja	.LBB7_199
# BB#203:                               # %sw.epilog
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_6:                                # %sw.bb.7
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm2
	subss	%xmm2, %xmm1
	movq	-96(%rbp), %rax
	movss	%xmm1, 12(%rax)
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB7_12
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_8:                                # %for.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB7_8 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB7_8 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_8
.LBB7_11:                               # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_20
.LBB7_12:                               # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_13:                               # %for.cond.19
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_19
# BB#14:                                # %for.body.22
                                        #   in Loop: Header=BB7_13 Depth=2
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_15
	jp	.LBB7_15
	jmp	.LBB7_16
.LBB7_15:                               # %cond.true
                                        #   in Loop: Header=BB7_13 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false
                                        #   in Loop: Header=BB7_13 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB7_17
.LBB7_17:                               # %cond.end
                                        #   in Loop: Header=BB7_13 Depth=2
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#18:                                # %for.inc.35
                                        #   in Loop: Header=BB7_13 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_13
.LBB7_19:                               # %for.end.37
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_20
.LBB7_20:                               # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_21:                               # %sw.bb.38
                                        #   in Loop: Header=BB7_1 Depth=1
	xorps	%xmm0, %xmm0
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	subss	12(%rax), %xmm1
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	addss	%xmm1, %xmm2
	movq	-96(%rbp), %rax
	movss	%xmm2, 12(%rax)
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB7_27
# BB#22:                                # %if.then.50
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_23:                               # %for.cond.51
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_26
# BB#24:                                # %for.body.54
                                        #   in Loop: Header=BB7_23 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#25:                                # %for.inc.57
                                        #   in Loop: Header=BB7_23 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_23
.LBB7_26:                               # %for.end.59
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_35
.LBB7_27:                               # %if.else.60
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_28:                               # %for.cond.61
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_34
# BB#29:                                # %for.body.64
                                        #   in Loop: Header=BB7_28 Depth=2
	xorps	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_30
	jp	.LBB7_30
	jmp	.LBB7_31
.LBB7_30:                               # %cond.true.67
                                        #   in Loop: Header=BB7_28 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB7_32
.LBB7_31:                               # %cond.false.73
                                        #   in Loop: Header=BB7_28 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB7_32
.LBB7_32:                               # %cond.end.74
                                        #   in Loop: Header=BB7_28 Depth=2
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#33:                                # %for.inc.82
                                        #   in Loop: Header=BB7_28 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_28
.LBB7_34:                               # %for.end.84
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.85
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_36:                               # %sw.bb.86
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	gimp_operation_point_layer_mode_get_color_erase_color
	jmp	.LBB7_200
.LBB7_37:                               # %sw.bb.87
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-96(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movl	$0, -108(%rbp)
.LBB7_38:                               # %for.cond.90
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_41
# BB#39:                                # %for.body.93
                                        #   in Loop: Header=BB7_38 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#40:                                # %for.inc.98
                                        #   in Loop: Header=BB7_38 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_38
.LBB7_41:                               # %for.end.100
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_42:                               # %sw.bb.101
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	(%rax), %rcx
	movq	-104(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	imulq	%rsi, %rax
	subq	%rax, %rcx
	movabsq	$-6640827866535438581, %rax # imm = 0xA3D70A3D70A3D70B
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	-200(%rbp), %rdx        # 8-byte Reload
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	movl	%eax, %edi
	shrq	$8, %rdx
	movl	%edx, %r8d
	addl	%edi, %r8d
	imull	$400, %r8d, %edi        # imm = 0x190
	movl	%ecx, %r8d
	subl	%edi, %r8d
	movl	%r8d, -112(%rbp)
	movq	-48(%rbp), %rax
	movslq	4(%rax), %rcx
	movq	-104(%rbp), %rdx
	movslq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rax
	cqto
	movq	-208(%rbp), %r9         # 8-byte Reload
	idivq	%r9
	addq	%rax, %rcx
	movabsq	$7870610804782742023, %rax # imm = 0x6D3A06D3A06D3A07
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	-216(%rbp), %rdx        # 8-byte Reload
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	movl	%eax, %edi
	shrq	$7, %rdx
	movl	%edx, %r8d
	addl	%edi, %r8d
	imull	$300, %r8d, %edi        # imm = 0x12C
	movl	%ecx, %r8d
	subl	%edi, %r8d
	movl	%r8d, -116(%rbp)
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	imull	$400, %r8d, %edi        # imm = 0x190
	movl	-112(%rbp), %r8d
	addl	%r8d, %edi
	movslq	%edi, %rax
	movl	dissolve_lut(,%rax,4), %edi
	movl	%edi, %eax
	cvtsi2ssq	%rax, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB7_51
# BB#43:                                # %if.then.129
                                        #   in Loop: Header=BB7_1 Depth=1
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-96(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movl	$0, -108(%rbp)
.LBB7_44:                               # %for.cond.131
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_50
# BB#45:                                # %for.body.134
                                        #   in Loop: Header=BB7_44 Depth=2
	xorps	%xmm0, %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_46
	jp	.LBB7_46
	jmp	.LBB7_47
.LBB7_46:                               # %cond.true.137
                                        #   in Loop: Header=BB7_44 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB7_48
.LBB7_47:                               # %cond.false.143
                                        #   in Loop: Header=BB7_44 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB7_48
.LBB7_48:                               # %cond.end.144
                                        #   in Loop: Header=BB7_44 Depth=2
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#49:                                # %for.inc.149
                                        #   in Loop: Header=BB7_44 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_44
.LBB7_50:                               # %for.end.151
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_56
.LBB7_51:                               # %if.else.152
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-96(%rbp), %rax
	movss	%xmm0, 12(%rax)
	movl	$0, -108(%rbp)
.LBB7_52:                               # %for.cond.155
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_55
# BB#53:                                # %for.body.158
                                        #   in Loop: Header=BB7_52 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#54:                                # %for.inc.163
                                        #   in Loop: Header=BB7_52 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_52
.LBB7_55:                               # %for.end.165
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_56
.LBB7_56:                               # %if.end.166
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_57:                               # %sw.bb.167
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_58:                               # %for.cond.168
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_61
# BB#59:                                # %for.body.171
                                        #   in Loop: Header=BB7_58 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
# BB#60:                                # %for.inc.182
                                        #   in Loop: Header=BB7_58 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_58
.LBB7_61:                               # %for.end.184
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_62:                               # %sw.bb.185
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_63:                               # %for.cond.186
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_66
# BB#64:                                # %for.body.189
                                        #   in Loop: Header=BB7_63 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
# BB#65:                                # %for.inc.200
                                        #   in Loop: Header=BB7_63 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_63
.LBB7_66:                               # %for.end.202
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_67:                               # %sw.bb.203
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_68:                               # %for.cond.204
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_71
# BB#69:                                # %for.body.207
                                        #   in Loop: Header=BB7_68 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
# BB#70:                                # %for.inc.227
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_68
.LBB7_71:                               # %for.end.229
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_72:                               # %sw.bb.230
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_73:                               # %for.cond.231
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_76
# BB#74:                                # %for.body.234
                                        #   in Loop: Header=BB7_73 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	subss	%xmm1, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#75:                                # %for.inc.248
                                        #   in Loop: Header=BB7_73 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_73
.LBB7_76:                               # %for.end.250
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_77:                               # %sw.bb.251
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_78:                               # %for.cond.252
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_84
# BB#79:                                # %for.body.255
                                        #   in Loop: Header=BB7_78 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm2
	ucomiss	%xmm1, %xmm2
	movss	%xmm0, -228(%rbp)       # 4-byte Spill
	jbe	.LBB7_81
# BB#80:                                # %cond.true.271
                                        #   in Loop: Header=BB7_78 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -232(%rbp)       # 4-byte Spill
	jmp	.LBB7_82
.LBB7_81:                               # %cond.false.276
                                        #   in Loop: Header=BB7_78 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -232(%rbp)       # 4-byte Spill
.LBB7_82:                               # %cond.end.281
                                        #   in Loop: Header=BB7_78 Depth=2
	movss	-232(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	-228(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#83:                                # %for.inc.287
                                        #   in Loop: Header=BB7_78 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_78
.LBB7_84:                               # %for.end.289
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_85:                               # %sw.bb.290
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_86:                               # %for.cond.291
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_92
# BB#87:                                # %for.body.294
                                        #   in Loop: Header=BB7_86 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB7_89
# BB#88:                                # %cond.true.305
                                        #   in Loop: Header=BB7_86 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -236(%rbp)       # 4-byte Spill
	jmp	.LBB7_90
.LBB7_89:                               # %cond.false.310
                                        #   in Loop: Header=BB7_86 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -236(%rbp)       # 4-byte Spill
.LBB7_90:                               # %cond.end.315
                                        #   in Loop: Header=BB7_86 Depth=2
	movss	-236(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm1, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm1
	mulss	%xmm1, %xmm2
	addss	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#91:                                # %for.inc.331
                                        #   in Loop: Header=BB7_86 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_86
.LBB7_92:                               # %for.end.333
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_93:                               # %sw.bb.334
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_94:                               # %for.cond.335
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_100
# BB#95:                                # %for.body.338
                                        #   in Loop: Header=BB7_94 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB7_97
# BB#96:                                # %cond.true.349
                                        #   in Loop: Header=BB7_94 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -240(%rbp)       # 4-byte Spill
	jmp	.LBB7_98
.LBB7_97:                               # %cond.false.354
                                        #   in Loop: Header=BB7_94 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm0
	movss	%xmm0, -240(%rbp)       # 4-byte Spill
.LBB7_98:                               # %cond.end.359
                                        #   in Loop: Header=BB7_94 Depth=2
	movss	-240(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm1, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm1
	mulss	%xmm1, %xmm2
	addss	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#99:                                # %for.inc.375
                                        #   in Loop: Header=BB7_94 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_94
.LBB7_100:                              # %for.end.377
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_101:                              # %sw.bb.378
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_102:                              # %for.cond.379
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_108
# BB#103:                               # %for.body.382
                                        #   in Loop: Header=BB7_102 Depth=2
	movss	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB7_105
# BB#104:                               # %if.then.389
                                        #   in Loop: Header=BB7_102 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_106
.LBB7_105:                              # %if.else.410
                                        #   in Loop: Header=BB7_102 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	subss	(%rcx,%rax,4), %xmm3
	mulss	%xmm3, %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	subss	(%rcx,%rax,4), %xmm3
	mulss	%xmm3, %xmm1
	subss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm1
	addss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm2, (%rcx,%rax,4)
.LBB7_106:                              # %if.end.439
                                        #   in Loop: Header=BB7_102 Depth=2
	jmp	.LBB7_107
.LBB7_107:                              # %for.inc.440
                                        #   in Loop: Header=BB7_102 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_102
.LBB7_108:                              # %for.end.442
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_109:                              # %sw.bb.443
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_110:                              # %for.cond.444
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_119
# BB#111:                               # %for.body.447
                                        #   in Loop: Header=BB7_110 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	addss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB7_113
# BB#112:                               # %if.then.462
                                        #   in Loop: Header=BB7_110 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_117
.LBB7_113:                              # %if.else.480
                                        #   in Loop: Header=BB7_110 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	jne	.LBB7_114
	jp	.LBB7_114
	jmp	.LBB7_115
.LBB7_114:                              # %cond.true.488
                                        #   in Loop: Header=BB7_110 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB7_116
.LBB7_115:                              # %cond.false.494
                                        #   in Loop: Header=BB7_110 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB7_116
.LBB7_116:                              # %cond.end.495
                                        #   in Loop: Header=BB7_110 Depth=2
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm1, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm1
	mulss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
.LBB7_117:                              # %if.end.516
                                        #   in Loop: Header=BB7_110 Depth=2
	jmp	.LBB7_118
.LBB7_118:                              # %for.inc.517
                                        #   in Loop: Header=BB7_110 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_110
.LBB7_119:                              # %for.end.519
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_120:                              # %sw.bb.520
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_121:                              # %for.cond.521
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_127
# BB#122:                               # %for.body.524
                                        #   in Loop: Header=BB7_121 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	addss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	.LBB7_124
# BB#123:                               # %if.then.539
                                        #   in Loop: Header=BB7_121 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm2
	subss	12(%rax), %xmm2
	mulss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_125
.LBB7_124:                              # %if.else.553
                                        #   in Loop: Header=BB7_121 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm3
	addss	%xmm3, %xmm2
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm3
	subss	%xmm3, %xmm2
	mulss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	divss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
.LBB7_125:                              # %if.end.586
                                        #   in Loop: Header=BB7_121 Depth=2
	jmp	.LBB7_126
.LBB7_126:                              # %for.inc.587
                                        #   in Loop: Header=BB7_121 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_121
.LBB7_127:                              # %for.end.589
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_128:                              # %sw.bb.590
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_129:                              # %for.cond.591
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_135
# BB#130:                               # %for.body.594
                                        #   in Loop: Header=BB7_129 Depth=2
	movss	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB7_132
# BB#131:                               # %if.then.601
                                        #   in Loop: Header=BB7_129 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_133
.LBB7_132:                              # %if.else.622
                                        #   in Loop: Header=BB7_129 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	subss	(%rcx,%rax,4), %xmm3
	mulss	%xmm3, %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	subss	(%rcx,%rax,4), %xmm3
	mulss	%xmm3, %xmm1
	subss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm1
	addss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm2
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm2, (%rcx,%rax,4)
.LBB7_133:                              # %if.end.651
                                        #   in Loop: Header=BB7_129 Depth=2
	jmp	.LBB7_134
.LBB7_134:                              # %for.inc.652
                                        #   in Loop: Header=BB7_129 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_129
.LBB7_135:                              # %for.end.654
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_136:                              # %sw.bb.655
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_137:                              # %for.cond.656
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_146
# BB#138:                               # %for.body.659
                                        #   in Loop: Header=BB7_137 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm1
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm3         # xmm3 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm3
	movsd	%xmm2, -264(%rbp)       # 8-byte Spill
	movsd	%xmm1, -272(%rbp)       # 8-byte Spill
	jne	.LBB7_139
	jp	.LBB7_139
	jmp	.LBB7_140
.LBB7_139:                              # %cond.true.667
                                        #   in Loop: Header=BB7_137 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB7_141
.LBB7_140:                              # %cond.false.673
                                        #   in Loop: Header=BB7_137 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB7_141
.LBB7_141:                              # %cond.end.674
                                        #   in Loop: Header=BB7_137 Depth=2
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movss	.LCPI7_2, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movsd	-264(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm2
	cvtss2sd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	movsd	%xmm3, -288(%rbp)       # 8-byte Spill
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jne	.LBB7_142
	jp	.LBB7_142
	jmp	.LBB7_143
.LBB7_142:                              # %cond.true.683
                                        #   in Loop: Header=BB7_137 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB7_144
.LBB7_143:                              # %cond.false.689
                                        #   in Loop: Header=BB7_137 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	jmp	.LBB7_144
.LBB7_144:                              # %cond.end.690
                                        #   in Loop: Header=BB7_137 Depth=2
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	-288(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	-272(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm1, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	%xmm2, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm1
	mulss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#145:                               # %for.inc.713
                                        #   in Loop: Header=BB7_137 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_137
.LBB7_146:                              # %for.end.715
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_147:                              # %sw.bb.716
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_148:                              # %for.cond.717
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_154
# BB#149:                               # %for.body.720
                                        #   in Loop: Header=BB7_148 Depth=2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	addss	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB7_151
# BB#150:                               # %if.then.735
                                        #   in Loop: Header=BB7_148 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_152
.LBB7_151:                              # %if.else.753
                                        #   in Loop: Header=BB7_148 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
.LBB7_152:                              # %if.end.761
                                        #   in Loop: Header=BB7_148 Depth=2
	jmp	.LBB7_153
.LBB7_153:                              # %for.inc.762
                                        #   in Loop: Header=BB7_148 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_148
.LBB7_154:                              # %for.end.764
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_155:                              # %sw.bb.765
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_156:                              # %for.cond.766
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_162
# BB#157:                               # %for.body.769
                                        #   in Loop: Header=BB7_156 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm1, %xmm0
	jb	.LBB7_159
# BB#158:                               # %if.then.781
                                        #   in Loop: Header=BB7_156 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm2
	subss	12(%rax), %xmm2
	mulss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_160
.LBB7_159:                              # %if.else.795
                                        #   in Loop: Header=BB7_156 Depth=2
	movss	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm0
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	subss	%xmm0, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
.LBB7_160:                              # %if.end.809
                                        #   in Loop: Header=BB7_156 Depth=2
	jmp	.LBB7_161
.LBB7_161:                              # %for.inc.810
                                        #   in Loop: Header=BB7_156 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_156
.LBB7_162:                              # %for.end.812
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_163:                              # %sw.bb.813
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_164:                              # %for.cond.814
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_173
# BB#165:                               # %for.body.817
                                        #   in Loop: Header=BB7_164 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	subss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_167
# BB#166:                               # %if.then.841
                                        #   in Loop: Header=BB7_164 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_171
.LBB7_167:                              # %if.else.859
                                        #   in Loop: Header=BB7_164 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm3
	subss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jb	.LBB7_169
# BB#168:                               # %if.then.879
                                        #   in Loop: Header=BB7_164 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm2
	subss	12(%rax), %xmm2
	mulss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_170
.LBB7_169:                              # %if.else.893
                                        #   in Loop: Header=BB7_164 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movss	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm1
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	subss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm1
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
.LBB7_170:                              # %if.end.916
                                        #   in Loop: Header=BB7_164 Depth=2
	jmp	.LBB7_171
.LBB7_171:                              # %if.end.917
                                        #   in Loop: Header=BB7_164 Depth=2
	jmp	.LBB7_172
.LBB7_172:                              # %for.inc.918
                                        #   in Loop: Header=BB7_164 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_164
.LBB7_173:                              # %for.end.920
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_174:                              # %sw.bb.921
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_175:                              # %for.cond.922
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_184
# BB#176:                               # %for.body.925
                                        #   in Loop: Header=BB7_175 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm2
	addss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_178
# BB#177:                               # %if.then.949
                                        #   in Loop: Header=BB7_175 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_182
.LBB7_178:                              # %if.else.967
                                        #   in Loop: Header=BB7_175 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm2
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm3
	addss	%xmm3, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jb	.LBB7_180
# BB#179:                               # %if.then.987
                                        #   in Loop: Header=BB7_175 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm2
	subss	12(%rax), %xmm2
	mulss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_181
.LBB7_180:                              # %if.else.1001
                                        #   in Loop: Header=BB7_175 Depth=2
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	addss	(%rcx,%rax,4), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-80(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
.LBB7_181:                              # %if.end.1018
                                        #   in Loop: Header=BB7_175 Depth=2
	jmp	.LBB7_182
.LBB7_182:                              # %if.end.1019
                                        #   in Loop: Header=BB7_175 Depth=2
	jmp	.LBB7_183
.LBB7_183:                              # %for.inc.1020
                                        #   in Loop: Header=BB7_175 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_175
.LBB7_184:                              # %for.end.1022
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_185:                              # %sw.bb.1023
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$0, -108(%rbp)
.LBB7_186:                              # %for.cond.1024
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_193
# BB#187:                               # %for.body.1027
                                        #   in Loop: Header=BB7_186 Depth=2
	xorps	%xmm0, %xmm0
	movq	-88(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB7_188
	jp	.LBB7_188
	jmp	.LBB7_189
.LBB7_188:                              # %lor.lhs.false
                                        #   in Loop: Header=BB7_186 Depth=2
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	divss	(%rcx,%rax,4), %xmm0
	movq	-80(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	divss	12(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB7_190
.LBB7_189:                              # %if.then.1042
                                        #   in Loop: Header=BB7_186 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	movss	12(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
	jmp	.LBB7_191
.LBB7_190:                              # %if.else.1060
                                        #   in Loop: Header=BB7_186 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	divss	(%rcx,%rax,4), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
.LBB7_191:                              # %if.end.1084
                                        #   in Loop: Header=BB7_186 Depth=2
	jmp	.LBB7_192
.LBB7_192:                              # %for.inc.1085
                                        #   in Loop: Header=BB7_186 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_186
.LBB7_193:                              # %for.end.1087
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_194:                              # %sw.bb.1088
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-128(%rbp), %rcx
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	gimp_operation_point_layer_mode_get_new_color_lchab
	movl	$0, -108(%rbp)
.LBB7_195:                              # %for.cond.1089
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -108(%rbp)
	jge	.LBB7_198
# BB#196:                               # %for.body.1092
                                        #   in Loop: Header=BB7_195 Depth=2
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-108(%rbp), %rax
	movss	-128(%rbp,%rax,4), %xmm1 # xmm1 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	mulss	12(%rax), %xmm1
	movq	-80(%rbp), %rax
	mulss	12(%rax), %xmm1
	movslq	-108(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-80(%rbp), %rax
	movaps	%xmm0, %xmm3
	subss	12(%rax), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movq	-88(%rbp), %rax
	subss	12(%rax), %xmm0
	mulss	%xmm0, %xmm2
	addss	%xmm2, %xmm1
	movslq	-108(%rbp), %rax
	movq	-96(%rbp), %rcx
	movss	%xmm1, (%rcx,%rax,4)
# BB#197:                               # %for.inc.1113
                                        #   in Loop: Header=BB7_195 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_195
.LBB7_198:                              # %for.end.1115
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_200
.LBB7_199:                              # %sw.default.1116
                                        #   in Loop: Header=BB7_1 Depth=1
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	g_error
.LBB7_200:                              # %sw.epilog.1117
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB7_1
.LBB7_201:                              # %while.end
	movl	$1, %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_operation_point_layer_mode_process, .Lfunc_end7-gimp_operation_point_layer_mode_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_57
	.quad	.LBB7_42
	.quad	.LBB7_62
	.quad	.LBB7_67
	.quad	.LBB7_72
	.quad	.LBB7_101
	.quad	.LBB7_77
	.quad	.LBB7_147
	.quad	.LBB7_155
	.quad	.LBB7_85
	.quad	.LBB7_93
	.quad	.LBB7_194
	.quad	.LBB7_194
	.quad	.LBB7_194
	.quad	.LBB7_194
	.quad	.LBB7_185
	.quad	.LBB7_109
	.quad	.LBB7_120
	.quad	.LBB7_128
	.quad	.LBB7_136
	.quad	.LBB7_163
	.quad	.LBB7_174
	.quad	.LBB7_36
	.quad	.LBB7_6
	.quad	.LBB7_37
	.quad	.LBB7_21

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.11, %r9d
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
	.type	gimp_operation_point_layer_mode_get_color_erase_color,@function
gimp_operation_point_layer_mode_get_color_erase_color: # @gimp_operation_point_layer_mode_get_color_erase_color
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
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cvtss2sd	12(%rdx), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	leaq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	divss	12(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	divss	12(%rax), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movq	-8(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	callq	gimp_rgba_set
.LBB9_3:                                # %if.end
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	cvtss2sd	12(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB9_5
# BB#4:                                 # %if.then.21
	leaq	-88(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.24
	leaq	-88(%rbp), %rdi
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	divss	12(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movss	4(%rax), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	divss	12(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm2          # xmm2 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	divss	12(%rax), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movq	-16(%rbp), %rax
	cvtss2sd	12(%rax), %xmm3
	callq	gimp_rgba_set
.LBB9_6:                                # %if.end.39
	leaq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	paint_funcs_color_erase_helper
	cvtsd2ss	-32(%rbp), %xmm0
	movq	-24(%rbp), %rsi
	movss	%xmm0, 12(%rsi)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtss2sd	12(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rsi
	movss	%xmm0, (%rsi)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtss2sd	12(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rsi
	movss	%xmm0, 4(%rsi)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rsi
	cvtss2sd	12(%rsi), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rsi
	movss	%xmm0, 8(%rsi)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_operation_point_layer_mode_get_color_erase_color, .Lfunc_end9-gimp_operation_point_layer_mode_get_color_erase_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_point_layer_mode_get_new_color_lchab,@function
gimp_operation_point_layer_mode_get_new_color_lchab: # @gimp_operation_point_layer_mode_get_new_color_lchab
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$.L.str.12, %edi
	movl	%edi, %ecx
	movq	%rcx, %rdi
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	babl_format
	movl	$.L.str.17, %r8d
	movl	%r8d, %ecx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	babl_format
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	babl_fish
	movq	%rax, -80(%rbp)
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	babl_format
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	babl_format
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	babl_fish
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	$1, %r8d
	movl	%r8d, %eax
	leaq	-44(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	babl_process
	movq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	babl_process
	movl	-4(%rbp), %r8d
	addl	$-11, %r8d
	movl	%r8d, %ecx
	subl	$3, %r8d
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	ja	.LBB10_5
# BB#8:                                 # %entry
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	jmp	.LBB10_7
.LBB10_2:                               # %sw.bb.14
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	jmp	.LBB10_7
.LBB10_3:                               # %sw.bb.21
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	jmp	.LBB10_7
.LBB10_4:                               # %sw.bb.28
	movss	-56(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)
	movss	-40(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	jmp	.LBB10_7
.LBB10_5:                               # %sw.default
	jmp	.LBB10_6
.LBB10_6:                               # %do.body
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$236, %edx
	movabsq	$.L__func__.gimp_operation_point_layer_mode_get_new_color_lchab, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB10_7:                               # %sw.epilog
	movl	$1, %eax
	movl	%eax, %ecx
	leaq	-68(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	callq	babl_process
	movq	%rax, -176(%rbp)        # 8-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_operation_point_layer_mode_get_new_color_lchab, .Lfunc_end10-gimp_operation_point_layer_mode_get_new_color_lchab
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4

	.text
	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB11_3
# BB#2:                                 # %entry
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
.LBB11_3:                               # %entry
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
	movabsq	$.L.str.11, %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB11_1
.Lfunc_end11:
	.size	g_error, .Lfunc_end11-g_error
	.cfi_endproc

	.type	gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile,@object # @gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile
	.local	gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile
	.comm	gimp_operation_point_layer_mode_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationPointLayerMode"
	.size	.L.str, 28

	.type	gimp_operation_point_layer_mode_parent_class,@object # @gimp_operation_point_layer_mode_parent_class
	.local	gimp_operation_point_layer_mode_parent_class
	.comm	gimp_operation_point_layer_mode_parent_class,8,8
	.type	GimpOperationPointLayerMode_private_offset,@object # @GimpOperationPointLayerMode_private_offset
	.local	GimpOperationPointLayerMode_private_offset
	.comm	GimpOperationPointLayerMode_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:point-layer-mode"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"description"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP point layer mode operation"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"categories"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"compositors"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"blend-mode"
	.size	.L.str.7, 11

	.type	dissolve_lut,@object    # @dissolve_lut
	.local	dissolve_lut
	.comm	dissolve_lut,480000,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.8, 54

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimpoperationpointlayermode.c"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Gimp-GEGL"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"RaGaBaA float"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"input"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"output"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"aux"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unknown layer mode"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"CIE LCH(ab) float"
	.size	.L.str.17, 18

	.type	.L__func__.gimp_operation_point_layer_mode_get_new_color_lchab,@object # @__func__.gimp_operation_point_layer_mode_get_new_color_lchab
.L__func__.gimp_operation_point_layer_mode_get_new_color_lchab:
	.asciz	"gimp_operation_point_layer_mode_get_new_color_lchab"
	.size	.L__func__.gimp_operation_point_layer_mode_get_new_color_lchab, 52


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
