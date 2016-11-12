	.text
	.file	"menu.bc"
	.globl	init_menu_items
	.align	16, 0x90
	.type	init_menu_items,@function
init_menu_items:                        # @init_menu_items
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
	subq	$32, %rsp
	xorl	%edi, %edi
	movq	menu_items_inuse, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rcx          # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movq	menu_items, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	movl	$60, menu_items_allocated
	movslq	menu_items_allocated, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, menu_items
.LBB0_4:                                # %if.end.6
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, menu_items_inuse
	movl	$0, menu_items_used
	movl	$0, menu_items_n_panes
	movl	$0, menu_items_submenu_depth
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	init_menu_items, .Lfunc_end0-init_menu_items
	.cfi_endproc

	.globl	finish_menu_items
	.align	16, 0x90
	.type	finish_menu_items,@function
finish_menu_items:                      # @finish_menu_items
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
	popq	%rbp
	retq
.Lfunc_end1:
	.size	finish_menu_items, .Lfunc_end1-finish_menu_items
	.cfi_endproc

	.globl	unuse_menu_items
	.align	16, 0x90
	.type	unuse_menu_items,@function
unuse_menu_items:                       # @unuse_menu_items
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, menu_items_inuse
	popq	%rbp
	retq
.Lfunc_end2:
	.size	unuse_menu_items, .Lfunc_end2-unuse_menu_items
	.cfi_endproc

	.globl	discard_menu_items
	.align	16, 0x90
	.type	discard_menu_items,@function
discard_menu_items:                     # @discard_menu_items
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
	cmpl	$200, menu_items_allocated
	jle	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, menu_items
	movl	$0, menu_items_allocated
.LBB3_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end3:
	.size	discard_menu_items, .Lfunc_end3-discard_menu_items
	.cfi_endproc

	.globl	save_menu_items
	.align	16, 0x90
	.type	save_menu_items,@function
save_menu_items:                        # @save_menu_items
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
	xorl	%edi, %edi
	movq	menu_items_inuse, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	menu_items, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB4_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movslq	menu_items_used, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	menu_items_n_panes, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movslq	menu_items_submenu_depth, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	callq	list4
	movabsq	$restore_menu_items, %rdi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	callq	record_unwind_protect
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, menu_items_inuse
	callq	builtin_lisp_symbol
	movq	%rax, menu_items
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_menu_items, .Lfunc_end4-save_menu_items
	.cfi_endproc

	.align	16, 0x90
	.type	restore_menu_items,@function
restore_menu_items:                     # @restore_menu_items
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, menu_items
	movq	menu_items, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB5_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, menu_items_inuse
	movq	menu_items, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_4:                                # %cond.true.4
	movq	menu_items, %rdi
	callq	ASIZE
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %cond.end.7
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, menu_items_allocated
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, menu_items_used
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, menu_items_n_panes
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, menu_items_submenu_depth
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	restore_menu_items, .Lfunc_end5-restore_menu_items
	.cfi_endproc

	.globl	list_of_panes
	.align	16, 0x90
	.type	list_of_panes,@function
list_of_panes:                          # @list_of_panes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	init_menu_items
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	encode_menu_string
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	push_menu_pane
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_CONS
	movq	-40(%rbp), %rdi
	callq	list_of_items
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	list_of_panes, .Lfunc_end6-list_of_panes
	.cfi_endproc

	.align	16, 0x90
	.type	push_menu_pane,@function
push_menu_pane:                         # @push_menu_pane
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
	subq	$32, %rsp
	movl	$3, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	ensure_menu_items
	cmpl	$0, menu_items_submenu_depth
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	menu_items_n_panes, %eax
	addl	$1, %eax
	movl	%eax, menu_items_n_panes
.LBB7_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	menu_items, %rax
	movslq	menu_items_used, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	movq	menu_items, %rdi
	movslq	menu_items_used, %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	movq	menu_items, %rdi
	movslq	menu_items_used, %rsi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	push_menu_pane, .Lfunc_end7-push_menu_pane
	.cfi_endproc

	.align	16, 0x90
	.type	encode_menu_string,@function
encode_menu_string:                     # @encode_menu_string
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
	movq	%rdi, -16(%rbp)
	movq	globals+1432, %rdi
	subq	$5, %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	$988, %edi              # imm = 0x3DC
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	encode_menu_string, .Lfunc_end8-encode_menu_string
	.cfi_endproc

	.align	16, 0x90
	.type	list_of_items,@function
list_of_items:                          # @list_of_items
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_3
	jmp	.LBB9_4
.LBB9_3:                                # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	encode_menu_string
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	push_menu_item
	jmp	.LBB9_8
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	encode_menu_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	push_menu_item
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.25
                                        #   in Loop: Header=BB9_1 Depth=1
	callq	push_left_right_boundary
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.26
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_9
.LBB9_9:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_1
.LBB9_10:                               # %for.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	list_of_items, .Lfunc_end9-list_of_items
	.cfi_endproc

	.globl	parse_single_submenu
	.align	16, 0x90
	.type	parse_single_submenu,@function
