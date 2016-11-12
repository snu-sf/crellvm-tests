	.text
	.file	"data-delete-dialog.bc"
	.globl	data_delete_dialog_new
	.align	16, 0x90
	.type	data_delete_dialog_new,@function
data_delete_dialog_new:                 # @data_delete_dialog_new
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
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.data_delete_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB0_50
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_data_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -116(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -116(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.data_delete_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB0_50
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	cmpq	$0, -48(%rbp)
	je	.LBB0_34
# BB#26:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.49
	movl	$0, -140(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.50
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.53
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.57
	movl	$1, -140(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.58
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB0_32:                               # %if.end.60
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.61
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB0_35
.LBB0_34:                               # %if.then.64
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.data_delete_dialog_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB0_50
.LBB0_36:                               # %if.end.66
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.67
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.68
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB0_40
# BB#39:                                # %if.then.77
	movl	$0, -164(%rbp)
	jmp	.LBB0_45
.LBB0_40:                               # %if.else.78
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_43
# BB#41:                                # %land.lhs.true.81
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB0_43
# BB#42:                                # %if.then.85
	movl	$1, -164(%rbp)
	jmp	.LBB0_44
.LBB0_43:                               # %if.else.86
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB0_44:                               # %if.end.88
	jmp	.LBB0_45
.LBB0_45:                               # %if.end.89
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB0_47
# BB#46:                                # %if.then.92
	jmp	.LBB0_48
.LBB0_47:                               # %if.else.93
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.data_delete_dialog_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB0_50
.LBB0_48:                               # %if.end.94
	jmp	.LBB0_49
.LBB0_49:                               # %do.end.95
	movl	$32, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movabsq	$.L.str.5, %rdi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 24(%rcx)
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.6, %rcx
	xorl	%edx, %edx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movabsq	$.L.str.7, %rdi
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	-176(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -192(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-192(%rbp), %ebx        # 4-byte Reload
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movl	%ebx, %ecx
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-200(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -204(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.8, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-40(%rbp), %r9
	movq	-72(%rbp), %r11
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.9, %rsi
	movabsq	$data_delete_dialog_response, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	264(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-72(%rbp), %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	264(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-72(%rbp), %rcx
	movq	%rcx, -24(%rbp)
.LBB0_50:                               # %return
	movq	-24(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	data_delete_dialog_new, .Lfunc_end0-data_delete_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	data_delete_dialog_response,@function
data_delete_dialog_response:            # @data_delete_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB1_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_4
# BB#2:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-48(%rbp), %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB1_4
# BB#3:                                 # %if.then.9
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_neighbor_of
	movq	%rax, -56(%rbp)
.LBB1_4:                                # %if.end
	movl	$1, %edx
	leaq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_data_factory_data_delete
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	callq	gimp_data_factory_get_gimp
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.12, %rcx
	movq	-64(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	leaq	-64(%rbp), %rdi
	callq	g_clear_error
.LBB1_6:                                # %if.end.18
	cmpq	$0, -56(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-56(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_by_type
.LBB1_8:                                # %if.end.23
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.24
	jmp	.LBB1_10
.LBB1_10:                               # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#11:                                # %do.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	data_delete_dialog_response, .Lfunc_end1-data_delete_dialog_response
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.data_delete_dialog_new,@object # @__func__.data_delete_dialog_new
.L__func__.data_delete_dialog_new:
	.asciz	"data_delete_dialog_new"
	.size	.L__func__.data_delete_dialog_new, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DATA_FACTORY (factory)"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DATA (data)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (parent)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Delete Object"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-delete"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gtk-cancel"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"disconnect"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"response"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Delete '%s'?"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Are you sure you want to remove '%s' from the list and delete it on disk?"
	.size	.L.str.11, 74

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s"
	.size	.L.str.12, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
