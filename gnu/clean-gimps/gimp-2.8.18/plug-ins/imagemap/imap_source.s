	.text
	.file	"imap_source.bc"
	.globl	do_source_dialog
	.align	16, 0x90
	.type	do_source_dialog,@function
do_source_dialog:                       # @do_source_dialog
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
	cmpq	$0, do_source_dialog.dialog
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	make_default_dialog
	movq	%rax, do_source_dialog.dialog
	movq	do_source_dialog.dialog, %rdi
	callq	default_dialog_hide_cancel_button
	movq	do_source_dialog.dialog, %rdi
	callq	default_dialog_hide_apply_button
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movq	%rax, do_source_dialog.buffer
	movq	do_source_dialog.buffer, %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, do_source_dialog.text
	movq	do_source_dialog.text, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_editable
	movq	do_source_dialog.text, %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movl	$400, %esi              # imm = 0x190
	movl	$300, %edx              # imm = 0x12C
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	do_source_dialog.dialog, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	do_source_dialog.text, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
.LBB0_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	do_source_dialog.buffer, %rdi
	callq	gtk_text_buffer_set_text
	movabsq	$save_to_view, %rsi
	movq	do_source_dialog.buffer, %rdi
	callq	dump_output
	movq	do_source_dialog.dialog, %rdi
	callq	default_dialog_show
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	do_source_dialog, .Lfunc_end0-do_source_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_to_view,@function
save_to_view:                           # @save_to_view
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
	subq	$1536, %rsp             # imm = 0x600
	testb	%al, %al
	movaps	%xmm7, -1344(%rbp)      # 16-byte Spill
	movaps	%xmm6, -1360(%rbp)      # 16-byte Spill
	movaps	%xmm5, -1376(%rbp)      # 16-byte Spill
	movaps	%xmm4, -1392(%rbp)      # 16-byte Spill
	movaps	%xmm3, -1408(%rbp)      # 16-byte Spill
	movaps	%xmm2, -1424(%rbp)      # 16-byte Spill
	movaps	%xmm1, -1440(%rbp)      # 16-byte Spill
	movaps	%xmm0, -1456(%rbp)      # 16-byte Spill
	movq	%rdi, -1464(%rbp)       # 8-byte Spill
	movq	%r9, -1472(%rbp)        # 8-byte Spill
	movq	%r8, -1480(%rbp)        # 8-byte Spill
	movq	%rcx, -1488(%rbp)       # 8-byte Spill
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
	movq	%rsi, -1504(%rbp)       # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-1456(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -1280(%rbp)
	movaps	-1440(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -1264(%rbp)
	movaps	-1424(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -1248(%rbp)
	movaps	-1408(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -1232(%rbp)
	movaps	-1392(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -1216(%rbp)
	movaps	-1376(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -1200(%rbp)
	movaps	-1360(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -1184(%rbp)
	movaps	-1344(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -1168(%rbp)
.LBB1_2:                                # %entry
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1288(%rbp)
	movq	-1480(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -1296(%rbp)
	movq	-1488(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -1304(%rbp)
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -1312(%rbp)
	movq	-1504(%rbp), %rdi       # 8-byte Reload
	movq	-1464(%rbp), %r8        # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-1328(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-16(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	movq	%rdi, -1512(%rbp)       # 8-byte Spill
	callq	vsprintf
	movq	-8(%rbp), %rdi
	leaq	-1152(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, -1516(%rbp)       # 4-byte Spill
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
	callq	gtk_text_buffer_get_end_iter
	movq	-8(%rbp), %rdi
	movl	$-1, %ecx
	movq	-1528(%rbp), %rsi       # 8-byte Reload
	movq	-1512(%rbp), %rdx       # 8-byte Reload
	callq	gtk_text_buffer_insert
	addq	$1536, %rsp             # imm = 0x600
	popq	%rbp
	retq
.Lfunc_end1:
	.size	save_to_view, .Lfunc_end1-save_to_view
	.cfi_endproc

	.type	do_source_dialog.dialog,@object # @do_source_dialog.dialog
	.local	do_source_dialog.dialog
	.comm	do_source_dialog.dialog,8,8
	.type	do_source_dialog.text,@object # @do_source_dialog.text
	.local	do_source_dialog.text
	.comm	do_source_dialog.text,8,8
	.type	do_source_dialog.buffer,@object # @do_source_dialog.buffer
	.local	do_source_dialog.buffer
	.comm	do_source_dialog.buffer,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"View Source"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
