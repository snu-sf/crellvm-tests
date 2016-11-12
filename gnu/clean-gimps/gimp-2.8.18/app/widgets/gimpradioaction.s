	.text
	.file	"gimpradioaction.bc"
	.globl	gimp_radio_action_get_type
	.align	16, 0x90
	.type	gimp_radio_action_get_type,@function
gimp_radio_action_get_type:             # @gimp_radio_action_get_type
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
	movq	gimp_radio_action_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_radio_action_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_radio_action_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$304, %edx              # imm = 0x130
	movabsq	$gimp_radio_action_class_intern_init, %rdi
	movl	$48, %r8d
	movabsq	$gimp_radio_action_init, %rcx
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
	movabsq	$gimp_radio_action_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_radio_action_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_radio_action_get_type, .Lfunc_end0-gimp_radio_action_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_class_intern_init,@function
gimp_radio_action_class_intern_init:    # @gimp_radio_action_class_intern_init
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
	movq	%rax, gimp_radio_action_parent_class
	cmpl	$0, GimpRadioAction_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpRadioAction_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_radio_action_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_radio_action_class_intern_init, .Lfunc_end1-gimp_radio_action_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_init,@function
gimp_radio_action_init:                 # @gimp_radio_action_init
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
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_radio_action_tooltip_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_radio_action_init, .Lfunc_end2-gimp_radio_action_init
	.cfi_endproc

	.globl	gimp_radio_action_new
	.align	16, 0x90
	.type	gimp_radio_action_new,@function
gimp_radio_action_new:                  # @gimp_radio_action_new
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	callq	gimp_radio_action_get_type
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-16(%rbp), %r10
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r11
	movl	-44(%rbp), %ebx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rdx
	movq	%r11, (%rsp)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_5
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gtk_icon_factory_lookup_default
	cmpq	$0, %rax
	je	.LBB3_3
# BB#2:                                 # %if.then.4
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_set_stock_id
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_action_set_icon_name
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.9
	movq	-56(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_radio_action_new, .Lfunc_end3-gimp_radio_action_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_class_init,@function
gimp_radio_action_class_init:           # @gimp_radio_action_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_radio_action_connect_proxy, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 176(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_radio_action_class_init, .Lfunc_end4-gimp_radio_action_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_connect_proxy,@function
gimp_radio_action_connect_proxy:        # @gimp_radio_action_connect_proxy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_radio_action_parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_radio_action_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_radio_action_set_proxy_tooltip
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_radio_action_connect_proxy, .Lfunc_end5-gimp_radio_action_connect_proxy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_set_proxy_tooltip,@function
gimp_radio_action_set_proxy_tooltip:    # @gimp_radio_action_set_proxy_tooltip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_get_tooltip
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_help_set_help_data
.LBB6_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_radio_action_set_proxy_tooltip, .Lfunc_end6-gimp_radio_action_set_proxy_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_radio_action_tooltip_notify,@function
gimp_radio_action_tooltip_notify:       # @gimp_radio_action_tooltip_notify
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gtk_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_action_get_proxies
	movq	%rax, -32(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_radio_action_set_proxy_tooltip
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB7_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_6
.LBB7_6:                                # %cond.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1
.LBB7_7:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_radio_action_tooltip_notify, .Lfunc_end7-gimp_radio_action_tooltip_notify
	.cfi_endproc

	.type	gimp_radio_action_get_type.g_define_type_id__volatile,@object # @gimp_radio_action_get_type.g_define_type_id__volatile
	.local	gimp_radio_action_get_type.g_define_type_id__volatile
	.comm	gimp_radio_action_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpRadioAction"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"name"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"label"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"tooltip"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"value"
	.size	.L.str.4, 6

	.type	gimp_radio_action_parent_class,@object # @gimp_radio_action_parent_class
	.local	gimp_radio_action_parent_class
	.comm	gimp_radio_action_parent_class,8,8
	.type	GimpRadioAction_private_offset,@object # @GimpRadioAction_private_offset
	.local	GimpRadioAction_private_offset
	.comm	GimpRadioAction_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::tooltip"
	.size	.L.str.5, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
