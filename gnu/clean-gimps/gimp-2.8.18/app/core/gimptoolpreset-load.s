	.text
	.file	"gimptoolpreset-load.bc"
	.globl	gimp_tool_preset_load
	.align	16, 0x90
	.type	gimp_tool_preset_load,@function
gimp_tool_preset_load:                  # @gimp_tool_preset_load
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_preset_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_41
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_preset_load, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_41
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	movq	-24(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %if.then.20
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_preset_load, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_41
.LBB0_21:                               # %if.end.22
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.23
	jmp	.LBB0_23
.LBB0_23:                               # %do.body.24
	cmpq	$0, -32(%rbp)
	je	.LBB0_25
# BB#24:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_26
.LBB0_25:                               # %if.then.27
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.28
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_tool_preset_load, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_41
.LBB0_27:                               # %if.end.29
	jmp	.LBB0_28
.LBB0_28:                               # %do.end.30
	callq	gimp_tool_preset_get_type
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_config_deserialize_file
	cmpl	$0, %eax
	je	.LBB0_40
# BB#29:                                # %if.then.37
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_31
# BB#30:                                # %if.then.46
	movl	$0, -84(%rbp)
	jmp	.LBB0_36
.LBB0_31:                               # %if.else.47
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_34
# BB#32:                                # %land.lhs.true.50
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_34
# BB#33:                                # %if.then.54
	movl	$1, -84(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.55
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_35:                               # %if.end.57
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.58
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_38
# BB#37:                                # %if.then.61
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_list_prepend
	movq	%rax, -8(%rbp)
	jmp	.LBB0_41
.LBB0_38:                               # %if.else.63
	movq	-32(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$3, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
# BB#39:                                # %if.end.67
	jmp	.LBB0_40
.LBB0_40:                               # %if.end.68
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -8(%rbp)
.LBB0_41:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_preset_load, .Lfunc_end0-gimp_tool_preset_load
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_tool_preset_load,@object # @__func__.gimp_tool_preset_load
.L__func__.gimp_tool_preset_load:
	.asciz	"gimp_tool_preset_load"
	.size	.L__func__.gimp_tool_preset_load, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename != NULL"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_path_is_absolute (filename)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Error while parsing '%s'"
	.size	.L.str.6, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
