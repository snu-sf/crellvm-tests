	.text
	.file	"imap_browse.bc"
	.globl	browse_widget_new
	.align	16, 0x90
	.type	browse_widget_new,@function
browse_widget_new:                      # @browse_widget_new
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
	subq	$96, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$56, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	xorl	%edi, %edi
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	callq	gtk_box_new
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$7, %esi
	movabsq	$target_table, %rdx
	movl	$2, %ecx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	-48(%rbp), %r8d         # 4-byte Reload
	callq	gtk_drag_dest_set
	movabsq	$.L.str, %rsi
	movabsq	$handle_drop, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	callq	gtk_button_new
	movabsq	$.L.str.1, %rdi
	movl	$4, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	callq	gtk_image_new_from_stock
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movabsq	$.L.str.2, %rsi
	movabsq	$browse_cb, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	browse_widget_new, .Lfunc_end0-browse_widget_new
	.cfi_endproc

	.align	16, 0x90
	.type	handle_drop,@function
handle_drop:                            # @handle_drop
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
	subq	$64, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$0, %eax
	jl	.LBB1_5
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB1_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movl	$1, -44(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.8
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %ecx
	callq	gtk_drag_finish
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	handle_drop, .Lfunc_end1-handle_drop
	.cfi_endproc

	.align	16, 0x90
	.type	browse_cb,@function
browse_cb:                              # @browse_cb
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.5, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.1, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-32(%rbp), %rdi
	movq	-32(%rbp), %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$select_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	browse_cb, .Lfunc_end2-browse_cb
	.cfi_endproc

	.globl	browse_widget_set_filename
	.align	16, 0x90
	.type	browse_widget_set_filename,@function
browse_widget_set_filename:             # @browse_widget_set_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	browse_widget_set_filename, .Lfunc_end3-browse_widget_set_filename
	.cfi_endproc

	.globl	browse_widget_set_filter
	.align	16, 0x90
	.type	browse_widget_set_filter,@function
browse_widget_set_filter:               # @browse_widget_set_filter
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 8(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	browse_widget_set_filter, .Lfunc_end4-browse_widget_set_filter
	.cfi_endproc

	.align	16, 0x90
	.type	select_cb,@function
select_cb:                              # @select_cb
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB5_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_3
# BB#2:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	callq	*%rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB5_6:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB5_7:                                # %if.end.11
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	gtk_widget_grab_focus
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	select_cb, .Lfunc_end5-select_cb
	.cfi_endproc

	.type	target_table,@object    # @target_table
	.section	.rodata,"a",@progbits
	.align	16
target_table:
	.quad	.L.str.3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.size	target_table, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"drag-data-received"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk-open"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"clicked"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"STRING"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"text/plain"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-cancel"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"destroy"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"response"
	.size	.L.str.7, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
