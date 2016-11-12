	.text
	.file	"gimpcolorselectorpalette.bc"
	.globl	gimp_color_selector_palette_get_type
	.align	16, 0x90
	.type	gimp_color_selector_palette_get_type,@function
gimp_color_selector_palette_get_type:   # @gimp_color_selector_palette_get_type
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
	movq	gimp_color_selector_palette_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_selector_palette_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_color_selector_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$936, %edx              # imm = 0x3A8
	movabsq	$gimp_color_selector_palette_class_intern_init, %rdi
	movl	$232, %r8d
	movabsq	$gimp_color_selector_palette_init, %rcx
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
	movabsq	$gimp_color_selector_palette_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_selector_palette_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_selector_palette_get_type, .Lfunc_end0-gimp_color_selector_palette_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_class_intern_init,@function
gimp_color_selector_palette_class_intern_init: # @gimp_color_selector_palette_class_intern_init
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
	movq	%rax, gimp_color_selector_palette_parent_class
	cmpl	$0, GimpColorSelectorPalette_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorSelectorPalette_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_selector_palette_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_selector_palette_class_intern_init, .Lfunc_end1-gimp_color_selector_palette_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_init,@function
gimp_color_selector_palette_init:       # @gimp_color_selector_palette_init
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
	.size	gimp_color_selector_palette_init, .Lfunc_end2-gimp_color_selector_palette_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_class_init,@function
gimp_color_selector_palette_class_init: # @gimp_color_selector_palette_class_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movabsq	$gimp_color_selector_palette_set_config, %rsi
	movabsq	$gimp_color_selector_palette_set_color, %rdi
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.2, %rdx
	movq	-16(%rbp), %r8
	movq	%rax, 824(%r8)
	movq	-16(%rbp), %rax
	movq	%rdx, 832(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 840(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 904(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_selector_palette_class_init, .Lfunc_end3-gimp_color_selector_palette_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_set_color,@function
gimp_color_selector_palette_set_color:  # @gimp_color_selector_palette_set_color
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB4_7
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gimp_context_get_palette
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_6
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jle	.LBB4_6
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	gimp_palette_find_entry
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_view_select_entry
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.16
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.17
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_selector_palette_set_color, .Lfunc_end4-gimp_color_selector_palette_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_set_config,@function
gimp_color_selector_palette_set_config: # @gimp_color_selector_palette_set_config
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_palette_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_selector_palette_palette_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	224(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_context
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	$0, 216(%rax)
.LBB5_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-24(%rbp), %rcx
	movq	%rax, 216(%rcx)
.LBB5_4:                                # %if.end.13
	movq	-24(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB5_9
# BB#5:                                 # %if.then.16
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	cmpq	$0, 224(%rdi)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gtk_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movl	$100, %ecx
	xorl	%r9d, %r9d
	movl	$1, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	-120(%rbp), %r8d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	-24(%rbp), %rdx
	movq	%rax, 224(%rdx)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_view_renderer_palette_set_cell_size
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_renderer_palette_set_draw_grid
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_color_selector_palette_entry_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_8
.LBB5_7:                                # %if.else
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	216(%rax), %rsi
	callq	gimp_view_renderer_set_context
.LBB5_8:                                # %if.end.58
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_color_selector_palette_palette_changed, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	movq	216(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_context_get_palette
	movq	-24(%rbp), %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_selector_palette_palette_changed
.LBB5_9:                                # %if.end.64
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_selector_palette_set_config, .Lfunc_end5-gimp_color_selector_palette_set_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_palette_changed,@function
gimp_color_selector_palette_palette_changed: # @gimp_color_selector_palette_palette_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_selector_palette_palette_changed, .Lfunc_end6-gimp_color_selector_palette_palette_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selector_palette_entry_clicked,@function
gimp_color_selector_palette_entry_clicked: # @gimp_color_selector_palette_entry_clicked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, 144(%rcx)
	movq	8(%rsi), %rdi
	movq	%rdi, 152(%rcx)
	movq	16(%rsi), %rdi
	movq	%rdi, 160(%rcx)
	movq	24(%rsi), %rsi
	movq	%rsi, 168(%rcx)
	movq	-32(%rbp), %rcx
	addq	$144, %rcx
	movq	-32(%rbp), %rsi
	addq	$176, %rsi
	movq	%rcx, %rdi
	callq	gimp_rgb_to_hsv
	movq	-32(%rbp), %rdi
	callq	gimp_color_selector_color_changed
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_selector_palette_entry_clicked, .Lfunc_end7-gimp_color_selector_palette_entry_clicked
	.cfi_endproc

	.type	gimp_color_selector_palette_get_type.g_define_type_id__volatile,@object # @gimp_color_selector_palette_get_type.g_define_type_id__volatile
	.local	gimp_color_selector_palette_get_type.g_define_type_id__volatile
	.comm	gimp_color_selector_palette_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorSelectorPalette"
	.size	.L.str, 25

	.type	gimp_color_selector_palette_parent_class,@object # @gimp_color_selector_palette_parent_class
	.local	gimp_color_selector_palette_parent_class
	.comm	gimp_color_selector_palette_parent_class,8,8
	.type	GimpColorSelectorPalette_private_offset,@object # @GimpColorSelectorPalette_private_offset
	.local	GimpColorSelectorPalette_private_offset
	.comm	GimpColorSelectorPalette_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Palette"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-colorselector-palette"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-select-color"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-context"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"entry-clicked"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"palette-changed"
	.size	.L.str.6, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
