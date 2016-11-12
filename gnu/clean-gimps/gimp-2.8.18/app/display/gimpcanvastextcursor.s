	.text
	.file	"gimpcanvastextcursor.bc"
	.globl	gimp_canvas_text_cursor_get_type
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_get_type,@function
gimp_canvas_text_cursor_get_type:       # @gimp_canvas_text_cursor_get_type
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
	movq	gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_canvas_item_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$208, %edx
	movabsq	$gimp_canvas_text_cursor_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_canvas_text_cursor_init, %rcx
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
	movabsq	$gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_canvas_text_cursor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_canvas_text_cursor_get_type, .Lfunc_end0-gimp_canvas_text_cursor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_text_cursor_class_intern_init,@function
gimp_canvas_text_cursor_class_intern_init: # @gimp_canvas_text_cursor_class_intern_init
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
	movq	%rax, gimp_canvas_text_cursor_parent_class
	cmpl	$0, GimpCanvasTextCursor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCanvasTextCursor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_canvas_text_cursor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_canvas_text_cursor_class_intern_init, .Lfunc_end1-gimp_canvas_text_cursor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_text_cursor_init,@function
gimp_canvas_text_cursor_init:           # @gimp_canvas_text_cursor_init
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
	.size	gimp_canvas_text_cursor_init, .Lfunc_end2-gimp_canvas_text_cursor_init
	.cfi_endproc

	.globl	gimp_canvas_text_cursor_new
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_new,@function
gimp_canvas_text_cursor_new:            # @gimp_canvas_text_cursor_new
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_text_cursor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -64(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_canvas_text_cursor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	callq	gimp_canvas_text_cursor_get_type
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %r14
	movl	(%r14), %r10d
	movq	-64(%rbp), %r14
	movl	4(%r14), %r15d
	movq	-64(%rbp), %r14
	movl	8(%r14), %r12d
	movq	-64(%rbp), %r14
	movl	12(%r14), %r13d
	movl	-68(%rbp), %r14d
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movl	%r10d, %r8d
	movl	%r15d, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r13d, 32(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	%r14d, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r11, -128(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_18:                               # %return
	movq	-48(%rbp), %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_canvas_text_cursor_new, .Lfunc_end3-gimp_canvas_text_cursor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_text_cursor_class_init,@function
gimp_canvas_text_cursor_class_init:     # @gimp_canvas_text_cursor_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_canvas_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %edx
	movabsq	$gimp_canvas_text_cursor_get_extents, %r10
	movabsq	$gimp_canvas_text_cursor_draw, %r11
	movabsq	$gimp_canvas_text_cursor_get_property, %rbx
	movabsq	$gimp_canvas_text_cursor_set_property, %r14
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%r14, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 168(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 176(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r10         # 8-byte Reload
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%r10, %rdx
	movl	$227, (%rsp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-32(%rbp), %rdx
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-32(%rbp), %rdx
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$4294705152, %ecx       # imm = 0xFFFC0000
	movl	$262144, %r8d           # imm = 0x40000
	xorl	%r9d, %r9d
	movl	$227, %esi
	movq	-32(%rbp), %rdx
	movl	%esi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$227, %r8d
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$20, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_canvas_text_cursor_class_init, .Lfunc_end4-gimp_canvas_text_cursor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_canvas_text_cursor_set_property,@function
gimp_canvas_text_cursor_set_property:   # @gimp_canvas_text_cursor_set_property
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
	callq	gimp_canvas_text_cursor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB5_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB5_9
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB5_9
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB5_9
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB5_9
.LBB5_6:                                # %sw.default
	jmp	.LBB5_7
.LBB5_7:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$163, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB5_9
.LBB5_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canvas_text_cursor_set_property, .Lfunc_end5-gimp_canvas_text_cursor_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5

	.text
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_get_property,@function
gimp_canvas_text_cursor_get_property:   # @gimp_canvas_text_cursor_get_property
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
	callq	gimp_canvas_text_cursor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$4, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_6
# BB#10:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_9
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_9
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_9
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB6_9
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_9
.LBB6_6:                                # %sw.default
	jmp	.LBB6_7
.LBB6_7:                                # %do.body
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movl	$195, %edx
	movabsq	$.L.str.12, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB6_9
.LBB6_9:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_canvas_text_cursor_get_property, .Lfunc_end6-gimp_canvas_text_cursor_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_draw,@function
gimp_canvas_text_cursor_draw:           # @gimp_canvas_text_cursor_draw
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_canvas_text_cursor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %r8
	leaq	-64(%rbp), %r9
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_text_cursor_transform
	movq	-32(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	callq	cairo_line_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	addsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	cairo_line_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_move_to
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	addsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	callq	cairo_line_to
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_gimp_canvas_item_stroke
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_canvas_text_cursor_draw, .Lfunc_end7-gimp_canvas_text_cursor_draw
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4613937818241073152     # double 3
.LCPI8_1:
	.quad	4621256167635550208     # double 9
.LCPI8_2:
	.quad	4609434218613702656     # double 1.5
.LCPI8_3:
	.quad	4616752568008179712     # double 4.5
	.text
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_get_extents,@function
gimp_canvas_text_cursor_get_extents:    # @gimp_canvas_text_cursor_get_extents
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_canvas_text_cursor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-64(%rbp), %r8
	leaq	-72(%rbp), %r9
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_canvas_text_cursor_transform
	movq	-24(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_3, %xmm2         # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm2, %xmm3
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movsd	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
.LBB8_3:                                # %if.end
	leaq	-40(%rbp), %rdi
	callq	cairo_region_create_rectangle
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_canvas_text_cursor_get_extents, .Lfunc_end8-gimp_canvas_text_cursor_get_extents
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_canvas_text_cursor_transform,@function
gimp_canvas_text_cursor_transform:      # @gimp_canvas_text_cursor_transform
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_canvas_text_cursor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	(%rax), %r10d
	movq	-56(%rbp), %rax
	movl	(%rax), %r11d
	movq	-56(%rbp), %rax
	addl	8(%rax), %r11d
	cmpl	%r11d, %r10d
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	jge	.LBB10_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %cond.false
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB10_3:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	12(%rcx), %edx
	cmpl	%edx, %eax
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jge	.LBB10_5
# BB#4:                                 # %cond.true.13
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false.15
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB10_6:                               # %cond.end.19
	movl	-92(%rbp), %eax         # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movl	(%rdx), %eax
	movq	-56(%rbp), %rdx
	movl	(%rdx), %ecx
	movq	-56(%rbp), %rdx
	addl	8(%rdx), %ecx
	cmpl	%ecx, %eax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	jle	.LBB10_8
# BB#7:                                 # %cond.true.28
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false.30
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB10_9:                               # %cond.end.34
	movl	-108(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm0
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	12(%rcx), %edx
	cmpl	%edx, %eax
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jle	.LBB10_11
# BB#10:                                # %cond.true.43
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false.45
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	12(%rax), %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
.LBB10_12:                              # %cond.end.49
	movl	-124(%rbp), %eax        # 4-byte Reload
	cvtsi2sdl	%eax, %xmm1
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdx
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, (%rdx)
	movq	-32(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movq	-48(%rbp), %rdx
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, (%rdx)
	movq	-24(%rbp), %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-32(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	callq	floor
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movq	-56(%rbp), %rdx
	cmpl	$0, 16(%rdx)
	je	.LBB10_14
# BB#13:                                # %if.then
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	ceil
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB10_15
.LBB10_14:                              # %if.else
	movsd	.LCPI10_1, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	ceil
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB10_15:                              # %if.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_canvas_text_cursor_transform, .Lfunc_end10-gimp_canvas_text_cursor_transform
	.cfi_endproc

	.type	gimp_canvas_text_cursor_get_type.g_define_type_id__volatile,@object # @gimp_canvas_text_cursor_get_type.g_define_type_id__volatile
	.local	gimp_canvas_text_cursor_get_type.g_define_type_id__volatile
	.comm	gimp_canvas_text_cursor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCanvasTextCursor"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_canvas_text_cursor_new,@object # @__func__.gimp_canvas_text_cursor_new
.L__func__.gimp_canvas_text_cursor_new:
	.asciz	"gimp_canvas_text_cursor_new"
	.size	.L__func__.gimp_canvas_text_cursor_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cursor != NULL"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"shell"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"x"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"y"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"width"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"height"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"overwrite"
	.size	.L.str.9, 10

	.type	gimp_canvas_text_cursor_parent_class,@object # @gimp_canvas_text_cursor_parent_class
	.local	gimp_canvas_text_cursor_parent_class
	.comm	gimp_canvas_text_cursor_parent_class,8,8
	.type	GimpCanvasTextCursor_private_offset,@object # @GimpCanvasTextCursor_private_offset
	.local	GimpCanvasTextCursor_private_offset
	.comm	GimpCanvasTextCursor_private_offset,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimpcanvastextcursor.c"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"property"
	.size	.L.str.12, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
