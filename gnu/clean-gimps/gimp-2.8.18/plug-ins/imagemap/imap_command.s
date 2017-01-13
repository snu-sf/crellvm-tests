	.text
	.file	"imap_command.bc"
	.globl	command_list_new
	.align	16, 0x90
	.type	command_list_new,@function
command_list_new:                       # @command_list_new
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$48, %eax
	movl	%eax, %esi
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	command_list_new, .Lfunc_end0-command_list_new
	.cfi_endproc

	.globl	command_list_destruct
	.align	16, 0x90
	.type	command_list_destruct,@function
command_list_destruct:                  # @command_list_destruct
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
	callq	command_list_clear
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	command_list_destruct, .Lfunc_end1-command_list_destruct
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_clear,@function
command_list_clear:                     # @command_list_clear
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	command_destruct
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	command_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	command_list_clear, .Lfunc_end2-command_list_clear
	.cfi_endproc

	.globl	command_list_remove_all
	.align	16, 0x90
	.type	command_list_remove_all,@function
command_list_remove_all:                # @command_list_remove_all
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
	movabsq	$_command_list, %rdi
	callq	command_list_clear
	popq	%rbp
	retq
.Lfunc_end3:
	.size	command_list_remove_all, .Lfunc_end3-command_list_remove_all
	.cfi_endproc

	.globl	command_list_add
	.align	16, 0x90
	.type	command_list_add,@function
command_list_add:                       # @command_list_add
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_current_command_list, %rdi
	movq	-8(%rbp), %rsi
	callq	_command_list_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	command_list_add, .Lfunc_end4-command_list_add
	.cfi_endproc

	.align	16, 0x90
	.type	_command_list_add,@function
