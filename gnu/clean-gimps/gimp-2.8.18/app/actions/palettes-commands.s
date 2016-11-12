	.text
	.file	"palettes-commands.bc"
	.globl	palettes_import_cmd_callback
	.align	16, 0x90
	.type	palettes_import_cmd_callback,@function
palettes_import_cmd_callback:           # @palettes_import_cmd_callback
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_3
.LBB0_2:                                # %if.end
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB0_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	palettes_import_cmd_callback, .Lfunc_end0-palettes_import_cmd_callback
	.cfi_endproc

	.globl	palettes_merge_cmd_callback
	.align	16, 0x90
	.type	palettes_merge_cmd_callback,@function
palettes_merge_cmd_callback:            # @palettes_merge_cmd_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	movq	-40(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.2, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.4, %rsi
	movabsq	$palettes_merge_callback, %rdi
	movq	-40(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	palettes_merge_cmd_callback, .Lfunc_end1-palettes_merge_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	palettes_merge_callback,@function
palettes_merge_callback:                # @palettes_merge_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	palettes_merge_callback, .Lfunc_end2-palettes_merge_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-palette-import-dialog"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Merge Palette"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-palette-merge"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Enter a name for the merged palette"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"destroy"
	.size	.L.str.4, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
