	.text
	.file	"imap_cmd_select_region.bc"
	.globl	select_region_command_new
	.align	16, 0x90
	.type	select_region_command_new,@function
select_region_command_new:              # @select_region_command_new
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
	movl	$1, %eax
	movl	%eax, %r8d
	movl	$72, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 52(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$select_region_command_class, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	unselect_all_command_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	command_add_subcommand
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_region_command_new, .Lfunc_end0-select_region_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	select_region_command_execute,@function
select_region_command_execute:          # @select_region_command_execute
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	48(%rdi), %edi
	movq	-16(%rbp), %rcx
	movl	52(%rcx), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	create_rectangle
	movq	-16(%rbp), %r8
	movq	%rax, 56(%r8)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	preview_set_tmp_obj
	movabsq	$.L.str.1, %rsi
	movabsq	$select_release, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$select_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %r9d
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%r9d, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_region_command_execute, .Lfunc_end1-select_region_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	select_release,@function
select_release:                         # @select_release
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
	subq	$112, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$select_motion, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$select_release, %rdi
	movq	-8(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	64(%rdi), %rdi
	movq	-40(%rbp), %r8
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	*%r8
	movabsq	$select_one_object, %rsi
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-32(%rbp), %r8
	movq	%r8, %rdx
	callq	object_list_add_select_cb
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	88(%rax), %esi
	movq	-48(%rbp), %rax
	movl	92(%rax), %edx
	movq	-48(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	100(%rax), %r8d
	callq	object_list_select_region
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-56(%rbp), %rsi
	callq	object_list_remove_select_cb
	cmpl	$0, -60(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	command_list_add
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	command_list_add
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end.10
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	preview_unset_tmp_obj
	callq	preview_redraw
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	select_release, .Lfunc_end2-select_release
	.cfi_endproc

	.align	16, 0x90
	.type	select_motion,@function
select_motion:                          # @select_motion
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rdx
	subl	88(%rdx), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 96(%rdx)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rdx
	subl	92(%rdx), %eax
	movq	-48(%rbp), %rdx
	movl	%eax, 100(%rdx)
	callq	preview_redraw
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	select_motion, .Lfunc_end3-select_motion
	.cfi_endproc

	.align	16, 0x90
	.type	select_one_object,@function
select_one_object:                      # @select_one_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	select_command_new
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_add_subcommand
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	select_one_object, .Lfunc_end4-select_one_object
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Select Region"
	.size	.L.str, 14

	.type	select_region_command_class,@object # @select_region_command_class
	.data
	.align	8
select_region_command_class:
	.quad	0
	.quad	select_region_command_execute
	.quad	0
	.quad	0
	.size	select_region_command_class, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"button-release-event"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"motion-notify-event"
	.size	.L.str.2, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
