	.text
	.file	"gimpdevicestatus.bc"
	.globl	gimp_device_status_get_type
	.align	16, 0x90
	.type	gimp_device_status_get_type,@function
gimp_device_status_get_type:            # @gimp_device_status_get_type
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
	movq	gimp_device_status_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_device_status_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_device_status_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_device_status_init, %rcx
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
	movabsq	$gimp_device_status_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_device_status_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_device_status_get_type, .Lfunc_end0-gimp_device_status_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_class_intern_init,@function
gimp_device_status_class_intern_init:   # @gimp_device_status_class_intern_init
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
	movq	%rax, gimp_device_status_parent_class
	cmpl	$0, GimpDeviceStatus_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDeviceStatus_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_device_status_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_device_status_class_intern_init, .Lfunc_end1-gimp_device_status_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_init,@function
gimp_device_status_init:                # @gimp_device_status_init
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
	subq	$64, %rsp
	movl	$1, %eax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movl	%eax, %edi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$gimp_device_status_save_clicked, %r9
	movq	-8(%rbp), %r10
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r9, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_editor_add_button
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_device_status_init, .Lfunc_end2-gimp_device_status_init
	.cfi_endproc

	.globl	gimp_device_status_new
	.align	16, 0x90
	.type	gimp_device_status_new,@function
gimp_device_status_new:                 # @gimp_device_status_new
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
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_device_status_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_device_status_get_type
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
	.size	gimp_device_status_new, .Lfunc_end3-gimp_device_status_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_class_init,@function
gimp_device_status_class_init:          # @gimp_device_status_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_device_status_set_property, %rsi
	movabsq	$gimp_device_status_dispose, %rdi
	movabsq	$gimp_device_status_constructed, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$234, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_device_status_class_init, .Lfunc_end4-gimp_device_status_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_constructed,@function
gimp_device_status_constructed:         # @gimp_device_status_constructed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_device_status_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_device_status_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_status_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -52(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$153, %edx
	movabsq	$.L__func__.gimp_device_status_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_device_status_device_add
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_15
.LBB5_18:                               # %for.end
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_device_status_device_add, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_device_status_device_remove, %rcx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_device_status_notify_device, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_device_manager_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_device_status_notify_device
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_device_status_constructed, .Lfunc_end5-gimp_device_status_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_dispose,@function
gimp_device_status_dispose:             # @gimp_device_status_dispose
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_device_status_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB6_8
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB6_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB6_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_device_status_update_entry, %rdx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#4:                                 # %do.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$64, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB6_2 Depth=1
	jmp	.LBB6_6
