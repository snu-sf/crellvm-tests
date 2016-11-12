	.text
	.file	"gimpcontrollers.bc"
	.globl	gimp_controllers_init
	.align	16, 0x90
	.type	gimp_controllers_init,@function
gimp_controllers_init:                  # @gimp_controllers_init
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_controller_manager_get
	cmpq	$0, %rax
	jne	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	movl	$48, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_controller_manager_free, %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_data_full
	callq	gimp_controller_info_get_type
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_list_new
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_controllers_add, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_controllers_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_controllers_event_mapped, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_add_handler
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	callq	gimp_controller_mouse_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_controller_wheel_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_controller_keyboard_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_18:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controllers_init, .Lfunc_end0-gimp_controllers_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_manager_get,@function
gimp_controller_manager_get:            # @gimp_controller_manager_get
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_manager_get, .Lfunc_end1-gimp_controller_manager_get
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_manager_free,@function
gimp_controller_manager_free:           # @gimp_controller_manager_free
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
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_container_remove_handler
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_manager_free, .Lfunc_end2-gimp_controller_manager_free
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controllers_add,@function
gimp_controllers_add:                   # @gimp_controllers_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	callq	gimp_controller_wheel_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB3_29
.LBB3_9:                                # %if.else.10
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_controller_keyboard_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.20
	movl	$0, -68(%rbp)
	jmp	.LBB3_16