_command_list_add:                      # @_command_list_add
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
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	command_destruct
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_length
	movq	-8(%rbp), %rdi
	cmpl	8(%rdi), %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_first
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	command_destruct
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB5_6:                                # %if.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_last
	movq	-8(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	command_list_callback_call
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_command_list_add, .Lfunc_end5-_command_list_add
	.cfi_endproc

	.globl	subcommand_list_add
	.align	16, 0x90
	.type	subcommand_list_add,@function
subcommand_list_add:                    # @subcommand_list_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_command_list_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	subcommand_list_add, .Lfunc_end6-subcommand_list_add
	.cfi_endproc

	.globl	subcommand_start
	.align	16, 0x90
	.type	subcommand_start,@function
subcommand_start:                       # @subcommand_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_current_command_list, %rdi
	movq	-8(%rbp), %rsi
	callq	command_list_start
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	subcommand_start, .Lfunc_end7-subcommand_start
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_start,@function
command_list_start:                     # @command_list_start
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$32, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movabsq	$parent_command_class, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdx
	callq	command_init
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	command_list_new
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	command_list_add
	movq	_current_command_list, %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, _current_command_list
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	command_list_start, .Lfunc_end8-command_list_start
	.cfi_endproc

	.globl	subcommand_end
	.align	16, 0x90
	.type	subcommand_end,@function
subcommand_end:                         # @subcommand_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	movq	_current_command_list, %rdi
	callq	command_list_end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	subcommand_end, .Lfunc_end9-subcommand_end
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_end,@function
command_list_end:                       # @command_list_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, _current_command_list
	popq	%rbp
	retq
.Lfunc_end10:
	.size	command_list_end, .Lfunc_end10-command_list_end
	.cfi_endproc

	.globl	command_list_set_undo_level
	.align	16, 0x90
	.type	command_list_set_undo_level,@function
command_list_set_undo_level:            # @command_list_set_undo_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_command_list, %rax
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	callq	_command_list_set_undo_level
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	command_list_set_undo_level, .Lfunc_end11-command_list_set_undo_level
	.cfi_endproc

	.align	16, 0x90
	.type	_command_list_set_undo_level,@function
_command_list_set_undo_level:           # @_command_list_set_undo_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_list_length
	subl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jle	.LBB12_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB12_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB12_4:                               # %land.end
                                        #   in Loop: Header=BB12_2 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_5
	jmp	.LBB12_7
.LBB12_5:                               # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	command_destruct
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB12_2
.LBB12_7:                               # %for.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_last
	movq	%rax, -24(%rbp)
.LBB12_8:                               # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -50(%rbp)          # 1-byte Spill
	je	.LBB12_10
# BB#9:                                 # %land.rhs.11
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	setne	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB12_10:                              # %land.end.14
                                        #   in Loop: Header=BB12_8 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_11
	jmp	.LBB12_13
.LBB12_11:                              # %for.body.15
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	command_destruct
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
# BB#12:                                # %for.inc.21
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -16(%rbp)
	jmp	.LBB12_8
.LBB12_13:                              # %for.end.23
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	command_list_callback_call
.LBB12_14:                              # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_command_list_set_undo_level, .Lfunc_end12-_command_list_set_undo_level
	.cfi_endproc

	.globl	command_list_get_redo_command
	.align	16, 0x90
	.type	command_list_get_redo_command,@function
command_list_get_redo_command:          # @command_list_get_redo_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	cmpq	$0, _command_list+32
	je	.LBB13_2
# BB#1:                                 # %cond.true
	movq	_command_list+32, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -8(%rbp)          # 8-byte Spill
	jmp	.LBB13_3
.LBB13_3:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	popq	%rbp
	retq
.Lfunc_end13:
	.size	command_list_get_redo_command, .Lfunc_end13-command_list_get_redo_command
	.cfi_endproc

	.globl	command_list_add_update_cb
	.align	16, 0x90
	.type	command_list_add_update_cb,@function
command_list_add_update_cb:             # @command_list_add_update_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_command_list, %rax
	addq	$40, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	command_list_callback_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	command_list_add_update_cb, .Lfunc_end14-command_list_add_update_cb
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_callback_add,@function
command_list_callback_add:              # @command_list_callback_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$16, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	command_list_callback_add, .Lfunc_end15-command_list_callback_add
	.cfi_endproc

	.globl	command_execute
	.align	16, 0x90
	.type	command_execute,@function
command_execute:                        # @command_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	jmp	.LBB16_12
.LBB16_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	command_list_execute
.LBB16_4:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB16_11
# BB#5:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB16_7
# BB#6:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	command_list_add
	jmp	.LBB16_10
.LBB16_7:                               # %if.else.10
	cmpl	$1, -12(%rbp)
	jne	.LBB16_9
# BB#8:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	callq	command_destruct
.LBB16_9:                               # %if.end.13
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.14
	jmp	.LBB16_11
.LBB16_11:                              # %if.end.15
	jmp	.LBB16_12
.LBB16_12:                              # %if.end.16
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	command_execute, .Lfunc_end16-command_execute
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_execute,@function
command_list_execute:                   # @command_list_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB17_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	command_list_execute
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB17_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB17_6:                               # %if.end.8
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_1
.LBB17_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	command_list_execute, .Lfunc_end17-command_list_execute
	.cfi_endproc

	.align	16, 0x90
	.type	command_destruct,@function
command_destruct:                       # @command_destruct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	command_list_destruct
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB18_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB18_4:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	command_destruct, .Lfunc_end18-command_destruct
	.cfi_endproc

	.globl	command_redo
	.align	16, 0x90
	.type	command_redo,@function
command_redo:                           # @command_redo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	command_list_redo_all
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	jmp	.LBB19_7
.LBB19_4:                               # %if.else
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB19_6
# BB#5:                                 # %if.then.10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB19_6:                               # %if.end.13
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	command_redo, .Lfunc_end19-command_redo
	.cfi_endproc

	.globl	command_list_redo_all
	.align	16, 0x90
	.type	command_list_redo_all,@function
command_list_redo_all:                  # @command_list_redo_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	command_list_redo
	jmp	.LBB20_1
.LBB20_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	command_list_redo_all, .Lfunc_end20-command_list_redo_all
	.cfi_endproc

	.globl	command_undo
	.align	16, 0x90
	.type	command_undo,@function
command_undo:                           # @command_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	command_list_undo_all
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB21_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB21_4:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	command_undo, .Lfunc_end21-command_undo
	.cfi_endproc

	.globl	command_list_undo_all
	.align	16, 0x90
	.type	command_list_undo_all,@function
command_list_undo_all:                  # @command_list_undo_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB22_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	command_list_undo
	jmp	.LBB22_1
.LBB22_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	command_list_undo_all, .Lfunc_end22-command_list_undo_all
	.cfi_endproc

	.globl	command_set_name
	.align	16, 0x90
	.type	command_set_name,@function
command_set_name:                       # @command_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_command_list, %rax
	addq	$40, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	command_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	command_set_name, .Lfunc_end23-command_set_name
	.cfi_endproc

	.align	16, 0x90
	.type	command_list_callback_call,@function
command_list_callback_call:             # @command_list_callback_call
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB24_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	command_list_callback_call, .Lfunc_end24-command_list_callback_call
	.cfi_endproc

	.globl	command_list_undo
	.align	16, 0x90
	.type	command_list_undo,@function
command_list_undo:                      # @command_list_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	command_undo
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB25_3
.LBB25_2:                               # %if.else
	movq	$0, -16(%rbp)
.LBB25_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	command_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	command_list_undo, .Lfunc_end25-command_list_undo
	.cfi_endproc

	.globl	last_command_undo
	.align	16, 0x90
	.type	last_command_undo,@function
last_command_undo:                      # @last_command_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	movabsq	$_command_list, %rdi
	callq	command_list_undo
	popq	%rbp
	retq
.Lfunc_end26:
	.size	last_command_undo, .Lfunc_end26-last_command_undo
	.cfi_endproc

	.globl	command_list_redo
	.align	16, 0x90
	.type	command_list_redo,@function
command_list_redo:                      # @command_list_redo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	command_redo
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	addq	$40, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	command_list_callback_call
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	command_list_redo, .Lfunc_end27-command_list_redo
	.cfi_endproc

	.globl	last_command_redo
	.align	16, 0x90
	.type	last_command_redo,@function
last_command_redo:                      # @last_command_redo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movabsq	$_command_list, %rdi
	callq	command_list_redo
	popq	%rbp
	retq
.Lfunc_end28:
	.size	last_command_redo, .Lfunc_end28-last_command_redo
	.cfi_endproc

	.globl	command_init
	.align	16, 0x90
	.type	command_init,@function
command_init:                           # @command_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	$0, 8(%rdx)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-8(%rbp), %rdx
	movl	$0, 24(%rdx)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	command_init, .Lfunc_end29-command_init
	.cfi_endproc

	.globl	command_add_subcommand
	.align	16, 0x90
	.type	command_add_subcommand,@function
command_add_subcommand:                 # @command_add_subcommand
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	command_list_new
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB30_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	subcommand_list_add
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	command_add_subcommand, .Lfunc_end30-command_add_subcommand
	.cfi_endproc

	.globl	command_new
	.align	16, 0x90
	.type	command_new,@function
command_new:                            # @command_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$40, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movabsq	$.L.str, %rsi
	movabsq	$basic_command_class, %rcx
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	callq	command_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	command_new, .Lfunc_end31-command_new
	.cfi_endproc

	.align	16, 0x90
	.type	basic_command_execute,@function
basic_command_execute:                  # @basic_command_execute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	*32(%rdi)
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	basic_command_execute, .Lfunc_end32-basic_command_execute
	.cfi_endproc

	.type	_command_list,@object   # @_command_list
	.data
	.align	8
_command_list:
	.quad	0
	.long	10                      # 0xa
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.size	_command_list, 48

	.type	_current_command_list,@object # @_current_command_list
	.align	8
_current_command_list:
	.quad	_command_list
	.size	_current_command_list, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unknown"
	.size	.L.str, 8

	.type	parent_command_class,@object # @parent_command_class
	.local	parent_command_class
	.comm	parent_command_class,32,8
	.type	basic_command_class,@object # @basic_command_class
	.data
	.align	8
basic_command_class:
	.quad	0
	.quad	basic_command_execute
	.quad	0
	.quad	0
	.size	basic_command_class, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
