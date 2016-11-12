	.text
	.file	"message-cmds.bc"
	.globl	register_message_procs
	.align	16, 0x90
	.type	register_message_procs,@function
register_message_procs:                 # @register_message_procs
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
	subq	$144, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$message_invoker, %rax
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str, %rsi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %r8
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	callq	gimp_procedure_set_static_strings
	movabsq	$.L.str.5, %rax
	movabsq	$.L.str.6, %rdx
	xorl	%r11d, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movl	$227, %ebx
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, %rsi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%r11d, %ecx
	movl	%r11d, %r8d
	movl	%r11d, %r9d
	movq	$0, (%rsp)
	movl	$227, 8(%rsp)
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_param_spec_string
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$message_get_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_message_handler_type_get_type
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_return_value
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$message_set_handler_invoker, %rdi
	callq	gimp_procedure_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_static_name
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-32(%rbp), %r14
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r10, -136(%rbp)        # 8-byte Spill
	callq	gimp_procedure_set_static_strings
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_message_handler_type_get_type
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.15, %rdx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_procedure_add_argument
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_pdb_register_procedure
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	register_message_procs, .Lfunc_end0-register_message_procs
	.cfi_endproc

	.align	16, 0x90
	.type	message_invoker,@function
message_invoker:                        # @message_invoker
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_string
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 112(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	112(%rax), %rdi
	callq	gimp_plug_in_get_undo_desc
	movq	%rax, -72(%rbp)
.LBB1_3:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_show_message
.LBB1_4:                                # %if.end.7
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	%esi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_6
# BB#5:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	message_invoker, .Lfunc_end1-message_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	message_get_handler_invoker,@function
message_get_handler_invoker:            # @message_get_handler_invoker
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
	subq	$64, %rsp
	movl	$1, %eax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rcx
	movl	80(%rcx), %r10d
	movl	%r10d, -60(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movq	%r11, %rdx
	callq	gimp_procedure_get_return_values
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	g_value_set_enum
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	message_get_handler_invoker, .Lfunc_end2-message_get_handler_invoker
	.cfi_endproc

	.align	16, 0x90
	.type	message_set_handler_invoker,@function
message_set_handler_invoker:            # @message_set_handler_invoker
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_value_get_enum
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 80(%rcx)
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	cmpq	$0, -48(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%esi, -68(%rbp)         # 4-byte Spill
	je	.LBB3_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_4:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB3_5
.LBB3_5:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	callq	gimp_procedure_get_return_values
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	message_set_handler_invoker, .Lfunc_end3-message_set_handler_invoker
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-message"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Displays a dialog box with a message."
	.size	.L.str.1, 38

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Displays a dialog box with a message. Useful for status or error reporting. The message must be in UTF-8 encoding."
	.size	.L.str.2, 115

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Manish Singh"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1998"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"message"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Message to display in the dialog"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-message-get-handler"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Returns the current state of where warning messages are displayed."
	.size	.L.str.8, 67

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This procedure returns the way g_message warnings are displayed. They can be shown in a dialog box or printed on the console where gimp was started."
	.size	.L.str.9, 149

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"handler"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The current handler type"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-message-set-handler"
	.size	.L.str.12, 25

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Controls where warning messages are displayed."
	.size	.L.str.13, 47

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This procedure controls how g_message warnings are displayed. They can be shown in a dialog box or printed on the console where gimp was started."
	.size	.L.str.14, 146

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The new handler type"
	.size	.L.str.15, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