parse_single_submenu:                   # @parse_single_submenu
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
	subq	$1056, %rsp             # imm = 0x420
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -57(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	movq	-24(%rbp), %rdi
	callq	Flength
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_2
	jmp	.LBB10_81
.LBB10_2:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_3
	jmp	.LBB10_42
.LBB10_3:                               # %cond.true.2
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_5
# BB#4:                                 # %cond.true.5
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %cond.false
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
.LBB10_6:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB10_8
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB10_34
.LBB10_8:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_9
	jmp	.LBB10_20
.LBB10_9:                               # %cond.true.34
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB10_14
# BB#10:                                # %cond.true.39
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jge	.LBB10_12
# BB#11:                                # %cond.true.49
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_13
.LBB10_12:                              # %cond.false.59
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB10_13:                              # %cond.end.65
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_34
	jmp	.LBB10_31
.LBB10_14:                              # %cond.false.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_15
	jmp	.LBB10_16
.LBB10_15:                              # %cond.true.70
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_34
	jmp	.LBB10_31
.LBB10_16:                              # %cond.false.71
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_18
# BB#17:                                # %cond.true.79
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_19
.LBB10_18:                              # %cond.false.99
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -128(%rbp)        # 4-byte Spill
.LBB10_19:                              # %cond.end.105
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_34
	jmp	.LBB10_31
.LBB10_20:                              # %cond.false.112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_21
	jmp	.LBB10_22
.LBB10_21:                              # %cond.true.113
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_34
	jmp	.LBB10_31
.LBB10_22:                              # %cond.false.114
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB10_27
# BB#23:                                # %cond.true.119
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	jge	.LBB10_25
# BB#24:                                # %cond.true.129
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB10_26
.LBB10_25:                              # %cond.false.149
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB10_26:                              # %cond.end.155
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_34
	jmp	.LBB10_31
.LBB10_27:                              # %cond.false.160
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_29
# BB#28:                                # %cond.true.168
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB10_30
.LBB10_29:                              # %cond.false.178
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB10_30:                              # %cond.end.184
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_34
.LBB10_31:                              # %lor.lhs.false.191
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_33
# BB#32:                                # %land.lhs.true.199
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB10_34
.LBB10_33:                              # %lor.lhs.false.205
	movl	$127, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB10_38
.LBB10_34:                              # %cond.true.211
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB10_36
# BB#35:                                # %cond.true.217
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB10_37
.LBB10_36:                              # %cond.false.223
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB10_37:                              # %cond.end.231
	movl	-144(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_38:                              # %cond.false.234
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB10_40
# BB#39:                                # %cond.true.240
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
	jmp	.LBB10_41
.LBB10_40:                              # %cond.false.246
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -148(%rbp)        # 4-byte Spill
.LBB10_41:                              # %cond.end.254
	movl	-148(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_42:                              # %cond.false.257
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_44
# BB#43:                                # %cond.true.263
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB10_45
.LBB10_44:                              # %cond.false.280
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB10_45:                              # %cond.end.284
	movq	-160(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_47
# BB#46:                                # %land.lhs.true.288
	cmpq	$0, -40(%rbp)
	jl	.LBB10_73
.LBB10_47:                              # %lor.lhs.false.291
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_48
	jmp	.LBB10_59
.LBB10_48:                              # %cond.true.292
	cmpq	$0, -40(%rbp)
	jge	.LBB10_53
# BB#49:                                # %cond.true.295
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jge	.LBB10_51
# BB#50:                                # %cond.true.301
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB10_52
.LBB10_51:                              # %cond.false.309
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB10_52:                              # %cond.end.313
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	cqto
	movq	-184(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_73
	jmp	.LBB10_70
.LBB10_53:                              # %cond.false.318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_54
	jmp	.LBB10_55
.LBB10_54:                              # %cond.true.319
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_73
	jmp	.LBB10_70
.LBB10_55:                              # %cond.false.320
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_57
# BB#56:                                # %cond.true.326
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB10_58
.LBB10_57:                              # %cond.false.343
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB10_58:                              # %cond.end.347
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	cqto
	movq	-200(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_73
	jmp	.LBB10_70
.LBB10_59:                              # %cond.false.352
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_60
	jmp	.LBB10_61
.LBB10_60:                              # %cond.true.353
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_73
	jmp	.LBB10_70
.LBB10_61:                              # %cond.false.354
	cmpq	$0, -40(%rbp)
	jge	.LBB10_66
# BB#62:                                # %cond.true.357
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jge	.LBB10_64
# BB#63:                                # %cond.true.363
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB10_65
.LBB10_64:                              # %cond.false.380
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB10_65:                              # %cond.end.384
	movq	-216(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	cqto
	movq	-224(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_73
	jmp	.LBB10_70
.LBB10_66:                              # %cond.false.389
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_68
# BB#67:                                # %cond.true.395
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB10_69
.LBB10_68:                              # %cond.false.403
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB10_69:                              # %cond.end.407
	movq	-232(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	cqto
	movq	-240(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_73
.LBB10_70:                              # %lor.lhs.false.412
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_72
# BB#71:                                # %land.lhs.true.418
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB10_73
.LBB10_72:                              # %lor.lhs.false.422
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_77
.LBB10_73:                              # %cond.true.426
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB10_75
# BB#74:                                # %cond.true.432
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB10_76
.LBB10_75:                              # %cond.false.438
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB10_76:                              # %cond.end.446
	movl	-244(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_77:                              # %cond.false.449
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB10_79
# BB#78:                                # %cond.true.455
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jmp	.LBB10_80
.LBB10_79:                              # %cond.false.461
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -248(%rbp)        # 4-byte Spill
.LBB10_80:                              # %cond.end.469
	movl	-248(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_81:                              # %cond.false.472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_82
	jmp	.LBB10_161
.LBB10_82:                              # %cond.true.473
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_83
	jmp	.LBB10_122
.LBB10_83:                              # %cond.true.474
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_85
# BB#84:                                # %cond.true.482
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB10_86
.LBB10_85:                              # %cond.false.502
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB10_86:                              # %cond.end.508
	movl	-252(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB10_88
# BB#87:                                # %land.lhs.true.512
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB10_114
.LBB10_88:                              # %lor.lhs.false.517
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_89
	jmp	.LBB10_100
.LBB10_89:                              # %cond.true.518
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB10_94
# BB#90:                                # %cond.true.523
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -256(%rbp)        # 4-byte Spill
	jge	.LBB10_92
# BB#91:                                # %cond.true.533
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jmp	.LBB10_93
.LBB10_92:                              # %cond.false.543
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -260(%rbp)        # 4-byte Spill
.LBB10_93:                              # %cond.end.549
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-256(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_114
	jmp	.LBB10_111
.LBB10_94:                              # %cond.false.554
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_95
	jmp	.LBB10_96
.LBB10_95:                              # %cond.true.555
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_114
	jmp	.LBB10_111
.LBB10_96:                              # %cond.false.556
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_98
# BB#97:                                # %cond.true.564
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB10_99
.LBB10_98:                              # %cond.false.584
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB10_99:                              # %cond.end.590
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_114
	jmp	.LBB10_111
.LBB10_100:                             # %cond.false.597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_101
	jmp	.LBB10_102
.LBB10_101:                             # %cond.true.598
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_114
	jmp	.LBB10_111
.LBB10_102:                             # %cond.false.599
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB10_107
# BB#103:                               # %cond.true.604
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jge	.LBB10_105
# BB#104:                               # %cond.true.614
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB10_106
.LBB10_105:                             # %cond.false.634
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB10_106:                             # %cond.end.640
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-268(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_114
	jmp	.LBB10_111
.LBB10_107:                             # %cond.false.645
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_109
# BB#108:                               # %cond.true.653
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB10_110
.LBB10_109:                             # %cond.false.663
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB10_110:                             # %cond.end.669
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_114
.LBB10_111:                             # %lor.lhs.false.676
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB10_113
# BB#112:                               # %land.lhs.true.684
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB10_114
.LBB10_113:                             # %lor.lhs.false.690
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB10_118
.LBB10_114:                             # %cond.true.696
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_116
# BB#115:                               # %cond.true.702
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -280(%rbp)        # 4-byte Spill
	jmp	.LBB10_117
.LBB10_116:                             # %cond.false.708
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -280(%rbp)        # 4-byte Spill
.LBB10_117:                             # %cond.end.716
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_118:                             # %cond.false.719
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_120
# BB#119:                               # %cond.true.725
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB10_121
.LBB10_120:                             # %cond.false.731
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -284(%rbp)        # 4-byte Spill
.LBB10_121:                             # %cond.end.739
	movl	-284(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_122:                             # %cond.false.742
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_124
# BB#123:                               # %cond.true.748
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB10_125
.LBB10_124:                             # %cond.false.765
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB10_125:                             # %cond.end.769
	movq	-296(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_127
# BB#126:                               # %land.lhs.true.773
	cmpq	$0, -40(%rbp)
	jl	.LBB10_153
.LBB10_127:                             # %lor.lhs.false.776
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_128
	jmp	.LBB10_139
.LBB10_128:                             # %cond.true.777
	cmpq	$0, -40(%rbp)
	jge	.LBB10_133
# BB#129:                               # %cond.true.780
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB10_131
# BB#130:                               # %cond.true.786
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB10_132
.LBB10_131:                             # %cond.false.794
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB10_132:                             # %cond.end.798
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_153
	jmp	.LBB10_150
.LBB10_133:                             # %cond.false.803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_134
	jmp	.LBB10_135
.LBB10_134:                             # %cond.true.804
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_153
	jmp	.LBB10_150
.LBB10_135:                             # %cond.false.805
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_137
# BB#136:                               # %cond.true.811
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB10_138
.LBB10_137:                             # %cond.false.828
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB10_138:                             # %cond.end.832
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_153
	jmp	.LBB10_150
.LBB10_139:                             # %cond.false.837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_140
	jmp	.LBB10_141
.LBB10_140:                             # %cond.true.838
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_153
	jmp	.LBB10_150
.LBB10_141:                             # %cond.false.839
	cmpq	$0, -40(%rbp)
	jge	.LBB10_146
# BB#142:                               # %cond.true.842
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jge	.LBB10_144
# BB#143:                               # %cond.true.848
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB10_145
.LBB10_144:                             # %cond.false.865
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB10_145:                             # %cond.end.869
	movq	-352(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cqto
	movq	-360(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_153
	jmp	.LBB10_150
.LBB10_146:                             # %cond.false.874
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_148
# BB#147:                               # %cond.true.880
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB10_149
.LBB10_148:                             # %cond.false.888
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB10_149:                             # %cond.end.892
	movq	-368(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cqto
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_153
.LBB10_150:                             # %lor.lhs.false.897
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_152
# BB#151:                               # %land.lhs.true.903
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB10_153
.LBB10_152:                             # %lor.lhs.false.907
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_157
.LBB10_153:                             # %cond.true.911
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_155
# BB#154:                               # %cond.true.917
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB10_156
.LBB10_155:                             # %cond.false.923
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB10_156:                             # %cond.end.931
	movl	-380(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_157:                             # %cond.false.934
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB10_159
# BB#158:                               # %cond.true.940
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -384(%rbp)        # 4-byte Spill
	jmp	.LBB10_160
.LBB10_159:                             # %cond.false.946
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -384(%rbp)        # 4-byte Spill
.LBB10_160:                             # %cond.end.954
	movl	-384(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_161:                             # %cond.false.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_162
	jmp	.LBB10_241
.LBB10_162:                             # %cond.true.958
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_163
	jmp	.LBB10_202
.LBB10_163:                             # %cond.true.959
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_165
# BB#164:                               # %cond.true.966
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB10_166
.LBB10_165:                             # %cond.false.984
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB10_166:                             # %cond.end.989
	movl	-388(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB10_168
# BB#167:                               # %land.lhs.true.993
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB10_194
.LBB10_168:                             # %lor.lhs.false.997
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_169
	jmp	.LBB10_180
.LBB10_169:                             # %cond.true.998
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_174
# BB#170:                               # %cond.true.1002
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
	jge	.LBB10_172
# BB#171:                               # %cond.true.1010
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB10_173
.LBB10_172:                             # %cond.false.1019
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
.LBB10_173:                             # %cond.end.1024
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-392(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_194
	jmp	.LBB10_191
.LBB10_174:                             # %cond.false.1029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_175
	jmp	.LBB10_176
.LBB10_175:                             # %cond.true.1030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_194
	jmp	.LBB10_191
.LBB10_176:                             # %cond.false.1031
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_178
# BB#177:                               # %cond.true.1038
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -400(%rbp)        # 4-byte Spill
	jmp	.LBB10_179
.LBB10_178:                             # %cond.false.1056
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB10_179:                             # %cond.end.1061
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_194
	jmp	.LBB10_191
.LBB10_180:                             # %cond.false.1067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_181
	jmp	.LBB10_182
.LBB10_181:                             # %cond.true.1068
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_194
	jmp	.LBB10_191
.LBB10_182:                             # %cond.false.1069
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_187
# BB#183:                               # %cond.true.1073
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jge	.LBB10_185
# BB#184:                               # %cond.true.1081
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -408(%rbp)        # 4-byte Spill
	jmp	.LBB10_186
.LBB10_185:                             # %cond.false.1099
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB10_186:                             # %cond.end.1104
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-404(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB10_194
	jmp	.LBB10_191
.LBB10_187:                             # %cond.false.1109
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_189
# BB#188:                               # %cond.true.1116
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB10_190
.LBB10_189:                             # %cond.false.1125
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB10_190:                             # %cond.end.1130
	movl	-412(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB10_194
.LBB10_191:                             # %lor.lhs.false.1136
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB10_193
# BB#192:                               # %land.lhs.true.1143
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB10_194
.LBB10_193:                             # %lor.lhs.false.1148
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB10_198
.LBB10_194:                             # %cond.true.1153
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_196
# BB#195:                               # %cond.true.1158
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	jmp	.LBB10_197
.LBB10_196:                             # %cond.false.1161
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -416(%rbp)        # 4-byte Spill
.LBB10_197:                             # %cond.end.1166
	movl	-416(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_198:                             # %cond.false.1169
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_200
# BB#199:                               # %cond.true.1174
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	jmp	.LBB10_201
.LBB10_200:                             # %cond.false.1177
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -420(%rbp)        # 4-byte Spill
.LBB10_201:                             # %cond.end.1182
	movl	-420(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_202:                             # %cond.false.1185
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_204
# BB#203:                               # %cond.true.1191
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB10_205
.LBB10_204:                             # %cond.false.1208
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB10_205:                             # %cond.end.1212
	movq	-432(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_207
# BB#206:                               # %land.lhs.true.1216
	cmpq	$0, -40(%rbp)
	jl	.LBB10_233
.LBB10_207:                             # %lor.lhs.false.1219
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_208
	jmp	.LBB10_219
.LBB10_208:                             # %cond.true.1220
	cmpq	$0, -40(%rbp)
	jge	.LBB10_213
# BB#209:                               # %cond.true.1223
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB10_211
# BB#210:                               # %cond.true.1229
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB10_212
.LBB10_211:                             # %cond.false.1237
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB10_212:                             # %cond.end.1241
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_233
	jmp	.LBB10_230
.LBB10_213:                             # %cond.false.1246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_214
	jmp	.LBB10_215
.LBB10_214:                             # %cond.true.1247
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_233
	jmp	.LBB10_230
.LBB10_215:                             # %cond.false.1248
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_217
# BB#216:                               # %cond.true.1254
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB10_218
.LBB10_217:                             # %cond.false.1271
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB10_218:                             # %cond.end.1275
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_233
	jmp	.LBB10_230
.LBB10_219:                             # %cond.false.1280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_220
	jmp	.LBB10_221
.LBB10_220:                             # %cond.true.1281
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_233
	jmp	.LBB10_230
.LBB10_221:                             # %cond.false.1282
	cmpq	$0, -40(%rbp)
	jge	.LBB10_226
# BB#222:                               # %cond.true.1285
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jge	.LBB10_224
# BB#223:                               # %cond.true.1291
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB10_225
.LBB10_224:                             # %cond.false.1308
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB10_225:                             # %cond.end.1312
	movq	-488(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	cqto
	movq	-496(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_233
	jmp	.LBB10_230
.LBB10_226:                             # %cond.false.1317
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_228
# BB#227:                               # %cond.true.1323
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB10_229
.LBB10_228:                             # %cond.false.1331
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB10_229:                             # %cond.end.1335
	movq	-504(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	cqto
	movq	-512(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_233
.LBB10_230:                             # %lor.lhs.false.1340
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_232
# BB#231:                               # %land.lhs.true.1346
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB10_233
.LBB10_232:                             # %lor.lhs.false.1350
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB10_237
.LBB10_233:                             # %cond.true.1354
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_235
# BB#234:                               # %cond.true.1359
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB10_236
.LBB10_235:                             # %cond.false.1362
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -516(%rbp)        # 4-byte Spill
.LBB10_236:                             # %cond.end.1367
	movl	-516(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_237:                             # %cond.false.1370
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB10_239
# BB#238:                               # %cond.true.1375
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	jmp	.LBB10_240
.LBB10_239:                             # %cond.false.1378
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -520(%rbp)        # 4-byte Spill
.LBB10_240:                             # %cond.end.1383
	movl	-520(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_241:                             # %cond.false.1386
	movb	$1, %al
	testb	$1, %al
	jne	.LBB10_242
	jmp	.LBB10_321
.LBB10_242:                             # %cond.true.1387
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_243
	jmp	.LBB10_282
.LBB10_243:                             # %cond.true.1388
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_245
# BB#244:                               # %cond.true.1394
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB10_246
.LBB10_245:                             # %cond.false.1411
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB10_246:                             # %cond.end.1415
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_248
# BB#247:                               # %land.lhs.true.1419
	cmpq	$0, -40(%rbp)
	jl	.LBB10_274
.LBB10_248:                             # %lor.lhs.false.1422
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_249
	jmp	.LBB10_260
.LBB10_249:                             # %cond.true.1423
	cmpq	$0, -40(%rbp)
	jge	.LBB10_254
# BB#250:                               # %cond.true.1426
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB10_252
# BB#251:                               # %cond.true.1432
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB10_253
.LBB10_252:                             # %cond.false.1440
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB10_253:                             # %cond.end.1444
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_274
	jmp	.LBB10_271
.LBB10_254:                             # %cond.false.1449
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_255
	jmp	.LBB10_256
.LBB10_255:                             # %cond.true.1450
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_274
	jmp	.LBB10_271
.LBB10_256:                             # %cond.false.1451
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_258
# BB#257:                               # %cond.true.1457
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB10_259
.LBB10_258:                             # %cond.false.1474
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB10_259:                             # %cond.end.1478
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_274
	jmp	.LBB10_271
.LBB10_260:                             # %cond.false.1483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_261
	jmp	.LBB10_262
.LBB10_261:                             # %cond.true.1484
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_274
	jmp	.LBB10_271
.LBB10_262:                             # %cond.false.1485
	cmpq	$0, -40(%rbp)
	jge	.LBB10_267
# BB#263:                               # %cond.true.1488
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB10_265
# BB#264:                               # %cond.true.1494
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB10_266
.LBB10_265:                             # %cond.false.1511
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB10_266:                             # %cond.end.1515
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_274
	jmp	.LBB10_271
.LBB10_267:                             # %cond.false.1520
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_269
# BB#268:                               # %cond.true.1526
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB10_270
.LBB10_269:                             # %cond.false.1534
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB10_270:                             # %cond.end.1538
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_274
.LBB10_271:                             # %lor.lhs.false.1543
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_273
# BB#272:                               # %land.lhs.true.1549
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_274
.LBB10_273:                             # %lor.lhs.false.1553
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_278
.LBB10_274:                             # %cond.true.1557
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_276
# BB#275:                               # %cond.true.1561
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB10_277
.LBB10_276:                             # %cond.false.1563
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB10_277:                             # %cond.end.1567
	movq	-616(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_278:                             # %cond.false.1569
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_280
# BB#279:                               # %cond.true.1573
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB10_281
.LBB10_280:                             # %cond.false.1575
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB10_281:                             # %cond.end.1579
	movq	-624(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_282:                             # %cond.false.1581
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_284
# BB#283:                               # %cond.true.1587
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB10_285
.LBB10_284:                             # %cond.false.1604
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB10_285:                             # %cond.end.1608
	movq	-632(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_287
# BB#286:                               # %land.lhs.true.1612
	cmpq	$0, -40(%rbp)
	jl	.LBB10_313
.LBB10_287:                             # %lor.lhs.false.1615
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_288
	jmp	.LBB10_299
.LBB10_288:                             # %cond.true.1616
	cmpq	$0, -40(%rbp)
	jge	.LBB10_293
# BB#289:                               # %cond.true.1619
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jge	.LBB10_291
# BB#290:                               # %cond.true.1625
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB10_292
.LBB10_291:                             # %cond.false.1633
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
.LBB10_292:                             # %cond.end.1637
	movq	-648(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	cqto
	movq	-656(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-640(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_313
	jmp	.LBB10_310
.LBB10_293:                             # %cond.false.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_294
	jmp	.LBB10_295
.LBB10_294:                             # %cond.true.1643
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_310
.LBB10_295:                             # %cond.false.1644
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_297
# BB#296:                               # %cond.true.1650
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	jmp	.LBB10_298
.LBB10_297:                             # %cond.false.1667
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
.LBB10_298:                             # %cond.end.1671
	movq	-664(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	cqto
	movq	-672(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_313
	jmp	.LBB10_310
.LBB10_299:                             # %cond.false.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_300
	jmp	.LBB10_301
.LBB10_300:                             # %cond.true.1677
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_313
	jmp	.LBB10_310
.LBB10_301:                             # %cond.false.1678
	cmpq	$0, -40(%rbp)
	jge	.LBB10_306
# BB#302:                               # %cond.true.1681
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jge	.LBB10_304
# BB#303:                               # %cond.true.1687
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB10_305
.LBB10_304:                             # %cond.false.1704
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB10_305:                             # %cond.end.1708
	movq	-688(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	cqto
	movq	-696(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-680(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_313
	jmp	.LBB10_310
.LBB10_306:                             # %cond.false.1713
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_308
# BB#307:                               # %cond.true.1719
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB10_309
.LBB10_308:                             # %cond.false.1727
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB10_309:                             # %cond.end.1731
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_313
.LBB10_310:                             # %lor.lhs.false.1736
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_312
# BB#311:                               # %land.lhs.true.1742
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_313
.LBB10_312:                             # %lor.lhs.false.1746
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_317
.LBB10_313:                             # %cond.true.1750
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_315
# BB#314:                               # %cond.true.1754
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB10_316
.LBB10_315:                             # %cond.false.1756
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB10_316:                             # %cond.end.1760
	movq	-720(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_317:                             # %cond.false.1762
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_319
# BB#318:                               # %cond.true.1766
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	jmp	.LBB10_320
.LBB10_319:                             # %cond.false.1768
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB10_320:                             # %cond.end.1772
	movq	-728(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_321:                             # %cond.false.1774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_322
	jmp	.LBB10_361
.LBB10_322:                             # %cond.true.1775
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_324
# BB#323:                               # %cond.true.1781
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB10_325
.LBB10_324:                             # %cond.false.1798
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB10_325:                             # %cond.end.1802
	movq	-736(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_327
# BB#326:                               # %land.lhs.true.1806
	cmpq	$0, -40(%rbp)
	jl	.LBB10_353
.LBB10_327:                             # %lor.lhs.false.1809
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_328
	jmp	.LBB10_339
.LBB10_328:                             # %cond.true.1810
	cmpq	$0, -40(%rbp)
	jge	.LBB10_333
# BB#329:                               # %cond.true.1813
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jge	.LBB10_331
# BB#330:                               # %cond.true.1819
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB10_332
.LBB10_331:                             # %cond.false.1827
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB10_332:                             # %cond.end.1831
	movq	-752(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -760(%rbp)        # 8-byte Spill
	cqto
	movq	-760(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_353
	jmp	.LBB10_350
.LBB10_333:                             # %cond.false.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_334
	jmp	.LBB10_335
.LBB10_334:                             # %cond.true.1837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_353
	jmp	.LBB10_350
.LBB10_335:                             # %cond.false.1838
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_337
# BB#336:                               # %cond.true.1844
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	jmp	.LBB10_338
.LBB10_337:                             # %cond.false.1861
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB10_338:                             # %cond.end.1865
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_353
	jmp	.LBB10_350
.LBB10_339:                             # %cond.false.1870
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_340
	jmp	.LBB10_341
.LBB10_340:                             # %cond.true.1871
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_353
	jmp	.LBB10_350
.LBB10_341:                             # %cond.false.1872
	cmpq	$0, -40(%rbp)
	jge	.LBB10_346
# BB#342:                               # %cond.true.1875
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jge	.LBB10_344
# BB#343:                               # %cond.true.1881
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB10_345
.LBB10_344:                             # %cond.false.1898
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB10_345:                             # %cond.end.1902
	movq	-792(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	cqto
	movq	-800(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-784(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_353
	jmp	.LBB10_350
.LBB10_346:                             # %cond.false.1907
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_348
# BB#347:                               # %cond.true.1913
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB10_349
.LBB10_348:                             # %cond.false.1921
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB10_349:                             # %cond.end.1925
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_353
.LBB10_350:                             # %lor.lhs.false.1930
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_352
# BB#351:                               # %land.lhs.true.1936
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_353
.LBB10_352:                             # %lor.lhs.false.1940
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_357
.LBB10_353:                             # %cond.true.1944
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_355
# BB#354:                               # %cond.true.1948
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB10_356
.LBB10_355:                             # %cond.false.1950
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB10_356:                             # %cond.end.1954
	movq	-824(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_357:                             # %cond.false.1956
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_359
# BB#358:                               # %cond.true.1960
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	jmp	.LBB10_360
.LBB10_359:                             # %cond.false.1962
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB10_360:                             # %cond.end.1966
	movq	-832(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_361:                             # %cond.false.1968
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_363
# BB#362:                               # %cond.true.1974
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB10_364
.LBB10_363:                             # %cond.false.1991
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB10_364:                             # %cond.end.1995
	movq	-840(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB10_366
# BB#365:                               # %land.lhs.true.1999
	cmpq	$0, -40(%rbp)
	jl	.LBB10_392
.LBB10_366:                             # %lor.lhs.false.2002
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_367
	jmp	.LBB10_378
.LBB10_367:                             # %cond.true.2003
	cmpq	$0, -40(%rbp)
	jge	.LBB10_372
# BB#368:                               # %cond.true.2006
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB10_370
# BB#369:                               # %cond.true.2012
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB10_371
.LBB10_370:                             # %cond.false.2020
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB10_371:                             # %cond.end.2024
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_392
	jmp	.LBB10_389
.LBB10_372:                             # %cond.false.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_373
	jmp	.LBB10_374
.LBB10_373:                             # %cond.true.2030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_392
	jmp	.LBB10_389
.LBB10_374:                             # %cond.false.2031
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_376
# BB#375:                               # %cond.true.2037
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB10_377
.LBB10_376:                             # %cond.false.2054
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB10_377:                             # %cond.end.2058
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_392
	jmp	.LBB10_389
.LBB10_378:                             # %cond.false.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_379
	jmp	.LBB10_380
.LBB10_379:                             # %cond.true.2064
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_392
	jmp	.LBB10_389
.LBB10_380:                             # %cond.false.2065
	cmpq	$0, -40(%rbp)
	jge	.LBB10_385
# BB#381:                               # %cond.true.2068
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jge	.LBB10_383
# BB#382:                               # %cond.true.2074
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB10_384
.LBB10_383:                             # %cond.false.2091
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB10_384:                             # %cond.end.2095
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-888(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB10_392
	jmp	.LBB10_389
.LBB10_385:                             # %cond.false.2100
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_387
# BB#386:                               # %cond.true.2106
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB10_388
.LBB10_387:                             # %cond.false.2114
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB10_388:                             # %cond.end.2118
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB10_392
.LBB10_389:                             # %lor.lhs.false.2123
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB10_391
# BB#390:                               # %land.lhs.true.2129
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB10_392
.LBB10_391:                             # %lor.lhs.false.2133
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB10_396
.LBB10_392:                             # %cond.true.2137
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_394
# BB#393:                               # %cond.true.2141
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB10_395
.LBB10_394:                             # %cond.false.2143
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB10_395:                             # %cond.end.2147
	movq	-928(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB10_401
	jmp	.LBB10_400
.LBB10_396:                             # %cond.false.2149
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB10_398
# BB#397:                               # %cond.true.2153
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB10_399
.LBB10_398:                             # %cond.false.2155
	movq	-40(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB10_399:                             # %cond.end.2159
	movq	-936(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB10_401
.LBB10_400:                             # %lor.lhs.false.2161
	movq	$-1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB10_402
.LBB10_401:                             # %if.then
	movq	$-1, %rdi
	callq	memory_full
.LBB10_402:                             # %if.else
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jg	.LBB10_404
# BB#403:                               # %if.then.2166
	movq	-96(%rbp), %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-96(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -48(%rbp)
	jmp	.LBB10_405
.LBB10_404:                             # %if.else.2168
	movq	-96(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -104(%rbp)
	movb	$1, -81(%rbp)
	movq	-104(%rbp), %rsi
	callq	record_unwind_protect
.LBB10_405:                             # %if.end
	jmp	.LBB10_406
.LBB10_406:                             # %if.end.2171
	jmp	.LBB10_407
.LBB10_407:                             # %do.end
	movq	$0, -56(%rbp)
.LBB10_408:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB10_411
# BB#409:                               # %for.body
                                        #   in Loop: Header=BB10_408 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -24(%rbp)
# BB#410:                               # %for.inc
                                        #   in Loop: Header=BB10_408 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_408
.LBB10_411:                             # %for.end
	movq	$0, -56(%rbp)
.LBB10_412:                             # %for.cond.2176
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB10_421
# BB#413:                               # %for.body.2179
                                        #   in Loop: Header=BB10_412 Depth=1
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_415
# BB#414:                               # %if.then.2185
                                        #   in Loop: Header=BB10_412 Depth=1
	xorl	%edi, %edi
	movb	$1, -57(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	push_menu_pane
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	movq	%rdx, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	subq	$16, %rsp
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-968(%rbp), %rsi        # 8-byte Reload
	movq	-984(%rbp), %rdx        # 8-byte Reload
	movq	-976(%rbp), %rcx        # 8-byte Reload
	movq	-992(%rbp), %r8         # 8-byte Reload
	movq	-1000(%rbp), %r9        # 8-byte Reload
	movq	-1008(%rbp), %r10       # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	push_menu_item
	addq	$16, %rsp
	jmp	.LBB10_419
.LBB10_415:                             # %if.else.2194
                                        #   in Loop: Header=BB10_412 Depth=1
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	Fkeymap_prompt
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_417
# BB#416:                               # %cond.true.2201
                                        #   in Loop: Header=BB10_412 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB10_418
.LBB10_417:                             # %cond.false.2202
                                        #   in Loop: Header=BB10_412 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB10_418:                             # %cond.end.2203
                                        #   in Loop: Header=BB10_412 Depth=1
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movl	$10, %ecx
	movq	-8(%rbp), %rdx
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	single_keymap_panes
.LBB10_419:                             # %if.end.2205
                                        #   in Loop: Header=BB10_412 Depth=1
	jmp	.LBB10_420
.LBB10_420:                             # %for.inc.2206
                                        #   in Loop: Header=BB10_412 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB10_412
.LBB10_421:                             # %for.end.2208
	jmp	.LBB10_422
.LBB10_422:                             # %do.body.2209
	testb	$1, -81(%rbp)
	je	.LBB10_424
# BB#423:                               # %if.then.2210
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB10_424:                             # %if.end.2213
	jmp	.LBB10_425
.LBB10_425:                             # %do.end.2214
	movb	-57(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	parse_single_submenu, .Lfunc_end10-parse_single_submenu
	.cfi_endproc

	.align	16, 0x90
	.type	push_menu_item,@function
push_menu_item:                         # @push_menu_item
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
	subq	$64, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	$8, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	%r11d, %edi
	callq	ensure_menu_items
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$0, %r11d
	movslq	%r11d, %rsi
	movq	-8(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$1, %r11d
	movslq	%r11d, %rsi
	movq	-16(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$2, %r11d
	movslq	%r11d, %rsi
	movq	-24(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$3, %r11d
	movslq	%r11d, %rsi
	movq	-40(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$4, %r11d
	movslq	%r11d, %rsi
	movq	-32(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$5, %r11d
	movslq	%r11d, %rsi
	movq	-48(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$6, %r11d
	movslq	%r11d, %rsi
	movq	-56(%rbp), %rdx
	callq	ASET
	movq	menu_items, %rdi
	movl	menu_items_used, %r11d
	addl	$7, %r11d
	movslq	%r11d, %rsi
	movq	-64(%rbp), %rdx
	callq	ASET
	movl	menu_items_used, %r11d
	addl	$8, %r11d
	movl	%r11d, menu_items_used
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	push_menu_item, .Lfunc_end11-push_menu_item
	.cfi_endproc

	.align	16, 0x90
	.type	single_keymap_panes,@function
single_keymap_panes:                    # @single_keymap_panes
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	push_menu_pane
	callq	have_boxes
	testb	$1, %al
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	movl	menu_items_used, %eax
	movl	%eax, -36(%rbp)
.LBB12_4:                               # %if.end.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$single_menu_item, %rsi
	leaq	-48(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	map_keymap_canonical
.LBB12_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB12_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	Fcar
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdx
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	callq	single_keymap_panes
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB12_5
.LBB12_7:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	single_keymap_panes, .Lfunc_end12-single_keymap_panes
	.cfi_endproc

	.globl	make_widget_value
	.align	16, 0x90
	.type	make_widget_value,@function
make_widget_value:                      # @make_widget_value
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
	subq	$48, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%rcx, -32(%rbp)
	callq	block_input
	movl	$80, %edx
	movl	%edx, %edi
	callq	xzalloc
	movq	%rax, -40(%rbp)
	callq	unblock_input
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movb	-17(%rbp), %r8b
	movq	-40(%rbp), %rax
	andb	$1, %r8b
	movb	%r8b, 48(%rax)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	make_widget_value, .Lfunc_end13-make_widget_value
	.cfi_endproc

	.globl	free_menubar_widget_value_tree
	.align	16, 0x90
	.type	free_menubar_widget_value_tree,@function
free_menubar_widget_value_tree:         # @free_menubar_widget_value_tree
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_8
.LBB14_2:                               # %if.end
	movl	$3735928559, %eax       # imm = 0xDEADBEEF
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-8(%rbp), %rdx
	movq	%rcx, 8(%rdx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB14_5
# BB#3:                                 # %land.lhs.true
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	cmpq	%rcx, 56(%rdx)
	je	.LBB14_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	free_menubar_widget_value_tree
	movl	$3735928559, %ecx       # imm = 0xDEADBEEF
	movl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
.LBB14_5:                               # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB14_7
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	free_menubar_widget_value_tree
	movl	$3735928559, %ecx       # imm = 0xDEADBEEF
	movl	%ecx, %eax
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
.LBB14_7:                               # %if.end.11
	callq	block_input
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	callq	unblock_input
.LBB14_8:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	free_menubar_widget_value_tree, .Lfunc_end14-free_menubar_widget_value_tree
	.cfi_endproc

	.globl	digest_single_submenu
	.align	16, 0x90
	.type	digest_single_submenu,@function
digest_single_submenu:                  # @digest_single_submenu
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
	subq	$368, %rsp              # imm = 0x170
	movb	%dl, %al
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movl	$0, -56(%rbp)
	movb	$0, -65(%rbp)
	movq	globals+1432, %rcx
	subq	$5, %rcx
	movq	%rcx, -80(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
# BB#1:                                 # %do.body
	movslq	menu_items_used, %rax
	movq	-88(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB15_3
# BB#2:                                 # %if.then
	movslq	menu_items_used(%rip), %rax
	shlq	$3, %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movslq	menu_items_used(%rip), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -64(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movslq	menu_items_used, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -64(%rbp)
	movb	$1, -97(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, -52(%rbp)
.LBB15_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB15_69
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_9
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -56(%rbp)
	movslq	%ecx, %rsi
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB15_68
.LBB15_9:                               # %if.else.20
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-56(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -56(%rbp)
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB15_67
.LBB15_11:                              # %if.else.30
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_6 Depth=1
	cmpl	$0, -56(%rbp)
	je	.LBB15_14
# BB#13:                                # %if.then.38
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_66
.LBB15_14:                              # %if.else.39
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_16
# BB#15:                                # %if.then.45
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_65
.LBB15_16:                              # %if.else.47
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_34
# BB#17:                                # %if.then.53
                                        #   in Loop: Header=BB15_6 Depth=1
	movb	$1, -65(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB15_22
# BB#18:                                # %if.then.59
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-112(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_19
	jmp	.LBB15_21
.LBB15_19:                              # %land.lhs.true.62
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-112(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB15_20
	jmp	.LBB15_21
.LBB15_20:                              # %if.then.65
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -112(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	movq	-112(%rbp), %rdx
	callq	ASET
.LBB15_21:                              # %if.end.70
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_22
.LBB15_22:                              # %if.end.71
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB15_6 Depth=1
	movabsq	$.L.str.2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB15_25
.LBB15_24:                              # %cond.false
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-112(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB15_25:                              # %cond.end
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	cmpl	$1, menu_items_n_panes
	jne	.LBB15_27
# BB#26:                                # %if.then.78
                                        #   in Loop: Header=BB15_6 Depth=1
	movabsq	$.L.str.2, %rax
	movq	%rax, -120(%rbp)
.LBB15_27:                              # %if.end.79
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-120(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB15_32
# BB#28:                                # %if.then.81
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_30
# BB#29:                                # %if.then.85
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB15_31
.LBB15_30:                              # %if.else.86
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB15_31:                              # %if.end.87
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-112(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB15_33
.LBB15_32:                              # %if.else.89
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB15_33:                              # %if.end.90
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	$0, -32(%rbp)
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_64
.LBB15_34:                              # %if.else.92
                                        #   in Loop: Header=BB15_6 Depth=1
	testb	$1, -65(%rbp)
	jne	.LBB15_36
# BB#35:                                # %if.then.94
	callq	emacs_abort
.LBB15_36:                              # %if.end.95
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -128(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -152(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -160(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -168(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -176(%rbp)
	movq	-80(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB15_43
# BB#37:                                # %if.then.124
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-128(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB15_38
	jmp	.LBB15_39
.LBB15_38:                              # %if.then.126
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-128(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -128(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rsi
	movq	-128(%rbp), %rdx
	callq	ASET
.LBB15_39:                              # %if.end.131
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_40
	jmp	.LBB15_42
.LBB15_40:                              # %land.lhs.true.134
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-144(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB15_41
	jmp	.LBB15_42
.LBB15_41:                              # %if.then.137
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -144(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rsi
	movq	-144(%rbp), %rdx
	callq	ASET
.LBB15_42:                              # %if.end.142
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_43
.LBB15_43:                              # %if.end.143
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-176(%rbp), %rdi
	movb	%dl, -265(%rbp)         # 1-byte Spill
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_44
	jmp	.LBB15_45
.LBB15_44:                              # %cond.true.149
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB15_46
.LBB15_45:                              # %cond.false.150
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB15_46:                              # %cond.end.152
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movb	-265(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %ecx
	andl	$1, %ecx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	%r8, %rdi
	movq	%r8, %rsi
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -24(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_48
# BB#47:                                # %if.then.156
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB15_49
.LBB15_48:                              # %if.else.158
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB15_49:                              # %if.end.160
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-144(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_51
# BB#50:                                # %if.then.165
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-144(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB15_51:                              # %if.end.166
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_53
# BB#52:                                # %cond.true.170
                                        #   in Loop: Header=BB15_6 Depth=1
	movslq	-52(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB15_54
.LBB15_53:                              # %cond.false.172
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB15_54
.LBB15_54:                              # %cond.end.173
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_56
# BB#55:                                # %if.then.178
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.LBB15_63
.LBB15_56:                              # %if.else.180
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	$101, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_58
# BB#57:                                # %if.then.184
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movl	$2, 52(%rax)
	jmp	.LBB15_62
.LBB15_58:                              # %if.else.186
                                        #   in Loop: Header=BB15_6 Depth=1
	movl	$130, %edi
	movq	-160(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_60
# BB#59:                                # %if.then.190
                                        #   in Loop: Header=BB15_6 Depth=1
	movq	-24(%rbp), %rax
	movl	$1, 52(%rax)
	jmp	.LBB15_61
.LBB15_60:                              # %if.else.192
	callq	emacs_abort
.LBB15_61:                              # %if.end.193
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_62
.LBB15_62:                              # %if.end.194
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_63
.LBB15_63:                              # %if.end.195
                                        #   in Loop: Header=BB15_6 Depth=1
	xorl	%edi, %edi
	movq	-168(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-24(%rbp), %rax
	andb	$1, %dl
	movb	%dl, 49(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %edi
	addl	$8, %edi
	movl	%edi, -52(%rbp)
.LBB15_64:                              # %if.end.203
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_65
.LBB15_65:                              # %if.end.204
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_66
.LBB15_66:                              # %if.end.205
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_67
.LBB15_67:                              # %if.end.206
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_68
.LBB15_68:                              # %if.end.207
                                        #   in Loop: Header=BB15_6 Depth=1
	jmp	.LBB15_6
.LBB15_69:                              # %while.end
	testb	$1, -9(%rbp)
	je	.LBB15_73
# BB#70:                                # %land.lhs.true.210
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB15_73
# BB#71:                                # %land.lhs.true.213
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB15_73
# BB#72:                                # %if.then.218
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB15_73:                              # %if.end.220
	jmp	.LBB15_74
.LBB15_74:                              # %do.body.221
	testb	$1, -97(%rbp)
	je	.LBB15_76
# BB#75:                                # %if.then.223
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB15_76:                              # %if.end.226
	jmp	.LBB15_77
.LBB15_77:                              # %do.end.227
	movq	-48(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	digest_single_submenu, .Lfunc_end15-digest_single_submenu
	.cfi_endproc

	.globl	update_submenu_strings
	.align	16, 0x90
	.type	update_submenu_strings,@function
update_submenu_strings:                 # @update_submenu_strings
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
	movq	%rdi, -16(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB16_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_3
	jmp	.LBB16_8
.LBB16_3:                               # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	cmpq	%rdi, 16(%rax)
	jne	.LBB16_7
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$64, %ecx
	jne	.LBB16_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB16_7:                               # %if.end.10
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.11
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_9
	jmp	.LBB16_10
.LBB16_9:                               # %if.then.13
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB16_10:                              # %if.end.16
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB16_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	update_submenu_strings
.LBB16_12:                              # %if.end.20
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_13
.LBB16_13:                              # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB16_1
.LBB16_14:                              # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	update_submenu_strings, .Lfunc_end16-update_submenu_strings
	.cfi_endproc

	.globl	find_and_call_menu_selection
	.align	16, 0x90
	.type	find_and_call_menu_selection,@function
find_and_call_menu_selection:           # @find_and_call_menu_selection
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -60(%rbp)
	movq	$16384, -72(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movb	$0, -81(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movslq	-12(%rbp), %rax
	movq	-72(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB17_3
# BB#2:                                 # %if.then
	movslq	-12(%rbp), %rax
	shlq	$3, %rax
	movq	-72(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movslq	-12(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-12(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -56(%rbp)
	movb	$1, -81(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movl	$0, -64(%rbp)
.LBB17_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB17_27
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_9
# BB#8:                                 # %if.then.18
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-40(%rbp), %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -60(%rbp)
	movslq	%ecx, %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB17_26
.LBB17_9:                               # %if.else.20
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	callq	AREF
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -40(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB17_25
.LBB17_11:                              # %if.else.30
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB17_13
# BB#12:                                # %if.then.36
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -40(%rbp)
	movl	-64(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB17_24
.LBB17_13:                              # %if.else.40
                                        #   in Loop: Header=BB17_6 Depth=1
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rsi
	cmpq	%rsi, %rax
	jne	.LBB17_23
# BB#14:                                # %if.then.47
	movl	$5, %esi
	xorl	%eax, %eax
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-144(%rbp), %rdi
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	callq	memset
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	-180(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	leaq	-144(%rbp), %rdi
	movq	%rax, -152(%rbp)
	movl	-144(%rbp), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$14, %ecx
	movl	%ecx, -144(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	kbd_buffer_store_event
	movl	$0, -88(%rbp)
.LBB17_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB17_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB17_15 Depth=1
	xorl	%edi, %edi
	movslq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_18
# BB#17:                                # %if.then.56
                                        #   in Loop: Header=BB17_15 Depth=1
	leaq	-144(%rbp), %rdi
	movl	-144(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$14, %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movslq	-88(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -96(%rbp)
	callq	kbd_buffer_store_event
.LBB17_18:                              # %if.end.64
                                        #   in Loop: Header=BB17_15 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %for.inc
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_15
.LBB17_20:                              # %for.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_22
# BB#21:                                # %if.then.69
	leaq	-144(%rbp), %rdi
	movl	-144(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$14, %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	callq	kbd_buffer_store_event
.LBB17_22:                              # %if.end.75
	leaq	-144(%rbp), %rdi
	movl	-144(%rbp), %eax
	andl	$-65536, %eax           # imm = 0xFFFFFFFFFFFF0000
	orl	$14, %eax
	movl	%eax, -144(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	callq	kbd_buffer_store_event
	jmp	.LBB17_27
.LBB17_23:                              # %if.end.81
                                        #   in Loop: Header=BB17_6 Depth=1
	movl	-64(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -64(%rbp)
.LBB17_24:                              # %if.end.83
                                        #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.84
                                        #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_26
.LBB17_26:                              # %if.end.85
                                        #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_6
.LBB17_27:                              # %while.end
	jmp	.LBB17_28
.LBB17_28:                              # %do.body.86
	testb	$1, -81(%rbp)
	je	.LBB17_30
# BB#29:                                # %if.then.87
	xorl	%edi, %edi
	movb	$0, -81(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB17_30:                              # %if.end.90
	jmp	.LBB17_31
.LBB17_31:                              # %do.end.91
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	find_and_call_menu_selection, .Lfunc_end17-find_and_call_menu_selection
	.cfi_endproc

	.globl	menu_item_width
	.align	16, 0x90
	.type	menu_item_width,@function
menu_item_width:                        # @menu_item_width
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB18_29
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$1, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB18_11
.LBB18_4:                               # %cond.false
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_6
# BB#5:                                 # %cond.true.8
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -28(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-24(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	jmp	.LBB18_10
.LBB18_6:                               # %cond.false.18
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB18_8
# BB#7:                                 # %cond.true.23
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$3, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false.37
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	string_char
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB18_9:                               # %cond.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB18_10:                              # %cond.end.39
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB18_11:                              # %cond.end.41
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -32(%rbp)
	testb	$1, %cl
	jne	.LBB18_12
	jmp	.LBB18_13
.LBB18_12:                              # %cond.true.43
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$0, %eax
	cmpl	$128, %eax
	jb	.LBB18_14
	jmp	.LBB18_27
.LBB18_13:                              # %cond.false.47
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	cmpq	$128, %rax
	jae	.LBB18_27
.LBB18_14:                              # %cond.true.52
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$32, -32(%rbp)
	jge	.LBB18_22
# BB#15:                                # %cond.true.55
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$9, -32(%rbp)
	jne	.LBB18_17
# BB#16:                                # %cond.true.58
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	current_buffer, %rax
	movq	152(%rax), %rax
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_tab_width
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_21
.LBB18_17:                              # %cond.false.60
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$10, -32(%rbp)
	jne	.LBB18_19
# BB#18:                                # %cond.true.63
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB18_20
.LBB18_19:                              # %cond.false.64
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
.LBB18_20:                              # %cond.end.69
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB18_21:                              # %cond.end.71
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB18_26
.LBB18_22:                              # %cond.false.73
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	$127, -32(%rbp)
	jge	.LBB18_24
# BB#23:                                # %cond.true.76
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB18_25
.LBB18_24:                              # %cond.false.77
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	232(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$4, %ecx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -72(%rbp)         # 4-byte Spill
.LBB18_25:                              # %cond.end.83
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB18_26:                              # %cond.end.85
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB18_28
.LBB18_27:                              # %cond.false.87
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	globals+224, %rdi
	movl	-32(%rbp), %esi
	callq	CHAR_TABLE_REF
	sarq	$2, %rax
	movq	%rax, %rdi
	callq	sanitize_char_width
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB18_28:                              # %cond.end.91
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB18_1
.LBB18_29:                              # %for.end
	movq	-16(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	menu_item_width, .Lfunc_end18-menu_item_width
	.cfi_endproc

	.globl	Fmenu_bar_menu_at_x_y
	.align	16, 0x90
	.type	Fmenu_bar_menu_at_x_y,@function
Fmenu_bar_menu_at_x_y:                  # @Fmenu_bar_menu_at_x_y
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	decode_any_frame
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 376(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_15
.LBB19_2:                               # %if.end
	leaq	-40(%rbp), %rcx
	leaq	-36(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movl	$1, %eax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %esi
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movl	%edx, %r10d
	movl	%r10d, %edx
	movl	$1, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	pixel_to_glyph_coords
	xorl	%eax, %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB19_14
# BB#3:                                 # %land.lhs.true
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	356(%rcx), %eax
	jge	.LBB19_14
# BB#4:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
.LBB19_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB19_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB19_5 Depth=1
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB19_8
# BB#7:                                 # %if.then.22
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_15
.LBB19_8:                               # %if.end.23
                                        #   in Loop: Header=BB19_5 Depth=1
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movslq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB19_11
# BB#9:                                 # %land.lhs.true.28
                                        #   in Loop: Header=BB19_5 Depth=1
	movslq	-40(%rbp), %rax
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	movq	-88(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	%rax, %rdi
	callq	menu_item_width
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rcx, %rax
	jg	.LBB19_11
# BB#10:                                # %if.then.36
	movq	-56(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_15
.LBB19_11:                              # %if.end.39
                                        #   in Loop: Header=BB19_5 Depth=1
	jmp	.LBB19_12
.LBB19_12:                              # %for.inc
                                        #   in Loop: Header=BB19_5 Depth=1
	movl	-68(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB19_5
.LBB19_13:                              # %for.end
	jmp	.LBB19_14
.LBB19_14:                              # %if.end.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fmenu_bar_menu_at_x_y, .Lfunc_end19-Fmenu_bar_menu_at_x_y
	.cfi_endproc

	.globl	Fx_popup_menu
	.align	16, 0x90
	.type	Fx_popup_menu,@function
Fx_popup_menu:                          # @Fx_popup_menu
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
	subq	$1408, %rsp             # imm = 0x580
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	$0, -72(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -116(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB20_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_538
.LBB20_2:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movb	$0, -129(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_6
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_7
# BB#4:                                 # %land.lhs.true
	movl	$651, %edi              # imm = 0x28B
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_6
# BB#5:                                 # %lor.lhs.false.11
	movl	$921, %edi              # imm = 0x399
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_7
.LBB20_6:                               # %if.then.17
	movb	$1, -129(%rbp)
	jmp	.LBB20_18
.LBB20_7:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_9
# BB#8:                                 # %if.then.23
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -104(%rbp)
	jmp	.LBB20_14
.LBB20_9:                               # %if.else.30
	movl	-116(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
	movq	globals+3016, %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	-16(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movq	-312(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB20_13
# BB#10:                                # %land.lhs.true.42
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_13
# BB#11:                                # %land.lhs.true.47
	movq	-48(%rbp), %rdi
	callq	Fcar
	movl	$651, %edi              # imm = 0x28B
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_13
# BB#12:                                # %if.then.52
	movl	-116(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -116(%rbp)
.LBB20_13:                              # %if.end.54
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcar
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rdi
	callq	Fcdr
	movq	%rax, -104(%rbp)
.LBB20_14:                              # %if.end.60
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_17
# BB#15:                                # %land.lhs.true.64
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_17
# BB#16:                                # %if.then.68
	movb	$1, -129(%rbp)
.LBB20_17:                              # %if.end.69
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.70
	testb	$1, -129(%rbp)
	je	.LBB20_34
# BB#19:                                # %if.then.71
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB20_20
	jmp	.LBB20_22
.LBB20_20:                              # %land.lhs.true.74
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB20_22
# BB#21:                                # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB20_23
.LBB20_22:                              # %cond.false
	callq	emacs_abort
.LBB20_23:                              # %cond.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -144(%rbp)
	callq	make_natnum
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -96(%rbp)
	callq	make_natnum
	movq	%rax, -104(%rbp)
	movq	-144(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$2, %edx
	jne	.LBB20_27
# BB#24:                                # %if.then.83
	cmpq	$0, -144(%rbp)
	je	.LBB20_26
# BB#25:                                # %if.then.86
	leaq	-148(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	movq	-144(%rbp), %rdi
	callq	x_relative_mouse_position
	movslq	-148(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -96(%rbp)
	movslq	-152(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -104(%rbp)
.LBB20_26:                              # %if.end.91
	jmp	.LBB20_30
.LBB20_27:                              # %if.else.92
	movq	-144(%rbp), %rax
	movq	376(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	je	.LBB20_29
# BB#28:                                # %if.then.96
	leaq	-144(%rbp), %rdi
	movl	$1, %esi
	leaq	-160(%rbp), %rdx
	leaq	-164(%rbp), %rcx
	leaq	-96(%rbp), %r8
	leaq	-104(%rbp), %r9
	leaq	-176(%rbp), %rax
	subq	$16, %rsp
	movq	%rax, (%rsp)
	callq	*-184(%rbp)
	addq	$16, %rsp
.LBB20_29:                              # %if.end.97
	jmp	.LBB20_30
.LBB20_30:                              # %if.end.98
	cmpq	$0, -144(%rbp)
	je	.LBB20_32
# BB#31:                                # %if.then.101
	movl	$5, %esi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -112(%rbp)
	jmp	.LBB20_33
.LBB20_32:                              # %if.else.103
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	selected_window, %rcx
	movq	%rcx, -112(%rbp)
	callq	make_natnum
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -96(%rbp)
	callq	make_natnum
	movq	%rax, -104(%rbp)
.LBB20_33:                              # %if.end.106
	jmp	.LBB20_34
.LBB20_34:                              # %if.end.107
	movq	-112(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB20_35
	jmp	.LBB20_36
.LBB20_35:                              # %if.then.109
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	jmp	.LBB20_44
.LBB20_36:                              # %if.else.111
	movq	-112(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB20_37
	jmp	.LBB20_42
.LBB20_37:                              # %if.then.113
	movq	-112(%rbp), %rdi
	callq	XWINDOW
	movq	%rax, -192(%rbp)
	movq	-112(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB20_38
	jmp	.LBB20_40
.LBB20_38:                              # %land.lhs.true.117
	movq	-112(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB20_39
	jmp	.LBB20_40
.LBB20_39:                              # %cond.true.121
	jmp	.LBB20_41
.LBB20_40:                              # %cond.false.122
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB20_41:                              # %cond.end.124
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -88(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-192(%rbp), %rax
	addl	240(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	332(%rax), %ecx
	movq	-192(%rbp), %rax
	addl	244(%rax), %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB20_43
.LBB20_42:                              # %if.else.133
	movq	-112(%rbp), %rdi
	callq	CHECK_WINDOW
.LBB20_43:                              # %if.end.134
	jmp	.LBB20_44
.LBB20_44:                              # %if.end.135
	jmp	.LBB20_45
.LBB20_45:                              # %do.body
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_47
# BB#46:                                # %cond.true.141
	jmp	.LBB20_48
.LBB20_47:                              # %cond.false.142
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB20_48:                              # %cond.end.144
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-52(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_50
# BB#49:                                # %cond.true.148
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-52(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB20_51
.LBB20_50:                              # %cond.false.151
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB20_51
.LBB20_51:                              # %cond.end.152
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB20_53
# BB#52:                                # %land.lhs.true.156
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-96(%rbp), %rcx
	sarq	$2, %rcx
	subl	-52(%rbp), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB20_70
.LBB20_53:                              # %if.then.162
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movq	-96(%rbp), %rdi
	movslq	-52(%rbp), %rcx
	cmpq	%rax, %rcx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	jge	.LBB20_55
# BB#54:                                # %cond.true.166
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-52(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB20_56
.LBB20_55:                              # %cond.false.169
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB20_56
.LBB20_56:                              # %cond.end.170
	movq	-384(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB20_62
# BB#57:                                # %land.lhs.true.174
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-52(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_59
# BB#58:                                # %cond.true.178
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-52(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB20_60
.LBB20_59:                              # %cond.false.181
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB20_60
.LBB20_60:                              # %cond.end.182
	movq	-392(%rbp), %rax        # 8-byte Reload
	movabsq	$-2305843009213693952, %rcx # imm = 0xE000000000000000
	cmpq	%rcx, %rax
	jge	.LBB20_62
# BB#61:                                # %cond.true.186
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB20_66
.LBB20_62:                              # %cond.false.187
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-52(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_64
# BB#63:                                # %cond.true.191
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-52(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB20_65
.LBB20_64:                              # %cond.false.194
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB20_65
.LBB20_65:                              # %cond.end.195
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB20_66:                              # %cond.end.197
	movq	-400(%rbp), %rax        # 8-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	subl	-52(%rbp), %edx
	movslq	%edx, %rsi
	cmpq	%rcx, %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jge	.LBB20_68
# BB#67:                                # %cond.true.205
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB20_69
.LBB20_68:                              # %cond.false.208
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB20_69
.LBB20_69:                              # %cond.end.209
	movq	-424(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	args_out_of_range_3
.LBB20_70:                              # %if.end.213
	jmp	.LBB20_71
.LBB20_71:                              # %do.end
	jmp	.LBB20_72
.LBB20_72:                              # %do.body.214
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_74
# BB#73:                                # %cond.true.220
	jmp	.LBB20_75
.LBB20_74:                              # %cond.false.221
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB20_75:                              # %cond.end.223
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_77
# BB#76:                                # %cond.true.227
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB20_78
.LBB20_77:                              # %cond.false.230
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB20_78
.LBB20_78:                              # %cond.end.231
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB20_80
# BB#79:                                # %land.lhs.true.236
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-104(%rbp), %rcx
	sarq	$2, %rcx
	subl	-56(%rbp), %eax
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB20_97
.LBB20_80:                              # %if.then.242
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movq	-104(%rbp), %rdi
	movslq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	jge	.LBB20_82
# BB#81:                                # %cond.true.246
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB20_83
.LBB20_82:                              # %cond.false.249
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB20_83
.LBB20_83:                              # %cond.end.250
	movq	-456(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB20_89
# BB#84:                                # %land.lhs.true.254
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_86
# BB#85:                                # %cond.true.258
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB20_87
.LBB20_86:                              # %cond.false.261
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB20_87
.LBB20_87:                              # %cond.end.262
	movq	-464(%rbp), %rax        # 8-byte Reload
	movabsq	$-2305843009213693952, %rcx # imm = 0xE000000000000000
	cmpq	%rcx, %rax
	jge	.LBB20_89
# BB#88:                                # %cond.true.266
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB20_93
.LBB20_89:                              # %cond.false.267
	movabsq	$2305843007066210304, %rax # imm = 0x1FFFFFFF80000000
	movslq	-56(%rbp), %rcx
	cmpq	%rax, %rcx
	jge	.LBB20_91
# BB#90:                                # %cond.true.271
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movslq	-56(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB20_92
.LBB20_91:                              # %cond.false.274
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB20_92
.LBB20_92:                              # %cond.end.275
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB20_93:                              # %cond.end.277
	movq	-472(%rbp), %rax        # 8-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	shlq	$2, %rax
	addq	$2, %rax
	subl	-56(%rbp), %edx
	movslq	%edx, %rsi
	cmpq	%rcx, %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jge	.LBB20_95
# BB#94:                                # %cond.true.285
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	subl	-56(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB20_96
.LBB20_95:                              # %cond.false.288
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB20_96
.LBB20_96:                              # %cond.end.289
	movq	-496(%rbp), %rax        # 8-byte Reload
	shlq	$2, %rax
	addq	$2, %rax
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	args_out_of_range_3
.LBB20_97:                              # %if.end.293
	jmp	.LBB20_98
.LBB20_98:                              # %do.end.294
	movl	$5, %esi
	movq	-96(%rbp), %rax
	sarq	$2, %rax
	movslq	-52(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -52(%rbp)
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movslq	-56(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movabsq	$unuse_menu_items, %rdi
	movq	%rax, globals+1432
	callq	record_unwind_protect_void
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movl	%edx, %esi
	callq	get_keymap
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB20_105
# BB#99:                                # %if.then.310
	leaq	-24(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	keymap_panes
	movq	-32(%rbp), %rdi
	callq	Fkeymap_prompt
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB20_101
# BB#100:                               # %if.then.315
	movq	-200(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB20_101:                             # %if.end.316
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_104
# BB#102:                               # %land.lhs.true.320
	cmpl	$0, menu_items_n_panes
	jl	.LBB20_104
# BB#103:                               # %if.then.323
	movl	$1, %eax
	movl	%eax, %esi
	movq	menu_items, %rdi
	movq	-200(%rbp), %rdx
	callq	ASET
.LBB20_104:                             # %if.end.324
	movl	-116(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB20_531
.LBB20_105:                             # %if.else.326
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_529
# BB#106:                               # %land.lhs.true.331
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	get_keymap
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_529
# BB#107:                               # %if.then.338
	movq	-24(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -208(%rbp)
	movq	$16384, -232(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -240(%rbp)
	movb	$0, -241(%rbp)
# BB#108:                               # %do.body.342
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_109
	jmp	.LBB20_188
.LBB20_109:                             # %cond.true.343
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_110
	jmp	.LBB20_149
.LBB20_110:                             # %cond.true.344
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_112
# BB#111:                               # %cond.true.351
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -524(%rbp)        # 4-byte Spill
	jmp	.LBB20_113
.LBB20_112:                             # %cond.false.370
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -524(%rbp)        # 4-byte Spill
.LBB20_113:                             # %cond.end.376
	movl	-524(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_115
# BB#114:                               # %land.lhs.true.380
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB20_141
.LBB20_115:                             # %lor.lhs.false.385
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_116
	jmp	.LBB20_127
.LBB20_116:                             # %cond.true.386
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB20_121
# BB#117:                               # %cond.true.391
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -528(%rbp)        # 4-byte Spill
	jge	.LBB20_119
# BB#118:                               # %cond.true.401
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
	jmp	.LBB20_120
.LBB20_119:                             # %cond.false.411
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
.LBB20_120:                             # %cond.end.417
	movl	-532(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-528(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_141
	jmp	.LBB20_138
.LBB20_121:                             # %cond.false.421
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_122
	jmp	.LBB20_123
.LBB20_122:                             # %cond.true.422
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_141
	jmp	.LBB20_138
.LBB20_123:                             # %cond.false.423
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_125
# BB#124:                               # %cond.true.431
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB20_126
.LBB20_125:                             # %cond.false.451
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -536(%rbp)        # 4-byte Spill
.LBB20_126:                             # %cond.end.457
	movl	-536(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_141
	jmp	.LBB20_138
.LBB20_127:                             # %cond.false.464
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_128
	jmp	.LBB20_129
.LBB20_128:                             # %cond.true.465
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_141
	jmp	.LBB20_138
.LBB20_129:                             # %cond.false.466
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB20_134
# BB#130:                               # %cond.true.471
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -540(%rbp)        # 4-byte Spill
	jge	.LBB20_132
# BB#131:                               # %cond.true.481
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -544(%rbp)        # 4-byte Spill
	jmp	.LBB20_133
.LBB20_132:                             # %cond.false.501
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -544(%rbp)        # 4-byte Spill
.LBB20_133:                             # %cond.end.507
	movl	-544(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-540(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_141
	jmp	.LBB20_138
.LBB20_134:                             # %cond.false.512
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_136
# BB#135:                               # %cond.true.520
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -548(%rbp)        # 4-byte Spill
	jmp	.LBB20_137
.LBB20_136:                             # %cond.false.530
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -548(%rbp)        # 4-byte Spill
.LBB20_137:                             # %cond.end.536
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_141
.LBB20_138:                             # %lor.lhs.false.543
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_140
# BB#139:                               # %land.lhs.true.551
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB20_141
.LBB20_140:                             # %lor.lhs.false.557
	movl	$127, %eax
	movq	-208(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB20_145
.LBB20_141:                             # %cond.true.563
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_143
# BB#142:                               # %cond.true.569
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -552(%rbp)        # 4-byte Spill
	jmp	.LBB20_144
.LBB20_143:                             # %cond.false.575
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -552(%rbp)        # 4-byte Spill
.LBB20_144:                             # %cond.end.583
	movl	-552(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_145:                             # %cond.false.586
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_147
# BB#146:                               # %cond.true.592
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -556(%rbp)        # 4-byte Spill
	jmp	.LBB20_148
.LBB20_147:                             # %cond.false.598
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -556(%rbp)        # 4-byte Spill
.LBB20_148:                             # %cond.end.606
	movl	-556(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_149:                             # %cond.false.609
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_151
# BB#150:                               # %cond.true.615
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	jmp	.LBB20_152
.LBB20_151:                             # %cond.false.632
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB20_152:                             # %cond.end.636
	movq	-568(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_154
# BB#153:                               # %land.lhs.true.640
	cmpq	$0, -208(%rbp)
	jl	.LBB20_180
.LBB20_154:                             # %lor.lhs.false.643
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_155
	jmp	.LBB20_166
.LBB20_155:                             # %cond.true.644
	cmpq	$0, -208(%rbp)
	jge	.LBB20_160
# BB#156:                               # %cond.true.647
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB20_158
# BB#157:                               # %cond.true.653
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB20_159
.LBB20_158:                             # %cond.false.661
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB20_159:                             # %cond.end.665
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_180
	jmp	.LBB20_177
.LBB20_160:                             # %cond.false.670
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_161
	jmp	.LBB20_162
.LBB20_161:                             # %cond.true.671
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_180
	jmp	.LBB20_177
.LBB20_162:                             # %cond.false.672
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_164
# BB#163:                               # %cond.true.678
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	jmp	.LBB20_165
.LBB20_164:                             # %cond.false.695
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB20_165:                             # %cond.end.699
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_180
	jmp	.LBB20_177
.LBB20_166:                             # %cond.false.704
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_167
	jmp	.LBB20_168
.LBB20_167:                             # %cond.true.705
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_180
	jmp	.LBB20_177
.LBB20_168:                             # %cond.false.706
	cmpq	$0, -208(%rbp)
	jge	.LBB20_173
# BB#169:                               # %cond.true.709
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jge	.LBB20_171
# BB#170:                               # %cond.true.715
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB20_172
.LBB20_171:                             # %cond.false.732
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB20_172:                             # %cond.end.736
	movq	-624(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -632(%rbp)        # 8-byte Spill
	cqto
	movq	-632(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-616(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_180
	jmp	.LBB20_177
.LBB20_173:                             # %cond.false.741
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_175
# BB#174:                               # %cond.true.747
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB20_176
.LBB20_175:                             # %cond.false.755
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB20_176:                             # %cond.end.759
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_180
.LBB20_177:                             # %lor.lhs.false.764
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_179
# BB#178:                               # %land.lhs.true.770
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB20_180
.LBB20_179:                             # %lor.lhs.false.774
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_184
.LBB20_180:                             # %cond.true.778
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_182
# BB#181:                               # %cond.true.784
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
	jmp	.LBB20_183
.LBB20_182:                             # %cond.false.790
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -652(%rbp)        # 4-byte Spill
.LBB20_183:                             # %cond.end.798
	movl	-652(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_184:                             # %cond.false.801
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_186
# BB#185:                               # %cond.true.807
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -656(%rbp)        # 4-byte Spill
	jmp	.LBB20_187
.LBB20_186:                             # %cond.false.813
	movq	-208(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -656(%rbp)        # 4-byte Spill
.LBB20_187:                             # %cond.end.821
	movl	-656(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_188:                             # %cond.false.824
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_189
	jmp	.LBB20_268
.LBB20_189:                             # %cond.true.825
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_190
	jmp	.LBB20_229
.LBB20_190:                             # %cond.true.826
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_192
# BB#191:                               # %cond.true.834
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -660(%rbp)        # 4-byte Spill
	jmp	.LBB20_193
.LBB20_192:                             # %cond.false.854
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -660(%rbp)        # 4-byte Spill
.LBB20_193:                             # %cond.end.860
	movl	-660(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_195
# BB#194:                               # %land.lhs.true.864
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB20_221
.LBB20_195:                             # %lor.lhs.false.869
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_196
	jmp	.LBB20_207
.LBB20_196:                             # %cond.true.870
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB20_201
# BB#197:                               # %cond.true.875
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -664(%rbp)        # 4-byte Spill
	jge	.LBB20_199
# BB#198:                               # %cond.true.885
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -668(%rbp)        # 4-byte Spill
	jmp	.LBB20_200
.LBB20_199:                             # %cond.false.895
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -668(%rbp)        # 4-byte Spill
.LBB20_200:                             # %cond.end.901
	movl	-668(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-664(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_221
	jmp	.LBB20_218
.LBB20_201:                             # %cond.false.906
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_202
	jmp	.LBB20_203
.LBB20_202:                             # %cond.true.907
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_221
	jmp	.LBB20_218
.LBB20_203:                             # %cond.false.908
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_205
# BB#204:                               # %cond.true.916
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -672(%rbp)        # 4-byte Spill
	jmp	.LBB20_206
.LBB20_205:                             # %cond.false.936
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -672(%rbp)        # 4-byte Spill
.LBB20_206:                             # %cond.end.942
	movl	-672(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_221
	jmp	.LBB20_218
.LBB20_207:                             # %cond.false.949
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_208
	jmp	.LBB20_209
.LBB20_208:                             # %cond.true.950
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_221
	jmp	.LBB20_218
.LBB20_209:                             # %cond.false.951
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB20_214
# BB#210:                               # %cond.true.956
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -676(%rbp)        # 4-byte Spill
	jge	.LBB20_212
# BB#211:                               # %cond.true.966
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -680(%rbp)        # 4-byte Spill
	jmp	.LBB20_213
.LBB20_212:                             # %cond.false.986
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -680(%rbp)        # 4-byte Spill
.LBB20_213:                             # %cond.end.992
	movl	-680(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-676(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_221
	jmp	.LBB20_218
.LBB20_214:                             # %cond.false.997
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_216
# BB#215:                               # %cond.true.1005
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -684(%rbp)        # 4-byte Spill
	jmp	.LBB20_217
.LBB20_216:                             # %cond.false.1015
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -684(%rbp)        # 4-byte Spill
.LBB20_217:                             # %cond.end.1021
	movl	-684(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_221
.LBB20_218:                             # %lor.lhs.false.1028
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_220
# BB#219:                               # %land.lhs.true.1036
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB20_221
.LBB20_220:                             # %lor.lhs.false.1042
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-208(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB20_225
.LBB20_221:                             # %cond.true.1048
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_223
# BB#222:                               # %cond.true.1054
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -688(%rbp)        # 4-byte Spill
	jmp	.LBB20_224
.LBB20_223:                             # %cond.false.1060
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -688(%rbp)        # 4-byte Spill
.LBB20_224:                             # %cond.end.1068
	movl	-688(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_225:                             # %cond.false.1071
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_227
# BB#226:                               # %cond.true.1077
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -692(%rbp)        # 4-byte Spill
	jmp	.LBB20_228
.LBB20_227:                             # %cond.false.1083
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -692(%rbp)        # 4-byte Spill
.LBB20_228:                             # %cond.end.1091
	movl	-692(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_229:                             # %cond.false.1094
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_231
# BB#230:                               # %cond.true.1100
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	jmp	.LBB20_232
.LBB20_231:                             # %cond.false.1117
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB20_232:                             # %cond.end.1121
	movq	-704(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_234
# BB#233:                               # %land.lhs.true.1125
	cmpq	$0, -208(%rbp)
	jl	.LBB20_260
.LBB20_234:                             # %lor.lhs.false.1128
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_235
	jmp	.LBB20_246
.LBB20_235:                             # %cond.true.1129
	cmpq	$0, -208(%rbp)
	jge	.LBB20_240
# BB#236:                               # %cond.true.1132
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jge	.LBB20_238
# BB#237:                               # %cond.true.1138
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB20_239
.LBB20_238:                             # %cond.false.1146
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB20_239:                             # %cond.end.1150
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-712(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_260
	jmp	.LBB20_257
.LBB20_240:                             # %cond.false.1155
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_241
	jmp	.LBB20_242
.LBB20_241:                             # %cond.true.1156
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_260
	jmp	.LBB20_257
.LBB20_242:                             # %cond.false.1157
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_244
# BB#243:                               # %cond.true.1163
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	jmp	.LBB20_245
.LBB20_244:                             # %cond.false.1180
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
.LBB20_245:                             # %cond.end.1184
	movq	-736(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -744(%rbp)        # 8-byte Spill
	cqto
	movq	-744(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_260
	jmp	.LBB20_257
.LBB20_246:                             # %cond.false.1189
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_247
	jmp	.LBB20_248
.LBB20_247:                             # %cond.true.1190
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_260
	jmp	.LBB20_257
.LBB20_248:                             # %cond.false.1191
	cmpq	$0, -208(%rbp)
	jge	.LBB20_253
# BB#249:                               # %cond.true.1194
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jge	.LBB20_251
# BB#250:                               # %cond.true.1200
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB20_252
.LBB20_251:                             # %cond.false.1217
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB20_252:                             # %cond.end.1221
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-752(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_260
	jmp	.LBB20_257
.LBB20_253:                             # %cond.false.1226
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_255
# BB#254:                               # %cond.true.1232
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB20_256
.LBB20_255:                             # %cond.false.1240
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB20_256:                             # %cond.end.1244
	movq	-776(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -784(%rbp)        # 8-byte Spill
	cqto
	movq	-784(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_260
.LBB20_257:                             # %lor.lhs.false.1249
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_259
# BB#258:                               # %land.lhs.true.1255
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB20_260
.LBB20_259:                             # %lor.lhs.false.1259
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_264
.LBB20_260:                             # %cond.true.1263
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_262
# BB#261:                               # %cond.true.1269
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -788(%rbp)        # 4-byte Spill
	jmp	.LBB20_263
.LBB20_262:                             # %cond.false.1275
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -788(%rbp)        # 4-byte Spill
.LBB20_263:                             # %cond.end.1283
	movl	-788(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_264:                             # %cond.false.1286
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_266
# BB#265:                               # %cond.true.1292
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -792(%rbp)        # 4-byte Spill
	jmp	.LBB20_267
.LBB20_266:                             # %cond.false.1298
	movq	-208(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -792(%rbp)        # 4-byte Spill
.LBB20_267:                             # %cond.end.1306
	movl	-792(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_268:                             # %cond.false.1309
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_269
	jmp	.LBB20_348
.LBB20_269:                             # %cond.true.1310
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_270
	jmp	.LBB20_309
.LBB20_270:                             # %cond.true.1311
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_272
# BB#271:                               # %cond.true.1318
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -796(%rbp)        # 4-byte Spill
	jmp	.LBB20_273
.LBB20_272:                             # %cond.false.1336
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -796(%rbp)        # 4-byte Spill
.LBB20_273:                             # %cond.end.1341
	movl	-796(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_275
# BB#274:                               # %land.lhs.true.1345
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB20_301
.LBB20_275:                             # %lor.lhs.false.1349
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_276
	jmp	.LBB20_287
.LBB20_276:                             # %cond.true.1350
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_281
# BB#277:                               # %cond.true.1354
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	movq	-208(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -800(%rbp)        # 4-byte Spill
	jge	.LBB20_279
# BB#278:                               # %cond.true.1362
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	jmp	.LBB20_280
.LBB20_279:                             # %cond.false.1371
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -804(%rbp)        # 4-byte Spill
.LBB20_280:                             # %cond.end.1376
	movl	-804(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-800(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_301
	jmp	.LBB20_298
.LBB20_281:                             # %cond.false.1381
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_282
	jmp	.LBB20_283
.LBB20_282:                             # %cond.true.1382
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_301
	jmp	.LBB20_298
.LBB20_283:                             # %cond.false.1383
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_285
# BB#284:                               # %cond.true.1390
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jmp	.LBB20_286
.LBB20_285:                             # %cond.false.1408
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -808(%rbp)        # 4-byte Spill
.LBB20_286:                             # %cond.end.1413
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_301
	jmp	.LBB20_298
.LBB20_287:                             # %cond.false.1419
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_288
	jmp	.LBB20_289
.LBB20_288:                             # %cond.true.1420
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_301
	jmp	.LBB20_298
.LBB20_289:                             # %cond.false.1421
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_294
# BB#290:                               # %cond.true.1425
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	movq	-208(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -812(%rbp)        # 4-byte Spill
	jge	.LBB20_292
# BB#291:                               # %cond.true.1433
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB20_293
.LBB20_292:                             # %cond.false.1451
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -816(%rbp)        # 4-byte Spill
.LBB20_293:                             # %cond.end.1456
	movl	-816(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-812(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_301
	jmp	.LBB20_298
.LBB20_294:                             # %cond.false.1461
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_296
# BB#295:                               # %cond.true.1468
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
	jmp	.LBB20_297
.LBB20_296:                             # %cond.false.1477
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -820(%rbp)        # 4-byte Spill
.LBB20_297:                             # %cond.end.1482
	movl	-820(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-208(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_301
.LBB20_298:                             # %lor.lhs.false.1488
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_300
# BB#299:                               # %land.lhs.true.1495
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB20_301
.LBB20_300:                             # %lor.lhs.false.1500
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-208(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB20_305
.LBB20_301:                             # %cond.true.1505
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_303
# BB#302:                               # %cond.true.1510
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	jmp	.LBB20_304
.LBB20_303:                             # %cond.false.1513
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -824(%rbp)        # 4-byte Spill
.LBB20_304:                             # %cond.end.1518
	movl	-824(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_305:                             # %cond.false.1521
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_307
# BB#306:                               # %cond.true.1526
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	jmp	.LBB20_308
.LBB20_307:                             # %cond.false.1529
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -828(%rbp)        # 4-byte Spill
.LBB20_308:                             # %cond.end.1534
	movl	-828(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_309:                             # %cond.false.1537
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_311
# BB#310:                               # %cond.true.1543
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB20_312
.LBB20_311:                             # %cond.false.1560
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
.LBB20_312:                             # %cond.end.1564
	movq	-840(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_314
# BB#313:                               # %land.lhs.true.1568
	cmpq	$0, -208(%rbp)
	jl	.LBB20_340
.LBB20_314:                             # %lor.lhs.false.1571
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_315
	jmp	.LBB20_326
.LBB20_315:                             # %cond.true.1572
	cmpq	$0, -208(%rbp)
	jge	.LBB20_320
# BB#316:                               # %cond.true.1575
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jge	.LBB20_318
# BB#317:                               # %cond.true.1581
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	jmp	.LBB20_319
.LBB20_318:                             # %cond.false.1589
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
.LBB20_319:                             # %cond.end.1593
	movq	-856(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -864(%rbp)        # 8-byte Spill
	cqto
	movq	-864(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-848(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_340
	jmp	.LBB20_337
.LBB20_320:                             # %cond.false.1598
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_321
	jmp	.LBB20_322
.LBB20_321:                             # %cond.true.1599
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_340
	jmp	.LBB20_337
.LBB20_322:                             # %cond.false.1600
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_324
# BB#323:                               # %cond.true.1606
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB20_325
.LBB20_324:                             # %cond.false.1623
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB20_325:                             # %cond.end.1627
	movq	-872(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -880(%rbp)        # 8-byte Spill
	cqto
	movq	-880(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_340
	jmp	.LBB20_337
.LBB20_326:                             # %cond.false.1632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_327
	jmp	.LBB20_328
.LBB20_327:                             # %cond.true.1633
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_340
	jmp	.LBB20_337
.LBB20_328:                             # %cond.false.1634
	cmpq	$0, -208(%rbp)
	jge	.LBB20_333
# BB#329:                               # %cond.true.1637
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jge	.LBB20_331
# BB#330:                               # %cond.true.1643
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -896(%rbp)        # 8-byte Spill
	jmp	.LBB20_332
.LBB20_331:                             # %cond.false.1660
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB20_332:                             # %cond.end.1664
	movq	-896(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -904(%rbp)        # 8-byte Spill
	cqto
	movq	-904(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-888(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_340
	jmp	.LBB20_337
.LBB20_333:                             # %cond.false.1669
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_335
# BB#334:                               # %cond.true.1675
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jmp	.LBB20_336
.LBB20_335:                             # %cond.false.1683
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
.LBB20_336:                             # %cond.end.1687
	movq	-912(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	cqto
	movq	-920(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_340
.LBB20_337:                             # %lor.lhs.false.1692
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_339
# BB#338:                               # %land.lhs.true.1698
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB20_340
.LBB20_339:                             # %lor.lhs.false.1702
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-208(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_344
.LBB20_340:                             # %cond.true.1706
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_342
# BB#341:                               # %cond.true.1711
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	jmp	.LBB20_343
.LBB20_342:                             # %cond.false.1714
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -924(%rbp)        # 4-byte Spill
.LBB20_343:                             # %cond.end.1719
	movl	-924(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_344:                             # %cond.false.1722
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_346
# BB#345:                               # %cond.true.1727
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -928(%rbp)        # 4-byte Spill
	jmp	.LBB20_347
.LBB20_346:                             # %cond.false.1730
	movq	-208(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -928(%rbp)        # 4-byte Spill
.LBB20_347:                             # %cond.end.1735
	movl	-928(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_348:                             # %cond.false.1738
	movb	$1, %al
	testb	$1, %al
	jne	.LBB20_349
	jmp	.LBB20_428
.LBB20_349:                             # %cond.true.1739
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_350
	jmp	.LBB20_389
.LBB20_350:                             # %cond.true.1740
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_352
# BB#351:                               # %cond.true.1746
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB20_353
.LBB20_352:                             # %cond.false.1763
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB20_353:                             # %cond.end.1767
	movq	-936(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_355
# BB#354:                               # %land.lhs.true.1771
	cmpq	$0, -208(%rbp)
	jl	.LBB20_381
.LBB20_355:                             # %lor.lhs.false.1774
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_356
	jmp	.LBB20_367
.LBB20_356:                             # %cond.true.1775
	cmpq	$0, -208(%rbp)
	jge	.LBB20_361
# BB#357:                               # %cond.true.1778
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jge	.LBB20_359
# BB#358:                               # %cond.true.1784
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB20_360
.LBB20_359:                             # %cond.false.1792
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB20_360:                             # %cond.end.1796
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-944(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_381
	jmp	.LBB20_378
.LBB20_361:                             # %cond.false.1801
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_362
	jmp	.LBB20_363
.LBB20_362:                             # %cond.true.1802
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_381
	jmp	.LBB20_378
.LBB20_363:                             # %cond.false.1803
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_365
# BB#364:                               # %cond.true.1809
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	jmp	.LBB20_366
.LBB20_365:                             # %cond.false.1826
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB20_366:                             # %cond.end.1830
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_381
	jmp	.LBB20_378
.LBB20_367:                             # %cond.false.1835
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_368
	jmp	.LBB20_369
.LBB20_368:                             # %cond.true.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_381
	jmp	.LBB20_378
.LBB20_369:                             # %cond.false.1837
	cmpq	$0, -208(%rbp)
	jge	.LBB20_374
# BB#370:                               # %cond.true.1840
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jge	.LBB20_372
# BB#371:                               # %cond.true.1846
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB20_373
.LBB20_372:                             # %cond.false.1863
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB20_373:                             # %cond.end.1867
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-984(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_381
	jmp	.LBB20_378
.LBB20_374:                             # %cond.false.1872
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_376
# BB#375:                               # %cond.true.1878
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB20_377
.LBB20_376:                             # %cond.false.1886
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB20_377:                             # %cond.end.1890
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_381
.LBB20_378:                             # %lor.lhs.false.1895
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_380
# BB#379:                               # %land.lhs.true.1901
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_381
.LBB20_380:                             # %lor.lhs.false.1905
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_385
.LBB20_381:                             # %cond.true.1909
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_383
# BB#382:                               # %cond.true.1913
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB20_384
.LBB20_383:                             # %cond.false.1915
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB20_384:                             # %cond.end.1919
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_385:                             # %cond.false.1921
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_387
# BB#386:                               # %cond.true.1925
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB20_388
.LBB20_387:                             # %cond.false.1927
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB20_388:                             # %cond.end.1931
	movq	-1032(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_389:                             # %cond.false.1933
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_391
# BB#390:                               # %cond.true.1939
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB20_392
.LBB20_391:                             # %cond.false.1956
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB20_392:                             # %cond.end.1960
	movq	-1040(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_394
# BB#393:                               # %land.lhs.true.1964
	cmpq	$0, -208(%rbp)
	jl	.LBB20_420
.LBB20_394:                             # %lor.lhs.false.1967
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_395
	jmp	.LBB20_406
.LBB20_395:                             # %cond.true.1968
	cmpq	$0, -208(%rbp)
	jge	.LBB20_400
# BB#396:                               # %cond.true.1971
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jge	.LBB20_398
# BB#397:                               # %cond.true.1977
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB20_399
.LBB20_398:                             # %cond.false.1985
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB20_399:                             # %cond.end.1989
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_420
	jmp	.LBB20_417
.LBB20_400:                             # %cond.false.1994
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_401
	jmp	.LBB20_402
.LBB20_401:                             # %cond.true.1995
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_420
	jmp	.LBB20_417
.LBB20_402:                             # %cond.false.1996
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_404
# BB#403:                               # %cond.true.2002
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB20_405
.LBB20_404:                             # %cond.false.2019
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB20_405:                             # %cond.end.2023
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	cqto
	movq	-1080(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_420
	jmp	.LBB20_417
.LBB20_406:                             # %cond.false.2028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_407
	jmp	.LBB20_408
.LBB20_407:                             # %cond.true.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_420
	jmp	.LBB20_417
.LBB20_408:                             # %cond.false.2030
	cmpq	$0, -208(%rbp)
	jge	.LBB20_413
# BB#409:                               # %cond.true.2033
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jge	.LBB20_411
# BB#410:                               # %cond.true.2039
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB20_412
.LBB20_411:                             # %cond.false.2056
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB20_412:                             # %cond.end.2060
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
	cqto
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_420
	jmp	.LBB20_417
.LBB20_413:                             # %cond.false.2065
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_415
# BB#414:                               # %cond.true.2071
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB20_416
.LBB20_415:                             # %cond.false.2079
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB20_416:                             # %cond.end.2083
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
	cqto
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_420
.LBB20_417:                             # %lor.lhs.false.2088
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_419
# BB#418:                               # %land.lhs.true.2094
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_420
.LBB20_419:                             # %lor.lhs.false.2098
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_424
.LBB20_420:                             # %cond.true.2102
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_422
# BB#421:                               # %cond.true.2106
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB20_423
.LBB20_422:                             # %cond.false.2108
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB20_423:                             # %cond.end.2112
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_424:                             # %cond.false.2114
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_426
# BB#425:                               # %cond.true.2118
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB20_427
.LBB20_426:                             # %cond.false.2120
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB20_427:                             # %cond.end.2124
	movq	-1136(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_428:                             # %cond.false.2126
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_429
	jmp	.LBB20_468
.LBB20_429:                             # %cond.true.2127
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_431
# BB#430:                               # %cond.true.2133
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB20_432
.LBB20_431:                             # %cond.false.2150
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB20_432:                             # %cond.end.2154
	movq	-1144(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_434
# BB#433:                               # %land.lhs.true.2158
	cmpq	$0, -208(%rbp)
	jl	.LBB20_460
.LBB20_434:                             # %lor.lhs.false.2161
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_435
	jmp	.LBB20_446
.LBB20_435:                             # %cond.true.2162
	cmpq	$0, -208(%rbp)
	jge	.LBB20_440
# BB#436:                               # %cond.true.2165
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jge	.LBB20_438
# BB#437:                               # %cond.true.2171
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB20_439
.LBB20_438:                             # %cond.false.2179
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB20_439:                             # %cond.end.2183
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	cqto
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_460
	jmp	.LBB20_457
.LBB20_440:                             # %cond.false.2188
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_441
	jmp	.LBB20_442
.LBB20_441:                             # %cond.true.2189
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_460
	jmp	.LBB20_457
.LBB20_442:                             # %cond.false.2190
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_444
# BB#443:                               # %cond.true.2196
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB20_445
.LBB20_444:                             # %cond.false.2213
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB20_445:                             # %cond.end.2217
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1184(%rbp)       # 8-byte Spill
	cqto
	movq	-1184(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_460
	jmp	.LBB20_457
.LBB20_446:                             # %cond.false.2222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_447
	jmp	.LBB20_448
.LBB20_447:                             # %cond.true.2223
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_460
	jmp	.LBB20_457
.LBB20_448:                             # %cond.false.2224
	cmpq	$0, -208(%rbp)
	jge	.LBB20_453
# BB#449:                               # %cond.true.2227
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jge	.LBB20_451
# BB#450:                               # %cond.true.2233
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB20_452
.LBB20_451:                             # %cond.false.2250
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB20_452:                             # %cond.end.2254
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1208(%rbp)       # 8-byte Spill
	cqto
	movq	-1208(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_460
	jmp	.LBB20_457
.LBB20_453:                             # %cond.false.2259
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_455
# BB#454:                               # %cond.true.2265
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB20_456
.LBB20_455:                             # %cond.false.2273
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB20_456:                             # %cond.end.2277
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1224(%rbp)       # 8-byte Spill
	cqto
	movq	-1224(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_460
.LBB20_457:                             # %lor.lhs.false.2282
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_459
# BB#458:                               # %land.lhs.true.2288
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_460
.LBB20_459:                             # %lor.lhs.false.2292
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_464
.LBB20_460:                             # %cond.true.2296
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_462
# BB#461:                               # %cond.true.2300
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB20_463
.LBB20_462:                             # %cond.false.2302
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB20_463:                             # %cond.end.2306
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_464:                             # %cond.false.2308
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_466
# BB#465:                               # %cond.true.2312
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB20_467
.LBB20_466:                             # %cond.false.2314
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB20_467:                             # %cond.end.2318
	movq	-1240(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_468:                             # %cond.false.2320
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_470
# BB#469:                               # %cond.true.2326
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB20_471
.LBB20_470:                             # %cond.false.2343
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB20_471:                             # %cond.end.2347
	movq	-1248(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_473
# BB#472:                               # %land.lhs.true.2351
	cmpq	$0, -208(%rbp)
	jl	.LBB20_499
.LBB20_473:                             # %lor.lhs.false.2354
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_474
	jmp	.LBB20_485
.LBB20_474:                             # %cond.true.2355
	cmpq	$0, -208(%rbp)
	jge	.LBB20_479
# BB#475:                               # %cond.true.2358
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jge	.LBB20_477
# BB#476:                               # %cond.true.2364
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB20_478
.LBB20_477:                             # %cond.false.2372
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB20_478:                             # %cond.end.2376
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1272(%rbp)       # 8-byte Spill
	cqto
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_499
	jmp	.LBB20_496
.LBB20_479:                             # %cond.false.2381
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_480
	jmp	.LBB20_481
.LBB20_480:                             # %cond.true.2382
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_499
	jmp	.LBB20_496
.LBB20_481:                             # %cond.false.2383
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_483
# BB#482:                               # %cond.true.2389
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB20_484
.LBB20_483:                             # %cond.false.2406
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB20_484:                             # %cond.end.2410
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_499
	jmp	.LBB20_496
.LBB20_485:                             # %cond.false.2415
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_486
	jmp	.LBB20_487
.LBB20_486:                             # %cond.true.2416
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_499
	jmp	.LBB20_496
.LBB20_487:                             # %cond.false.2417
	cmpq	$0, -208(%rbp)
	jge	.LBB20_492
# BB#488:                               # %cond.true.2420
	movq	-208(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jge	.LBB20_490
# BB#489:                               # %cond.true.2426
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB20_491
.LBB20_490:                             # %cond.false.2443
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB20_491:                             # %cond.end.2447
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1312(%rbp)       # 8-byte Spill
	cqto
	movq	-1312(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_499
	jmp	.LBB20_496
.LBB20_492:                             # %cond.false.2452
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_494
# BB#493:                               # %cond.true.2458
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB20_495
.LBB20_494:                             # %cond.false.2466
	movq	-208(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB20_495:                             # %cond.end.2470
	movq	-1320(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
	cqto
	movq	-1328(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-208(%rbp), %rax
	jl	.LBB20_499
.LBB20_496:                             # %lor.lhs.false.2475
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_498
# BB#497:                               # %land.lhs.true.2481
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_499
.LBB20_498:                             # %lor.lhs.false.2485
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_503
.LBB20_499:                             # %cond.true.2489
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_501
# BB#500:                               # %cond.true.2493
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jmp	.LBB20_502
.LBB20_501:                             # %cond.false.2495
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB20_502:                             # %cond.end.2499
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB20_508
	jmp	.LBB20_507
.LBB20_503:                             # %cond.false.2501
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-208(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_505
# BB#504:                               # %cond.true.2505
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB20_506
.LBB20_505:                             # %cond.false.2507
	movq	-208(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB20_506:                             # %cond.end.2511
	movq	-1344(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB20_508
.LBB20_507:                             # %lor.lhs.false.2513
	movq	$-1, %rax
	cmpq	-256(%rbp), %rax
	jae	.LBB20_509
.LBB20_508:                             # %if.then.2516
	movq	$-1, %rdi
	callq	memory_full
.LBB20_509:                             # %if.else.2517
	movq	-256(%rbp), %rax
	cmpq	-232(%rbp), %rax
	jg	.LBB20_511
# BB#510:                               # %if.then.2520
	movq	-256(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -232(%rbp)
	movq	-256(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -216(%rbp)
	jmp	.LBB20_512
.LBB20_511:                             # %if.else.2522
	movq	-256(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -264(%rbp)
	movb	$1, -241(%rbp)
	movq	-264(%rbp), %rsi
	callq	record_unwind_protect
.LBB20_512:                             # %if.end.2525
	jmp	.LBB20_513
.LBB20_513:                             # %if.end.2526
	jmp	.LBB20_514
.LBB20_514:                             # %do.end.2527
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -224(%rbp)
.LBB20_515:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB20_521
# BB#516:                               # %for.body
                                        #   in Loop: Header=BB20_515 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	get_keymap
	movq	%rax, -32(%rbp)
	movq	-224(%rbp), %rdi
	movq	%rdi, %rcx
	addq	$1, %rcx
	movq	%rcx, -224(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-32(%rbp), %rdi
	callq	Fkeymap_prompt
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_519
# BB#517:                               # %land.lhs.true.2541
                                        #   in Loop: Header=BB20_515 Depth=1
	xorl	%edi, %edi
	movq	-272(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB20_519
# BB#518:                               # %if.then.2545
                                        #   in Loop: Header=BB20_515 Depth=1
	movq	-272(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB20_519:                             # %if.end.2546
                                        #   in Loop: Header=BB20_515 Depth=1
	jmp	.LBB20_520
.LBB20_520:                             # %for.inc
                                        #   in Loop: Header=BB20_515 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_515
.LBB20_521:                             # %for.end
	movq	-216(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	keymap_panes
	xorl	%edi, %edi
	movq	-64(%rbp), %rsi
	movq	%rsi, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB20_524
# BB#522:                               # %land.lhs.true.2553
	cmpl	$0, menu_items_n_panes
	jl	.LBB20_524
# BB#523:                               # %if.then.2556
	movl	$1, %eax
	movl	%eax, %esi
	movq	menu_items, %rdi
	movq	-64(%rbp), %rdx
	callq	ASET
.LBB20_524:                             # %if.end.2557
	movl	-116(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -116(%rbp)
# BB#525:                               # %do.body.2559
	testb	$1, -241(%rbp)
	je	.LBB20_527
# BB#526:                               # %if.then.2561
	xorl	%edi, %edi
	movb	$0, -241(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1384(%rbp)       # 8-byte Spill
.LBB20_527:                             # %if.end.2564
	jmp	.LBB20_528
.LBB20_528:                             # %do.end.2565
	jmp	.LBB20_530
.LBB20_529:                             # %if.else.2566
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	list_of_panes
	movl	-116(%rbp), %ecx
	andl	$-2, %ecx
	movl	%ecx, -116(%rbp)
.LBB20_530:                             # %if.end.2570
	jmp	.LBB20_531
.LBB20_531:                             # %if.end.2571
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-88(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	$1, %ecx
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	je	.LBB20_533
# BB#532:                               # %if.then.2581
	callq	Fx_hide_tip
	movq	%rax, -1408(%rbp)       # 8-byte Spill
.LBB20_533:                             # %if.end.2583
	movq	-88(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB20_535
# BB#534:                               # %if.then.2591
	leaq	-72(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	376(%rax), %rax
	movq	280(%rax), %rax
	movq	-88(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-116(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	*%rax
	movq	%rax, -80(%rbp)
.LBB20_535:                             # %if.end.2594
	callq	discard_menu_items
	cmpq	$0, -72(%rbp)
	je	.LBB20_537
# BB#536:                               # %if.then.2596
	movabsq	$.L.str.3, %rdi
	movq	-72(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB20_537:                             # %if.end.2597
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_538:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fx_popup_menu, .Lfunc_end20-Fx_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	keymap_panes,@function
keymap_panes:                           # @keymap_panes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	init_menu_items
	movq	$0, -24(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB21_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fkeymap_prompt
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %ecx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	single_keymap_panes
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	keymap_panes, .Lfunc_end21-keymap_panes
	.cfi_endproc

	.globl	Fx_popup_dialog
	.align	16, 0x90
	.type	Fx_popup_dialog,@function
Fx_popup_dialog:                        # @Fx_popup_dialog
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
	subq	$112, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB22_4
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_5
# BB#2:                                 # %land.lhs.true
	movl	$651, %edi              # imm = 0x28B
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_4
# BB#3:                                 # %lor.lhs.false.6
	movl	$921, %edi              # imm = 0x399
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_5
.LBB22_4:                               # %if.then
	movq	selected_window, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB22_16
.LBB22_5:                               # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_10
# BB#6:                                 # %if.then.16
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_8
# BB#7:                                 # %if.then.23
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
	jmp	.LBB22_9
.LBB22_8:                               # %if.else.26
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	Fcar
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
.LBB22_9:                               # %if.end
	jmp	.LBB22_15
.LBB22_10:                              # %if.else.32
	movq	-16(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB22_12
# BB#11:                                # %lor.lhs.false.35
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB22_12
	jmp	.LBB22_13
.LBB22_12:                              # %if.then.38
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB22_14
.LBB22_13:                              # %if.else.39
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB22_14:                              # %if.end.41
	jmp	.LBB22_15
.LBB22_15:                              # %if.end.42
	jmp	.LBB22_16
.LBB22_16:                              # %if.end.43
	movq	-48(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB22_17
	jmp	.LBB22_18
.LBB22_17:                              # %if.then.45
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB22_26
.LBB22_18:                              # %if.else.47
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB22_19
	jmp	.LBB22_24
.LBB22_19:                              # %if.then.49
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB22_20
	jmp	.LBB22_22
.LBB22_20:                              # %land.lhs.true.52
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB22_21
	jmp	.LBB22_22
.LBB22_21:                              # %cond.true
	jmp	.LBB22_23
.LBB22_22:                              # %cond.false
	movl	$1027, %edi             # imm = 0x403
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB22_23:                              # %cond.end
	movq	-48(%rbp), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB22_25
.LBB22_24:                              # %if.else.60
	movq	-48(%rbp), %rdi
	callq	CHECK_WINDOW
.LBB22_25:                              # %if.end.61
	jmp	.LBB22_26
.LBB22_26:                              # %if.end.62
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$901, %edi              # imm = 0x385
	movq	%rax, globals+1432
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fredisplay
	movq	-40(%rbp), %rdi
	movq	376(%rdi), %rdi
	cmpq	$0, 288(%rdi)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB22_28
# BB#27:                                # %if.then.66
	movq	-40(%rbp), %rax
	movq	376(%rax), %rax
	movq	288(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_29
.LBB22_28:                              # %if.end.70
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	emulate_dialog_with_menu
	movq	%rax, -8(%rbp)
.LBB22_29:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fx_popup_dialog, .Lfunc_end22-Fx_popup_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	emulate_dialog_with_menu,@function
emulate_dialog_with_menu:               # @emulate_dialog_with_menu
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcar
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB23_5
.LBB23_2:                               # %if.else
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB23_3
	jmp	.LBB23_4
.LBB23_3:                               # %if.then.2
	movq	-56(%rbp), %rdi
	callq	SCHARS
	movslq	-60(%rbp), %rdi
	subq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -60(%rbp)
.LBB23_4:                               # %if.end
	movq	-8(%rbp), %rax
	movl	284(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB23_5:                               # %if.end.5
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$2, %esi
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%esi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -24(%rbp)
	movl	-64(%rbp), %eax
	cltd
	idivl	%esi
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	list2
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	list2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fx_popup_menu
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	emulate_dialog_with_menu, .Lfunc_end23-emulate_dialog_with_menu
	.cfi_endproc

	.globl	syms_of_menu
	.align	16, 0x90
	.type	syms_of_menu,@function
syms_of_menu:                           # @syms_of_menu
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
	movabsq	$menu_items, %rdi
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, menu_items
	callq	builtin_lisp_symbol
	movabsq	$Sx_popup_menu, %rcx
	movq	%rax, menu_items_inuse
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sx_popup_dialog, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smenu_bar_menu_at_x_y, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end24:
	.size	syms_of_menu, .Lfunc_end24-syms_of_menu
	.cfi_endproc

	.align	16, 0x90
	.type	ensure_menu_items,@function
ensure_menu_items:                      # @ensure_menu_items
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	menu_items_allocated, %eax
	subl	menu_items_used, %eax
	subl	%eax, %edi
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jle	.LBB25_2
# BB#1:                                 # %if.then
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	menu_items, %rdi
	movslq	-8(%rbp), %rsi
	callq	larger_vector
	movq	%rax, menu_items
	movq	menu_items, %rdi
	callq	ASIZE
	movl	%eax, %ecx
	movl	%ecx, menu_items_allocated
.LBB25_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	ensure_menu_items, .Lfunc_end25-ensure_menu_items
	.cfi_endproc

	.align	16, 0x90
	.type	push_left_right_boundary,@function
push_left_right_boundary:               # @push_left_right_boundary
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
	subq	$16, %rsp
	movl	$1, %edi
	callq	ensure_menu_items
	movl	$783, %edi              # imm = 0x30F
	movq	menu_items, %rax
	movslq	menu_items_used, %rsi
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	push_left_right_boundary, .Lfunc_end26-push_left_right_boundary
	.cfi_endproc

	.align	16, 0x90
	.type	have_boxes,@function
have_boxes:                             # @have_boxes
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
	movq	globals+1432, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movb	$0, -1(%rbp)
.LBB27_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	have_boxes, .Lfunc_end27-have_boxes
	.cfi_endproc

	.align	16, 0x90
	.type	single_menu_item,@function
single_menu_item:                       # @single_menu_item
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
	subq	$480, %rsp              # imm = 0x1E0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	parse_menu_item
	andb	$1, %al
	movb	%al, -57(%rbp)
	testb	$1, -57(%rbp)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	jmp	.LBB28_51
.LBB28_2:                               # %if.end
	movl	$3, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	item_properties, %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	item_properties, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_7
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$64, %ecx
	jne	.LBB28_7
# BB#4:                                 # %if.then.8
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_6
# BB#5:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-72(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB28_6:                               # %if.end.17
	jmp	.LBB28_51
.LBB28_7:                               # %if.end.18
	callq	have_boxes
	testb	$1, %al
	jne	.LBB28_44
# BB#8:                                 # %if.then.20
	movl	$4, %eax
	movl	%eax, %esi
	movq	$0, -80(%rbp)
	movq	item_properties, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_36
# BB#9:                                 # %if.then.25
	movl	$6, %eax
	movl	%eax, %esi
	movq	item_properties, %rdi
	callq	AREF
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB28_30
# BB#10:                                # %if.then.28
	movq	-72(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB28_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB28_29
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB28_11 Depth=1
	movq	menu_items, %rdi
	movl	-100(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_14
# BB#13:                                # %if.then.37
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB28_28
.LBB28_14:                              # %if.else
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	$598, %edi              # imm = 0x256
	movq	-112(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_16
# BB#15:                                # %if.then.42
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB28_27
.LBB28_16:                              # %if.else.44
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-112(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_18
# BB#17:                                # %if.then.48
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB28_26
.LBB28_18:                              # %if.else.50
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	$783, %edi              # imm = 0x30F
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_20
# BB#19:                                # %if.then.54
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB28_25
.LBB28_20:                              # %if.else.56
                                        #   in Loop: Header=BB28_11 Depth=1
	cmpl	$0, -104(%rbp)
	jne	.LBB28_24
# BB#21:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB28_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB28_24
# BB#22:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB28_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$45, %ecx
	je	.LBB28_24
# BB#23:                                # %if.then.68
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	$4, %esi
	leaq	-152(%rbp), %rax
	movabsq	$.L.str.4, %rcx
	movq	$4, -152(%rbp)
	movq	$-1, -144(%rbp)
	movq	$0, -136(%rbp)
	movq	%rcx, -128(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -120(%rbp)
	movq	menu_items, %rdi
	movl	-100(%rbp), %esi
	addl	$0, %esi
	movslq	%esi, %rsi
	movq	-120(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	concat2
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB28_24:                              # %if.end.74
                                        #   in Loop: Header=BB28_11 Depth=1
	movl	-100(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -100(%rbp)
.LBB28_25:                              # %if.end.76
                                        #   in Loop: Header=BB28_11 Depth=1
	jmp	.LBB28_26
.LBB28_26:                              # %if.end.77
                                        #   in Loop: Header=BB28_11 Depth=1
	jmp	.LBB28_27
.LBB28_27:                              # %if.end.78
                                        #   in Loop: Header=BB28_11 Depth=1
	jmp	.LBB28_28
.LBB28_28:                              # %if.end.79
                                        #   in Loop: Header=BB28_11 Depth=1
	jmp	.LBB28_11
.LBB28_29:                              # %while.end
	movq	-72(%rbp), %rax
	movl	$0, 12(%rax)
.LBB28_30:                              # %if.end.81
	movl	$130, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_32
# BB#31:                                # %if.then.85
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.5, %rdx
	movq	-328(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	jmp	.LBB28_35
.LBB28_32:                              # %if.else.89
	movl	$101, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_34
# BB#33:                                # %if.then.93
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.7, %rdx
	movq	-344(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmoveq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
.LBB28_34:                              # %if.end.98
	jmp	.LBB28_35
.LBB28_35:                              # %if.end.99
	jmp	.LBB28_41
.LBB28_36:                              # %if.else.100
	movq	-72(%rbp), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB28_40
# BB#37:                                # %land.lhs.true.103
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB28_40
# BB#38:                                # %land.lhs.true.108
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$45, %ecx
	je	.LBB28_40
# BB#39:                                # %if.then.113
	movabsq	$.L.str.4, %rax
	movq	%rax, -80(%rbp)
.LBB28_40:                              # %if.end.114
	jmp	.LBB28_41
.LBB28_41:                              # %if.end.115
	cmpq	$0, -80(%rbp)
	je	.LBB28_43
# BB#42:                                # %if.then.117
	movl	$4, %esi
	leaq	-192(%rbp), %rax
	movq	-80(%rbp), %rdi
	movl	%esi, -348(%rbp)        # 4-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -192(%rbp)
	movq	$-1, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-348(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	concat2
	movq	%rax, -48(%rbp)
.LBB28_43:                              # %if.end.128
	jmp	.LBB28_44
.LBB28_44:                              # %if.end.129
	movq	globals+1432, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB28_47
# BB#45:                                # %land.lhs.true.132
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_47
# BB#46:                                # %if.then.136
	movl	$4, %esi
	leaq	-232(%rbp), %rax
	movabsq	$.L.str.9, %rcx
	movq	$2, -232(%rbp)
	movq	$-1, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -200(%rbp)
	movq	-48(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	concat2
	movq	%rax, -48(%rbp)
.LBB28_47:                              # %if.end.146
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	item_properties, %r8
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$5, %r9d
	movl	%r9d, %esi
	movq	item_properties, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$4, %r9d
	movl	%r9d, %esi
	movq	item_properties, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$6, %r9d
	movl	%r9d, %esi
	movq	item_properties, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	AREF
	movl	$7, %r9d
	movl	%r9d, %esi
	movq	item_properties, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	movq	-424(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	push_menu_item
	movq	globals+1432, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %r11d
	cmpl	$2, %r11d
	jne	.LBB28_51
# BB#48:                                # %land.lhs.true.160
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_51
# BB#49:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB28_51
# BB#50:                                # %if.then.167
	callq	push_submenu_start
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	8(%rcx), %edi
	subl	$1, %edi
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -452(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movl	-452(%rbp), %ecx        # 4-byte Reload
	callq	single_keymap_panes
	callq	push_submenu_end
.LBB28_51:                              # %if.end.170
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end28:
	.size	single_menu_item, .Lfunc_end28-single_menu_item
	.cfi_endproc

	.align	16, 0x90
	.type	push_submenu_start,@function
push_submenu_start:                     # @push_submenu_start
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
	subq	$16, %rsp
	movl	$1, %edi
	callq	ensure_menu_items
	xorl	%edi, %edi
	movq	menu_items, %rax
	movslq	menu_items_used, %rsi
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	movl	menu_items_submenu_depth, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_submenu_depth
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	push_submenu_start, .Lfunc_end29-push_submenu_start
	.cfi_endproc

	.align	16, 0x90
	.type	push_submenu_end,@function
push_submenu_end:                       # @push_submenu_end
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
	movl	$1, %edi
	callq	ensure_menu_items
	movl	$598, %edi              # imm = 0x256
	movq	menu_items, %rax
	movslq	menu_items_used, %rsi
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-8(%rbp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	menu_items_used, %ecx
	addl	$1, %ecx
	movl	%ecx, menu_items_used
	movl	menu_items_submenu_depth, %ecx
	addl	$-1, %ecx
	movl	%ecx, menu_items_submenu_depth
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	push_submenu_end, .Lfunc_end30-push_submenu_end
	.cfi_endproc

	.type	menu_items_inuse,@object # @menu_items_inuse
	.comm	menu_items_inuse,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Trying to use a menu from within a menu-entry"
	.size	.L.str, 46

	.type	menu_items,@object      # @menu_items
	.comm	menu_items,8,8
	.type	menu_items_allocated,@object # @menu_items_allocated
	.comm	menu_items_allocated,4,4
	.type	menu_items_used,@object # @menu_items_used
	.comm	menu_items_used,4,4
	.type	menu_items_n_panes,@object # @menu_items_n_panes
	.comm	menu_items_n_panes,4,4
	.type	menu_items_submenu_depth,@object # @menu_items_submenu_depth
	.local	menu_items_submenu_depth
	.comm	menu_items_submenu_depth,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"menu"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"    "
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"[ ] "
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[X] "
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"( ) "
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"(*) "
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" >"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"x-popup-menu"
	.size	.L.str.10, 13

	.type	Sx_popup_menu,@object   # @Sx_popup_menu
	.data
	.align	8
Sx_popup_menu:
	.quad	167772160               # 0xa000000
	.quad	Fx_popup_menu
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sx_popup_menu, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"x-popup-dialog"
	.size	.L.str.11, 15

	.type	Sx_popup_dialog,@object # @Sx_popup_dialog
	.data
	.align	8
Sx_popup_dialog:
	.quad	167772160               # 0xa000000
	.quad	Fx_popup_dialog
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Sx_popup_dialog, 48

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"menu-bar-menu-at-x-y"
	.size	.L.str.12, 21

	.type	Smenu_bar_menu_at_x_y,@object # @Smenu_bar_menu_at_x_y
	.data
	.align	8
Smenu_bar_menu_at_x_y:
	.quad	167772160               # 0xa000000
	.quad	Fmenu_bar_menu_at_x_y
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Smenu_bar_menu_at_x_y, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
