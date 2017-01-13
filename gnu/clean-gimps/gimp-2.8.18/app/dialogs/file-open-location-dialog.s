	.text
	.file	"file-open-location-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1065353216              # float 1
	.text
	.globl	file_open_location_dialog_new
	.align	16, 0x90
	.type	file_open_location_dialog_new,@function
file_open_location_dialog_new:          # @file_open_location_dialog_new
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.4
	movl	$1, -108(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.5
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.9
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_open_location_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.11
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.4, %rsi
	movl	$4294967290, %r9d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.5, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%r9d, -132(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$file_open_location_response, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	callq	gimp_context_new
	movl	$24, %edx
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	544(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_entry_new
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_completion
	movabsq	$file_open_location_completion, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	gtk_entry_completion_set_match_func
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movl	$400, %esi              # imm = 0x190
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-80(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB0_13:                               # %return
	movq	-16(%rbp), %rax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_open_location_dialog_new, .Lfunc_end0-file_open_location_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_location_response,@function
file_open_location_response:            # @file_open_location_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp7:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$-5, -20(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_progress_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 128(%rax)
	je	.LBB1_4
# BB#3:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_cancel
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB1_5:                                # %if.end
	jmp	.LBB1_19
.LBB1_6:                                # %if.end.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_18
# BB#7:                                 # %land.lhs.true.20
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_18
# BB#8:                                 # %if.then.23
	leaq	-88(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	$0, -96(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_filename_from_uri
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.26
	leaq	-96(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_filename_to_uri
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.28
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	file_utils_filename_to_uri
	movq	%rax, -72(%rbp)
.LBB1_11:                               # %if.end.30
	callq	gimp_progress_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	cmpq	$0, -72(%rbp)
	je	.LBB1_16
# BB#12:                                # %if.then.41
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-48(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-100(%rbp), %rdi
	leaq	-96(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-240(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	callq	file_open_with_proc_and_display
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB1_15
# BB#13:                                # %land.lhs.true.47
	cmpl	$4, -100(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.49
	movq	-72(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-112(%rbp), %r8
	movq	-96(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB1_15:                               # %if.end.54
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.55
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-56(%rbp), %r8
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %r9
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-96(%rbp), %rdi
	callq	g_clear_error
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gtk_dialog_set_response_sensitive
	movq	-40(%rbp), %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	jmp	.LBB1_19
.LBB1_17:                               # %if.end.61
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.62
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB1_19:                               # %return
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_open_location_response, .Lfunc_end1-file_open_location_response
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_location_completion,@function
file_open_location_completion:          # @file_open_location_completion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_entry_completion_get_model
	movl	$1, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_10
.LBB2_2:                                # %if.end
	movq	$-1, %rsi
	movl	$2, %edx
	movq	-56(%rbp), %rdi
	callq	g_utf8_normalize
	movq	$-1, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_utf8_casefold
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB2_9
# BB#3:                                 # %if.then.6
	movl	$58, %esi
	movq	-72(%rbp), %rdi
	callq	strchr
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_8
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rdi
	callq	strlen
	cmpq	$2, %rax
	jbe	.LBB2_8
# BB#5:                                 # %land.lhs.true.12
	movq	-88(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB2_8
# BB#6:                                 # %land.lhs.true.16
	movq	-88(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB2_8
# BB#7:                                 # %if.then.21
	movq	-24(%rbp), %rdi
	movq	-88(%rbp), %rax
	addq	$3, %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	strncmp
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -76(%rbp)
.LBB2_8:                                # %if.end.26
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.27
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_open_location_completion, .Lfunc_end2-file_open_location_completion
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.file_open_location_dialog_new,@object # @__func__.file_open_location_dialog_new
.L__func__.file_open_location_dialog_new:
	.asciz	"file_open_location_dialog_new"
	.size	.L__func__.file_open_location_dialog_new, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Open Location"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-file-open-location"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-cancel"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-open"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-web"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Enter location (URI):"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-open-location-dialog"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"location-entry"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"progress-box"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.12, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
