	.text
	.file	"gimptooleditor.bc"
	.globl	gimp_tool_editor_get_type
	.align	16, 0x90
	.type	gimp_tool_editor_get_type,@function
gimp_tool_editor_get_type:              # @gimp_tool_editor_get_type
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
	movq	gimp_tool_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$888, %edx              # imm = 0x378
	movabsq	$gimp_tool_editor_class_intern_init, %rdi
	movl	$328, %r8d              # imm = 0x148
	movabsq	$gimp_tool_editor_init, %rcx
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
	movabsq	$gimp_tool_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_editor_get_type, .Lfunc_end0-gimp_tool_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_class_intern_init,@function
gimp_tool_editor_class_intern_init:     # @gimp_tool_editor_class_intern_init
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
	movq	%rax, gimp_tool_editor_parent_class
	cmpl	$0, GimpToolEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_editor_class_intern_init, .Lfunc_end1-gimp_tool_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_init,@function
gimp_tool_editor_init:                  # @gimp_tool_editor_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 76(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_editor_init, .Lfunc_end2-gimp_tool_editor_init
	.cfi_endproc

	.globl	gimp_tool_editor_new
	.align	16, 0x90
	.type	gimp_tool_editor_new,@function
gimp_tool_editor_new:                   # @gimp_tool_editor_new
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_29
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_29
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	callq	gimp_tool_editor_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-24(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-64(%rbp), %rax
	movq	144(%rax), %rax
	movq	-96(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	%rax, 80(%rsi)
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	gimp_container_get_name_array
	movq	-96(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-96(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	g_slice_alloc
	movq	-96(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movl	$0, -44(%rbp)
.LBB3_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jge	.LBB3_28
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movslq	-44(%rbp), %rdi
	movq	-96(%rbp), %rdx
	shlq	$2, %rdi
	addq	64(%rdx), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB3_25
.LBB3_28:                               # %for.end
	movq	-72(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_container_view_set_view_size
	movq	-72(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	16(%rax), %rsi
	callq	gimp_container_view_set_container
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_set_context
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gimp_container_view_set_reorderable
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_editor_set_show_name
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -168(%rbp)
	callq	gtk_tree_view_column_new
	xorl	%edx, %edx
	movq	%rax, -176(%rbp)
	movq	-152(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-176(%rbp), %rsi
	callq	gtk_tree_view_insert_column
	movabsq	$.L.str.5, %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_cell_renderer_toggle_new
	movq	%rax, -184(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movl	$4, %edx
	movl	-36(%rbp), %ecx
	movq	-168(%rbp), %rdi
	movl	536(%rdi), %r8d
	shll	$1, %r8d
	subl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	movq	-168(%rbp), %rdi
	movl	540(%rdi), %r9d
	shll	$1, %r9d
	subl	%r9d, %r8d
	movq	%rax, %rdi
	callq	gimp_get_icon_size
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, -188(%rbp)
	movq	-184(%rbp), %rdi
	movl	-188(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$gimp_tool_editor_eye_data_func, %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-152(%rbp), %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movq	-152(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	gimp_container_tree_view_add_toggle_cell
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_tool_editor_eye_clicked, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-184(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_tool_editor_visible_notify, %rcx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movq	-96(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-64(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_tool_editor_raise_clicked, %rcx
	movabsq	$gimp_tool_editor_raise_extend_clicked, %rdx
	movq	-56(%rbp), %rdi
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-320(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	-336(%rbp), %r9         # 8-byte Reload
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-96(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_tool_editor_lower_clicked, %rcx
	movabsq	$gimp_tool_editor_lower_extend_clicked, %rdx
	movq	-56(%rbp), %rdi
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-368(%rbp), %r9         # 8-byte Reload
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-392(%rbp), %r8         # 8-byte Reload
	movq	-384(%rbp), %r9         # 8-byte Reload
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-96(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movabsq	$gimp_tool_editor_reset_clicked, %rdx
	movq	-56(%rbp), %rdi
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	-432(%rbp), %r9         # 8-byte Reload
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-96(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB3_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_editor_new, .Lfunc_end3-gimp_tool_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_eye_data_func,@function
gimp_tool_editor_eye_data_func:         # @gimp_tool_editor_eye_data_func
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
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	-48(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, %edx
	movq	%r9, %rcx
	movl	%r10d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.4, %rsi
	leaq	-52(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-48(%rbp), %rdi
	movq	40(%rdi), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movabsq	$.L.str.18, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdx
	movl	-52(%rbp), %r8d
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movb	$0, %al
	callq	g_object_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_editor_eye_data_func, .Lfunc_end4-gimp_tool_editor_eye_data_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_eye_clicked,@function
gimp_tool_editor_eye_clicked:           # @gimp_tool_editor_eye_clicked
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rsi
	leaq	-92(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-88(%rbp), %rdi
	movq	40(%rdi), %rdi
	cmpl	$0, -92(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edx
	movb	$0, %al
	callq	g_object_set
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB5_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_editor_eye_clicked, .Lfunc_end5-gimp_tool_editor_eye_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_visible_notify,@function
gimp_tool_editor_visible_notify:        # @gimp_tool_editor_visible_notify
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_tree_model_get_path
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gtk_tree_model_row_changed
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB6_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_editor_visible_notify, .Lfunc_end6-gimp_tool_editor_visible_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_raise_clicked,@function
gimp_tool_editor_raise_clicked:         # @gimp_tool_editor_raise_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB7_3
# BB#2:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_container_reorder
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %if.end.11
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_editor_raise_clicked, .Lfunc_end7-gimp_tool_editor_raise_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_raise_extend_clicked,@function
gimp_tool_editor_raise_extend_clicked:  # @gimp_tool_editor_raise_extend_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_5
# BB#1:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB8_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB8_4
# BB#3:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_reorder
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_editor_raise_extend_clicked, .Lfunc_end8-gimp_tool_editor_raise_extend_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_lower_clicked,@function
gimp_tool_editor_lower_clicked:         # @gimp_tool_editor_lower_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB9_3
# BB#2:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_container_reorder
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %if.end.14
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_editor_lower_clicked, .Lfunc_end9-gimp_tool_editor_lower_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_lower_extend_clicked,@function
gimp_tool_editor_lower_extend_clicked:  # @gimp_tool_editor_lower_extend_clicked
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_context_get_tool
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_6
# BB#1:                                 # %land.lhs.true
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB10_6
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB10_4
# BB#3:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_reorder
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB10_6:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_editor_lower_extend_clicked, .Lfunc_end10-gimp_tool_editor_lower_extend_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_reset_clicked,@function
gimp_tool_editor_reset_clicked:         # @gimp_tool_editor_reset_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	gimp_container_reorder
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB11_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB11_1
.LBB11_9:                               # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_editor_reset_clicked, .Lfunc_end11-gimp_tool_editor_reset_clicked
	.cfi_endproc

	.globl	gimp_tool_editor_revert_changes
	.align	16, 0x90
	.type	gimp_tool_editor_revert_changes,@function
gimp_tool_editor_revert_changes:        # @gimp_tool_editor_revert_changes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	gimp_container_reorder
	movabsq	$.L.str.4, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-32(%rbp), %rdi
	movslq	-12(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	64(%r9), %r9
	movl	(%r9,%r8,4), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	g_object_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_editor_revert_changes, .Lfunc_end12-gimp_tool_editor_revert_changes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_class_init,@function
gimp_tool_editor_class_init:            # @gimp_tool_editor_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movl	$88, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_tool_editor_finalize, %rdi
	movabsq	$gimp_tool_editor_dispose, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_editor_class_init, .Lfunc_end13-gimp_tool_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_dispose,@function
gimp_tool_editor_dispose:               # @gimp_tool_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 76(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movl	76(%rax), %esi
	callq	gimp_container_remove_handler
	movq	-16(%rbp), %rax
	movl	$0, 76(%rax)
.LBB14_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 16(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 32(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 40(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 48(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 24(%rcx)
	movq	gimp_tool_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_editor_dispose, .Lfunc_end14-gimp_tool_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_editor_finalize,@function
gimp_tool_editor_finalize:              # @gimp_tool_editor_finalize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tool_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB15_6
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
.LBB15_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	72(%rcx), %eax
	jge	.LBB15_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB15_2 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB15_2 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_2
.LBB15_5:                               # %for.end
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 56(%rax)
.LBB15_6:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB15_8
# BB#7:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movslq	72(%rax), %rax
	shlq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_slice_free1
	movq	-24(%rbp), %rax
	movq	$0, 64(%rax)
.LBB15_8:                               # %if.end.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tool_editor_finalize, .Lfunc_end15-gimp_tool_editor_finalize
	.cfi_endproc

	.type	gimp_tool_editor_get_type.g_define_type_id__volatile,@object # @gimp_tool_editor_get_type.g_define_type_id__volatile
	.local	gimp_tool_editor_get_type.g_define_type_id__volatile
	.comm	gimp_tool_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tool_editor_new,@object # @__func__.gimp_tool_editor_new
.L__func__.gimp_tool_editor_new:
	.asciz	"gimp_tool_editor_new"
	.size	.L__func__.gimp_tool_editor_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"visible"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-visible"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock-size"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"clicked"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::visible"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-go-up"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Raise this tool"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Raise this tool to the top"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-go-down"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Lower this tool"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Lower this tool to the bottom"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-reset"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Reset tool order and visibility"
	.size	.L.str.16, 32

	.type	gimp_tool_editor_parent_class,@object # @gimp_tool_editor_parent_class
	.local	gimp_tool_editor_parent_class
	.comm	gimp_tool_editor_parent_class,8,8
	.type	GimpToolEditor_private_offset,@object # @GimpToolEditor_private_offset
	.local	GimpToolEditor_private_offset
	.comm	GimpToolEditor_private_offset,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-tool-default-visible"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"active"
	.size	.L.str.18, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
