	.text
	.file	"gimpuiconfigurer.bc"
	.globl	gimp_ui_configurer_get_type
	.align	16, 0x90
	.type	gimp_ui_configurer_get_type,@function
gimp_ui_configurer_get_type:            # @gimp_ui_configurer_get_type
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
	movq	gimp_ui_configurer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_ui_configurer_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_ui_configurer_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_ui_configurer_init, %rcx
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
	movabsq	$gimp_ui_configurer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_ui_configurer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_ui_configurer_get_type, .Lfunc_end0-gimp_ui_configurer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_class_intern_init,@function
gimp_ui_configurer_class_intern_init:   # @gimp_ui_configurer_class_intern_init
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
	movq	%rax, gimp_ui_configurer_parent_class
	cmpl	$0, GimpUIConfigurer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpUIConfigurer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_ui_configurer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_ui_configurer_class_intern_init, .Lfunc_end1-gimp_ui_configurer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_init,@function
gimp_ui_configurer_init:                # @gimp_ui_configurer_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_ui_configurer_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 32(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ui_configurer_init, .Lfunc_end2-gimp_ui_configurer_init
	.cfi_endproc

	.globl	gimp_ui_configurer_configure
	.align	16, 0x90
	.type	gimp_ui_configurer_configure,@function
gimp_ui_configurer_configure:           # @gimp_ui_configurer_configure
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_ui_configurer_configure_for_single_window
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_ui_configurer_configure_for_multi_window
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_ui_configurer_update_appearance
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_ui_configurer_configure, .Lfunc_end3-gimp_ui_configurer_configure
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_configure_for_single_window,@function
gimp_ui_configurer_configure_for_single_window: # @gimp_ui_configurer_configure_for_single_window
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_image_windows
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_ui_configurer_get_uber_window
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_ui_configurer_move_docks_to_columns
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_ui_configurer_move_shells
	movq	-64(%rbp), %rdi
	callq	gimp_image_window_destroy
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_8
.LBB4_8:                                # %cond.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_9:                                # %for.end
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_window_set_active_shell
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_ui_configurer_configure_for_single_window, .Lfunc_end4-gimp_ui_configurer_configure_for_single_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_configure_for_multi_window,@function
gimp_ui_configurer_configure_for_multi_window: # @gimp_ui_configurer_configure_for_multi_window
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_image_windows
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_ui_configurer_separate_docks
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_ui_configurer_separate_shells
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_7:                                # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_ui_configurer_configure_for_multi_window, .Lfunc_end5-gimp_ui_configurer_configure_for_multi_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_update_appearance,@function
gimp_ui_configurer_update_appearance:   # @gimp_ui_configurer_update_appearance
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
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_image_windows
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB6_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_n_shells
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB6_3:                                # %for.cond.5
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	gimp_image_window_get_shell
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_appearance_update
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.8
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_10
.LBB6_9:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB6_10
.LBB6_10:                               # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_11:                               # %for.end.10
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_ui_configurer_update_appearance, .Lfunc_end6-gimp_ui_configurer_update_appearance
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_class_init,@function
gimp_ui_configurer_class_init:          # @gimp_ui_configurer_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_ui_configurer_get_property, %rsi
	movabsq	$gimp_ui_configurer_set_property, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$235, %r8d
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$8, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_ui_configurer_class_init, .Lfunc_end7-gimp_ui_configurer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_set_property,@function
gimp_ui_configurer_set_property:        # @gimp_ui_configurer_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ui_configurer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rax, (%rdi)
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$130, %edx
	movabsq	$.L.str.4, %rcx
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
	.size	gimp_ui_configurer_set_property, .Lfunc_end8-gimp_ui_configurer_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_get_property,@function
gimp_ui_configurer_get_property:        # @gimp_ui_configurer_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_ui_configurer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$150, %edx
	movabsq	$.L.str.4, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_ui_configurer_get_property, .Lfunc_end9-gimp_ui_configurer_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.5, %r9d
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

	.align	16, 0x90
	.type	gimp_ui_configurer_get_uber_window,@function
