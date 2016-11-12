	.text
	.file	"gimpselectionoptions.bc"
	.globl	gimp_selection_options_get_type
	.align	16, 0x90
	.type	gimp_selection_options_get_type,@function
gimp_selection_options_get_type:        # @gimp_selection_options_get_type
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
	movq	gimp_selection_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_selection_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_selection_options_class_intern_init, %rdi
	movl	$384, %r8d              # imm = 0x180
	movabsq	$gimp_selection_options_init, %rcx
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
	movabsq	$gimp_selection_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_selection_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_options_get_type, .Lfunc_end0-gimp_selection_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_options_class_intern_init,@function
gimp_selection_options_class_intern_init: # @gimp_selection_options_class_intern_init
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
	movq	%rax, gimp_selection_options_parent_class
	cmpl	$0, GimpSelectionOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSelectionOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_selection_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_options_class_intern_init, .Lfunc_end1-gimp_selection_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_options_init,@function
gimp_selection_options_init:            # @gimp_selection_options_init
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
	.size	gimp_selection_options_init, .Lfunc_end2-gimp_selection_options_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4621819117588971520     # double 10
	.text
	.globl	gimp_selection_options_gui
	.align	16, 0x90
	.type	gimp_selection_options_gui,@function
gimp_selection_options_gui:             # @gimp_selection_options_gui
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
	subq	$272, %rsp              # imm = 0x110
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_options_gui
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movl	-176(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB3_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movl	-84(%rbp), %edi
	callq	gimp_selection_options_get_modifiers
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-96(%rbp), %rdi
	callq	gtk_widget_get_tooltip_text
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_6
# BB#5:                                 # %if.then.22
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$.L.str.4, %rdi
	movq	-112(%rbp), %rsi
	movq	-104(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_help_set_help_data_with_markup
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_help_set_help_data
.LBB3_7:                                # %if.end.24
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	jmp	.LBB3_1
.LBB3_9:                                # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_box_reorder_child
	movq	-72(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rsi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 376(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_spin_scale_new
	movabsq	$.L.str.10, %rdi
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-136(%rbp), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_expanding_frame_new
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_selection_options_gui, .Lfunc_end3-gimp_selection_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_options_get_modifiers,@function
gimp_selection_options_get_modifiers:   # @gimp_selection_options_get_modifiers
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -16(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -8(%rbp)
	callq	gimp_get_modify_selection_mask
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	ja	.LBB4_5
# BB#6:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %sw.bb.2
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB4_5
.LBB4_3:                                # %sw.bb.3
	movl	$0, -16(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %sw.bb.4
	movl	-8(%rbp), %eax
	orl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB4_5:                                # %sw.epilog
	movl	-16(%rbp), %edi
	callq	gimp_get_mod_string
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_selection_options_get_modifiers, .Lfunc_end4-gimp_selection_options_get_modifiers
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4636737291354636288     # double 100
.LCPI5_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_selection_options_class_init,@function
gimp_selection_options_class_init:      # @gimp_selection_options_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_selection_options_get_property, %rsi
	movabsq	$gimp_selection_options_set_property, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_channel_ops_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.13, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$4, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_selection_options_class_init, .Lfunc_end5-gimp_selection_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_options_set_property,@function
gimp_selection_options_set_property:    # @gimp_selection_options_set_property
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
	callq	gimp_selection_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB6_8
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 356(%rdi)
	jmp	.LBB6_8
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 360(%rdi)
	jmp	.LBB6_8
.LBB6_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 368(%rdi)
	jmp	.LBB6_8
.LBB6_5:                                # %sw.default
	jmp	.LBB6_6
.LBB6_6:                                # %do.body
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$127, %edx
	movabsq	$.L.str.16, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB6_8
.LBB6_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_selection_options_set_property, .Lfunc_end6-gimp_selection_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4

	.text
	.align	16, 0x90
	.type	gimp_selection_options_get_property,@function
gimp_selection_options_get_property:    # @gimp_selection_options_get_property
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
	callq	gimp_selection_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_5
# BB#9:                                 # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_8
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	356(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_8
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	360(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_8
.LBB7_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_8
.LBB7_5:                                # %sw.default
	jmp	.LBB7_6
.LBB7_6:                                # %do.body
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$159, %edx
	movabsq	$.L.str.16, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB7_8
.LBB7_8:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_selection_options_get_property, .Lfunc_end7-gimp_selection_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.17, %r9d
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

	.type	gimp_selection_options_get_type.g_define_type_id__volatile,@object # @gimp_selection_options_get_type.g_define_type_id__volatile
	.local	gimp_selection_options_get_type.g_define_type_id__volatile
	.comm	gimp_selection_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSelectionOptions"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Mode:"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"operation"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-selection"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s  <b>%s</b>"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"antialias"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Antialiasing"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"feather-radius"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Radius"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"feather"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Feather edges"
	.size	.L.str.10, 14

	.type	gimp_selection_options_parent_class,@object # @gimp_selection_options_parent_class
	.local	gimp_selection_options_parent_class
	.comm	gimp_selection_options_parent_class,8,8
	.type	GimpSelectionOptions_private_offset,@object # @GimpSelectionOptions_private_offset
	.local	GimpSelectionOptions_private_offset
	.comm	GimpSelectionOptions_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Smooth edges"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Enable feathering of selection edges"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Radius of feathering"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.14, 54

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpselectionoptions.c"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Gimp-Tools"
	.size	.L.str.17, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