.LBB6_6:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_2
.LBB6_7:                                # %for.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_devices_get_manager
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_device_status_notify_device, %rdi
	movq	-16(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB6_8:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_status_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_device_status_dispose, .Lfunc_end6-gimp_device_status_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_set_property,@function
gimp_device_status_set_property:        # @gimp_device_status_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_status_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 136(%rdi)
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
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$220, %edx
	movabsq	$.L.str.24, %rcx
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
	.size	gimp_device_status_set_property, .Lfunc_end7-gimp_device_status_set_property
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_device_status_device_add,@function
gimp_device_status_device_add:          # @gimp_device_status_device_add
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$64, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movabsq	$gimp_device_status_update_entry, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movq	%rdx, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	g_cclosure_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_watch_closure
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_signal_connect_closure
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_event_box_new
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	cmpq	$0, 352(%rax)
	je	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gdk_display_get_default
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_3
.LBB8_2:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -80(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gdk_display_get_name
	movabsq	$.L.str.10, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
.LBB8_4:                                # %if.end
	movq	-80(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %edx              # imm = 0x2BC
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-72(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$4, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movl	$20, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	16(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movl	$20, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_color_area_new
	movl	$12288, %esi            # imm = 0x3000
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_add_events
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movl	$20, %ecx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_color_area_new
	movl	$12288, %esi            # imm = 0x3000
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_add_events
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movl	$20, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r9b
	andb	$-2, %r9b
	orb	$1, %r9b
	movb	%r9b, 120(%rax)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r9b
	andb	$-5, %r9b
	orb	$4, %r9b
	movb	%r9b, 120(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	40(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_device_status_view_clicked, %rax
	movabsq	$.L.str.16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movl	$20, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r10b
	andb	$-2, %r10b
	orb	$1, %r10b
	movb	%r10b, 120(%rax)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r10b
	andb	$-5, %r10b
	orb	$4, %r10b
	movb	%r10b, 120(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_device_status_view_clicked, %rax
	movabsq	$.L.str.18, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movl	$40, %ecx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	-40(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r10b
	andb	$-2, %r10b
	orb	$1, %r10b
	movb	%r10b, 120(%rax)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movb	120(%rax), %r10b
	andb	$-5, %r10b
	orb	$4, %r10b
	movb	%r10b, 120(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_device_status_view_clicked, %rax
	movabsq	$.L.str.20, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_device_status_update_entry
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_device_status_device_add, .Lfunc_end8-gimp_device_status_device_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_device_remove,@function
gimp_device_status_device_remove:       # @gimp_device_status_device_remove
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	%rdx, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB9_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_device_status_update_entry, %rdi
	movq	-24(%rbp), %r9
	movq	%rax, 152(%r9)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
# BB#4:                                 # %do.body
	movl	$64, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	jmp	.LBB9_8
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_device_status_device_remove, .Lfunc_end9-gimp_device_status_device_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_notify_device,@function
gimp_device_status_notify_device:       # @gimp_device_status_notify_device
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	-24(%rbp), %rdx
	movq	%rax, 144(%rdx)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movl	$3, %ecx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	cmpq	144(%rsi), %rdx
	cmovel	%ecx, %eax
	movl	%eax, %esi
	callq	gtk_widget_set_state
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_device_status_notify_device, .Lfunc_end10-gimp_device_status_notify_device
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_update_entry,@function
gimp_device_status_update_entry:        # @gimp_device_status_update_entry
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gimp_device_info_get_device
	cmpq	$0, %rax
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	gimp_device_info_get_mode
	cmpl	$0, %eax
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_hide
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-56(%rbp), %rdi
	leaq	-57(%rbp), %rsi
	leaq	-58(%rbp), %rdx
	leaq	-59(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.21, %rdi
	leaq	-128(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$64, %r8d
	movl	%r8d, %esi
	movzbl	-57(%rbp), %ecx
	movzbl	-58(%rbp), %r8d
	movzbl	-59(%rbp), %r9d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_help_set_help_data
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-56(%rbp), %rdi
	leaq	-57(%rbp), %rsi
	leaq	-58(%rbp), %rdx
	leaq	-59(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	movabsq	$.L.str.22, %rdi
	leaq	-128(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$64, %r8d
	movl	%r8d, %esi
	movzbl	-57(%rbp), %ecx
	movzbl	-58(%rbp), %r8d
	movzbl	-59(%rbp), %r9d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_snprintf
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-128(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	callq	gtk_widget_show
.LBB11_4:                               # %if.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_device_status_update_entry, .Lfunc_end11-gimp_device_status_update_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_view_clicked,@function
gimp_device_status_view_clicked:        # @gimp_device_status_view_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_device_status_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_get_ancestor
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_device_status_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	136(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-24(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_device_status_view_clicked, .Lfunc_end12-gimp_device_status_view_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_status_save_clicked,@function
gimp_device_status_save_clicked:        # @gimp_device_status_save_clicked
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rdi
	movl	%eax, %esi
	callq	gimp_devices_save
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_device_status_save_clicked, .Lfunc_end14-gimp_device_status_save_clicked
	.cfi_endproc

	.type	gimp_device_status_get_type.g_define_type_id__volatile,@object # @gimp_device_status_get_type.g_define_type_id__volatile
	.local	gimp_device_status_get_type.g_define_type_id__volatile
	.comm	gimp_device_status_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDeviceStatus"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_device_status_new,@object # @__func__.gimp_device_status_new
.L__func__.gimp_device_status_new:
	.asciz	"gimp_device_status_new"
	.size	.L__func__.gimp_device_status_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	gimp_device_status_parent_class,@object # @gimp_device_status_parent_class
	.local	gimp_device_status_parent_class
	.comm	gimp_device_status_parent_class,8,8
	.type	GimpDeviceStatus_private_offset,@object # @GimpDeviceStatus_private_offset
	.local	GimpDeviceStatus_private_offset
	.comm	GimpDeviceStatus_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpdevicestatus.c"
	.size	.L.str.4, 19

	.type	.L__func__.gimp_device_status_constructed,@object # @__func__.gimp_device_status_constructed
.L__func__.gimp_device_status_constructed:
	.asciz	"gimp_device_status_constructed"
	.size	.L__func__.gimp_device_status_constructed, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_GIMP (status->gimp)"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"add"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"remove"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"notify::current-device"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"changed"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s (%s)"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tool"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"foreground"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"background"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"brush"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-brush-grid|gimp-brush-list"
	.size	.L.str.16, 32

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pattern"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-pattern-grid|gimp-pattern-list"
	.size	.L.str.18, 36

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gradient"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-gradient-list|gimp-gradient-grid"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Foreground: %d, %d, %d"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Background: %d, %d, %d"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.23, 54

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"property"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-save"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Save device status"
	.size	.L.str.26, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
