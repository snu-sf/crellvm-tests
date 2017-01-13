	.text
	.file	"gimpdeviceinfoeditor.bc"
	.globl	gimp_device_info_editor_get_type
	.align	16, 0x90
	.type	gimp_device_info_editor_get_type,@function
gimp_device_info_editor_get_type:       # @gimp_device_info_editor_get_type
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
	movq	gimp_device_info_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_device_info_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_device_info_editor_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_device_info_editor_init, %rcx
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
	movabsq	$gimp_device_info_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_device_info_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_device_info_editor_get_type, .Lfunc_end0-gimp_device_info_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_class_intern_init,@function
gimp_device_info_editor_class_intern_init: # @gimp_device_info_editor_class_intern_init
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
	movq	%rax, gimp_device_info_editor_parent_class
	cmpl	$0, GimpDeviceInfoEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDeviceInfoEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_device_info_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_device_info_editor_class_intern_init, .Lfunc_end1-gimp_device_info_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_init,@function
gimp_device_info_editor_init:           # @gimp_device_info_editor_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
.Ltmp9:
	.cfi_offset %rbx, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$1, -100(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -100(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-100(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	axis_use_strings(,%rcx,8), %rdi
	callq	gettext
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-100(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movq	-40(%rbp), %r8
	addq	$32, %r8
	shlq	$5, %rax
	addq	%rax, %r8
	movl	-100(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	-188(%rbp), %r8d        # 4-byte Reload
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gtk_list_store_insert_with_values
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.28, %r8
	movl	$1, %r9d
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movl	$2, %edi
	movl	$24, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$64, %r9d
	movl	%r9d, %edx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	callq	gtk_cell_renderer_combo_new
	movabsq	$.L.str.7, %rsi
	movl	$2, %edx
	movabsq	$.L.str.29, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %r10
	movabsq	$.L.str.32, %r11
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-40(%rbp), %r15
	movq	16(%r15), %r15
	movl	%edi, -232(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%r15, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -240(%rbp)        # 8-byte Spill
	callq	g_object_set
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_device_info_editor_axis_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.28, %r8
	movl	$2, %r9d
	movq	-96(%rbp), %rcx
	movq	%rax, %rdi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-56(%rbp), %rcx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rsi
	callq	gtk_tree_selection_select_iter
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_device_info_editor_axis_selected, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	callq	gdk_modifier_type_get_type
	movl	$4, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movl	$28, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-40(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-88(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.28, %r8
	movl	$1, %r9d
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_accel_new
	movabsq	$.L.str.7, %rsi
	movl	$2, %edx
	movabsq	$.L.str.29, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-88(%rbp), %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movabsq	$.L.str.35, %r8
	movl	$2, %r9d
	movabsq	$.L.str.36, %rcx
	movl	$3, %ebx
	movq	-96(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-368(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_insert_column_with_attributes
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_device_info_editor_key_edited, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_device_info_editor_key_cleared, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_device_info_editor_init, .Lfunc_end2-gimp_device_info_editor_init
	.cfi_endproc

	.globl	gimp_device_info_editor_new
	.align	16, 0x90
	.type	gimp_device_info_editor_new,@function
gimp_device_info_editor_new:            # @gimp_device_info_editor_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_device_info_get_type
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
	movabsq	$.L__func__.gimp_device_info_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_device_info_editor_get_type
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
	.size	gimp_device_info_editor_new, .Lfunc_end3-gimp_device_info_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_class_init,@function
gimp_device_info_editor_class_init:     # @gimp_device_info_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_device_info_editor_get_property, %rsi
	movabsq	$gimp_device_info_editor_set_property, %rdi
	movabsq	$gimp_device_info_editor_finalize, %rcx
	movabsq	$gimp_device_info_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_device_info_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$240, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_device_info_editor_class_init, .Lfunc_end4-gimp_device_info_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_constructed,@function
gimp_device_info_editor_constructed:    # @gimp_device_info_editor_constructed
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
	pushq	%r14
	pushq	%rbx
	subq	$592, %rsp              # imm = 0x250
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	gimp_device_info_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_info_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_device_info_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$0, -100(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	movl	$1, -100(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.13
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_9:                                # %if.end.15
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.16
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$337, %edx              # imm = 0x151
	movabsq	$.L__func__.gimp_device_info_editor_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_device_info_get_n_axes
	movl	%eax, -68(%rbp)
	movl	$-1, -76(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB5_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpl	$-1, -76(%rbp)
	jne	.LBB5_18
# BB#17:                                # %if.then.43
                                        #   in Loop: Header=BB5_15 Depth=1
	movabsq	$.L.str.8, %rdi
	leaq	-128(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.46
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-128(%rbp), %rdi
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB5_19:                               # %if.end.49
                                        #   in Loop: Header=BB5_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r9d
	leaq	-128(%rbp), %rdi
	movq	-40(%rbp), %r8
	movq	16(%r8), %r8
	movl	-76(%rbp), %eax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, %r8d
	movq	-336(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-1, 8(%rsp)
	movb	$0, %al
	callq	gtk_list_store_insert_with_values
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_15
.LBB5_21:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	gimp_device_info_editor_set_axes
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gimp_device_info_get_n_keys
	movl	%eax, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB5_22:                               # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB5_25
# BB#23:                                # %for.body.55
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-144(%rbp), %rdi
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-148(%rbp), %rdx
	leaq	-152(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-76(%rbp), %esi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_device_info_get_key
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	$2, %eax
	movl	$3, %r8d
	leaq	-144(%rbp), %rdi
	movq	-40(%rbp), %r10
	movq	224(%r10), %r10
	movl	-76(%rbp), %r11d
	movl	-148(%rbp), %ebx
	movl	-152(%rbp), %r14d
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%r8d, -356(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$2, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	$-1, 40(%rsp)
	movl	%eax, -360(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_insert_with_values
# BB#24:                                # %for.inc.64
                                        #   in Loop: Header=BB5_22 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_22
.LBB5_25:                               # %for.end.66
	callq	gtk_notebook_new
	movq	-40(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rcx
	movq	232(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, -76(%rbp)
.LBB5_26:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -76(%rbp)
	jge	.LBB5_32
# BB#27:                                # %for.body.80
                                        #   in Loop: Header=BB5_26 Depth=1
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdi
	movq	axis_use_strings(,%rdi,8), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	gimp_frame_new
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-160(%rbp), %rdi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_device_info_get_curve
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB5_29
# BB#28:                                # %if.then.94
                                        #   in Loop: Header=BB5_26 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-160(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-184(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-184(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_curve_view_new
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	movl	$4, %r8d
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	32(%rax), %rdx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movl	$264, %r8d              # imm = 0x108
	movq	-192(%rbp), %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gtk_widget_set_size_request
	movq	-160(%rbp), %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-192(%rbp), %rdi
	callq	gtk_widget_show
	movq	-192(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_curve_view_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_curve_view_set_curve
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movl	%r8d, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-184(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -200(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-200(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-200(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-208(%rbp), %rdi
	callq	gtk_widget_show
	movq	-200(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -216(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-216(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	movl	-540(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-216(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_device_info_editor_curve_reset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-216(%rbp), %rdi
	movq	-168(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB5_30
.LBB5_29:                               # %if.else.143
                                        #   in Loop: Header=BB5_26 Depth=1
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdi
	movq	axis_use_strings(,%rdi,8), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -224(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-224(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-224(%rbp), %rdi
	callq	gtk_widget_show
	movq	-232(%rbp), %rdi
	callq	g_free
.LBB5_30:                               # %if.end.156
                                        #   in Loop: Header=BB5_26 Depth=1
	jmp	.LBB5_31
.LBB5_31:                               # %for.inc.157
                                        #   in Loop: Header=BB5_26 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_26
.LBB5_32:                               # %for.end.159
	addq	$592, %rsp              # imm = 0x250
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_device_info_editor_constructed, .Lfunc_end5-gimp_device_info_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_finalize,@function
gimp_device_info_editor_finalize:       # @gimp_device_info_editor_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_info_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_device_info_editor_finalize, .Lfunc_end6-gimp_device_info_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_set_property,@function
gimp_device_info_editor_set_property:   # @gimp_device_info_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$532, %edx              # imm = 0x214
	movabsq	$.L.str.26, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_device_info_editor_set_property, .Lfunc_end7-gimp_device_info_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_get_property,@function
gimp_device_info_editor_get_property:   # @gimp_device_info_editor_get_property
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$554, %edx              # imm = 0x22A
	movabsq	$.L.str.26, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_device_info_editor_get_property, .Lfunc_end8-gimp_device_info_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_set_axes,@function
gimp_device_info_editor_set_axes:       # @gimp_device_info_editor_set_axes
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_device_info_get_n_axes
	movl	%eax, -20(%rbp)
	movl	$1, -24(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	cmpl	$7, -24(%rbp)
	jge	.LBB9_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -52(%rbp)
.LBB9_3:                                # %for.cond.3
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB9_8
# BB#4:                                 # %for.body.5
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_device_info_get_axis_use
	cmpl	-24(%rbp), %eax
	jne	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=2
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_3
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB9_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$-1, -52(%rbp)
.LBB9_10:                               # %if.end.11
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$-1, -52(%rbp)
	jne	.LBB9_12
# BB#11:                                # %if.then.13
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.8, %rdi
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB9_13
.LBB9_12:                               # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB9_13:                               # %if.end.18
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-24(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movq	-16(%rbp), %r9
	addq	$32, %r9
	shlq	$5, %rax
	addq	%rax, %r9
	movq	%r9, %rsi
	movb	$0, %al
	callq	gtk_list_store_set
# BB#14:                                # %for.inc.20
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_15:                               # %for.end.22
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_device_info_editor_set_axes, .Lfunc_end9-gimp_device_info_editor_set_axes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_curve_reset,@function
gimp_device_info_editor_curve_reset:    # @gimp_device_info_editor_curve_reset
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_curve_reset
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_device_info_editor_curve_reset, .Lfunc_end10-gimp_device_info_editor_curve_reset
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_axis_changed,@function
gimp_device_info_editor_axis_changed:   # @gimp_device_info_editor_axis_changed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB12_24
# BB#1:                                 # %if.then
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$-1, -92(%rbp)
	movl	$-1, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-84(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	callq	gimp_device_info_get_n_axes
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB12_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-104(%rbp), %esi
	callq	gimp_device_info_get_axis_use
	cmpl	-84(%rbp), %eax
	jne	.LBB12_5
# BB#4:                                 # %if.then.15
	movl	-104(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB12_7
.LBB12_5:                               # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	jmp	.LBB12_6
.LBB12_6:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB12_2
.LBB12_7:                               # %for.end
	movl	-92(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jne	.LBB12_9
# BB#8:                                 # %if.then.17
	jmp	.LBB12_25
.LBB12_9:                               # %if.end.18
	cmpl	$-1, -92(%rbp)
	je	.LBB12_11
# BB#10:                                # %if.then.20
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_device_info_get_axis_use
	movl	%eax, -88(%rbp)
.LBB12_11:                              # %if.end.23
	cmpl	$-1, -92(%rbp)
	jne	.LBB12_14
# BB#12:                                # %land.lhs.true
	cmpl	$1, -84(%rbp)
	je	.LBB12_17
# BB#13:                                # %lor.lhs.false
	cmpl	$2, -84(%rbp)
	je	.LBB12_17
.LBB12_14:                              # %lor.lhs.false.27
	cmpl	$-1, -96(%rbp)
	jne	.LBB12_18
# BB#15:                                # %land.lhs.true.29
	cmpl	$1, -88(%rbp)
	je	.LBB12_17
# BB#16:                                # %lor.lhs.false.31
	cmpl	$2, -88(%rbp)
	jne	.LBB12_18
.LBB12_17:                              # %if.then.33
	jmp	.LBB12_23
.LBB12_18:                              # %if.else
	cmpl	$-1, -92(%rbp)
	je	.LBB12_20
# BB#19:                                # %if.then.35
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-92(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	gimp_device_info_set_axis_use
.LBB12_20:                              # %if.end.37
	cmpl	$-1, -96(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.39
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	-96(%rbp), %esi
	movl	-88(%rbp), %edx
	callq	gimp_device_info_set_axis_use
.LBB12_22:                              # %if.end.41
	movq	-32(%rbp), %rdi
	callq	gimp_device_info_editor_set_axes
.LBB12_23:                              # %if.end.42
	jmp	.LBB12_24
.LBB12_24:                              # %if.end.43
	jmp	.LBB12_25
.LBB12_25:                              # %out
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_device_info_editor_axis_changed, .Lfunc_end12-gimp_device_info_editor_axis_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_axis_selected,@function
gimp_device_info_editor_axis_selected:  # @gimp_device_info_editor_axis_selected
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-60(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-24(%rbp), %rcx
	movq	232(%rcx), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_notebook_set_current_page
.LBB13_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_device_info_editor_axis_selected, .Lfunc_end13-gimp_device_info_editor_axis_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_key_edited,@function
gimp_device_info_editor_key_edited:     # @gimp_device_info_editor_key_edited
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-88(%rbp), %rsi
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rcx
	movq	224(%rcx), %rdi
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r10d
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-92(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	gimp_device_info_set_key
.LBB14_2:                               # %if.end
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_device_info_editor_key_edited, .Lfunc_end14-gimp_device_info_editor_key_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_info_editor_key_cleared,@function
gimp_device_info_editor_key_cleared:    # @gimp_device_info_editor_key_cleared
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_device_info_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-72(%rbp), %rsi
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	224(%rcx), %rdi
	movl	%r8d, %ecx
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	-76(%rbp), %esi
	movl	%ecx, %edx
	callq	gimp_device_info_set_key
.LBB15_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_device_info_editor_key_cleared, .Lfunc_end15-gimp_device_info_editor_key_cleared
	.cfi_endproc

	.type	gimp_device_info_editor_get_type.g_define_type_id__volatile,@object # @gimp_device_info_editor_get_type.g_define_type_id__volatile
	.local	gimp_device_info_editor_get_type.g_define_type_id__volatile
	.comm	gimp_device_info_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDeviceInfoEditor"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_device_info_editor_new,@object # @__func__.gimp_device_info_editor_new
.L__func__.gimp_device_info_editor_new:
	.asciz	"gimp_device_info_editor_new"
	.size	.L__func__.gimp_device_info_editor_new, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DEVICE_INFO (info)"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"info"
	.size	.L.str.3, 5

	.type	gimp_device_info_editor_parent_class,@object # @gimp_device_info_editor_parent_class
	.local	gimp_device_info_editor_parent_class
	.comm	gimp_device_info_editor_parent_class,8,8
	.type	GimpDeviceInfoEditor_private_offset,@object # @GimpDeviceInfoEditor_private_offset
	.local	GimpDeviceInfoEditor_private_offset
	.comm	GimpDeviceInfoEditor_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpdeviceinfoeditor.c"
	.size	.L.str.4, 23

	.type	.L__func__.gimp_device_info_editor_constructed,@object # @__func__.gimp_device_info_editor_constructed
.L__func__.gimp_device_info_editor_constructed:
	.asciz	"gimp_device_info_editor_constructed"
	.size	.L__func__.gimp_device_info_editor_constructed, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_DEVICE_INFO (private->info)"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Mode:"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"mode"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"none"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s Curve"
	.size	.L.str.10, 9

	.type	axis_use_strings,@object # @axis_use_strings
	.section	.rodata,"a",@progbits
	.align	16
axis_use_strings:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.size	axis_use_strings, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"gimp"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"border-width"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Curve _type:"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"curve-type"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-curve"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Reset Curve"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"clicked"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The axis '%s' has no curve"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"X"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Y"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Pressure"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"X tilt"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Y tilt"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Wheel"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Axes"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"text"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"editable"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"model"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"text-column"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"has-entry"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"changed"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Keys"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"accel-key"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"accel-mods"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"accel-edited"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"accel-cleared"
	.size	.L.str.38, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
