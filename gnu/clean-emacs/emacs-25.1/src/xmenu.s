	.text
	.file	"xmenu.bc"
	.globl	x_menu_set_in_use
	.align	16, 0x90
	.type	x_menu_set_in_use,@function
x_menu_set_in_use:                      # @x_menu_set_in_use
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, -1(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB0_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rax, menu_items_inuse
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, popup_activated_flag
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_menu_set_in_use, .Lfunc_end0-x_menu_set_in_use
	.cfi_endproc

	.globl	x_menu_wait_for_event
	.align	16, 0x90
	.type	x_menu_wait_for_event,@function
x_menu_wait_for_event:                  # @x_menu_wait_for_event
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	callq	gtk_events_pending
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB1_2
	jmp	.LBB1_14
.LBB1_2:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	callq	timer_check
	movq	%rax, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$0, -172(%rbp)
# BB#3:                                 # %do.body
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-160(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -176(%rbp)
	movl	%edi, %eax
	movl	%eax, -180(%rbp)
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	x_display_list, %rax
	movq	%rax, -168(%rbp)
.LBB1_5:                                # %for.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -168(%rbp)
	je	.LBB1_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB1_5 Depth=2
	leaq	-160(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -184(%rbp)
	movl	-184(%rbp), %edi
	callq	fd_SET
	movl	-184(%rbp), %ecx
	cmpl	-172(%rbp), %ecx
	jle	.LBB1_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB1_5 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -172(%rbp)
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	-168(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XFlush
	movl	%eax, -196(%rbp)        # 4-byte Spill
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB1_5
.LBB1_10:                               # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB1_12
# BB#11:                                # %if.then.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	$0, -32(%rbp)
	jmp	.LBB1_13
.LBB1_12:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB1_13:                               # %if.end.9
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movq	-32(%rbp), %r8
	movl	%eax, %edi
	movq	%rcx, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %r9         # 8-byte Reload
	callq	pselect
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB1_1
.LBB1_14:                               # %while.end
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_menu_wait_for_event, .Lfunc_end1-x_menu_wait_for_event
	.cfi_endproc

	.globl	Fx_menu_bar_open_internal
	.align	16, 0x90
	.type	Fx_menu_bar_open_internal,@function
Fx_menu_bar_open_internal:              # @Fx_menu_bar_open_internal
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB2_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	set_frame_menubar
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# BB#3:                                 # %if.then.1
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
	movl	$1, popup_activated_flag
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB2_5:                                # %if.end.7
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.8
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fx_menu_bar_open_internal, .Lfunc_end2-Fx_menu_bar_open_internal
	.cfi_endproc

	.globl	set_frame_menubar
	.align	16, 0x90
	.type	set_frame_menubar,@function
set_frame_menubar:                      # @set_frame_menubar
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
	subq	$416, %rsp              # imm = 0x1A0
	movb	%dl, %al
	movb	%sil, %cl
	movl	$5, %esi
	movq	%rdi, -8(%rbp)
	andb	$1, %cl
	movb	%cl, -9(%rbp)
	andb	$1, %al
	movb	%al, -10(%rbp)
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_lisp_ptr
	movq	%rax, globals+1432
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movb	$1, -10(%rbp)
	jmp	.LBB3_6
.LBB3_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 432(%rax)
	jne	.LBB3_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -10(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then.7
	movl	$192, %eax
	movl	%eax, %edi
	movb	$1, -10(%rbp)
	callq	xmalloc
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rax, 432(%rdi)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	432(%rax), %rax
	movl	$0, (%rax)
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %if.end.15
	testb	$1, -10(%rbp)
	je	.LBB3_49
# BB#7:                                 # %if.then.17
	movq	current_buffer(%rip), %rax
	movq	%rax, -112(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movslq	-132(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -144(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_9
# BB#8:                                 # %if.then.20
	movl	$0, -132(%rbp)
.LBB3_9:                                # %if.end.21
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movl	$546, %edi              # imm = 0x222
	movq	80(%rax), %rax
	movq	%rax, -120(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$321, %edi              # imm = 0x141
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	callq	record_unwind_save_match_data
	xorl	%edi, %edi
	movq	globals+1736, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_11
# BB#10:                                # %if.then.29
	movl	$735, %edi              # imm = 0x2DF
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$734, %edi              # imm = 0x2DE
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
.LBB3_11:                               # %if.end.34
	movq	-120(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal_1
	movl	$160, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	xorl	%edi, %edi
	movq	globals+1352, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_13
# BB#12:                                # %if.then.40
	movl	$795, %edi              # imm = 0x31B
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB3_13:                               # %if.end.43
	movl	$655, %edi              # imm = 0x28F
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	safe_run_hooks
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	menu_bar_items
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_menu_bar_items
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.48
	movq	-144(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movl	-132(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rdx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
.LBB3_15:                               # %if.end.53
	callq	save_menu_items
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, menu_items
	movq	menu_items, %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB3_16
	jmp	.LBB3_17
.LBB3_16:                               # %cond.true
	movq	menu_items, %rdi
	callq	ASIZE
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB3_18
.LBB3_18:                               # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, menu_items_allocated(%rip)
	movq	-40(%rbp), %rdi
	callq	ASIZE
	movq	%rax, %rdi
	sarq	$63, %rdi
	shrq	$62, %rdi
	addq	%rdi, %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -148(%rbp)
	incl	%ecx
	movslq	%ecx, %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -80(%rbp)
	movslq	-148(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -88(%rbp)
	movslq	-148(%rbp), %rax
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -104(%rbp)
	movslq	-148(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -96(%rbp)
	callq	init_menu_items
	movl	$0, -68(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB3_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -160(%rbp)
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_22
# BB#21:                                # %if.then.85
	jmp	.LBB3_24
.LBB3_22:                               # %if.end.86
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	menu_items_used, %eax
	movslq	-68(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	$0, menu_items_n_panes
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-176(%rbp), %rdx
	callq	parse_single_submenu
	movslq	-68(%rbp), %rcx
	movq	-96(%rbp), %rdx
	andb	$1, %al
	movb	%al, (%rdx,%rcx)
	movl	menu_items_n_panes, %r8d
	movslq	-68(%rbp), %rcx
	movq	-104(%rbp), %rdx
	movl	%r8d, (%rdx,%rcx,4)
	movl	menu_items_used, %r8d
	movslq	-68(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movl	%r8d, (%rdx,%rcx,4)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_19
.LBB3_24:                               # %for.end
	xorl	%edi, %edi
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	$-1, (%rcx,%rax,4)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.1, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -68(%rbp)
.LBB3_25:                               # %for.cond.99
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jl	.LBB3_31
# BB#26:                                # %for.body.104
                                        #   in Loop: Header=BB3_25 Depth=1
	movslq	-68(%rbp), %rax
	movq	-104(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, menu_items_n_panes
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	movslq	-68(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	movslq	-68(%rbp), %rax
	movq	-96(%rbp), %rcx
	movb	(%rcx,%rax), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	digest_single_submenu
	movq	%rax, -48(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB3_28
# BB#27:                                # %if.then.116
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.117
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB3_29:                               # %if.end.119
                                        #   in Loop: Header=BB3_25 Depth=1
	movq	-48(%rbp), %rax
	movb	$1, 48(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
# BB#30:                                # %for.inc.121
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_25
.LBB3_31:                               # %for.end.123
	movq	-112(%rbp), %rdi
	callq	set_buffer_internal_1
	movl	$0, -68(%rbp)
.LBB3_32:                               # %for.cond.124
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB3_38
# BB#33:                                # %for.body.127
                                        #   in Loop: Header=BB3_32 Depth=1
	movl	menu_items_used, %eax
	cmpl	-68(%rbp), %eax
	je	.LBB3_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_32 Depth=1
	movslq	-68(%rbp), %rax
	movq	-144(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	menu_items, %rdi
	movslq	-68(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_36
.LBB3_35:                               # %if.then.136
	jmp	.LBB3_38
.LBB3_36:                               # %if.end.137
                                        #   in Loop: Header=BB3_32 Depth=1
	jmp	.LBB3_37
.LBB3_37:                               # %for.inc.138
                                        #   in Loop: Header=BB3_32 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_32
.LBB3_38:                               # %for.end.140
	movl	-68(%rbp), %eax
	cmpl	menu_items_used, %eax
	jne	.LBB3_42
# BB#39:                                # %land.lhs.true.143
	movl	-68(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jne	.LBB3_42
# BB#40:                                # %land.lhs.true.146
	cmpl	$0, -68(%rbp)
	je	.LBB3_42
# BB#41:                                # %if.then.149
	movq	-56(%rbp), %rdi
	callq	free_menubar_widget_value_tree
	callq	discard_menu_items
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_63
.LBB3_42:                               # %if.end.152
	movq	-8(%rbp), %rdi
	movq	menu_items, %rsi
	callq	fset_menu_bar_vector
	xorl	%edi, %edi
	movl	menu_items_used, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 168(%rsi)
	movq	-128(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-56(%rbp), %rsi
	movq	56(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movl	$0, -68(%rbp)
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB3_43:                               # %for.cond.157
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-328(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB3_48
# BB#44:                                # %for.body.162
                                        #   in Loop: Header=BB3_43 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_46
# BB#45:                                # %if.then.170
	jmp	.LBB3_48
.LBB3_46:                               # %if.end.171
                                        #   in Loop: Header=BB3_43 Depth=1
	movq	-184(%rbp), %rdi
	callq	SSDATA
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rdi
	callq	update_submenu_strings
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
# BB#47:                                # %for.inc.175
                                        #   in Loop: Header=BB3_43 Depth=1
	movl	-68(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_43
.LBB3_48:                               # %for.end.177
	jmp	.LBB3_59
.LBB3_49:                               # %if.else.178
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -68(%rbp)
.LBB3_50:                               # %for.cond.183
                                        # =>This Inner Loop Header: Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	ASIZE
	movq	-344(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB3_58
# BB#51:                                # %for.body.188
                                        #   in Loop: Header=BB3_50 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_53
# BB#52:                                # %if.then.196
	jmp	.LBB3_58
.LBB3_53:                               # %if.end.197
                                        #   in Loop: Header=BB3_50 Depth=1
	movq	-192(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$1, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	movq	$-1, %rcx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-48(%rbp), %rax
	movq	%rcx, 64(%rax)
	cmpq	$0, -64(%rbp)
	je	.LBB3_55
# BB#54:                                # %if.then.203
                                        #   in Loop: Header=BB3_50 Depth=1
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.205
                                        #   in Loop: Header=BB3_50 Depth=1
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB3_56:                               # %if.end.207
                                        #   in Loop: Header=BB3_50 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
# BB#57:                                # %for.inc.208
                                        #   in Loop: Header=BB3_50 Depth=1
	movl	-68(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_50
.LBB3_58:                               # %for.end.210
	movq	-8(%rbp), %rax
	movl	$0, 168(%rax)
.LBB3_59:                               # %if.end.212
	callq	block_input
	movb	$1, xg_crazy_callback_abort
	cmpq	$0, -24(%rbp)
	je	.LBB3_61
# BB#60:                                # %if.then.214
	movabsq	$menubar_selection_callback, %rax
	movabsq	$popup_deactivate_callback, %rcx
	movabsq	$menu_highlight_callback, %rdx
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-56(%rbp), %r8
	movb	-10(%rbp), %r9b
	andb	$1, %r9b
	subq	$16, %rsp
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movzbl	%r9b, %r10d
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	%rax, %r8
	movq	-376(%rbp), %r9         # 8-byte Reload
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	xg_modify_menubar_widgets
	addq	$16, %rsp
	jmp	.LBB3_62
.LBB3_61:                               # %if.else.216
	movabsq	$.L.str.1, %rax
	movabsq	$menubar_selection_callback, %rcx
	movabsq	$popup_deactivate_callback, %rdx
	movabsq	$menu_highlight_callback, %rsi
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %r8
	subq	$16, %rsp
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	-400(%rbp), %r9         # 8-byte Reload
	movq	-392(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	xg_create_widget
	addq	$16, %rsp
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 112(%rcx)
.LBB3_62:                               # %if.end.221
	movq	-56(%rbp), %rdi
	callq	free_menubar_widget_value_tree
	movq	-8(%rbp), %rdi
	callq	update_frame_menubar
	movb	$0, xg_crazy_callback_abort
	callq	unblock_input
.LBB3_63:                               # %return
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_frame_menubar, .Lfunc_end3-set_frame_menubar
	.cfi_endproc

	.globl	x_activate_menubar
	.align	16, 0x90
	.type	x_activate_menubar,@function
x_activate_menubar:                     # @x_activate_menubar
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
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	432(%rdi), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_5
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	432(%rax), %rax
	movq	32(%rax), %rsi
	callq	xg_win_to_widget
	cmpq	$0, %rax
	jne	.LBB4_4
# BB#3:                                 # %if.then.7
	jmp	.LBB4_5
.LBB4_4:                                # %if.end.8
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	set_frame_menubar
	callq	block_input
	movl	$1, popup_activated_flag
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	432(%rax), %rsi
	callq	XPutBackEvent
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	432(%rsi), %rsi
	movl	$0, (%rsi)
.LBB4_5:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	x_activate_menubar, .Lfunc_end4-x_activate_menubar
	.cfi_endproc

	.align	16, 0x90
	.type	menubar_selection_callback,@function
menubar_selection_callback:             # @menubar_selection_callback
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, xg_crazy_callback_abort
	je	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_20
.LBB5_2:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB5_5
# BB#3:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB5_5
# BB#4:                                 # %lor.lhs.false.3
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB5_6
.LBB5_5:                                # %if.then.6
	jmp	.LBB5_20
.LBB5_6:                                # %if.end.7
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_radio_menu_item_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.9
	movl	$0, -44(%rbp)
	jmp	.LBB5_13
.LBB5_8:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_11
# BB#10:                                # %if.then.12
	movl	$1, -44(%rbp)
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.13
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_12:                               # %if.end.15
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.16
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.18
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_check_menu_item_get_active
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.23
	jmp	.LBB5_20
.LBB5_16:                               # %if.end.24
	callq	block_input
.LBB5_17:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB5_19
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB5_17 Depth=1
	callq	gtk_main_iteration
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB5_17
.LBB5_19:                               # %while.end
	callq	unblock_input
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movl	32(%rax), %esi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	24(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	callq	find_and_call_menu_selection
.LBB5_20:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	menubar_selection_callback, .Lfunc_end5-menubar_selection_callback
	.cfi_endproc

	.align	16, 0x90
	.type	popup_deactivate_callback,@function
popup_deactivate_callback:              # @popup_deactivate_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, popup_activated_flag
	popq	%rbp
	retq
.Lfunc_end6:
	.size	popup_deactivate_callback, .Lfunc_end6-popup_deactivate_callback
	.cfi_endproc

	.align	16, 0x90
	.type	menu_highlight_callback,@function
menu_highlight_callback:                # @menu_highlight_callback
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_4:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB7_5:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpl	$1, popup_activated_flag
	jg	.LBB7_7
# BB#6:                                 # %cond.true.5
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_7:                                # %cond.false.6
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_8
.LBB7_8:                                # %cond.end.7
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	show_help_event
.LBB7_9:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	menu_highlight_callback, .Lfunc_end7-menu_highlight_callback
	.cfi_endproc

	.align	16, 0x90
	.type	update_frame_menubar,@function
update_frame_menubar:                   # @update_frame_menubar
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	xg_update_frame_menubar
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	update_frame_menubar, .Lfunc_end8-update_frame_menubar
	.cfi_endproc

	.globl	initialize_frame_menubar
	.align	16, 0x90
	.type	initialize_frame_menubar,@function
initialize_frame_menubar:               # @initialize_frame_menubar
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	menu_bar_items
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_menu_bar_items
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	set_frame_menubar
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	initialize_frame_menubar, .Lfunc_end9-initialize_frame_menubar
	.cfi_endproc

	.globl	x_menu_show
	.align	16, 0x90
	.type	x_menu_show,@function
x_menu_show:                            # @x_menu_show
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movslq	menu_items_used(%rip), %rdi
	leaq	15(,%rdi,8), %rdi
	andq	$-16, %rdi
	movq	%rsp, %r8
	subq	%rdi, %r8
	movq	%r8, %rsp
	movq	%r8, -96(%rbp)
	movslq	menu_items_used(%rip), %rdi
	leaq	15(,%rdi,8), %rdi
	andq	$-16, %rdi
	movq	%rsp, %r8
	subq	%rdi, %r8
	movq	%r8, %rsp
	movq	%r8, -104(%rbp)
	movl	$0, -108(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	cmpl	$3, menu_items_used
	jg	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_104
.LBB10_2:                               # %if.end
	callq	block_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movb	$1, -121(%rbp)
	movl	$0, -52(%rbp)
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB10_67
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_6
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movl	-108(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)
	movslq	%ecx, %rsi
	movq	-96(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -88(%rbp)
	movb	$1, -121(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB10_66
.LBB10_6:                               # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_8
# BB#7:                                 # %if.then.21
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-108(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -108(%rbp)
	movslq	%ecx, %rax
	movq	-96(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movb	$0, -121(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB10_65
.LBB10_8:                               # %if.else.25
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpl	$0, -108(%rbp)
	je	.LBB10_11
# BB#10:                                # %if.then.33
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_64
.LBB10_11:                              # %if.else.34
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_13
# BB#12:                                # %if.then.40
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_63
.LBB10_13:                              # %if.else.42
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_35
# BB#14:                                # %if.then.48
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_15
	jmp	.LBB10_17
.LBB10_15:                              # %land.lhs.true.57
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-136(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_16
	jmp	.LBB10_17
.LBB10_16:                              # %if.then.60
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-136(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -136(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	movq	-136(%rbp), %rdx
	callq	ASET
.LBB10_17:                              # %if.end.65
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.4, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-136(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB10_20:                              # %cond.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
	cmpl	$1, menu_items_n_panes
	jne	.LBB10_22
# BB#21:                                # %if.then.72
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.4, %rax
	movq	%rax, -152(%rbp)
.LBB10_22:                              # %if.end.73
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB10_31
# BB#23:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-152(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB10_31
# BB#24:                                # %if.then.77
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$1, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -64(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB10_26
# BB#25:                                # %if.then.81
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB10_27
.LBB10_26:                              # %if.else.82
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB10_27:                              # %if.end.83
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB10_30
# BB#28:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_30
# BB#29:                                # %if.then.90
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rax)
.LBB10_30:                              # %if.end.91
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -88(%rbp)
	jmp	.LBB10_34
.LBB10_31:                              # %if.else.93
                                        #   in Loop: Header=BB10_3 Depth=1
	testb	$1, -121(%rbp)
	je	.LBB10_33
# BB#32:                                # %if.then.95
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -88(%rbp)
.LBB10_33:                              # %if.end.96
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_34
.LBB10_34:                              # %if.end.97
                                        #   in Loop: Header=BB10_3 Depth=1
	movb	$0, -121(%rbp)
	movl	-52(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_62
.LBB10_35:                              # %if.else.99
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -160(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -168(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -176(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -184(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -192(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -200(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -208(%rbp)
	movq	-160(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_36
	jmp	.LBB10_38
.LBB10_36:                              # %land.lhs.true.123
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-160(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_37
	jmp	.LBB10_38
.LBB10_37:                              # %if.then.126
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-160(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -160(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rsi
	movq	-160(%rbp), %rdx
	callq	ASET
.LBB10_38:                              # %if.end.131
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-176(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_39
	jmp	.LBB10_41
.LBB10_39:                              # %land.lhs.true.134
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-176(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_40
	jmp	.LBB10_41
.LBB10_40:                              # %if.then.137
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$988, %edi              # imm = 0x3DC
	movq	-176(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -176(%rbp)
	movq	menu_items, %rdi
	movl	-52(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rsi
	movq	-176(%rbp), %rdx
	callq	ASET
.LBB10_41:                              # %if.end.142
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-160(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-168(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-208(%rbp), %rdi
	movb	%dl, -369(%rbp)         # 1-byte Spill
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_42
	jmp	.LBB10_43
.LBB10_42:                              # %cond.true.149
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-208(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB10_44
.LBB10_43:                              # %cond.false.150
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB10_44:                              # %cond.end.152
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movb	-369(%rbp), %sil        # 1-byte Reload
	movzbl	%sil, %ecx
	andl	$1, %ecx
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -64(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB10_46
# BB#45:                                # %if.then.156
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB10_47
.LBB10_46:                              # %if.else.158
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB10_47:                              # %if.end.160
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-176(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_49
# BB#48:                                # %if.then.164
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-176(%rbp), %rdi
	callq	SSDATA
	movq	-64(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB10_49:                              # %if.end.166
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_51
# BB#50:                                # %cond.true.170
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	aref_addr
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB10_52
.LBB10_51:                              # %cond.false.173
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB10_52
.LBB10_52:                              # %cond.end.174
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-192(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_54
# BB#53:                                # %if.then.179
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.LBB10_61
.LBB10_54:                              # %if.else.181
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$130, %edi
	movq	-192(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_56
# BB#55:                                # %if.then.185
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movl	$1, 52(%rax)
	jmp	.LBB10_60
.LBB10_56:                              # %if.else.187
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$101, %edi
	movq	-192(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_58
# BB#57:                                # %if.then.191
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-64(%rbp), %rax
	movl	$2, 52(%rax)
	jmp	.LBB10_59
.LBB10_58:                              # %if.else.193
	callq	emacs_abort
.LBB10_59:                              # %if.end.194
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_60
.LBB10_60:                              # %if.end.195
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_61
.LBB10_61:                              # %if.end.196
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%edi, %edi
	movq	-200(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-64(%rbp), %rax
	andb	$1, %dl
	movb	%dl, 49(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-52(%rbp), %edi
	addl	$8, %edi
	movl	%edi, -52(%rbp)
.LBB10_62:                              # %if.end.203
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_63
.LBB10_63:                              # %if.end.204
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_64
.LBB10_64:                              # %if.end.205
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_65
.LBB10_65:                              # %if.end.206
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_66
.LBB10_66:                              # %if.end.207
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_3
.LBB10_67:                              # %while.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_71
# BB#68:                                # %if.then.211
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.5, %rdi
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -232(%rbp)
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	-232(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-232(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-40(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB10_69
	jmp	.LBB10_70
.LBB10_69:                              # %if.then.220
	movl	$988, %edi              # imm = 0x3DC
	movq	-40(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -40(%rbp)
.LBB10_70:                              # %if.end.223
	movq	-40(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$1, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-216(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 56(%rcx)
.LBB10_71:                              # %if.end.230
	movabsq	$cleanup_widget_value_tree, %rdi
	movq	$0, menu_item_selection
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	andl	$2, %r8d
	cmpl	$0, %r8d
	setne	%r9b
	movzbl	%r9b, %r8d
	andl	$1, %r8d
	callq	create_and_show_popup_menu
	xorl	%edi, %edi
	movq	-120(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	menu_item_selection, %rsi
	cmpq	$0, %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	je	.LBB10_100
# BB#72:                                # %if.then.237
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)
	movq	%rax, -240(%rbp)
	movl	$0, -52(%rbp)
.LBB10_73:                              # %while.cond.241
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB10_99
# BB#74:                                # %while.body.244
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_76
# BB#75:                                # %if.then.250
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	-240(%rbp), %rax
	movl	-108(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -108(%rbp)
	movslq	%ecx, %rsi
	movq	-104(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	movq	-248(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB10_98
.LBB10_76:                              # %if.else.255
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_78
# BB#77:                                # %if.then.261
                                        #   in Loop: Header=BB10_73 Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -240(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_97
.LBB10_78:                              # %if.else.266
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_80
# BB#79:                                # %if.then.272
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -240(%rbp)
	movl	-52(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB10_96
.LBB10_80:                              # %if.else.277
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	callq	AREF
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_82
# BB#81:                                # %if.then.283
                                        #   in Loop: Header=BB10_73 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_95
.LBB10_82:                              # %if.else.285
                                        #   in Loop: Header=BB10_73 Depth=1
	movq	menu_items, %rdi
	movl	-52(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -248(%rbp)
	movq	menu_item_selection, %rax
	movq	menu_items, %rdi
	movslq	-52(%rbp), %rsi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	aref_addr
	movq	-528(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB10_94
# BB#83:                                # %if.then.293
	movl	-28(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB10_93
# BB#84:                                # %if.then.296
	movq	-248(%rbp), %rdi
	callq	list1
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_86
# BB#85:                                # %if.then.301
	movq	-240(%rbp), %rdi
	movq	-248(%rbp), %rsi
	callq	Fcons
	movq	%rax, -248(%rbp)
.LBB10_86:                              # %if.end.303
	movl	-108(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -252(%rbp)
.LBB10_87:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -252(%rbp)
	jl	.LBB10_92
# BB#88:                                # %for.body
                                        #   in Loop: Header=BB10_87 Depth=1
	xorl	%edi, %edi
	movslq	-252(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_90
# BB#89:                                # %if.then.311
                                        #   in Loop: Header=BB10_87 Depth=1
	movslq	-252(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-248(%rbp), %rsi
	callq	Fcons
	movq	%rax, -248(%rbp)
.LBB10_90:                              # %if.end.315
                                        #   in Loop: Header=BB10_87 Depth=1
	jmp	.LBB10_91
.LBB10_91:                              # %for.inc
                                        #   in Loop: Header=BB10_87 Depth=1
	movl	-252(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -252(%rbp)
	jmp	.LBB10_87
.LBB10_92:                              # %for.end
	jmp	.LBB10_93
.LBB10_93:                              # %if.end.317
	callq	unblock_input
	movq	-248(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_104
.LBB10_94:                              # %if.end.318
                                        #   in Loop: Header=BB10_73 Depth=1
	movl	-52(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -52(%rbp)
.LBB10_95:                              # %if.end.320
                                        #   in Loop: Header=BB10_73 Depth=1
	jmp	.LBB10_96
.LBB10_96:                              # %if.end.321
                                        #   in Loop: Header=BB10_73 Depth=1
	jmp	.LBB10_97
.LBB10_97:                              # %if.end.322
                                        #   in Loop: Header=BB10_73 Depth=1
	jmp	.LBB10_98
.LBB10_98:                              # %if.end.323
                                        #   in Loop: Header=BB10_73 Depth=1
	jmp	.LBB10_73
.LBB10_99:                              # %while.end.324
	jmp	.LBB10_103
.LBB10_100:                             # %if.else.325
	movl	-28(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB10_102
# BB#101:                               # %if.then.328
	callq	unblock_input
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB10_102:                             # %if.end.332
	jmp	.LBB10_103
.LBB10_103:                             # %if.end.333
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB10_104:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_menu_show, .Lfunc_end10-x_menu_show
	.cfi_endproc

	.align	16, 0x90
	.type	cleanup_widget_value_tree,@function
cleanup_widget_value_tree:              # @cleanup_widget_value_tree
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	free_menubar_widget_value_tree
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	cleanup_widget_value_tree, .Lfunc_end11-cleanup_widget_value_tree
	.cfi_endproc

	.align	16, 0x90
	.type	create_and_show_popup_menu,@function
create_and_show_popup_menu:             # @create_and_show_popup_menu
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
	subq	$176, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	$0, -48(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$.L.str.10, %rdi
	movabsq	$popup_selection_callback, %rsi
	movabsq	$popup_deactivate_callback, %r9
	movabsq	$menu_highlight_callback, %r10
	movq	%rax, -72(%rbp)
	movb	-25(%rbp), %r11b
	xorb	$-1, %r11b
	andb	$1, %r11b
	movb	%r11b, -73(%rbp)
	movb	$1, xg_crazy_callback_abort
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	xg_create_widget
	movq	%rax, -40(%rbp)
	movb	$0, xg_crazy_callback_abort
	testb	$1, -73(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movabsq	$menu_position_func, %rax
	movq	%rax, -48(%rbp)
	callq	block_input
	leaq	-20(%rbp), %r9
	leaq	-24(%rbp), %rax
	leaq	-88(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	104(%rdx), %rdx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	XTranslateCoordinates
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	unblock_input
	movl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB12_2:                               # %if.end
	testb	$1, -25(%rbp)
	je	.LBB12_12
# BB#3:                                 # %if.then.15
	movl	$0, -32(%rbp)
.LBB12_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -32(%rbp)
	jge	.LBB12_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	92(%rcx), %edx
	movl	-32(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB12_7
# BB#6:                                 # %if.then.20
	jmp	.LBB12_9
.LBB12_7:                               # %if.end.21
                                        #   in Loop: Header=BB12_4 Depth=1
	jmp	.LBB12_8
.LBB12_8:                               # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_4
.LBB12_9:                               # %for.end
	cmpl	$5, -32(%rbp)
	jne	.LBB12_11
# BB#10:                                # %if.then.23
	movl	$0, -32(%rbp)
.LBB12_11:                              # %if.end.24
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.25
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-32(%rbp), %r9d
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	664(%rdx), %rdx
	movl	%edx, %r8d
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	gtk_menu_popup
	movabsq	$pop_down_menu, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB12_14
# BB#13:                                # %if.then.33
	movl	$1, %edi
	movl	$1, popup_activated_flag
	movq	-40(%rbp), %rsi
	callq	popup_widget_loop
.LBB12_14:                              # %if.end.34
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movl	$0, 92(%rsi)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	create_and_show_popup_menu, .Lfunc_end12-create_and_show_popup_menu
	.cfi_endproc

	.globl	xw_popup_dialog
	.align	16, 0x90
	.type	xw_popup_dialog,@function
xw_popup_dialog:                        # @xw_popup_dialog
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_window_system
	movq	-24(%rbp), %rdi
	callq	Fcar
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movabsq	$unuse_menu_items, %rdi
	callq	record_unwind_protect_void
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	build_string
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -24(%rbp)
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	list1
	movq	%rax, %rdi
	callq	list_of_panes
	callq	block_input
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	x_dialog_show
	movq	%rax, -48(%rbp)
	callq	unblock_input
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	discard_menu_items
	cmpq	$0, -40(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.13
	movabsq	$.L.str.7, %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB13_4:                               # %if.end.14
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xw_popup_dialog, .Lfunc_end13-xw_popup_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	x_dialog_show,@function
x_dialog_show:                          # @x_dialog_show
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
	subq	$304, %rsp              # imm = 0x130
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movb	$0, -85(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	cmpl	$1, menu_items_n_panes
	jle	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.11, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_38
.LBB14_2:                               # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	menu_items, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_4
# BB#3:                                 # %cond.true
	movabsq	$.L.str.4, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
	movq	-104(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB14_5:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.12, %rdi
	movl	$1, %edx
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$3, -44(%rbp)
.LBB14_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB14_18
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	menu_items, %rdi
	movl	-44(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -120(%rbp)
	movq	menu_items, %rdi
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -128(%rbp)
	movq	menu_items, %rdi
	movl	-44(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_9
# BB#8:                                 # %if.then.19
	movq	-72(%rbp), %rdi
	callq	free_menubar_widget_value_tree
	xorl	%edi, %edi
	movabsq	$.L.str.13, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_38
.LBB14_9:                               # %if.end.21
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	$783, %edi              # imm = 0x30F
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_11
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB14_6 Depth=1
	movb	$1, -85(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_6
.LBB14_11:                              # %if.end.26
                                        #   in Loop: Header=BB14_6 Depth=1
	cmpl	$9, -48(%rbp)
	jl	.LBB14_13
# BB#12:                                # %if.then.29
	movq	-72(%rbp), %rdi
	callq	free_menubar_widget_value_tree
	xorl	%edi, %edi
	movabsq	$.L.str.14, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_38
.LBB14_13:                              # %if.end.31
                                        #   in Loop: Header=BB14_6 Depth=1
	movslq	-48(%rbp), %rax
	movq	button_names(,%rax,8), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-128(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -209(%rbp)         # 1-byte Spill
	callq	builtin_lisp_symbol
	movb	-209(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edi
	andl	$1, %edi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movl	-216(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_15
# BB#14:                                # %if.then.41
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	-136(%rbp), %rdi
	callq	SSDATA
	movq	-64(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB14_15:                              # %if.end.43
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	menu_items, %rdi
	movslq	-44(%rbp), %rsi
	callq	aref_addr
	movq	-64(%rbp), %rsi
	movq	%rax, 64(%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	testb	$1, -85(%rbp)
	jne	.LBB14_17
# BB#16:                                # %if.then.46
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB14_17:                              # %if.end.48
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_6
.LBB14_18:                              # %while.end
	testb	$1, -85(%rbp)
	jne	.LBB14_20
# BB#19:                                # %if.then.52
	movl	$2, %eax
	movl	-48(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-228(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	movl	%ecx, -84(%rbp)
.LBB14_20:                              # %if.end.53
	xorl	%edi, %edi
	leaq	-54(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	make_widget_value
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB14_22
# BB#21:                                # %if.then.59
	movb	$81, -54(%rbp)
	jmp	.LBB14_23
.LBB14_22:                              # %if.else
	movb	$73, -54(%rbp)
.LBB14_23:                              # %if.end.62
	movabsq	$cleanup_widget_value_tree, %rdi
	movl	-48(%rbp), %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -53(%rbp)
	movb	$66, -52(%rbp)
	movb	$82, -51(%rbp)
	movl	-48(%rbp), %eax
	addl	$48, %eax
	subl	-84(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -50(%rbp)
	movb	$0, -49(%rbp)
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-64(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	$0, menu_item_selection
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	callq	record_unwind_protect_ptr
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	create_and_show_dialog
	xorl	%edi, %edi
	movq	-96(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	menu_item_selection, %rdx
	cmpq	$0, %rdx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	je	.LBB14_36
# BB#24:                                # %if.then.77
	movl	$0, -44(%rbp)
.LBB14_25:                              # %while.cond.78
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	menu_items_used, %eax
	jge	.LBB14_35
# BB#26:                                # %while.body.81
                                        #   in Loop: Header=BB14_25 Depth=1
	movq	menu_items, %rdi
	movslq	-44(%rbp), %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_28
# BB#27:                                # %if.then.88
                                        #   in Loop: Header=BB14_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_34
.LBB14_28:                              # %if.else.90
                                        #   in Loop: Header=BB14_25 Depth=1
	movq	menu_items, %rdi
	movslq	-44(%rbp), %rsi
	callq	AREF
	movl	$783, %edi              # imm = 0x30F
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_30
# BB#29:                                # %if.then.96
                                        #   in Loop: Header=BB14_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_33
.LBB14_30:                              # %if.else.98
                                        #   in Loop: Header=BB14_25 Depth=1
	movq	menu_items, %rdi
	movl	-44(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	AREF
	movq	%rax, -144(%rbp)
	movq	menu_item_selection, %rax
	movq	menu_items, %rdi
	movslq	-44(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	aref_addr
	movq	-288(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_32
# BB#31:                                # %if.then.106
	movq	-144(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB14_38
.LBB14_32:                              # %if.end.107
                                        #   in Loop: Header=BB14_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$8, %eax
	movl	%eax, -44(%rbp)
.LBB14_33:                              # %if.end.109
                                        #   in Loop: Header=BB14_25 Depth=1
	jmp	.LBB14_34
.LBB14_34:                              # %if.end.110
                                        #   in Loop: Header=BB14_25 Depth=1
	jmp	.LBB14_25
.LBB14_35:                              # %while.end.111
	jmp	.LBB14_37
.LBB14_36:                              # %if.else.112
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB14_37:                              # %if.end.116
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_38:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end14:
	.size	x_dialog_show, .Lfunc_end14-x_dialog_show
	.cfi_endproc

	.globl	popup_activated
	.align	16, 0x90
	.type	popup_activated,@function
popup_activated:                        # @popup_activated
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
	movl	popup_activated_flag, %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	popup_activated, .Lfunc_end15-popup_activated
	.cfi_endproc

	.globl	Fmenu_or_popup_active_p
	.align	16, 0x90
	.type	Fmenu_or_popup_active_p,@function
Fmenu_or_popup_active_p:                # @Fmenu_or_popup_active_p
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
	callq	popup_activated
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB16_3:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fmenu_or_popup_active_p, .Lfunc_end16-Fmenu_or_popup_active_p
	.cfi_endproc

	.globl	syms_of_xmenu
	.align	16, 0x90
	.type	syms_of_xmenu,@function
syms_of_xmenu:                          # @syms_of_xmenu
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
	subq	$16, %rsp
	movabsq	$Smenu_or_popup_active_p, %rdi
	callq	defsubr
	movabsq	$Sx_menu_bar_open_internal, %rdi
	callq	defsubr
	movabsq	$.L.str.8, %rdi
	callq	intern_c_string
	movq	Sx_menu_bar_open_internal+24, %rdi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	intern_c_string
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffset
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	syms_of_xmenu, .Lfunc_end17-syms_of_xmenu
	.cfi_endproc

	.align	16, 0x90
	.type	show_help_event,@function
show_help_event:                        # @show_help_event
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	kbd_buffer_store_help_event
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	show_help_echo
.LBB18_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	show_help_event, .Lfunc_end18-show_help_event
	.cfi_endproc

	.align	16, 0x90
	.type	popup_selection_callback,@function
popup_selection_callback:               # @popup_selection_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	testb	$1, xg_crazy_callback_abort
	je	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_4
.LBB19_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB19_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, menu_item_selection
.LBB19_4:                               # %if.end.3
	popq	%rbp
	retq
.Lfunc_end19:
	.size	popup_selection_callback, .Lfunc_end19-popup_selection_callback
	.cfi_endproc

	.align	16, 0x90
	.type	menu_position_func,@function
menu_position_func:                     # @menu_position_func
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	x_display_pixel_width
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	callq	x_display_pixel_height
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movq	-48(%rbp), %rax
	movl	8(%rax), %r9d
	addl	-56(%rbp), %r9d
	cmpl	-68(%rbp), %r9d
	jle	.LBB20_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-56(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, (%rax)
.LBB20_2:                               # %if.end
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-52(%rbp), %ecx
	cmpl	-72(%rbp), %ecx
	jle	.LBB20_4
# BB#3:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	addl	-52(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	subl	%ecx, %edx
	movl	%edx, (%rax)
.LBB20_4:                               # %if.end.21
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	menu_position_func, .Lfunc_end20-menu_position_func
	.cfi_endproc

	.align	16, 0x90
	.type	pop_down_menu,@function
pop_down_menu:                          # @pop_down_menu
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
	movl	$0, popup_activated_flag
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pop_down_menu, .Lfunc_end21-pop_down_menu
	.cfi_endproc

	.align	16, 0x90
	.type	popup_widget_loop,@function
popup_widget_loop:                      # @popup_widget_loop
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
	subq	$32, %rsp
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movl	popup_activated_flag, %edi
	addl	$1, %edi
	movl	%edi, popup_activated_flag
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, popup_activated_flag
	je	.LBB22_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	testb	$1, -1(%rbp)
	je	.LBB22_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	x_menu_wait_for_event
.LBB22_4:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	callq	gtk_main_iteration
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB22_1
.LBB22_5:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	popup_widget_loop, .Lfunc_end22-popup_widget_loop
	.cfi_endproc

	.align	16, 0x90
	.type	create_and_show_dialog,@function
create_and_show_dialog:                 # @create_and_show_dialog
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
	subq	$96, %rsp
	movabsq	$.L.str.25, %rax
	movabsq	$dialog_selection_callback, %rcx
	movabsq	$popup_deactivate_callback, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	$0, (%rsp)
	callq	xg_create_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	callq	SPECPDL_INDEX
	movabsq	$pop_down_menu, %rdi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show_all
	movl	$1, %edi
	movq	-24(%rbp), %rsi
	callq	popup_widget_loop
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB23_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	create_and_show_dialog, .Lfunc_end23-create_and_show_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_selection_callback,@function
dialog_selection_callback:              # @dialog_selection_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$-1, %rsi
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, menu_item_selection
.LBB24_2:                               # %if.end
	movl	$0, popup_activated_flag
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dialog_selection_callback, .Lfunc_end24-dialog_selection_callback
	.cfi_endproc

	.type	popup_activated_flag,@object # @popup_activated_flag
	.local	popup_activated_flag
	.comm	popup_activated_flag,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"activate_item"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"menubar"
	.size	.L.str.1, 8

	.type	xg_crazy_callback_abort,@object # @xg_crazy_callback_abort
	.local	xg_crazy_callback_abort
	.comm	xg_crazy_callback_abort,1,1
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Empty menu"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"--"
	.size	.L.str.5, 3

	.type	menu_item_selection,@object # @menu_item_selection
	.local	menu_item_selection
	.comm	menu_item_selection,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Ok"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s"
	.size	.L.str.7, 3

	.type	Smenu_or_popup_active_p,@object # @Smenu_or_popup_active_p
	.data
	.align	8
Smenu_or_popup_active_p:
	.quad	167772160               # 0xa000000
	.quad	Fmenu_or_popup_active_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	0
	.quad	0
	.size	Smenu_or_popup_active_p, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"accelerate-menu"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"emacs_menuitem"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"popup"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Multiple panes in dialog box"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"message"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Submenu in dialog items"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Too many dialog items"
	.size	.L.str.14, 22

	.type	button_names,@object    # @button_names
	.data
	.align	16
button_names:
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.size	button_names, 80

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"button1"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"button2"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"button3"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"button4"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"button5"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"button6"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"button7"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"button8"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"button9"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"button10"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"dialog"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"menu-or-popup-active-p"
	.size	.L.str.26, 23

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"x-menu-bar-open-internal"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"i"
	.size	.L.str.28, 2

	.type	Sx_menu_bar_open_internal,@object # @Sx_menu_bar_open_internal
	.data
	.align	8
Sx_menu_bar_open_internal:
	.quad	167772160               # 0xa000000
	.quad	Fx_menu_bar_open_internal
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	0
	.size	Sx_menu_bar_open_internal, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