gimp_ui_configurer_get_uber_window:     # @gimp_ui_configurer_get_uber_window
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_ui_configurer_get_uber_window, .Lfunc_end11-gimp_ui_configurer_get_uber_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_move_docks_to_columns,@function
gimp_ui_configurer_move_docks_to_columns: # @gimp_ui_configurer_move_docks_to_columns
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, %rdi
	callq	gimp_dialog_factory_get_open_dialogs
	movq	%rax, %rdi
	callq	g_list_copy
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_15 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB12_33
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, -92(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.8
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_8:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.10
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.LBB12_11
# BB#10:                                # %if.then.12
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_32
.LBB12_11:                              # %if.end.13
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_configurer_get_relative_window_pos
	cmpl	$0, %eax
	jne	.LBB12_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_left_docks
	movq	%rax, -56(%rbp)
	jmp	.LBB12_14
.LBB12_13:                              # %if.else.25
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_right_docks
	movq	%rax, -56(%rbp)
.LBB12_14:                              # %if.end.27
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movq	-48(%rbp), %rdi
	callq	gimp_dock_container_get_docks
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB12_15:                              # %for.cond.32
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -72(%rbp)
	je	.LBB12_18
# BB#16:                                # %for.body.34
                                        #   in Loop: Header=BB12_15 Depth=2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_remove_dock
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gimp_dock_columns_add_dock
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB12_15 Depth=2
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB12_15
.LBB12_18:                              # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -40(%rbp)
	je	.LBB12_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB12_20:                              # %if.end.43
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB12_22
# BB#21:                                # %if.then.52
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -124(%rbp)
	jmp	.LBB12_27
.LBB12_22:                              # %if.else.53
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_25
# BB#23:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB12_25
# BB#24:                                # %if.then.60
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$1, -124(%rbp)
	jmp	.LBB12_26
.LBB12_25:                              # %if.else.61
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB12_26:                              # %if.end.63
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_27
.LBB12_27:                              # %if.end.64
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB12_31
# BB#28:                                # %if.then.67
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_dock_container_get_docks
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -132(%rbp)
	cmpl	$0, -132(%rbp)
	jne	.LBB12_30
# BB#29:                                # %if.then.72
                                        #   in Loop: Header=BB12_1 Depth=1
	callq	gimp_dialog_factory_get_singleton
	movq	-40(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_remove_dialog
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB12_30:                              # %if.end.78
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_list_free
.LBB12_31:                              # %if.end.79
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_32
.LBB12_32:                              # %for.inc.80
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_33:                              # %for.end.82
	movq	-24(%rbp), %rdi
	callq	g_list_free
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_ui_configurer_move_docks_to_columns, .Lfunc_end12-gimp_ui_configurer_move_docks_to_columns
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_move_shells,@function
gimp_ui_configurer_move_shells:         # @gimp_ui_configurer_move_shells
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_n_shells
	cmpl	$0, %eax
	jle	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_shell
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_window_remove_shell
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_window_add_shell
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_ui_configurer_move_shells, .Lfunc_end13-gimp_ui_configurer_move_shells
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_get_relative_window_pos,@function
gimp_ui_configurer_get_relative_window_pos: # @gimp_ui_configurer_get_relative_window_pos
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
	leaq	-20(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_ui_configurer_get_window_center_pos
	leaq	-24(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_ui_configurer_get_window_center_pos
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	-24(%rbp), %r9d
	cmpl	-20(%rbp), %r9d
	cmovll	%r8d, %ecx
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_ui_configurer_get_relative_window_pos, .Lfunc_end14-gimp_ui_configurer_get_relative_window_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_get_window_center_pos,@function
gimp_ui_configurer_get_window_center_pos: # @gimp_ui_configurer_get_window_center_pos
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
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gtk_window_get_position
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_window_get_size
	cmpq	$0, -16(%rbp)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	movl	-36(%rbp), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, (%rdi)
.LBB15_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.2
	movl	$2, %eax
	movl	-32(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, (%rdi)
.LBB15_4:                               # %if.end.5
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_ui_configurer_get_window_center_pos, .Lfunc_end15-gimp_ui_configurer_get_window_center_pos
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_separate_docks,@function
gimp_ui_configurer_separate_docks:      # @gimp_ui_configurer_separate_docks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_left_docks
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_right_docks
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_ui_configurer_move_docks_to_window
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_ui_configurer_move_docks_to_window
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_ui_configurer_separate_docks, .Lfunc_end16-gimp_ui_configurer_separate_docks
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_separate_shells,@function
gimp_ui_configurer_separate_shells:     # @gimp_ui_configurer_separate_shells
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_active_shell
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_n_shells
	cmpl	$1, %eax
	jle	.LBB17_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rdi
	movq	global_menu_factory, %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_image_window_new
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_window_get_shell
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_window_remove_shell
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_window_add_shell
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$640, %esi              # imm = 0x280
	movl	$480, %edx              # imm = 0x1E0
	movq	%rax, %rdi
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	jmp	.LBB17_1
.LBB17_5:                               # %while.end
	cmpq	$0, -32(%rbp)
	jne	.LBB17_7
# BB#6:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB17_7:                               # %if.end.13
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_ui_configurer_separate_shells, .Lfunc_end17-gimp_ui_configurer_separate_shells
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_ui_configurer_move_docks_to_window,@function
gimp_ui_configurer_move_docks_to_window: # @gimp_ui_configurer_move_docks_to_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_dock_columns_get_docks
	movq	%rax, %rdi
	callq	g_list_copy
	xorl	%esi, %esi
	movl	$16, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-80(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -64(%rbp)
	callq	memset
	cmpq	$0, -40(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_27
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	$0, -108(%rbp)
	jmp	.LBB18_11
.LBB18_6:                               # %if.else
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB18_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	$1, -108(%rbp)
	jmp	.LBB18_10
.LBB18_9:                               # %if.else.16
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB18_10:                              # %if.end.18
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.19
                                        #   in Loop: Header=BB18_3 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB18_13
# BB#12:                                # %if.then.21
	movl	$1, -52(%rbp)
	jmp	.LBB18_15
.LBB18_13:                              # %if.end.22
                                        #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_14
.LBB18_14:                              # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB18_3
.LBB18_15:                              # %for.end
	callq	gimp_dialog_factory_get_singleton
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.6, %rdi
	movq	-32(%rbp), %r10
	cmpl	$0, -52(%rbp)
	cmovneq	%rdi, %rsi
	movq	%rax, %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB18_16:                              # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_19
# BB#17:                                # %for.body.28
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_dock_columns_remove_dock
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_dock_window_add_dock
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#18:                                # %for.inc.37
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB18_16
.LBB18_19:                              # %for.end.39
	cmpl	$0, -20(%rbp)
	jne	.LBB18_21
# BB#20:                                # %if.then.41
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	gtk_window_parse_geometry
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB18_26
.LBB18_21:                              # %if.else.45
	cmpl	$2, -20(%rbp)
	jne	.LBB18_23
# BB#22:                                # %if.then.47
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	gtk_window_parse_geometry
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB18_25
.LBB18_23:                              # %if.else.51
	jmp	.LBB18_24
.LBB18_24:                              # %do.body
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$393, %edx              # imm = 0x189
	movabsq	$.L__func__.gimp_ui_configurer_move_docks_to_window, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB18_25:                              # %if.end.52
	jmp	.LBB18_26
.LBB18_26:                              # %if.end.53
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_set_default_size
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB18_27:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_ui_configurer_move_docks_to_window, .Lfunc_end18-gimp_ui_configurer_move_docks_to_window
	.cfi_endproc

	.type	gimp_ui_configurer_get_type.g_define_type_id__volatile,@object # @gimp_ui_configurer_get_type.g_define_type_id__volatile
	.local	gimp_ui_configurer_get_type.g_define_type_id__volatile
	.comm	gimp_ui_configurer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpUIConfigurer"
	.size	.L.str, 17

	.type	gimp_ui_configurer_parent_class,@object # @gimp_ui_configurer_parent_class
	.local	gimp_ui_configurer_parent_class
	.comm	gimp_ui_configurer_parent_class,8,8
	.type	GimpUIConfigurer_private_offset,@object # @GimpUIConfigurer_private_offset
	.local	GimpUIConfigurer_private_offset
	.comm	GimpUIConfigurer_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpuiconfigurer.c"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"property"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-GUI"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-dock-window"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"+0+0"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-0+0"
	.size	.L.str.9, 5

	.type	.L__func__.gimp_ui_configurer_move_docks_to_window,@object # @__func__.gimp_ui_configurer_move_docks_to_window
.L__func__.gimp_ui_configurer_move_docks_to_window:
	.asciz	"gimp_ui_configurer_move_docks_to_window"
	.size	.L__func__.gimp_ui_configurer_move_docks_to_window, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
