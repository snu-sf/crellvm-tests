	.text
	.file	"imap_about.bc"
	.globl	do_about_dialog
	.align	16, 0x90
	.type	do_about_dialog,@function
do_about_dialog:                        # @do_about_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	cmpq	$0, do_about_dialog.dialog
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	.Ldo_about_dialog.authors, %rax
	movq	%rax, -64(%rbp)
	movq	.Ldo_about_dialog.authors+8, %rax
	movq	%rax, -56(%rbp)
	callq	gtk_about_dialog_get_type
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	get_dialog
	movabsq	$.L.str.3, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rdi
	leaq	-64(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.7, %r8
	movabsq	$.L.str.9, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%rbx, -136(%rbp)        # 8-byte Spill
	callq	g_object_new
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	xorl	%r9d, %r9d
	movq	%rax, do_about_dialog.dialog
	movq	do_about_dialog.dialog, %rax
	movq	do_about_dialog.dialog, %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	movabsq	$do_about_dialog.dialog, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	do_about_dialog.dialog, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB0_2:                                # %if.end
	movq	do_about_dialog.dialog, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	do_about_dialog, .Lfunc_end0-do_about_dialog
	.cfi_endproc

	.type	do_about_dialog.dialog,@object # @do_about_dialog.dialog
	.local	do_about_dialog.dialog
	.comm	do_about_dialog.dialog,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Maurits Rijk (m.rijk@chello.nl)"
	.size	.L.str, 32

	.type	.Ldo_about_dialog.authors,@object # @do_about_dialog.authors
	.section	.rodata,"a",@progbits
	.align	16
.Ldo_about_dialog.authors:
	.quad	.L.str
	.quad	0
	.size	.Ldo_about_dialog.authors, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"transient-for"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"program-name"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Image Map Plug-In"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"version"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2.3"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"authors"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"copyright"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Copyright \302\251 1999-2005 by Maurits Rijk"
	.size	.L.str.8, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"license"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Released under the GNU General Public License"
	.size	.L.str.10, 46

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"destroy"
	.size	.L.str.12, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
