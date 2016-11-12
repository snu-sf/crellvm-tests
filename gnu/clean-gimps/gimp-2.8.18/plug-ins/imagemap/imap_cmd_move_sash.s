	.text
	.file	"imap_cmd_move_sash.bc"
	.globl	move_sash_command_new
	.align	16, 0x90
	.type	move_sash_command_new,@function
move_sash_command_new:                  # @move_sash_command_new
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
	movl	%eax, %r9d
	movl	$72, %eax
	movl	%eax, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, %rdi
	movq	%r10, %rsi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rdi
	callq	object_ref
	movq	-40(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 48(%rax)
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 52(%rax)
	callq	get_image_width
	movq	-40(%rbp), %rsi
	movl	%eax, 56(%rsi)
	callq	get_image_height
	movabsq	$.L.str, %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, 60(%rsi)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	%rsi, 64(%r8)
	movq	-40(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$move_sash_command_class, %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	edit_object_command_new
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_add_subcommand
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	move_sash_command_new, .Lfunc_end0-move_sash_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash_command_destruct,@function
move_sash_command_destruct:             # @move_sash_command_destruct
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	move_sash_command_destruct, .Lfunc_end1-move_sash_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash_command_execute,@function
move_sash_command_execute:              # @move_sash_command_execute
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	hide_url
	movabsq	$.L.str.1, %rsi
	movabsq	$sash_end, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$sash_move, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	preview_set_tmp_obj
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	move_sash_command_execute, .Lfunc_end2-move_sash_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	move_sash_command_redo,@function
move_sash_command_redo:                 # @move_sash_command_redo
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	move_sash_command_redo, .Lfunc_end3-move_sash_command_redo
	.cfi_endproc

	.align	16, 0x90
	.type	sash_end,@function
sash_end:                               # @sash_end
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
	subq	$80, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$sash_move, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$sash_end, %rdi
	movq	-8(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, 64(%rdi)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	preview_unset_tmp_obj
	callq	preview_redraw
	callq	show_url
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sash_end, .Lfunc_end4-sash_end
	.cfi_endproc

	.align	16, 0x90
	.type	sash_move,@function
sash_move:                              # @sash_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edi
	callq	get_real_coord
	movl	%eax, -48(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB5_2:                                # %if.end
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jle	.LBB5_4
# BB#3:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB5_4:                                # %if.end.11
	cmpl	$0, -48(%rbp)
	jge	.LBB5_6
# BB#5:                                 # %if.then.14
	movl	$0, -48(%rbp)
.LBB5_6:                                # %if.end.15
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	60(%rcx), %eax
	jle	.LBB5_8
# BB#7:                                 # %if.then.18
	movq	-32(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB5_8:                                # %if.end.20
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	52(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	*%rcx
	movq	-40(%rbp), %rdi
	callq	object_emit_geometry_signal
	callq	preview_redraw
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sash_move, .Lfunc_end5-sash_move
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Move Sash"
	.size	.L.str, 10

	.type	move_sash_command_class,@object # @move_sash_command_class
	.data
	.align	8
move_sash_command_class:
	.quad	move_sash_command_destruct
	.quad	move_sash_command_execute
	.quad	0
	.quad	move_sash_command_redo
	.size	move_sash_command_class, 32

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