.LBB3_11:                               # %if.else.21
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_14
# BB#12:                                # %land.lhs.true.24
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_14
# BB#13:                                # %if.then.28
	movl	$1, -68(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.29
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_15:                               # %if.end.31
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.32
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_18
# BB#17:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_28
.LBB3_18:                               # %if.else.37
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_controller_mouse_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_20
# BB#19:                                # %if.then.47
	movl	$0, -92(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %if.else.48
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_23
# BB#21:                                # %land.lhs.true.51
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_23
# BB#22:                                # %if.then.55
	movl	$1, -92(%rbp)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.56
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_24:                               # %if.end.58
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.59
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.62
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB3_27:                               # %if.end.64
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.65
	jmp	.LBB3_29
.LBB3_29:                               # %if.end.66
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controllers_add, .Lfunc_end3-gimp_controllers_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controllers_remove,@function
gimp_controllers_remove:                # @gimp_controllers_remove
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-24(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.6
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controllers_remove, .Lfunc_end4-gimp_controllers_remove
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4652007308841189376     # double 1000
	.text
	.align	16, 0x90
	.type	gimp_controllers_event_mapped,@function
gimp_controllers_event_mapped:          # @gimp_controllers_event_mapped
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_ui_manager_get_action_groups
	movq	%rax, -64(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_30
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_action_group_get_action
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_25
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	je	.LBB5_22
	jmp	.LBB5_32
.LBB5_32:                               # %if.then
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jne	.LBB5_23
	jmp	.LBB5_4
.LBB5_4:                                # %sw.bb
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -88(%rbp)
	movq	$60, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.8
	movl	$0, -100(%rbp)
	jmp	.LBB5_10
.LBB5_6:                                # %if.else
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.9
	movl	$1, -100(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.10
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_value_holds
	movl	%eax, -100(%rbp)
.LBB5_9:                                # %if.end
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.12
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_21
# BB#11:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_enum_action_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB5_18
.LBB5_13:                               # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB5_16
# BB#15:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB5_17
.LBB5_16:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB5_17:                               # %if.end.31
	jmp	.LBB5_18
.LBB5_18:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB5_21
# BB#19:                                # %land.lhs.true.35
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_enum_action_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 68(%rax)
	je	.LBB5_21
# BB#20:                                # %if.then.39
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	callq	g_value_get_double
	movsd	%xmm0, -136(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_enum_action_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	cvttsd2si	%xmm0, %esi
	movq	%rax, %rdi
	callq	gimp_enum_action_selected
	jmp	.LBB5_24
.LBB5_21:                               # %if.end.47
	jmp	.LBB5_22
.LBB5_22:                               # %sw.bb.48
	jmp	.LBB5_23
.LBB5_23:                               # %sw.default
	movq	-80(%rbp), %rdi
	callq	gtk_action_activate
.LBB5_24:                               # %sw.epilog
	movl	$1, -4(%rbp)
	jmp	.LBB5_31
.LBB5_25:                               # %if.end.49
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_29
.LBB5_28:                               # %cond.false
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_29
.LBB5_29:                               # %cond.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB5_1
.LBB5_30:                               # %for.end
	movl	$0, -4(%rbp)
.LBB5_31:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controllers_event_mapped, .Lfunc_end5-gimp_controllers_event_mapped
	.cfi_endproc

	.globl	gimp_controllers_exit
	.align	16, 0x90
	.type	gimp_controllers_exit,@function
gimp_controllers_exit:                  # @gimp_controllers_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_controller_manager_get
	cmpq	$0, %rax
	je	.LBB6_15
# BB#14:                                # %if.then.14
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_exit, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.16
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	callq	gimp_controller_wheel_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, %rdi
	callq	g_type_class_unref
	callq	gimp_controller_keyboard_get_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, %rdi
	callq	g_type_class_unref
.LBB6_18:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controllers_exit, .Lfunc_end6-gimp_controllers_exit
	.cfi_endproc

	.globl	gimp_controllers_restore
	.align	16, 0x90
	.type	gimp_controllers_restore,@function
gimp_controllers_restore:               # @gimp_controllers_restore
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
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_restore, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_44
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_restore, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_44
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#25:                                # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB7_27
# BB#26:                                # %if.then.42
	jmp	.LBB7_28
.LBB7_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_restore, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_44
.LBB7_28:                               # %if.end.44
	jmp	.LBB7_29
.LBB7_29:                               # %do.end.45
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.46
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB7_32
# BB#31:                                # %if.then.49
	jmp	.LBB7_33
.LBB7_32:                               # %if.else.50
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_restore, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_44
.LBB7_33:                               # %if.end.51
	jmp	.LBB7_34
.LBB7_34:                               # %do.end.52
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	gimp_personal_rc_file
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB7_36
# BB#35:                                # %if.then.57
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.12, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB7_36:                               # %if.end.59
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB7_43
# BB#37:                                # %if.then.64
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB7_41
# BB#38:                                # %if.then.66
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-32(%rbp), %rdi
	callq	g_free
	callq	gimp_sysconf_directory
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-40(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	jne	.LBB7_40
# BB#39:                                # %if.then.74
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB7_40:                               # %if.end.75
	jmp	.LBB7_42
.LBB7_41:                               # %if.else.76
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
.LBB7_42:                               # %if.end.78
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB7_43:                               # %if.end.79
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_list_reverse
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB7_44:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controllers_restore, .Lfunc_end7-gimp_controllers_restore
	.cfi_endproc

	.globl	gimp_controllers_save
	.align	16, 0x90
	.type	gimp_controllers_save,@function
gimp_controllers_save:                  # @gimp_controllers_save
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
	subq	$80, %rsp
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.13, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_save, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_22
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -32(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.14
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_save, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_22
.LBB8_16:                               # %if.end.16
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.17
	movabsq	$.L.str.11, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB8_19
# BB#18:                                # %if.then.20
	movq	-40(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB8_19:                               # %if.end.22
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-48(%rbp), %r9
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_config_serialize_to_file
	cmpl	$0, %eax
	jne	.LBB8_21
# BB#20:                                # %if.then.27
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB8_21:                               # %if.end.28
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB8_22:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controllers_save, .Lfunc_end8-gimp_controllers_save
	.cfi_endproc

	.globl	gimp_controllers_get_list
	.align	16, 0x90
	.type	gimp_controllers_get_list,@function
gimp_controllers_get_list:              # @gimp_controllers_get_list
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_list, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.14
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_list, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_18
.LBB9_16:                               # %if.end.16
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_controllers_get_list, .Lfunc_end9-gimp_controllers_get_list
	.cfi_endproc

	.globl	gimp_controllers_get_ui_manager
	.align	16, 0x90
	.type	gimp_controllers_get_ui_manager,@function
gimp_controllers_get_ui_manager:        # @gimp_controllers_get_ui_manager
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_ui_manager, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.14
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_ui_manager, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_18
.LBB10_16:                              # %if.end.16
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.17
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_controllers_get_ui_manager, .Lfunc_end10-gimp_controllers_get_ui_manager
	.cfi_endproc

	.globl	gimp_controllers_get_mouse
	.align	16, 0x90
	.type	gimp_controllers_get_mouse,@function
gimp_controllers_get_mouse:             # @gimp_controllers_get_mouse
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_mouse, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_18
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.14
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_mouse, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.16
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_controllers_get_mouse, .Lfunc_end11-gimp_controllers_get_mouse
	.cfi_endproc

	.globl	gimp_controllers_get_wheel
	.align	16, 0x90
	.type	gimp_controllers_get_wheel,@function
gimp_controllers_get_wheel:             # @gimp_controllers_get_wheel
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_wheel, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.14
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_wheel, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.16
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.17
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_controllers_get_wheel, .Lfunc_end12-gimp_controllers_get_wheel
	.cfi_endproc

	.globl	gimp_controllers_get_keyboard
	.align	16, 0x90
	.type	gimp_controllers_get_keyboard,@function
gimp_controllers_get_keyboard:          # @gimp_controllers_get_keyboard
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_keyboard, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_18
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_controller_manager_get
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.14
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_controllers_get_keyboard, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_18
.LBB13_16:                              # %if.end.16
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.17
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB13_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_controllers_get_keyboard, .Lfunc_end13-gimp_controllers_get_keyboard
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_controllers_init,@object # @__func__.gimp_controllers_init
.L__func__.gimp_controllers_init:
	.asciz	"gimp_controllers_init"
	.size	.L__func__.gimp_controllers_init, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_controller_manager_get (gimp) == NULL"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-controller-manager"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"add"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"remove"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"event-mapped"
	.size	.L.str.6, 13

	.type	.L__func__.gimp_controllers_exit,@object # @__func__.gimp_controllers_exit
.L__func__.gimp_controllers_exit:
	.asciz	"gimp_controllers_exit"
	.size	.L__func__.gimp_controllers_exit, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp_controller_manager_get (gimp) != NULL"
	.size	.L.str.7, 43

	.type	.L__func__.gimp_controllers_restore,@object # @__func__.gimp_controllers_restore
.L__func__.gimp_controllers_restore:
	.asciz	"gimp_controllers_restore"
	.size	.L__func__.gimp_controllers_restore, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_UI_MANAGER (ui_manager)"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"manager != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"manager->ui_manager == NULL"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"controllerrc"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP controllerrc\n\nThis file will be entirely rewritten each time you exit."
	.size	.L.str.13, 76

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"end of controllerrc"
	.size	.L.str.14, 20

	.type	.L__func__.gimp_controllers_save,@object # @__func__.gimp_controllers_save
.L__func__.gimp_controllers_save:
	.asciz	"gimp_controllers_save"
	.size	.L__func__.gimp_controllers_save, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Writing '%s'\n"
	.size	.L.str.15, 14

	.type	.L__func__.gimp_controllers_get_list,@object # @__func__.gimp_controllers_get_list
.L__func__.gimp_controllers_get_list:
	.asciz	"gimp_controllers_get_list"
	.size	.L__func__.gimp_controllers_get_list, 26

	.type	.L__func__.gimp_controllers_get_ui_manager,@object # @__func__.gimp_controllers_get_ui_manager
.L__func__.gimp_controllers_get_ui_manager:
	.asciz	"gimp_controllers_get_ui_manager"
	.size	.L__func__.gimp_controllers_get_ui_manager, 32

	.type	.L__func__.gimp_controllers_get_mouse,@object # @__func__.gimp_controllers_get_mouse
.L__func__.gimp_controllers_get_mouse:
	.asciz	"gimp_controllers_get_mouse"
	.size	.L__func__.gimp_controllers_get_mouse, 27

	.type	.L__func__.gimp_controllers_get_wheel,@object # @__func__.gimp_controllers_get_wheel
.L__func__.gimp_controllers_get_wheel:
	.asciz	"gimp_controllers_get_wheel"
	.size	.L__func__.gimp_controllers_get_wheel, 27

	.type	.L__func__.gimp_controllers_get_keyboard,@object # @__func__.gimp_controllers_get_keyboard
.L__func__.gimp_controllers_get_keyboard:
	.asciz	"gimp_controllers_get_keyboard"
	.size	.L__func__.gimp_controllers_get_keyboard, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
