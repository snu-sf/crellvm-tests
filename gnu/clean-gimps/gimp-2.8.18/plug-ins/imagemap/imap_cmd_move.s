	.text
	.file	"imap_cmd_move.bc"
	.globl	move_command_new
	.align	16, 0x90
	.type	move_command_new,@function
move_command_new:                       # @move_command_new
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
	movl	$1, %eax
	movl	%eax, %r8d
	movl	$104, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	callq	get_preferences
	movq	-32(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rdi
	callq	object_ref
	movq	-32(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 56(%rax)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 60(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	addq	$72, %rsi
	movq	-32(%rbp), %r8
	addq	$76, %r8
	movq	-32(%rbp), %r9
	addq	$80, %r9
	movq	-32(%rbp), %r10
	addq	$84, %r10
	movq	%r8, %rdx
	movq	%r9, %rcx
	movq	%r10, %r8
	callq	*%rax
	movq	-32(%rbp), %rax
	movl	72(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	%r11d, 64(%rax)
	movq	-32(%rbp), %rax
	movl	76(%rax), %r11d
	movq	-32(%rbp), %rax
	movl	%r11d, 68(%rax)
	callq	get_image_width
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	callq	get_image_height
	movabsq	$.L.str, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, 92(%rcx)
	movq	-32(%rbp), %rcx
	movl	$1, 100(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$move_command_class, %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	command_init
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	move_command_new, .Lfunc_end0-move_command_new
	.cfi_endproc

	.align	16, 0x90
	.type	move_command_destruct,@function
move_command_destruct:                  # @move_command_destruct
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
	movq	48(%rdi), %rdi
	callq	object_unref
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	move_command_destruct, .Lfunc_end1-move_command_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	move_command_execute,@function
move_command_execute:                   # @move_command_execute
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
	movabsq	$.L.str.1, %rsi
	movabsq	$button_release, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.2, %rsi
	movabsq	$button_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %r9d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%r9d, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	move_command_execute, .Lfunc_end2-move_command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	button_release,@function
button_release:                         # @button_release
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
	subq	$80, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$button_motion, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$button_release, %rdi
	movq	-8(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-32(%rbp), %rdi
	cmpl	$0, 100(%rdi)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	96(%rax), %esi
	callq	preview_set_cursor
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	show_url
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	72(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 72(%rax)
	movq	-32(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-32(%rbp), %rax
	cmpl	$0, 72(%rax)
	jne	.LBB3_4
# BB#3:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$0, 76(%rax)
	je	.LBB3_5
.LBB3_4:                                # %if.then.8
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	72(%rax), %esi
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	callq	object_move_command_new
	movq	%rax, %rdi
	callq	command_list_add
.LBB3_5:                                # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	button_release, .Lfunc_end3-button_release
	.cfi_endproc

	.align	16, 0x90
	.type	button_motion,@function
button_motion:                          # @button_motion
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %edi
	callq	get_real_coord
	movq	-32(%rbp), %rdx
	subl	56(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edi
	callq	get_real_coord
	movq	-32(%rbp), %rdx
	subl	60(%rdx), %eax
	movl	%eax, -48(%rbp)
	movq	-32(%rbp), %rdx
	cmpl	$0, 100(%rdx)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$52, %esi
	movq	-32(%rbp), %rax
	movl	$0, 100(%rax)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	callq	preview_set_cursor
	movq	-32(%rbp), %rdi
	movl	%eax, 96(%rdi)
	callq	hide_url
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rax
	movl	72(%rax), %ecx
	addl	-44(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB4_4
# BB#3:                                 # %if.then.8
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	72(%rcx), %eax
	movl	%eax, -44(%rbp)
.LBB4_4:                                # %if.end.11
	movq	-32(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	80(%rax), %ecx
	addl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	cmpl	88(%rax), %ecx
	jle	.LBB4_6
# BB#5:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	80(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	72(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB4_6:                                # %if.end.23
	movq	-32(%rbp), %rax
	movl	76(%rax), %ecx
	addl	-48(%rbp), %ecx
	cmpl	$0, %ecx
	jge	.LBB4_8
# BB#7:                                 # %if.then.27
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	subl	76(%rcx), %eax
	movl	%eax, -48(%rbp)
.LBB4_8:                                # %if.end.30
	movq	-32(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	84(%rax), %ecx
	addl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	cmpl	92(%rax), %ecx
	jle	.LBB4_10
# BB#9:                                 # %if.then.36
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	84(%rax), %ecx
	movq	-32(%rbp), %rax
	subl	76(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB4_10:                               # %if.end.42
	cmpl	$0, -44(%rbp)
	jne	.LBB4_12
# BB#11:                                # %lor.lhs.false
	cmpl	$0, -48(%rbp)
	je	.LBB4_13
.LBB4_12:                               # %if.then.45
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	callq	get_real_coord
	movq	-32(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-16(%rbp), %rcx
	cvttsd2si	32(%rcx), %edi
	callq	get_real_coord
	movq	-32(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	72(%rcx), %eax
	movl	%eax, 72(%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	76(%rcx), %eax
	movl	%eax, 76(%rcx)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	object_move
	callq	preview_redraw
.LBB4_13:                               # %if.end.58
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	button_motion, .Lfunc_end4-button_motion
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Move"
	.size	.L.str, 5

	.type	move_command_class,@object # @move_command_class
	.data
	.align	8
move_command_class:
	.quad	move_command_destruct
	.quad	move_command_execute
	.quad	0
	.quad	0
	.size	move_command_class, 32

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
