	.text
	.file	"config-commands.bc"
	.globl	config_use_gegl_cmd_callback
	.align	16, 0x90
	.type	config_use_gegl_cmd_callback,@function
config_use_gegl_cmd_callback:           # @config_use_gegl_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_active
	movabsq	$.L.str, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB0_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	config_use_gegl_cmd_callback, .Lfunc_end0-config_use_gegl_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use-gegl"
	.size	.L.str, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
