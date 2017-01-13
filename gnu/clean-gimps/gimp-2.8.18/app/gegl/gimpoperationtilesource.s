	.text
	.file	"gimpoperationtilesource.bc"
	.globl	gimp_operation_tile_source_get_type
	.align	16, 0x90
	.type	gimp_operation_tile_source_get_type,@function
gimp_operation_tile_source_get_type:    # @gimp_operation_tile_source_get_type
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
	movq	gimp_operation_tile_source_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_operation_tile_source_get_type.g_define_type_id__volatile, %rax
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
	callq	gegl_operation_source_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$352, %edx              # imm = 0x160
	movabsq	$gimp_operation_tile_source_class_intern_init, %rdi
	movl	$48, %r8d
	movabsq	$gimp_operation_tile_source_init, %rcx
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
	movabsq	$gimp_operation_tile_source_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_operation_tile_source_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_operation_tile_source_get_type, .Lfunc_end0-gimp_operation_tile_source_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_class_intern_init,@function
gimp_operation_tile_source_class_intern_init: # @gimp_operation_tile_source_class_intern_init
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
	movq	%rax, gimp_operation_tile_source_parent_class
	cmpl	$0, GimpOperationTileSource_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOperationTileSource_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_operation_tile_source_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_operation_tile_source_class_intern_init, .Lfunc_end1-gimp_operation_tile_source_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_init,@function
gimp_operation_tile_source_init:        # @gimp_operation_tile_source_init
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
	.size	gimp_operation_tile_source_init, .Lfunc_end2-gimp_operation_tile_source_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_class_init,@function
gimp_operation_tile_source_class_init:  # @gimp_operation_tile_source_class_init
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
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gegl_operation_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gegl_operation_source_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.5, %r9
	movabsq	$.L.str.6, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movabsq	$gimp_operation_tile_source_get_property, %rbx
	movabsq	$gimp_operation_tile_source_set_property, %r14
	movabsq	$gimp_operation_tile_source_finalize, %r15
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%r15, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -88(%rbp)         # 8-byte Spill
	callq	gegl_operation_class_set_keys
	movabsq	$gimp_operation_tile_source_process, %rcx
	movabsq	$gimp_operation_tile_source_get_bounding_box, %rdx
	movabsq	$gimp_operation_tile_source_prepare, %rsi
	movq	-48(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	movq	-48(%rbp), %rsi
	movq	%rdx, 184(%rsi)
	movq	-48(%rbp), %rdx
	movq	$0, 208(%rdx)
	movq	-56(%rbp), %rdx
	movq	%rcx, 312(%rdx)
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_tile_manager_get_type
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movl	$7, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_boxed
	movl	$1, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	movl	$7, %r8d
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_operation_tile_source_class_init, .Lfunc_end3-gimp_operation_tile_source_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_finalize,@function
gimp_operation_tile_source_finalize:    # @gimp_operation_tile_source_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB4_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_operation_tile_source_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_operation_tile_source_finalize, .Lfunc_end4-gimp_operation_tile_source_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_set_property,@function
gimp_operation_tile_source_set_property: # @gimp_operation_tile_source_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_9
.LBB5_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_5
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_unref
.LBB5_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_value_dup_boxed
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB5_8
.LBB5_4:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	jmp	.LBB5_8
.LBB5_5:                                # %sw.default
	jmp	.LBB5_6
.LBB5_6:                                # %do.body
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$179, %edx
	movabsq	$.L.str.15, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB5_8
.LBB5_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_operation_tile_source_set_property, .Lfunc_end5-gimp_operation_tile_source_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_get_property,@function
gimp_operation_tile_source_get_property: # @gimp_operation_tile_source_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_7
.LBB6_7:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_3
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_boxed
	jmp	.LBB6_6
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_6
.LBB6_3:                                # %sw.default
	jmp	.LBB6_4
.LBB6_4:                                # %do.body
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$153, %edx
	movabsq	$.L.str.15, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_operation_tile_source_get_property, .Lfunc_end6-gimp_operation_tile_source_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_prepare,@function
gimp_operation_tile_source_prepare:     # @gimp_operation_tile_source_prepare
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	babl_format
	movabsq	$.L.str.17, %rsi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gegl_operation_set_format
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_operation_tile_source_prepare, .Lfunc_end7-gimp_operation_tile_source_prepare
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_get_bounding_box,@function
gimp_operation_tile_source_get_bounding_box: # @gimp_operation_tile_source_get_bounding_box
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
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-48(%rbp), %rdi
	movq	%rax, -32(%rbp)
	callq	memset
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	tile_manager_height
	movl	%eax, -36(%rbp)
.LBB8_2:                                # %if.end
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_operation_tile_source_get_bounding_box, .Lfunc_end8-gimp_operation_tile_source_get_bounding_box
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_operation_tile_source_process,@function
gimp_operation_tile_source_process:     # @gimp_operation_tile_source_process
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_operation_tile_source_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tile_manager_bpp
	movq	-48(%rbp), %rdi
	movl	40(%rdi), %esi
	movl	%eax, %edi
	callq	gimp_bpp_to_babl_format
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	-32(%rbp), %r8
	movl	8(%r8), %r8d
	movq	-32(%rbp), %r9
	movl	12(%r9), %r9d
	movl	%esi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	$0, (%rsp)
	callq	pixel_region_init
	movl	$1, %edi
	leaq	-120(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -128(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB9_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-144(%rbp), %rsi
	xorl	%edx, %edx
	movl	-84(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -136(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-120(%rbp), %r8
	movl	-88(%rbp), %r9d
	callq	gegl_buffer_set
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	pixel_regions_process
	movq	%rax, -128(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
	movl	$1, -4(%rbp)
.LBB9_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_operation_tile_source_process, .Lfunc_end9-gimp_operation_tile_source_process
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.16, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_operation_tile_source_get_type.g_define_type_id__volatile,@object # @gimp_operation_tile_source_get_type.g_define_type_id__volatile
	.local	gimp_operation_tile_source_get_type.g_define_type_id__volatile
	.comm	gimp_operation_tile_source_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOperationTileSource"
	.size	.L.str, 24

	.type	gimp_operation_tile_source_parent_class,@object # @gimp_operation_tile_source_parent_class
	.local	gimp_operation_tile_source_parent_class
	.comm	gimp_operation_tile_source_parent_class,8,8
	.type	GimpOperationTileSource_private_offset,@object # @GimpOperationTileSource_private_offset
	.local	GimpOperationTileSource_private_offset
	.comm	GimpOperationTileSource_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp:tilemanager-source"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"categories"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"input"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"description"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP TileManager source"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tile-manager"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Tile Manager"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The tile manager to use as source"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"linear"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Linear data"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Should the data read from the tile-manager assumed to be linear or gamma-corrected?"
	.size	.L.str.12, 84

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpoperationtilesource.c"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Gimp-GEGL"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"output"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"RaGaBaA float"
	.size	.L.str.18, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
