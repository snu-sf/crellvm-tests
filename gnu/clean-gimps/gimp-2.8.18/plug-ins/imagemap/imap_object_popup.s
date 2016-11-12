	.text
	.file	"imap_object_popup.bc"
	.globl	object_handle_popup
	.align	16, 0x90
	.type	object_handle_popup,@function
object_handle_popup:                    # @object_handle_popup
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movl	52(%rsi), %r9d
	movq	-24(%rbp), %rsi
	movl	20(%rsi), %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	object_handle_popup, .Lfunc_end0-object_handle_popup
	.cfi_endproc

	.globl	object_do_popup
	.align	16, 0x90
	.type	object_do_popup,@function
object_do_popup:                        # @object_do_popup
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, object_do_popup.popup
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$32, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, object_do_popup.popup
	callq	menu_get_widget
	movq	object_do_popup.popup, %rsi
	movq	%rax, (%rsi)
.LBB1_2:                                # %if.end
	movq	object_do_popup.popup, %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	object_handle_popup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	object_do_popup, .Lfunc_end1-object_do_popup
	.cfi_endproc

	.type	object_do_popup.popup,@object # @object_do_popup.popup
	.local	object_do_popup.popup
	.comm	object_do_popup.popup,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/ObjectPopupMenu"
	.size	.L.str, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
