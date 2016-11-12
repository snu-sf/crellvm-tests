	.text
	.file	"gtkutil.bc"
	.globl	xg_display_open
	.align	16, 0x90
	.type	xg_display_open,@function
xg_display_open:                        # @xg_display_open
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	unrequest_sigio
	movq	-8(%rbp), %rdi
	callq	gdk_display_open
	movq	%rax, -24(%rbp)
	callq	request_sigio
	cmpq	$0, gdpy_def
	jne	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, gdpy_def
	callq	gdk_display_manager_get
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_display_manager_set_default_display
.LBB0_3:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# BB#4:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	gdk_x11_display_get_xdisplay
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_6:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xg_display_open, .Lfunc_end0-xg_display_open
	.cfi_endproc

	.globl	xg_display_close
	.align	16, 0x90
	.type	xg_display_close,@function
xg_display_close:                       # @xg_display_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -16(%rbp)
	callq	gdk_display_get_default
	cmpq	-16(%rbp), %rax
	jne	.LBB1_8
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	movq	x_display_list, %rax
	movq	%rax, -24(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB1_5
# BB#4:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -32(%rbp)
	callq	gdk_display_manager_get
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_display_manager_set_default_display
	jmp	.LBB1_7
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_2
.LBB1_7:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, gdpy_def
.LBB1_8:                                # %if.end.7
	movq	-16(%rbp), %rdi
	callq	gdk_display_close
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	xg_display_close, .Lfunc_end1-xg_display_close
	.cfi_endproc

	.globl	xg_create_default_cursor
	.align	16, 0x90
	.type	xg_create_default_cursor,@function
xg_create_default_cursor:               # @xg_create_default_cursor
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
	callq	gdk_x11_lookup_xdisplay
	movl	$68, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	xg_create_default_cursor, .Lfunc_end2-xg_create_default_cursor
	.cfi_endproc

	.globl	xg_check_special_colors
	.align	16, 0x90
	.type	xg_check_special_colors,@function
xg_check_special_colors:                # @xg_check_special_colors
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
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -33(%rbp)
	movq	-24(%rbp), %rsi
	movl	$.L.str, %eax
	movl	%eax, %edi
	movb	%cl, -57(%rbp)          # 1-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -34(%rbp)
	testb	$1, -34(%rbp)
	movb	-57(%rbp), %cl          # 1-byte Reload
	movb	%cl, -58(%rbp)          # 1-byte Spill
	jne	.LBB3_2
# BB#1:                                 # %land.rhs
	movq	-24(%rbp), %rsi
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -58(%rbp)          # 1-byte Spill
.LBB3_2:                                # %land.end
	movb	-58(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -35(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 88(%rcx)
	je	.LBB3_5
# BB#3:                                 # %lor.lhs.false
	testb	$1, -34(%rbp)
	jne	.LBB3_6
# BB#4:                                 # %lor.lhs.false.6
	testb	$1, -35(%rbp)
	jne	.LBB3_6
.LBB3_5:                                # %if.then
	movb	-33(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB3_10
.LBB3_6:                                # %if.end
	callq	block_input
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -48(%rbp)
	testb	$1, -34(%rbp)
	je	.LBB3_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rax
	addq	$84, %rax
	addq	$36, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false
	movq	-48(%rbp), %rax
	addq	$24, %rax
	addq	$36, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB3_9:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movw	4(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 8(%rax)
	movq	-56(%rbp), %rax
	movw	6(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 10(%rax)
	movq	-56(%rbp), %rax
	movw	8(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, %eax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movb	$1, -33(%rbp)
	callq	unblock_input
	movb	-33(%rbp), %dil
	andb	$1, %dil
	movb	%dil, -1(%rbp)
.LBB3_10:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xg_check_special_colors, .Lfunc_end3-xg_check_special_colors
	.cfi_endproc

	.globl	xg_prepare_tooltip
	.align	16, 0x90
	.type	xg_prepare_tooltip,@function
xg_prepare_tooltip:                     # @xg_prepare_tooltip
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movl	$1, -84(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, 208(%rcx)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB4_9
.LBB4_2:                                # %if.end
	callq	block_input
	movl	$988, %edi              # imm = 0x3DC
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gdk_drawable_get_screen
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_settings_get_for_screen
	movabsq	$.L.str.2, %rsi
	leaq	-84(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -84(%rbp)
	je	.LBB4_4
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB4_4:                                # %if.end.15
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_tooltip_set_custom
	movq	-48(%rbp), %rax
	movq	200(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tooltip_set_text
	movq	-48(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	cmpq	$0, -32(%rbp)
	je	.LBB4_6
# BB#5:                                 # %if.then.27
	movl	-96(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB4_6:                                # %if.end.29
	cmpq	$0, -40(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.31
	movl	-92(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB4_8:                                # %if.end.33
	callq	unblock_input
	movb	$1, -1(%rbp)
.LBB4_9:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xg_prepare_tooltip, .Lfunc_end4-xg_prepare_tooltip
	.cfi_endproc

	.globl	xg_show_tooltip
	.align	16, 0x90
	.type	xg_show_tooltip,@function
xg_show_tooltip:                        # @xg_show_tooltip
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 216(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gtk_window_move
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show_all
	callq	unblock_input
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xg_show_tooltip, .Lfunc_end5-xg_show_tooltip
	.cfi_endproc

	.globl	xg_hide_tooltip
	.align	16, 0x90
	.type	xg_hide_tooltip,@function
xg_hide_tooltip:                        # @xg_hide_tooltip
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 216(%rdi)
	je	.LBB6_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	216(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	block_input
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	je	.LBB6_3
# BB#2:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_drawable_get_screen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_settings_get_for_screen
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB6_3:                                # %if.end
	callq	unblock_input
	movb	$1, -9(%rbp)
.LBB6_4:                                # %if.end.14
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	xg_hide_tooltip, .Lfunc_end6-xg_hide_tooltip
	.cfi_endproc

	.globl	xg_clear_under_internal_border
	.align	16, 0x90
	.type	xg_clear_under_internal_border,@function
xg_clear_under_internal_border:         # @xg_clear_under_internal_border
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 332(%rdi)
	jle	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw
	callq	gdk_window_process_all_updates
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	312(%rax), %edx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movl	%ecx, %esi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx         # 4-byte Reload
	callq	x_clear_area
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	332(%rax), %edx
	movq	-8(%rbp), %rax
	movl	316(%rax), %r8d
	movl	%ecx, %esi
	movl	%edx, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	callq	x_clear_area
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	316(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	332(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	312(%rax), %edx
	movq	-8(%rbp), %rax
	movl	332(%rax), %r8d
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-28(%rbp), %ecx         # 4-byte Reload
	callq	x_clear_area
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	312(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	332(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	332(%rax), %esi
	movq	-8(%rbp), %rax
	movl	316(%rax), %r8d
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	callq	x_clear_area
.LBB7_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xg_clear_under_internal_border, .Lfunc_end7-xg_clear_under_internal_border
	.cfi_endproc

	.globl	xg_frame_resized
	.align	16, 0x90
	.type	xg_frame_resized,@function
xg_frame_resized:                       # @xg_frame_resized
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB8_7
# BB#1:                                 # %land.lhs.true
	cmpl	$-1, -16(%rbp)
	jne	.LBB8_7
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 88(%rax)
	je	.LBB8_5
# BB#3:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB8_5
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_window
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %r8
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rbp), %r9          # 8-byte Reload
	callq	gdk_window_get_geometry
	jmp	.LBB8_6
.LBB8_5:                                # %if.else
	jmp	.LBB8_18
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.12
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB8_9
# BB#8:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB8_10
.LBB8_10:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %ecx
	subl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB8_12
# BB#11:                                # %cond.true.22
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB8_13
.LBB8_13:                               # %cond.end.24
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	$1065, %edi             # imm = 0x429
	movl	-44(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	288(%rax), %ecx
	jne	.LBB8_17
# BB#14:                                # %lor.lhs.false
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	292(%rcx), %eax
	jne	.LBB8_17
# BB#15:                                # %lor.lhs.false.34
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	312(%rcx), %eax
	jne	.LBB8_17
# BB#16:                                # %lor.lhs.false.36
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	316(%rcx), %eax
	je	.LBB8_18
.LBB8_17:                               # %if.then.38
	movq	-8(%rbp), %rdi
	callq	xg_clear_under_internal_border
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	change_frame_size
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %r10
	andq	$-8193, %r10            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %r10             # imm = 0x2000
	movq	%r10, 208(%rdi)
	movq	-8(%rbp), %rdi
	callq	cancel_mouse_face
.LBB8_18:                               # %if.end.41
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xg_frame_resized, .Lfunc_end8-xg_frame_resized
	.cfi_endproc

	.globl	xg_frame_set_char_size
	.align	16, 0x90
	.type	xg_frame_set_char_size,@function
xg_frame_set_char_size:                 # @xg_frame_set_char_size
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$30, %rdi
	andq	$3, %rdi
	movl	%edi, %esi
	cmpl	$0, %esi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB9_5
# BB#4:                                 # %cond.true.10
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB9_6
.LBB9_6:                                # %cond.end.12
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	$472, %edi              # imm = 0x1D8
	movl	-64(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	movq	%rax, -32(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	4(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addl	8(%rax), %r8d
	addl	%r8d, %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addl	(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	12(%rax), %r8d
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	addl	16(%rax), %r8d
	addl	%r8d, %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 316(%rax)
	jne	.LBB9_8
# BB#7:                                 # %if.then
	jmp	.LBB9_23
.LBB9_8:                                # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_window_get_size
	movq	-8(%rbp), %rdi
	callq	xg_clear_under_internal_border
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB9_10
# BB#9:                                 # %if.then.41
	callq	xg_get_gdk_scale
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-92(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -44(%rbp)
	movl	-52(%rbp), %eax
	movl	-48(%rbp), %esi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-96(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -48(%rbp)
.LBB9_10:                               # %if.end.44
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	x_wm_set_size_hint
	movl	$473, %edi              # imm = 0x1D9
	movq	-32(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_13
# BB#11:                                # %land.lhs.true
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	288(%rcx), %eax
	jne	.LBB9_13
# BB#12:                                # %if.then.48
	movl	$1067, %edi             # imm = 0x42B
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movslq	-40(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-44(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	callq	list2
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	-128(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
	jmp	.LBB9_18
.LBB9_13:                               # %if.else
	movl	$471, %edi              # imm = 0x1D7
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_16
# BB#14:                                # %land.lhs.true.63
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	292(%rcx), %eax
	jne	.LBB9_16
# BB#15:                                # %if.then.66
	movl	$1068, %edi             # imm = 0x42C
	movq	-8(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movslq	-36(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-48(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	callq	list2
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movl	-164(%rbp), %edx        # 4-byte Reload
	movl	-168(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-48(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.80
	movl	$1069, %edi             # imm = 0x42D
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movslq	-48(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-44(%rbp), %r8
	shlq	$2, %r8
	addq	$2, %r8
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	callq	list2
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movl	-196(%rbp), %edx        # 4-byte Reload
	movl	-200(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_resize
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB9_17:                               # %if.end.95
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.96
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rdi
	callq	cancel_mouse_face
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB9_22
# BB#19:                                # %if.then.105
	callq	gtk_events_pending
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gdk_flush
	movl	$22, %esi
	movq	-8(%rbp), %rdi
	callq	x_wait_for_event
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_21
# BB#20:                                # %if.then.110
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	store_frame_param
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	x_set_fullscreen
.LBB9_21:                               # %if.end.112
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.113
	movl	$1066, %edi             # imm = 0x42A
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%esi, -252(%rbp)        # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	-252(%rbp), %esi        # 4-byte Reload
	movl	-236(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB9_23:                               # %if.end.115
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	xg_frame_set_char_size, .Lfunc_end9-xg_frame_set_char_size
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_gdk_scale,@function
xg_get_gdk_scale:                       # @xg_get_gdk_scale
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
	subq	$32, %rsp
	movabsq	$.L.str.37, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	atol
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -24(%rbp)
	cmpq	-24(%rbp), %rdi
	jge	.LBB10_6
# BB#2:                                 # %if.then.2
	cmpq	$2147483647, -24(%rbp)  # imm = 0x7FFFFFFF
	jge	.LBB10_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB10_8
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB10_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	xg_get_gdk_scale, .Lfunc_end10-xg_get_gdk_scale
	.cfi_endproc

	.globl	x_wm_set_size_hint
	.align	16, 0x90
	.type	x_wm_set_size_hint,@function
x_wm_set_size_hint:                     # @x_wm_set_size_hint
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
	subq	$224, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	-8(%rbp), %rsi
	movl	320(%rsi), %edx
	movl	%edx, -104(%rbp)
	callq	xg_get_gdk_scale
	xorl	%edi, %edi
	movl	%eax, -124(%rbp)
	movq	globals+8, %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB11_3
.LBB11_2:                               # %if.then
	jmp	.LBB11_61
.LBB11_3:                               # %if.end
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$472, %edi              # imm = 0x1D8
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movl	$648, %edi              # imm = 0x288
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_5
# BB#4:                                 # %lor.lhs.false.8
	movl	$470, %edi              # imm = 0x1D6
	movq	-112(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_8
.LBB11_5:                               # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	864(%rax), %rsi
	callq	x_wm_supports
	testb	$1, %al
	jne	.LBB11_7
# BB#6:                                 # %lor.lhs.false.14
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	872(%rax), %rsi
	callq	x_wm_supports
	testb	$1, %al
	jne	.LBB11_7
	jmp	.LBB11_8
.LBB11_7:                               # %if.then.19
	jmp	.LBB11_61
.LBB11_8:                               # %if.end.20
	cmpq	$0, -16(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.22
	movl	$56, %eax
	movl	%eax, %ecx
	leaq	-80(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rdx, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	memset
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	addq	$136, %rcx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movslq	-84(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rcx, 192(%rdx)
	jmp	.LBB11_11
.LBB11_10:                              # %if.else
	movq	-8(%rbp), %rax
	movslq	324(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB11_11:                              # %if.end.30
	movl	$56, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	addq	$136, %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	192(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	orl	$34, %eax
	movl	%eax, -84(%rbp)
	testb	$1, globals+3382
	je	.LBB11_13
# BB#12:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false
	movq	-8(%rbp), %rax
	movl	364(%rax), %ecx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
.LBB11_14:                              # %cond.end
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	testb	$1, globals+3382
	je	.LBB11_16
# BB#15:                                # %cond.true.42
	movl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.43
	movq	-8(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
.LBB11_17:                              # %cond.end.44
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-84(%rbp), %eax
	orl	$8, %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movl	364(%rcx), %eax
	shll	$0, %eax
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB11_19
# BB#18:                                # %cond.true.50
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false.51
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB11_20
.LBB11_20:                              # %cond.end.52
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-8(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movl	12(%rdx), %eax
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	addl	16(%rdx), %eax
	addl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movq	-8(%rbp), %rdx
	movl	368(%rdx), %eax
	shll	$0, %eax
	movq	-8(%rbp), %rdx
	movl	360(%rdx), %ecx
	movq	-8(%rbp), %rdx
	addl	220(%rdx), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$32, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	je	.LBB11_22
# BB#21:                                # %cond.true.73
	movq	-8(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB11_23
.LBB11_22:                              # %cond.false.74
	xorl	%eax, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	jmp	.LBB11_23
.LBB11_23:                              # %cond.end.75
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	-196(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	addl	(%rdx), %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movl	4(%rdx), %eax
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	addl	8(%rdx), %eax
	addl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	cmpl	$0, -100(%rbp)
	jle	.LBB11_25
# BB#24:                                # %if.then.92
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
.LBB11_25:                              # %if.end.93
	cmpl	$0, -96(%rbp)
	jle	.LBB11_27
# BB#26:                                # %if.then.96
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
.LBB11_27:                              # %if.end.98
	movl	-88(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-88(%rbp), %eax
	movl	-100(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	364(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	movq	-8(%rbp), %rdx
	imull	368(%rdx), %ecx
	addl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-84(%rbp), %eax
	orl	$64, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -32(%rbp)
	cmpl	$1, -104(%rbp)
	jne	.LBB11_29
# BB#28:                                # %if.then.111
	movl	$1, -32(%rbp)
	jmp	.LBB11_56
.LBB11_29:                              # %if.else.113
	cmpl	$2, -104(%rbp)
	jne	.LBB11_31
# BB#30:                                # %if.then.116
	movl	$2, -32(%rbp)
	jmp	.LBB11_55
.LBB11_31:                              # %if.else.118
	cmpl	$3, -104(%rbp)
	jne	.LBB11_33
# BB#32:                                # %if.then.121
	movl	$3, -32(%rbp)
	jmp	.LBB11_54
.LBB11_33:                              # %if.else.123
	cmpl	$4, -104(%rbp)
	jne	.LBB11_35
# BB#34:                                # %if.then.126
	movl	$4, -32(%rbp)
	jmp	.LBB11_53
.LBB11_35:                              # %if.else.128
	cmpl	$5, -104(%rbp)
	jne	.LBB11_37
# BB#36:                                # %if.then.131
	movl	$5, -32(%rbp)
	jmp	.LBB11_52
.LBB11_37:                              # %if.else.133
	cmpl	$6, -104(%rbp)
	jne	.LBB11_39
# BB#38:                                # %if.then.136
	movl	$6, -32(%rbp)
	jmp	.LBB11_51
.LBB11_39:                              # %if.else.138
	cmpl	$7, -104(%rbp)
	jne	.LBB11_41
# BB#40:                                # %if.then.141
	movl	$7, -32(%rbp)
	jmp	.LBB11_50
.LBB11_41:                              # %if.else.143
	cmpl	$8, -104(%rbp)
	jne	.LBB11_43
# BB#42:                                # %if.then.146
	movl	$8, -32(%rbp)
	jmp	.LBB11_49
.LBB11_43:                              # %if.else.148
	cmpl	$9, -104(%rbp)
	jne	.LBB11_45
# BB#44:                                # %if.then.151
	movl	$9, -32(%rbp)
	jmp	.LBB11_48
.LBB11_45:                              # %if.else.153
	cmpl	$10, -104(%rbp)
	jne	.LBB11_47
# BB#46:                                # %if.then.156
	movl	$10, -32(%rbp)
.LBB11_47:                              # %if.end.158
	jmp	.LBB11_48
.LBB11_48:                              # %if.end.159
	jmp	.LBB11_49
.LBB11_49:                              # %if.end.160
	jmp	.LBB11_50
.LBB11_50:                              # %if.end.161
	jmp	.LBB11_51
.LBB11_51:                              # %if.end.162
	jmp	.LBB11_52
.LBB11_52:                              # %if.end.163
	jmp	.LBB11_53
.LBB11_53:                              # %if.end.164
	jmp	.LBB11_54
.LBB11_54:                              # %if.end.165
	jmp	.LBB11_55
.LBB11_55:                              # %if.end.166
	jmp	.LBB11_56
.LBB11_56:                              # %if.end.167
	testb	$1, -17(%rbp)
	je	.LBB11_58
# BB#57:                                # %if.then.169
	movl	-84(%rbp), %eax
	andl	$-2, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -84(%rbp)
.LBB11_58:                              # %if.end.171
	movl	-124(%rbp), %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-204(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -64(%rbp)
	movl	-124(%rbp), %eax
	movl	-60(%rbp), %esi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-208(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -60(%rbp)
	movl	-124(%rbp), %eax
	movl	-56(%rbp), %edi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%edi, %eax
	cltd
	movl	-212(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%eax, -56(%rbp)
	movl	-124(%rbp), %eax
	movl	-52(%rbp), %r8d
	movl	%eax, -216(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-216(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	%eax, -52(%rbp)
	movslq	-84(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	384(%r10), %r10
	cmpq	192(%r10), %r9
	jne	.LBB11_60
# BB#59:                                # %lor.lhs.false.185
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	addq	$136, %rcx
	movl	$56, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB11_61
.LBB11_60:                              # %if.then.192
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_window_set_geometry_hints
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	addq	$136, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movslq	-84(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rax, 192(%rdx)
	callq	unblock_input
.LBB11_61:                              # %if.end.205
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_wm_set_size_hint, .Lfunc_end11-x_wm_set_size_hint
	.cfi_endproc

	.globl	xg_win_to_widget
	.align	16, 0x90
	.type	xg_win_to_widget,@function
xg_win_to_widget:                       # @xg_win_to_widget
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_xid_table_lookup_for_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$-1, -120(%rbp)
	callq	gtk_get_event_widget
	movq	%rax, -32(%rbp)
.LBB12_2:                               # %if.end
	callq	unblock_input
	movq	-32(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	xg_win_to_widget, .Lfunc_end12-xg_win_to_widget
	.cfi_endproc

	.globl	xg_create_frame_widgets
	.align	16, 0x90
	.type	xg_create_frame_widgets,@function
xg_create_frame_widgets:                # @xg_create_frame_widgets
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	$0, -64(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movb	440(%rdi), %al
	shrb	$1, %al
	andb	$1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	72(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	gtk_plug_new_for_display
	movq	%rax, -24(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	xorl	%edi, %edi
	callq	gtk_window_new
	movq	%rax, -24(%rbp)
.LBB13_3:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xg_set_screen
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_vbox_new
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	movl	%esi, %edi
	callq	gtk_hbox_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	callq	gtk_fixed_new
	movq	%rax, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_7
# BB#4:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	je	.LBB13_7
# BB#5:                                 # %lor.lhs.false.17
	cmpq	$0, -40(%rbp)
	je	.LBB13_7
# BB#6:                                 # %lor.lhs.false.19
	cmpq	$0, -48(%rbp)
	jne	.LBB13_16
.LBB13_7:                               # %if.then.21
	cmpq	$0, -24(%rbp)
	je	.LBB13_9
# BB#8:                                 # %if.then.23
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB13_9:                               # %if.end.24
	cmpq	$0, -32(%rbp)
	je	.LBB13_11
# BB#10:                                # %if.then.26
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB13_11:                              # %if.end.27
	cmpq	$0, -40(%rbp)
	je	.LBB13_13
# BB#12:                                # %if.then.29
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB13_13:                              # %if.end.30
	cmpq	$0, -48(%rbp)
	je	.LBB13_15
# BB#14:                                # %if.then.32
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB13_15:                              # %if.end.33
	callq	unblock_input
	movb	$0, -1(%rbp)
	jmp	.LBB13_32
.LBB13_16:                              # %if.end.34
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_name
	movabsq	$.L.str.6, %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-48(%rbp), %rdi
	movq	globals+2856, %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	SSDATA
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_name
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB13_18
# BB#17:                                # %if.then.40
	movl	$988, %edi              # imm = 0x3DC
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -64(%rbp)
	jmp	.LBB13_21
.LBB13_18:                              # %if.else.45
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_20
# BB#19:                                # %if.then.49
	movl	$988, %edi              # imm = 0x3DC
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -64(%rbp)
.LBB13_20:                              # %if.end.54
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.55
	cmpq	$0, -64(%rbp)
	je	.LBB13_23
# BB#22:                                # %if.then.57
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
.LBB13_23:                              # %if.end.60
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 80(%rcx)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 88(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 96(%rcx)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 104(%rcx)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_has_window
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$5, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB13_25
# BB#24:                                # %if.then.79
	movq	-16(%rbp), %rdi
	callq	update_frame_tool_bar
.LBB13_25:                              # %if.end.80
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_double_buffered
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	globals+2856, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	globals+2848, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_window_set_wmclass
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$delete_cb, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	xg_set_geometry
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_gravity
	movl	$194310, %esi           # imm = 0x2F706
	movq	-16(%rbp), %rcx
	movl	%eax, 320(%rcx)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_add_events
	movq	-48(%rbp), %rdi
	callq	gtk_widget_realize
	cmpq	$0, -48(%rbp)
	je	.LBB13_28
# BB#26:                                # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB13_28
# BB#27:                                # %cond.true
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB13_29
.LBB13_28:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB13_29
.LBB13_29:                              # %cond.end
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	472(%rax), %rdx
	callq	xg_set_widget_bg
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_modifier_style
	movabsq	$.L.str.8, %rdi
	movq	%rax, -56(%rbp)
	callq	g_strdup
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_widget_modify_style
	movabsq	$.L.str.9, %rsi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 200(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 208(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 216(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_tooltip_text
	movabsq	$.L.str.10, %rsi
	movabsq	$qttip_cb, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_settings_get_for_screen
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$8, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$style_changed_cb, %rcx
	movq	%rax, %rdi
	movl	%r9d, %edx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-264(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handler_find
	cmpq	$0, %rax
	jne	.LBB13_31
# BB#30:                                # %if.then.114
	movl	$80, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gdk_screen_get_display
	movabsq	$.L.str.11, %rsi
	movabsq	$style_changed_cb, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_data
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB13_31:                              # %if.end.118
	callq	unblock_input
	movb	$1, -1(%rbp)
.LBB13_32:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end13:
	.size	xg_create_frame_widgets, .Lfunc_end13-xg_create_frame_widgets
	.cfi_endproc

	.align	16, 0x90
	.type	xg_set_screen,@function
xg_set_screen:                          # @xg_set_screen
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	cmpq	gdk_display, %rsi
	je	.LBB14_12
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_display_get_default_screen
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.14
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.16
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_menu_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_set_screen
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.19
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
.LBB14_11:                              # %if.end.22
	jmp	.LBB14_12
.LBB14_12:                              # %if.end.23
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xg_set_screen, .Lfunc_end14-xg_set_screen
	.cfi_endproc

	.globl	update_frame_tool_bar
	.align	16, 0x90
	.type	update_frame_tool_bar,@function
update_frame_tool_bar:                  # @update_frame_tool_bar
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
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 88(%rdi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_149
.LBB15_2:                               # %if.end
	callq	block_input
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2400, %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB15_3
	jmp	.LBB15_4
.LBB15_3:                               # %if.then.4
	movq	globals+2400, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	globals+2400, %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB15_11
.LBB15_4:                               # %if.else
	movq	globals+2400, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_10
# BB#5:                                 # %if.then.9
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2400, %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB15_6
	jmp	.LBB15_7
.LBB15_6:                               # %if.then.11
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB15_7:                               # %if.end.16
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2400, %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB15_8
	jmp	.LBB15_9
.LBB15_8:                               # %if.then.19
	movq	globals+2400, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
.LBB15_9:                               # %if.end.25
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.26
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.27
	xorl	%eax, %eax
	movl	-28(%rbp), %ecx
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_13
# BB#12:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB15_14
.LBB15_13:                              # %cond.false
	movl	-28(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB15_14:                              # %cond.end
	movl	-272(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	$4, %eax
	cmpl	%eax, %ecx
	jle	.LBB15_16
# BB#15:                                # %cond.true.35
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB15_17
.LBB15_16:                              # %cond.false.36
	movl	-32(%rbp), %eax
	subl	$4, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB15_17:                              # %cond.end.38
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, 120(%rcx)
	jne	.LBB15_19
# BB#18:                                # %if.then.41
	movq	-8(%rbp), %rdi
	callq	xg_create_tool_bar
.LBB15_19:                              # %if.end.42
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_direction
	movl	%eax, -52(%rbp)
	callq	Ftool_bar_get_system_style
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_icon_theme_get_for_screen
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_28
# BB#20:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_28
# BB#21:                                # %land.lhs.true.64
	movq	-80(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	228(%rax), %ecx
	jne	.LBB15_28
# BB#22:                                # %land.lhs.true.67
	movq	-80(%rbp), %rax
	movl	20(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB15_28
# BB#23:                                # %land.lhs.true.71
	movq	-80(%rbp), %rax
	movl	24(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB15_28
# BB#24:                                # %land.lhs.true.75
	movq	-80(%rbp), %rax
	movl	28(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB15_28
# BB#25:                                # %land.lhs.true.79
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_28
# BB#26:                                # %land.lhs.true.85
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_28
# BB#27:                                # %if.then.92
	callq	unblock_input
	jmp	.LBB15_149
.LBB15_28:                              # %if.end.93
	movl	$911, %edi              # imm = 0x38F
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	228(%rax), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	-28(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 20(%rax)
	movl	-32(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 24(%rax)
	movl	-52(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$212, %edi
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	andb	$1, %sil
	movb	%sil, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %sil
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%sil, -353(%rbp)        # 1-byte Spill
	je	.LBB15_30
# BB#29:                                # %lor.rhs
	movb	-65(%rbp), %al
	movb	%al, -353(%rbp)         # 1-byte Spill
.LBB15_30:                              # %lor.end
	movb	-353(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -66(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB15_31:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_75 Depth 2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jge	.LBB15_131
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -97(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -98(%rbp)
	movl	$0, -116(%rbp)
	movq	$0, -128(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$537, %edi              # imm = 0x219
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -185(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_35
# BB#33:                                # %lor.lhs.false
                                        #   in Loop: Header=BB15_31 Depth=1
	testb	$1, -185(%rbp)
	je	.LBB15_36
# BB#34:                                # %land.lhs.true.147
                                        #   in Loop: Header=BB15_31 Depth=1
	testb	$1, -66(%rbp)
	je	.LBB15_36
.LBB15_35:                              # %cond.true.150
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB15_40
.LBB15_36:                              # %cond.false.151
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_37
	jmp	.LBB15_38
.LBB15_37:                              # %cond.true.159
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB15_39
.LBB15_38:                              # %cond.false.166
                                        #   in Loop: Header=BB15_31 Depth=1
	movabsq	$.L.str.29, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB15_39
.LBB15_39:                              # %cond.end.167
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB15_40:                              # %cond.end.169
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_get_nth_item
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %esi
	addl	$6, %esi
	movslq	%esi, %rsi
	callq	AREF
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_54
# BB#41:                                # %if.then.182
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_50
# BB#42:                                # %lor.lhs.false.185
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gtk_separator_tool_item_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB15_44
# BB#43:                                # %if.then.188
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$0, -220(%rbp)
	jmp	.LBB15_49
.LBB15_44:                              # %if.else.189
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_47
# BB#45:                                # %land.lhs.true.191
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB15_47
# BB#46:                                # %if.then.195
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1, -220(%rbp)
	jmp	.LBB15_48
.LBB15_47:                              # %if.else.196
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB15_48:                              # %if.end.198
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_49
.LBB15_49:                              # %if.end.199
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	jne	.LBB15_53
.LBB15_50:                              # %if.then.201
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_52
# BB#51:                                # %if.then.203
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
.LBB15_52:                              # %if.end.208
                                        #   in Loop: Header=BB15_31 Depth=1
	callq	gtk_separator_tool_item_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_toolbar_insert
.LBB15_53:                              # %if.end.212
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_130
.LBB15_54:                              # %if.end.213
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_64
# BB#55:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)
	callq	gtk_separator_tool_item_get_type
	movq	%rax, -240(%rbp)
	cmpq	$0, -232(%rbp)
	jne	.LBB15_57
# BB#56:                                # %if.then.224
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$0, -244(%rbp)
	jmp	.LBB15_62
.LBB15_57:                              # %if.else.225
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_60
# BB#58:                                # %land.lhs.true.228
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-232(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-240(%rbp), %rax
	jne	.LBB15_60
# BB#59:                                # %if.then.233
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1, -244(%rbp)
	jmp	.LBB15_61
.LBB15_60:                              # %if.else.234
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-232(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -244(%rbp)
.LBB15_61:                              # %if.end.236
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_62
.LBB15_62:                              # %if.end.237
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB15_64
# BB#63:                                # %if.then.240
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
	movq	$0, -48(%rbp)
.LBB15_64:                              # %if.end.245
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_66
# BB#65:                                # %if.then.247
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -176(%rbp)
.LBB15_66:                              # %if.end.254
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	valid_image_p
	testb	$1, %al
	jne	.LBB15_70
# BB#67:                                # %if.then.261
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_69
# BB#68:                                # %if.then.263
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
.LBB15_69:                              # %if.end.268
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_130
.LBB15_70:                              # %if.end.269
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rdi
	callq	file_for_image
	xorl	%edi, %edi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_73
# BB#71:                                # %land.lhs.true.274
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1050, %edi             # imm = 0x41A
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_73
# BB#72:                                # %if.then.280
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1050, %edi             # imm = 0x41A
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -144(%rbp)
.LBB15_73:                              # %if.end.283
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_85
# BB#74:                                # %if.then.288
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB15_75:                              # %for.cond.290
                                        #   Parent Loop BB15_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-256(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB15_84
# BB#76:                                # %for.body.295
                                        #   in Loop: Header=BB15_75 Depth=2
	xorl	%edi, %edi
	movq	-256(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_82
# BB#77:                                # %land.lhs.true.299
                                        #   in Loop: Header=BB15_75 Depth=2
	movq	-256(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_78
	jmp	.LBB15_82
.LBB15_78:                              # %if.then.304
                                        #   in Loop: Header=BB15_75 Depth=2
	movq	-256(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SSDATA
	leaq	-160(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_icon_from_name
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB15_80
# BB#79:                                # %lor.lhs.false.310
                                        #   in Loop: Header=BB15_75 Depth=2
	cmpq	$0, -160(%rbp)
	je	.LBB15_81
.LBB15_80:                              # %if.then.312
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_84
.LBB15_81:                              # %if.end.313
                                        #   in Loop: Header=BB15_75 Depth=2
	jmp	.LBB15_82
.LBB15_82:                              # %if.end.314
                                        #   in Loop: Header=BB15_75 Depth=2
	jmp	.LBB15_83
.LBB15_83:                              # %for.inc
                                        #   in Loop: Header=BB15_75 Depth=2
	movq	-256(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB15_75
.LBB15_84:                              # %for.end
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_88
.LBB15_85:                              # %if.else.318
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_86
	jmp	.LBB15_87
.LBB15_86:                              # %if.then.320
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-144(%rbp), %rdi
	callq	SSDATA
	leaq	-160(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	find_icon_from_name
	movq	%rax, -152(%rbp)
.LBB15_87:                              # %if.end.323
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_88
.LBB15_88:                              # %if.end.324
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -152(%rbp)
	jne	.LBB15_90
# BB#89:                                # %lor.lhs.false.326
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB15_91
.LBB15_90:                              # %if.then.328
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_toolbar_get_icon_size
	movl	%eax, -116(%rbp)
.LBB15_91:                              # %if.end.330
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -152(%rbp)
	jne	.LBB15_113
# BB#92:                                # %land.lhs.true.333
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -160(%rbp)
	jne	.LBB15_113
# BB#93:                                # %if.then.336
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpl	$2, -52(%rbp)
	jne	.LBB15_97
# BB#94:                                # %land.lhs.true.339
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -12(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_97
# BB#95:                                # %land.lhs.true.348
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-168(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB15_96
	jmp	.LBB15_97
.LBB15_96:                              # %if.then.351
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	find_rtl_image
	movq	%rax, -136(%rbp)
.LBB15_97:                              # %if.end.353
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB15_98
	jmp	.LBB15_102
.LBB15_98:                              # %if.then.355
                                        #   in Loop: Header=BB15_31 Depth=1
	testb	$1, -97(%rbp)
	je	.LBB15_100
# BB#99:                                # %if.then.357
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movb	-98(%rbp), %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB15_101
.LBB15_100:                             # %if.else.361
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$3, %eax
	movl	$2, %ecx
	movb	-98(%rbp), %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movl	%eax, -104(%rbp)
.LBB15_101:                             # %if.end.365
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-136(%rbp), %rdi
	movslq	-104(%rbp), %rsi
	callq	AREF
	movq	%rax, -136(%rbp)
	jmp	.LBB15_103
.LBB15_102:                             # %if.else.368
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$-1, -104(%rbp)
.LBB15_103:                             # %if.end.369
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-8(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	lookup_image
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jl	.LBB15_106
# BB#104:                               # %land.lhs.true.373
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB15_106
# BB#105:                               # %cond.true.376
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB15_107
.LBB15_106:                             # %cond.false.379
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB15_107
.LBB15_107:                             # %cond.end.380
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	prepare_image_for_display
	movq	-128(%rbp), %rax
	testb	$1, 160(%rax)
	jne	.LBB15_109
# BB#108:                               # %lor.lhs.false.384
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB15_112
.LBB15_109:                             # %if.then.387
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_111
# BB#110:                               # %if.then.389
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
.LBB15_111:                             # %if.end.394
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_130
.LBB15_112:                             # %if.end.395
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_113
.LBB15_113:                             # %if.end.396
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB15_116
# BB#114:                               # %land.lhs.true.398
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-176(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-160(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-200(%rbp), %r8
	movb	-66(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r9d
	callq	xg_tool_item_stale_p
	testb	$1, %al
	jne	.LBB15_115
	jmp	.LBB15_116
.LBB15_115:                             # %if.then.402
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
	movq	$0, -48(%rbp)
.LBB15_116:                             # %if.end.407
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB15_129
# BB#117:                               # %if.then.410
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	$910, %edi              # imm = 0x38E
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_119
# BB#118:                               # %if.then.415
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	$0, -264(%rbp)
	jmp	.LBB15_126
.LBB15_119:                             # %if.else.416
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB15_121
# BB#120:                               # %if.then.418
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-152(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gtk_image_new_from_stock
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	xstrdup
	movabsq	$.L.str.30, %rsi
	movabsq	$xfree, %rcx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	jmp	.LBB15_125
.LBB15_121:                             # %if.else.422
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB15_123
# BB#122:                               # %if.then.424
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-160(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gtk_image_new_from_icon_name
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-160(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	xstrdup
	movabsq	$.L.str.31, %rsi
	movabsq	$xfree, %rcx
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	jmp	.LBB15_124
.LBB15_123:                             # %if.else.428
                                        #   in Loop: Header=BB15_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	callq	xg_get_image_for_pixmap
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	-128(%rbp), %rcx
	movq	16(%rcx), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB15_124:                             # %if.end.433
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_125
.LBB15_125:                             # %if.end.434
                                        #   in Loop: Header=BB15_31 Depth=1
	jmp	.LBB15_126
.LBB15_126:                             # %if.end.435
                                        #   in Loop: Header=BB15_31 Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB15_128
# BB#127:                               # %if.then.437
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
.LBB15_128:                             # %if.end.440
                                        #   in Loop: Header=BB15_31 Depth=1
	leaq	-176(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-200(%rbp), %rcx
	movl	-12(%rbp), %r8d
	movb	-66(%rbp), %al
	movb	-65(%rbp), %r9b
	andb	$1, %al
	andb	$1, %r9b
	movzbl	%al, %r10d
	movb	%r9b, -641(%rbp)        # 1-byte Spill
	movl	%r10d, %r9d
	movb	-641(%rbp), %al         # 1-byte Reload
	movzbl	%al, %r10d
	movl	%r10d, (%rsp)
	callq	xg_make_tool_item
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_toolbar_insert
.LBB15_129:                             # %if.end.446
                                        #   in Loop: Header=BB15_31 Depth=1
	movq	-176(%rbp), %rdi
	movb	-97(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
	movl	-16(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -16(%rbp)
.LBB15_130:                             # %for.inc.450
                                        #   in Loop: Header=BB15_31 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_31
.LBB15_131:                             # %for.end.452
	jmp	.LBB15_132
.LBB15_132:                             # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_get_nth_item
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_134
# BB#133:                               # %if.then.457
                                        #   in Loop: Header=BB15_132 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
.LBB15_134:                             # %if.end.462
                                        #   in Loop: Header=BB15_132 Depth=1
	jmp	.LBB15_135
.LBB15_135:                             # %do.cond
                                        #   in Loop: Header=BB15_132 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB15_132
# BB#136:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB15_148
# BB#137:                               # %if.then.468
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB15_139
# BB#138:                               # %if.then.469
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rsi
	callq	xg_pack_tool_bar
.LBB15_139:                             # %if.end.470
	movq	-24(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_show_all
	movq	-8(%rbp), %rdi
	callq	xg_update_tool_bar_sizes
	testb	$1, %al
	jne	.LBB15_140
	jmp	.LBB15_147
.LBB15_140:                             # %if.then.473
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$35, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -689(%rbp)         # 1-byte Spill
	je	.LBB15_146
# BB#141:                               # %land.lhs.true.480
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$37, %rdx
	andq	$1, %rdx
	testq	$1, %rdx
	movb	%cl, -689(%rbp)         # 1-byte Spill
	jne	.LBB15_146
# BB#142:                               # %land.lhs.true.485
	movl	$901, %edi              # imm = 0x385
	movq	globals+2984, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB15_145
# BB#143:                               # %lor.lhs.false.489
	xorl	%eax, %eax
	movb	%al, %cl
	movq	globals+2984, %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -689(%rbp)         # 1-byte Spill
	jne	.LBB15_146
# BB#144:                               # %land.lhs.true.494
	movl	$923, %edi              # imm = 0x39B
	callq	builtin_lisp_symbol
	movq	globals+2984, %rsi
	movq	%rax, %rdi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-712(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -689(%rbp)         # 1-byte Spill
	je	.LBB15_146
.LBB15_145:                             # %land.rhs
	movl	$472, %edi              # imm = 0x1D8
	movq	-8(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_frame_param
	xorl	%edi, %edi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -689(%rbp)         # 1-byte Spill
.LBB15_146:                             # %land.end
	movb	-689(%rbp), %al         # 1-byte Reload
	movl	$979, %edi              # imm = 0x3D3
	movl	$2, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -268(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	-744(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, %edx
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$923, %edi              # imm = 0x39B
	movq	-8(%rbp), %rax
	movl	-268(%rbp), %ecx
	movl	%ecx, -748(%rbp)        # 4-byte Spill
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	-748(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB15_147:                             # %if.end.509
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$36, %rax
	andq	$1, %rax
	movb	%al, %cl
	movq	-8(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	movq	208(%rax), %rdi
	shlq	$37, %rsi
	movabsq	$-137438953473, %r8     # imm = 0xFFFFFFDFFFFFFFFF
	andq	%r8, %rdi
	orq	%rsi, %rdi
	movq	%rdi, 208(%rax)
.LBB15_148:                             # %if.end.518
	callq	unblock_input
.LBB15_149:                             # %return
	addq	$768, %rsp              # imm = 0x300
	popq	%rbp
	retq
.Lfunc_end15:
	.size	update_frame_tool_bar, .Lfunc_end15-update_frame_tool_bar
	.cfi_endproc

	.align	16, 0x90
	.type	delete_cb,@function
delete_cb:                              # @delete_cb
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	delete_cb, .Lfunc_end16-delete_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_set_geometry,@function
xg_set_geometry:                        # @xg_set_geometry
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movslq	324(%rdi), %rdi
	andq	$5, %rdi
	cmpq	$0, %rdi
	je	.LBB17_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	andl	$16, %ecx
	movl	%ecx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	308(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	324(%rax), %ecx
	andl	$32, %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then.6
	xorl	%eax, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB17_3:                               # %if.end
	cmpl	$0, -24(%rbp)
	je	.LBB17_5
# BB#4:                                 # %if.then.8
	xorl	%eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB17_5:                               # %if.end.10
	movabsq	$.L.str.38, %rsi
	movl	$43, %eax
	movl	$45, %ecx
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movl	312(%rdx), %edx
	movq	-8(%rbp), %r8
	movl	316(%r8), %r9d
	cmpl	$0, -16(%rbp)
	movl	%eax, %r10d
	cmovnel	%ecx, %r10d
	movl	-12(%rbp), %r11d
	cmpl	$0, -24(%rbp)
	cmovnel	%ecx, %eax
	movl	-20(%rbp), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	%eax, (%rsp)
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movb	$0, %al
	callq	sprintf
	movabsq	$.L.str.39, %rdi
	movl	$19, %esi
	movabsq	$my_log_handler, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_log_set_handler
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_parse_geometry
	cmpl	$0, %eax
	jne	.LBB17_7
# BB#6:                                 # %if.then.20
	movabsq	$.L.str.40, %rsi
	leaq	-80(%rbp), %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB17_7:                               # %if.end.23
	movabsq	$.L.str.39, %rdi
	movl	-84(%rbp), %esi
	callq	g_log_remove_handler
.LBB17_8:                               # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	xg_set_geometry, .Lfunc_end17-xg_set_geometry
	.cfi_endproc

	.align	16, 0x90
	.type	xg_set_widget_bg,@function
xg_set_widget_bg:                       # @xg_set_widget_bg
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_colormap
	leaq	-40(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gdk_colormap_query_color
	xorl	%esi, %esi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_modify_bg
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	xg_set_widget_bg, .Lfunc_end18-xg_set_widget_bg
	.cfi_endproc

	.align	16, 0x90
	.type	qttip_cb,@function
qttip_cb:                               # @qttip_cb
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	cmpq	$0, 200(%rdi)
	jne	.LBB19_18
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movl	$80, %edx
	movl	%edx, %esi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	%rcx, 200(%rdi)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.29, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	208(%rcx), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tooltip_set_custom
	movq	-56(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB19_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB19_17
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_label_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB19_5
# BB#4:                                 # %if.then.23
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	$0, -108(%rbp)
	jmp	.LBB19_10
.LBB19_5:                               # %if.else
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB19_8
# BB#7:                                 # %if.then.27
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	$1, -108(%rbp)
	jmp	.LBB19_9
.LBB19_8:                               # %if.else.28
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB19_9:                               # %if.end
                                        #   in Loop: Header=BB19_2 Depth=1
	jmp	.LBB19_10
.LBB19_10:                              # %if.end.30
                                        #   in Loop: Header=BB19_2 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB19_12
# BB#11:                                # %if.then.32
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
.LBB19_12:                              # %if.end.35
                                        #   in Loop: Header=BB19_2 Depth=1
	jmp	.LBB19_13
.LBB19_13:                              # %for.inc
                                        #   in Loop: Header=BB19_2 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB19_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB19_16
.LBB19_15:                              # %cond.false
                                        #   in Loop: Header=BB19_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB19_16
.LBB19_16:                              # %cond.end
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB19_2
.LBB19_17:                              # %for.end
	movq	-72(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.29, %rsi
	movq	-56(%rbp), %rdi
	movq	216(%rdi), %rdi
	callq	gtk_window_set_title
	movq	-56(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_realize
	movq	-56(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_realize
	movabsq	$.L.str.44, %rsi
	movabsq	$hierarchy_ch_cb, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-48(%rbp), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB19_18:                              # %if.end.44
	xorl	%eax, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	qttip_cb, .Lfunc_end19-qttip_cb
	.cfi_endproc

	.align	16, 0x90
	.type	style_changed_cb,@function
style_changed_cb:                       # @style_changed_cb
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_display_get_name
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	gdk_x11_display_get_xdisplay
	xorl	%esi, %esi
	movl	$56, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %rdi
	movq	%rax, -104(%rbp)
	callq	memset
	movl	-80(%rbp), %ecx
	andl	$-65536, %ecx           # imm = 0xFFFFFFFFFFFF0000
	orl	$26, %ecx
	movl	%ecx, -80(%rbp)
	movq	-96(%rbp), %rdi
	callq	build_string
	movabsq	$.L.str.45, %rdi
	movq	%rax, -40(%rbp)
	callq	intern
	leaq	-80(%rbp), %rdi
	movq	%rax, -32(%rbp)
	callq	kbd_buffer_store_event
	callq	update_theme_scrollbar_width
	callq	update_theme_scrollbar_height
	cmpq	$0, -104(%rbp)
	je	.LBB20_12
# BB#1:                                 # %if.then
	movq	Vframe_list, %rax
	movq	%rax, -112(%rbp)
.LBB20_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	jne	.LBB20_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	$1, %al
	movq	-112(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB20_4:                               # %land.end
                                        #   in Loop: Header=BB20_2 Depth=1
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB20_5
	jmp	.LBB20_11
.LBB20_5:                               # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-120(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB20_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-128(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB20_9
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-128(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB20_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-128(%rbp), %rdi
	callq	x_set_scroll_bar_default_width
	movq	-128(%rbp), %rdi
	callq	x_set_scroll_bar_default_height
	movq	-128(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	288(%rax), %esi
	movq	-128(%rbp), %rax
	movl	292(%rax), %edx
	callq	xg_frame_set_char_size
.LBB20_9:                               # %if.end
                                        #   in Loop: Header=BB20_2 Depth=1
	jmp	.LBB20_10
.LBB20_10:                              # %for.inc
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-112(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB20_2
.LBB20_11:                              # %for.end
	jmp	.LBB20_12
.LBB20_12:                              # %if.end.17
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	style_changed_cb, .Lfunc_end20-style_changed_cb
	.cfi_endproc

	.globl	xg_free_frame_widgets
	.align	16, 0x90
	.type	xg_free_frame_widgets,@function
xg_free_frame_widgets:                  # @xg_free_frame_widgets
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB21_8
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB21_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB21_5
# BB#4:                                 # %if.then.19
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_destroy
.LBB21_5:                               # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB21_7
# BB#6:                                 # %if.then.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
.LBB21_7:                               # %if.end.26
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.27
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	xg_free_frame_widgets, .Lfunc_end21-xg_free_frame_widgets
	.cfi_endproc

	.globl	xg_set_background_color
	.align	16, 0x90
	.type	xg_set_background_color,@function
xg_set_background_color:                # @xg_set_background_color
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 88(%rsi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	472(%rax), %rdx
	callq	xg_set_widget_bg
	callq	unblock_input
.LBB22_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	xg_set_background_color, .Lfunc_end22-xg_set_background_color
	.cfi_endproc

	.globl	xg_set_frame_icon
	.align	16, 0x90
	.type	xg_set_frame_icon,@function
xg_set_frame_icon:                      # @xg_set_frame_icon
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	xg_get_pixbuf_from_pix_and_mask
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_icon
.LBB23_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	xg_set_frame_icon, .Lfunc_end23-xg_set_frame_icon
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_pixbuf_from_pix_and_mask,@function
xg_get_pixbuf_from_pix_and_mask:        # @xg_get_pixbuf_from_pix_and_mask
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	cmpl	$8, 748(%rdx)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB24_24
.LBB24_2:                               # %if.end
	leaq	-56(%rbp), %rdx
	leaq	-44(%rbp), %rax
	leaq	-60(%rbp), %r9
	leaq	-64(%rbp), %rcx
	leaq	-72(%rbp), %rsi
	leaq	-68(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	movq	-24(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, %r8
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-136(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	callq	XGetGeometry
	cmpl	$24, -68(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB24_4
# BB#3:                                 # %if.then.5
	movq	$0, -8(%rbp)
	jmp	.LBB24_24
.LBB24_4:                               # %if.end.6
	xorl	%eax, %eax
	movq	$-1, %rcx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	$-1, (%rsp)
	movl	$1, 8(%rsp)
	callq	XGetImage
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB24_23
# BB#5:                                 # %if.then.12
	cmpq	$0, -32(%rbp)
	jne	.LBB24_7
# BB#6:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false
	xorl	%eax, %eax
	movq	$-1, %rcx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	$-1, (%rsp)
	movl	$1, 8(%rsp)
	callq	XGetImage
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB24_8:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%rax, -88(%rbp)
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	callq	gdk_pixbuf_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB24_20
# BB#9:                                 # %if.then.21
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_pixels
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_get_rowstride
	movl	-60(%rbp), %ecx
	shll	$2, %ecx
	subl	%ecx, %eax
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB24_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_12 Depth 2
	movl	-104(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jae	.LBB24_19
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	$0, -108(%rbp)
.LBB24_12:                              # %for.cond.26
                                        #   Parent Loop BB24_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jae	.LBB24_17
# BB#13:                                # %for.body.28
                                        #   in Loop: Header=BB24_12 Depth=2
	movq	-80(%rbp), %rax
	movq	104(%rax), %rax
	movq	-80(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	*%rax
	xorl	%edx, %edx
	movb	%dl, %cl
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	shrq	$16, %rax
	andq	$255, %rax
	movb	%al, %r8b
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%r8b, (%rax)
	movq	-120(%rbp), %rax
	shrq	$8, %rax
	andq	$255, %rax
	movb	%al, %r8b
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%r8b, (%rax)
	movq	-120(%rbp), %rax
	andq	$255, %rax
	movb	%al, %r8b
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%r8b, (%rax)
	cmpq	$0, -88(%rbp)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	je	.LBB24_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB24_12 Depth=2
	movq	-88(%rbp), %rax
	movq	104(%rax), %rax
	movq	-88(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-104(%rbp), %edx
	callq	*%rax
	cmpq	$0, %rax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -185(%rbp)         # 1-byte Spill
.LBB24_15:                              # %land.end
                                        #   in Loop: Header=BB24_12 Depth=2
	movb	-185(%rbp), %al         # 1-byte Reload
	movl	$255, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movb	%cl, %al
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%al, (%rsi)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB24_12 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB24_12
.LBB24_17:                              # %for.end
                                        #   in Loop: Header=BB24_10 Depth=1
	jmp	.LBB24_18
.LBB24_18:                              # %for.inc.46
                                        #   in Loop: Header=BB24_10 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movq	-96(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -96(%rbp)
	jmp	.LBB24_10
.LBB24_19:                              # %for.end.48
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.49
	cmpq	$0, -88(%rbp)
	je	.LBB24_22
# BB#21:                                # %if.then.51
	movq	-88(%rbp), %rax
	movq	96(%rax), %rax
	movq	-88(%rbp), %rdi
	callq	*%rax
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB24_22:                              # %if.end.54
	movq	-80(%rbp), %rax
	movq	96(%rax), %rax
	movq	-80(%rbp), %rdi
	callq	*%rax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB24_23:                              # %if.end.58
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB24_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	xg_get_pixbuf_from_pix_and_mask, .Lfunc_end24-xg_get_pixbuf_from_pix_and_mask
	.cfi_endproc

	.globl	xg_uses_old_file_dialog
	.align	16, 0x90
	.type	xg_uses_old_file_dialog,@function
xg_uses_old_file_dialog:                # @xg_uses_old_file_dialog
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
	movb	globals+3444, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	xg_uses_old_file_dialog, .Lfunc_end25-xg_uses_old_file_dialog
	.cfi_endproc

	.globl	xg_get_file_name
	.align	16, 0x90
	.type	xg_get_file_name,@function
xg_get_file_name:                       # @xg_get_file_name
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
	subq	$80, %rsp
	movb	%r8b, %al
	movb	%cl, %r9b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r9b
	movb	%r9b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	callq	xg_uses_old_file_dialog
	testb	$1, %al
	jne	.LBB26_1
	jmp	.LBB26_2
.LBB26_1:                               # %if.then
	leaq	-64(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movb	-26(%rbp), %cl
	andb	$1, %al
	andb	$1, %cl
	movzbl	%al, %r8d
	movb	%cl, -65(%rbp)          # 1-byte Spill
	movl	%r8d, %ecx
	movb	-65(%rbp), %al          # 1-byte Reload
	movzbl	%al, %r8d
	callq	xg_get_file_with_selection
	movq	%rax, -40(%rbp)
	jmp	.LBB26_3
.LBB26_2:                               # %if.else
	leaq	-64(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movb	-26(%rbp), %cl
	andb	$1, %al
	andb	$1, %cl
	movzbl	%al, %r8d
	movb	%cl, -66(%rbp)          # 1-byte Spill
	movl	%r8d, %ecx
	movb	-66(%rbp), %al          # 1-byte Reload
	movzbl	%al, %r8d
	callq	xg_get_file_with_chooser
	movq	%rax, -40(%rbp)
.LBB26_3:                               # %if.end
	movabsq	$.L.str.13, %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	xg_dialog_run
	movl	%eax, -52(%rbp)
	cmpl	$-5, -52(%rbp)
	jne	.LBB26_5
# BB#4:                                 # %if.then.8
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB26_5:                               # %if.end.10
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	xg_get_file_name, .Lfunc_end26-xg_get_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_file_with_selection,@function
xg_get_file_with_selection:             # @xg_get_file_with_selection
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
	subq	$64, %rsp
	movb	%r8b, %al
	movb	%cl, %r10b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r10b
	movb	%r10b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_file_selection_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_selection_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_file_selection_set_filename
.LBB27_2:                               # %if.end
	testb	$1, -25(%rbp)
	je	.LBB27_4
# BB#3:                                 # %if.then.5
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-56(%rbp), %rdi
	callq	gtk_file_selection_hide_fileop_buttons
.LBB27_4:                               # %if.end.6
	movabsq	$xg_get_file_name_from_selector, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	xg_get_file_with_selection, .Lfunc_end27-xg_get_file_with_selection
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_file_with_chooser,@function
xg_get_file_with_chooser:               # @xg_get_file_with_chooser
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
	subq	$1408, %rsp             # imm = 0x580
	movb	%r8b, %al
	movb	%cl, %r10b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r10b
	movb	%r10b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	callq	gtk_window_get_type
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rax, -1112(%rbp)
	movb	-25(%rbp), %r10b
	testb	$1, %r10b
	cmovnel	%r8d, %ecx
	movl	%ecx, -1116(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movl	$2, -1116(%rbp)
.LBB28_2:                               # %if.end
	movb	$1, %al
	movq	-16(%rbp), %rdi
	movq	-1112(%rbp), %rsi
	movl	-1116(%rbp), %edx
	testb	$1, -25(%rbp)
	movl	%edx, -1164(%rbp)       # 4-byte Spill
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rsi, -1184(%rbp)       # 8-byte Spill
	movb	%al, -1185(%rbp)        # 1-byte Spill
	jne	.LBB28_4
# BB#3:                                 # %lor.rhs
	movb	-26(%rbp), %al
	movb	%al, -1185(%rbp)        # 1-byte Spill
.LBB28_4:                               # %lor.end
	movb	-1185(%rbp), %al        # 1-byte Reload
	movabsq	$.L.str.46, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.48, %r9
	movabsq	$.L.str.47, %r10
	testb	$1, %al
	cmovneq	%r10, %r9
	movq	-1176(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -1200(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	-1184(%rbp), %rsi       # 8-byte Reload
	movl	-1164(%rbp), %r11d      # 4-byte Reload
	movl	%edx, -1204(%rbp)       # 4-byte Spill
	movl	%r11d, %edx
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_local_only
	xorl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %esi
	callq	gtk_vbox_new
	movq	%rax, -1096(%rbp)
	movq	-1096(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-1096(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -1088(%rbp)
	testb	$1, globals+3443
	je	.LBB28_6
# BB#5:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-1080(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-1088(%rbp), %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB28_6:                               # %if.end.19
	movq	-1088(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %eax
	movl	%eax, %esi
	movq	-1088(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	movabsq	$xg_toggle_visibility_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-1080(%rbp), %rdx
	movq	%rdi, -1240(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-1080(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rsi
	movabsq	$xg_toggle_notify_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-1088(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	testb	$1, globals+3442
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	je	.LBB28_11
# BB#7:                                 # %if.then.25
	movl	$2, %edi
	movl	$10, %esi
	xorl	%edx, %edx
	leaq	-1072(%rbp), %rax
	movq	%rax, -1128(%rbp)
	callq	gtk_check_version
	cmpq	$0, %rax
	je	.LBB28_10
# BB#8:                                 # %land.lhs.true
	cmpl	$1, -1116(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.28
	movq	-1128(%rbp), %rdi
	movl	$.L.str.53, %eax
	movl	%eax, %esi
	callq	stpcpy
	movq	%rax, -1128(%rbp)
.LBB28_10:                              # %if.end.30
	leaq	-1072(%rbp), %rdi
	movq	-1128(%rbp), %rax
	movl	$.L.str.54, %ecx
	movl	%ecx, %esi
	movq	%rdi, -1280(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	strcpy
	movq	-1280(%rbp), %rdi       # 8-byte Reload
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	gtk_label_new
	movq	%rax, -1104(%rbp)
	movq	-1104(%rbp), %rdi
	callq	gtk_widget_show
.LBB28_11:                              # %if.end.34
	movq	-1096(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-1088(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1300(%rbp)       # 4-byte Spill
	movl	-1300(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	testb	$1, globals+3442
	je	.LBB28_13
# BB#12:                                # %if.then.38
	movq	-1096(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-1104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -1316(%rbp)       # 4-byte Spill
	movl	-1316(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
.LBB28_13:                              # %if.end.41
	movq	-1080(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1096(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_extra_widget
	cmpq	$0, -24(%rbp)
	je	.LBB28_25
# BB#14:                                # %if.then.45
	movq	-24(%rbp), %rdi
	callq	build_string
	movq	%rax, -1136(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB28_16
# BB#15:                                # %if.then.49
	xorl	%edi, %edi
	movq	-1136(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -1136(%rbp)
.LBB28_16:                              # %if.end.52
	movl	$988, %edi              # imm = 0x3DC
	movq	-1136(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -1144(%rbp)
	movq	-1136(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB28_18
# BB#17:                                # %if.then.60
	movq	-1080(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	jmp	.LBB28_24
.LBB28_18:                              # %if.else
	movq	-1080(%rbp), %rax
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	cmpl	$1, -1116(%rbp)
	movl	%eax, -1380(%rbp)       # 4-byte Spill
	jne	.LBB28_23
# BB#19:                                # %if.then.69
	movl	$47, %esi
	movq	-1144(%rbp), %rdi
	callq	strrchr
	movq	%rax, -1152(%rbp)
	cmpq	$0, -1152(%rbp)
	je	.LBB28_21
# BB#20:                                # %if.then.72
	movq	-1152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1152(%rbp)
	jmp	.LBB28_22
.LBB28_21:                              # %if.else.73
	movq	-1144(%rbp), %rax
	movq	%rax, -1152(%rbp)
.LBB28_22:                              # %if.end.74
	movq	-1080(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-1152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
.LBB28_23:                              # %if.end.77
	jmp	.LBB28_24
.LBB28_24:                              # %if.end.78
	jmp	.LBB28_25
.LBB28_25:                              # %if.end.79
	movabsq	$xg_get_file_name_from_chooser, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-1080(%rbp), %rax
	addq	$1408, %rsp             # imm = 0x580
	popq	%rbp
	retq
.Lfunc_end28:
	.size	xg_get_file_with_chooser, .Lfunc_end28-xg_get_file_with_chooser
	.cfi_endproc

	.align	16, 0x90
	.type	xg_dialog_run,@function
xg_dialog_run:                          # @xg_dialog_run
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	xg_set_screen
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_modal
	xorl	%esi, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -56(%rbp)
	movl	$-6, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	movabsq	$xg_dialog_response_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-56(%rbp), %rdx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$pop_down_dialog, %rdi
	leaq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	xg_maybe_add_timer
	movq	-56(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_main_loop_run
	xorl	%edi, %edi
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	-48(%rbp), %r9d
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	xg_dialog_run, .Lfunc_end29-xg_dialog_run
	.cfi_endproc

	.globl	xg_get_font
	.align	16, 0x90
	.type	xg_get_font,@function
xg_get_font:                            # @xg_get_font
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rdi
	movq	%rax, -40(%rbp)
	callq	gtk_font_selection_dialog_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB30_9
# BB#1:                                 # %if.then
	movl	$45, %esi
	movq	-16(%rbp), %rdi
	callq	strrchr
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB30_8
# BB#2:                                 # %if.then.4
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.LBB30_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movsbl	(%rax), %edi
	callq	c_isdigit
	testb	$1, %al
	jne	.LBB30_4
	jmp	.LBB30_5
.LBB30_4:                               # %while.body
                                        #   in Loop: Header=BB30_3 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB30_3
.LBB30_5:                               # %while.end
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB30_7
# BB#6:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movb	$32, (%rax)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.9
	jmp	.LBB30_12
.LBB30_9:                               # %if.else
	cmpq	$0, x_last_font_name
	je	.LBB30_11
# BB#10:                                # %if.then.11
	movq	x_last_font_name, %rax
	movq	%rax, -16(%rbp)
.LBB30_11:                              # %if.end.12
	jmp	.LBB30_12
.LBB30_12:                              # %if.end.13
	cmpq	$0, -16(%rbp)
	je	.LBB30_14
# BB#13:                                # %if.then.15
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_font_selection_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_font_selection_dialog_set_font_name
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB30_14:                              # %if.end.19
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_dialog_run
	movl	%eax, -28(%rbp)
	cmpl	$-5, -28(%rbp)
	jne	.LBB30_18
# BB#15:                                # %if.then.23
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_font_selection_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_font_selection_dialog_get_font_name
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB30_17
# BB#16:                                # %if.then.28
	movq	-64(%rbp), %rdi
	callq	build_string
	movq	%rax, -40(%rbp)
	movq	x_last_font_name, %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	%rax, x_last_font_name
.LBB30_17:                              # %if.end.30
	jmp	.LBB30_18
.LBB30_18:                              # %if.end.31
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	xg_get_font, .Lfunc_end30-xg_get_font
	.cfi_endproc

	.globl	xg_mark_data
	.align	16, 0x90
	.type	xg_mark_data,@function
xg_mark_data:                           # @xg_mark_data
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
	subq	$64, %rsp
	movq	xg_menu_cb_list+8, %rax
	movq	%rax, -8(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB31_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	mark_object
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_1
.LBB31_4:                               # %for.end
	movq	xg_menu_item_cb_list+8, %rax
	movq	%rax, -8(%rbp)
.LBB31_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB31_10
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB31_5 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	mark_object
.LBB31_8:                               # %if.end
                                        #   in Loop: Header=BB31_5 Depth=1
	jmp	.LBB31_9
.LBB31_9:                               # %for.inc.5
                                        #   in Loop: Header=BB31_5 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB31_5
.LBB31_10:                              # %for.end.7
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB31_11:                              # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB31_13
# BB#12:                                # %land.rhs
                                        #   in Loop: Header=BB31_11 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB31_13:                              # %land.end
                                        #   in Loop: Header=BB31_11 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_14
	jmp	.LBB31_21
.LBB31_14:                              # %for.body.11
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_19
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB31_19
# BB#16:                                # %if.then.16
                                        #   in Loop: Header=BB31_11 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB31_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	mark_object
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	mark_object
.LBB31_18:                              # %if.end.24
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_19
.LBB31_19:                              # %if.end.25
                                        #   in Loop: Header=BB31_11 Depth=1
	jmp	.LBB31_20
.LBB31_20:                              # %for.inc.26
                                        #   in Loop: Header=BB31_11 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB31_11
.LBB31_21:                              # %for.end.28
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	xg_mark_data, .Lfunc_end31-xg_mark_data
	.cfi_endproc

	.globl	xg_create_widget
	.align	16, 0x90
	.type	xg_create_widget,@function
xg_create_widget:                       # @xg_create_widget
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp99:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.16, %r10d
	movl	%r10d, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%r11b
	andb	$1, %r11b
	movb	%r11b, -73(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%r11b
	andb	$1, %r11b
	movb	%r11b, -74(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.18, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	create_dialog
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	xg_set_screen
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movabsq	$.L.str.19, %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_modal
	jmp	.LBB32_9
.LBB32_2:                               # %if.else
	testb	$1, -73(%rbp)
	jne	.LBB32_4
# BB#3:                                 # %lor.lhs.false
	testb	$1, -74(%rbp)
	je	.LBB32_7
.LBB32_4:                               # %if.then.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movb	-74(%rbp), %r10b
	movb	-73(%rbp), %r11b
	movq	-24(%rbp), %rbx
	andb	$1, %r10b
	andb	$1, %r11b
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r9, %r8
	movzbl	%r10b, %r9d
	movzbl	%r11b, %eax
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	create_menus
	movq	%rax, -72(%rbp)
	testb	$1, -74(%rbp)
	je	.LBB32_6
# BB#5:                                 # %if.then.21
	movq	-72(%rbp), %rdi
	callq	gtk_widget_realize
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	152(%rax), %rsi
	callq	xg_set_cursor
.LBB32_6:                               # %if.end
	jmp	.LBB32_8
.LBB32_7:                               # %if.else.24
	movabsq	$.L.str.20, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB32_8:                               # %if.end.26
	jmp	.LBB32_9
.LBB32_9:                               # %if.end.27
	movq	-72(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	xg_create_widget, .Lfunc_end32-xg_create_widget
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_0:
	.long	1036831949              # float 0.100000001
.LCPI33_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_dialog,@function
create_dialog:                          # @create_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movsbl	(%rdx), %edi
	callq	get_dialog_title
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	1(%rax), %edi
	subl	$48, %edi
	movl	%edi, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	4(%rax), %edi
	subl	$48, %edi
	movl	%edi, -40(%rbp)
	movl	$0, -48(%rbp)
	movl	$10, -52(%rbp)
	callq	gtk_dialog_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	cmpl	$4, -36(%rbp)
	setg	%cl
	andb	$1, %cl
	movb	%cl, -89(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_dialog_get_action_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-172(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -40(%rbp)
.LBB33_2:                               # %if.end
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movabsq	$.L.str.19, %rsi
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_name
	testb	$1, -89(%rbp)
	je	.LBB33_4
# BB#3:                                 # %if.then.19
	xorl	%edi, %edi
	movl	-52(%rbp), %esi
	callq	gtk_vbox_new
	xorl	%esi, %esi
	movq	%rax, -112(%rbp)
	movl	%esi, %edi
	callq	gtk_hbox_new
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-120(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	gtk_hbox_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rax
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-212(%rbp), %edx        # 4-byte Reload
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-120(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
.LBB33_4:                               # %if.end.35
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$dialog_delete_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -24(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	je	.LBB33_6
# BB#5:                                 # %if.then.39
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	-280(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB33_6:                               # %if.end.44
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB33_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB33_29
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -128(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB33_16
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.56, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB33_16
# BB#10:                                # %if.then.53
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-72(%rbp), %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-128(%rbp), %rdi
	callq	gtk_label_new
	movabsq	$.L.str.29, %rdi
	movq	%rax, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_label_new
	xorl	%ecx, %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-136(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI33_1, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-136(%rbp), %rdi
	callq	gtk_widget_realize
	leaq	-144(%rbp), %rsi
	movq	-136(%rbp), %rdi
	callq	gtk_widget_size_request
	movq	-152(%rbp), %rdi
	movl	-140(%rbp), %esi
	callq	gtk_box_set_spacing
	movq	-80(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB33_13
# BB#11:                                # %land.lhs.true.64
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB33_13
# BB#12:                                # %if.then.69
                                        #   in Loop: Header=BB33_7 Depth=1
	movl	-144(%rbp), %eax
	shll	$1, %eax
	cltq
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-352(%rbp), %rdi        # 8-byte Reload
	divq	%rdi
	movl	%eax, %esi
	movl	%esi, -52(%rbp)
.LBB33_13:                              # %if.end.75
                                        #   in Loop: Header=BB33_7 Depth=1
	cmpl	$10, -52(%rbp)
	jge	.LBB33_15
# BB#14:                                # %if.then.78
                                        #   in Loop: Header=BB33_7 Depth=1
	movl	$10, -52(%rbp)
.LBB33_15:                              # %if.end.79
                                        #   in Loop: Header=BB33_7 Depth=1
	jmp	.LBB33_25
.LBB33_16:                              # %if.else
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-128(%rbp), %rdi
	callq	gtk_button_new_with_label
	movq	%rax, -136(%rbp)
	movq	-80(%rbp), %rax
	testb	$1, 48(%rax)
	jne	.LBB33_18
# BB#17:                                # %if.then.82
                                        #   in Loop: Header=BB33_7 Depth=1
	xorl	%esi, %esi
	movq	-136(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB33_18:                              # %if.end.83
                                        #   in Loop: Header=BB33_7 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB33_20
# BB#19:                                # %if.then.85
                                        #   in Loop: Header=BB33_7 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-136(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB33_20:                              # %if.end.88
                                        #   in Loop: Header=BB33_7 Depth=1
	movl	$1, %eax
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gtk_box_pack_start
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	cmpl	-44(%rbp), %eax
	jne	.LBB33_24
# BB#21:                                # %if.then.91
                                        #   in Loop: Header=BB33_7 Depth=1
	testb	$1, -89(%rbp)
	je	.LBB33_23
# BB#22:                                # %if.then.93
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
.LBB33_23:                              # %if.end.96
                                        #   in Loop: Header=BB33_7 Depth=1
	jmp	.LBB33_24
.LBB33_24:                              # %if.end.97
                                        #   in Loop: Header=BB33_7 Depth=1
	jmp	.LBB33_25
.LBB33_25:                              # %if.end.98
                                        #   in Loop: Header=BB33_7 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB33_27
# BB#26:                                # %if.then.100
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB33_27:                              # %if.end.101
                                        #   in Loop: Header=BB33_7 Depth=1
	jmp	.LBB33_28
.LBB33_28:                              # %for.inc
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB33_7
.LBB33_29:                              # %for.end
	movq	-64(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end33:
	.size	create_dialog, .Lfunc_end33-create_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	create_menus,@function
create_menus:                           # @create_menus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp106:
	.cfi_offset %rbx, -32
.Ltmp107:
	.cfi_offset %r14, -24
	movb	%r9b, %al
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movq	24(%rbp), %rbx
	movb	16(%rbp), %r14b
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	andb	$1, %al
	movb	%al, -57(%rbp)
	andb	$1, %r14b
	movb	%r14b, -58(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r11, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	$0, -112(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB34_9
# BB#1:                                 # %if.then
	testb	$1, -58(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then.3
	callq	gtk_menu_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	xg_set_screen
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rsi
	movabsq	$menuitem_highlight_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rsi
	movabsq	$menuitem_highlight_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB34_4
.LBB34_3:                               # %if.else
	callq	gtk_menu_bar_new
	movl	$1, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gtk_widget_set_size_request
.LBB34_4:                               # %if.end
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	make_cl_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$menu_destroy_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -88(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB34_6
# BB#5:                                 # %if.then.14
	movq	-104(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gtk_widget_set_name
.LBB34_6:                               # %if.end.15
	cmpq	$0, -48(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB34_8:                               # %if.end.20
	jmp	.LBB34_9
.LBB34_9:                               # %if.end.21
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB34_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB34_30
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB34_10 Depth=1
	testb	$1, -57(%rbp)
	je	.LBB34_18
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB34_18
# BB#13:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB34_18
# BB#14:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	menu_separator_name_p
	testb	$1, %al
	jne	.LBB34_18
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	$0, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gtk_menu_item_new_with_label
	xorl	%esi, %esi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	cmpq	$0, -128(%rbp)
	je	.LBB34_17
# BB#16:                                # %if.then.35
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB34_17:                              # %if.end.36
                                        #   in Loop: Header=BB34_10 Depth=1
	jmp	.LBB34_28
.LBB34_18:                              # %if.else.37
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	menu_separator_name_p
	testb	$1, %al
	jne	.LBB34_19
	jmp	.LBB34_20
.LBB34_19:                              # %if.then.40
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	$0, -112(%rbp)
	callq	gtk_separator_menu_item_new
	movq	%rax, -120(%rbp)
	jmp	.LBB34_27
.LBB34_20:                              # %if.else.42
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	je	.LBB34_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB34_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB34_23
.LBB34_22:                              # %cond.false
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB34_23:                              # %cond.end
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	leaq	-112(%rbp), %r9
	movq	-56(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	xg_create_one_menuitem
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB34_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB34_10 Depth=1
	testb	$1, -58(%rbp)
	je	.LBB34_26
.LBB34_25:                              # %if.then.49
                                        #   in Loop: Header=BB34_10 Depth=1
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movq	56(%rdx), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	create_menus
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_item_set_submenu
.LBB34_26:                              # %if.end.54
                                        #   in Loop: Header=BB34_10 Depth=1
	jmp	.LBB34_27
.LBB34_27:                              # %if.end.55
                                        #   in Loop: Header=BB34_10 Depth=1
	jmp	.LBB34_28
.LBB34_28:                              # %if.end.56
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_shell_append
	movabsq	$.L.str.65, %rsi
	movq	-120(%rbp), %rdi
	callq	gtk_widget_set_name
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB34_10 Depth=1
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB34_10
.LBB34_30:                              # %for.end
	movq	-104(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	create_menus, .Lfunc_end34-create_menus
	.cfi_endproc

	.align	16, 0x90
	.type	xg_set_cursor,@function
xg_set_cursor:                          # @xg_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_window_peek_children
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gdk_window_set_cursor
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB35_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gdk_window_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB35_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB35_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB35_6
.LBB35_5:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB35_6
.LBB35_6:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB35_1
.LBB35_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	xg_set_cursor, .Lfunc_end35-xg_set_cursor
	.cfi_endproc

	.globl	xg_modify_menubar_widgets
	.align	16, 0x90
	.type	xg_modify_menubar_widgets,@function
xg_modify_menubar_widgets:              # @xg_modify_menubar_widgets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp114:
	.cfi_offset %rbx, -24
	movb	%cl, %al
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	jmp	.LBB36_21
.LBB36_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	leaq	-80(%rbp), %rdx
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	56(%rax), %r9
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r10
	movq	-64(%rbp), %r11
	movq	-72(%rbp), %rbx
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	xg_update_menubar
	testb	$1, -33(%rbp)
	je	.LBB36_20
# BB#3:                                 # %if.then.6
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	update_cl_data
	movq	-32(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, -88(%rbp)
.LBB36_4:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_6 Depth 2
	cmpq	$0, -88(%rbp)
	je	.LBB36_19
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	$0, -104(%rbp)
	movq	$0, -120(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB36_6:                               # %for.cond.9
                                        #   Parent Loop BB36_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB36_14
# BB#7:                                 # %for.body.11
                                        #   in Loop: Header=BB36_6 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xg_item_label_same_p
	testb	$1, %al
	jne	.LBB36_8
	jmp	.LBB36_9
.LBB36_8:                               # %if.then.15
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	-120(%rbp), %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -104(%rbp)
	jmp	.LBB36_14
.LBB36_9:                               # %if.end.17
                                        #   in Loop: Header=BB36_6 Depth=2
	jmp	.LBB36_10
.LBB36_10:                              # %for.inc
                                        #   in Loop: Header=BB36_6 Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB36_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB36_6 Depth=2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB36_13
.LBB36_12:                              # %cond.false
                                        #   in Loop: Header=BB36_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB36_13
.LBB36_13:                              # %cond.end
                                        #   in Loop: Header=BB36_6 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB36_6
.LBB36_14:                              # %for.end
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	movq	%rax, (%rsp)
	callq	xg_update_submenu
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB36_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB36_4 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB36_17
# BB#16:                                # %if.then.22
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	-112(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_set_screen
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gtk_menu_item_set_submenu
.LBB36_17:                              # %if.end.23
                                        #   in Loop: Header=BB36_4 Depth=1
	jmp	.LBB36_18
.LBB36_18:                              # %for.inc.24
                                        #   in Loop: Header=BB36_4 Depth=1
	movq	-88(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB36_4
.LBB36_19:                              # %for.end.26
	jmp	.LBB36_20
.LBB36_20:                              # %if.end.27
	movq	-80(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show_all
.LBB36_21:                              # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	xg_modify_menubar_widgets, .Lfunc_end36-xg_modify_menubar_widgets
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_menubar,@function
xg_update_menubar:                      # @xg_update_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp118:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB37_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	jmp	.LBB37_77
.LBB37_3:                               # %if.else
	cmpq	$0, -40(%rbp)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true.3
	cmpq	$0, -56(%rbp)
	jne	.LBB37_6
# BB#5:                                 # %if.then.5
	movq	-40(%rbp), %rdi
	callq	xg_destroy_widgets
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_new_with_label
	xorl	%edx, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_shell_insert
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	jmp	.LBB37_75
.LBB37_6:                               # %if.else.8
	cmpq	$0, -40(%rbp)
	jne	.LBB37_9
# BB#7:                                 # %land.lhs.true.10
	cmpq	$0, -56(%rbp)
	je	.LBB37_9
# BB#8:                                 # %if.then.12
	xorl	%r9d, %r9d
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r10
	movq	-16(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%r10, %r8
	movl	$1, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	create_menus
	movq	$0, -56(%rbp)
	movq	$0, -40(%rbp)
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB37_74
.LBB37_9:                               # %if.else.14
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	xg_item_label_same_p
	testb	$1, %al
	jne	.LBB37_10
	jmp	.LBB37_14
.LBB37_10:                              # %if.then.18
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB37_12
# BB#11:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB37_13
.LBB37_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB37_13
.LBB37_13:                              # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB37_73
.LBB37_14:                              # %if.else.21
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movb	$0, -105(%rbp)
	movb	$0, -106(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB37_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -120(%rbp)
	movb	%cl, -257(%rbp)         # 1-byte Spill
	je	.LBB37_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB37_15 Depth=1
	movb	-105(%rbp), %al
	xorb	$-1, %al
	movb	%al, -257(%rbp)         # 1-byte Spill
.LBB37_17:                              # %land.end
                                        #   in Loop: Header=BB37_15 Depth=1
	movb	-257(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_18
	jmp	.LBB37_23
.LBB37_18:                              # %for.body
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xg_item_label_same_p
	andb	$1, %al
	movb	%al, -105(%rbp)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB37_15 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB37_21
# BB#20:                                # %cond.true.33
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB37_22
.LBB37_21:                              # %cond.false.35
                                        #   in Loop: Header=BB37_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB37_22
.LBB37_22:                              # %cond.end.36
                                        #   in Loop: Header=BB37_15 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)
	jmp	.LBB37_15
.LBB37_23:                              # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB37_24:                              # %for.cond.38
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -128(%rbp)
	movb	%cl, -281(%rbp)         # 1-byte Spill
	je	.LBB37_26
# BB#25:                                # %land.rhs.40
                                        #   in Loop: Header=BB37_24 Depth=1
	movb	-106(%rbp), %al
	xorb	$-1, %al
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB37_26:                              # %land.end.43
                                        #   in Loop: Header=BB37_24 Depth=1
	movb	-281(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_27
	jmp	.LBB37_29
.LBB37_27:                              # %for.body.44
                                        #   in Loop: Header=BB37_24 Depth=1
	movq	-96(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xg_item_label_same_p
	andb	$1, %al
	movb	%al, -106(%rbp)
# BB#28:                                # %for.inc.48
                                        #   in Loop: Header=BB37_24 Depth=1
	movq	-128(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB37_24
.LBB37_29:                              # %for.end.50
	testb	$1, -105(%rbp)
	je	.LBB37_38
# BB#30:                                # %land.lhs.true.52
	testb	$1, -106(%rbp)
	jne	.LBB37_38
# BB#31:                                # %if.then.54
	movl	$80, %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
	movq	-96(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB37_32:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -132(%rbp)
	cmpl	$0, %eax
	jle	.LBB37_37
# BB#33:                                # %while.body
                                        #   in Loop: Header=BB37_32 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB37_35
# BB#34:                                # %cond.true.67
                                        #   in Loop: Header=BB37_32 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB37_36
.LBB37_35:                              # %cond.false.69
                                        #   in Loop: Header=BB37_32 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB37_36
.LBB37_36:                              # %cond.end.70
                                        #   in Loop: Header=BB37_32 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB37_32
.LBB37_37:                              # %while.end
	jmp	.LBB37_72
.LBB37_38:                              # %if.else.72
	testb	$1, -105(%rbp)
	jne	.LBB37_46
# BB#39:                                # %land.lhs.true.74
	testb	$1, -106(%rbp)
	jne	.LBB37_46
# BB#40:                                # %if.then.76
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gtk_label_set_text
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	cmpq	$0, -152(%rbp)
	je	.LBB37_42
# BB#41:                                # %if.then.86
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB37_42:                              # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB37_44
# BB#43:                                # %cond.true.88
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB37_45
.LBB37_44:                              # %cond.false.90
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB37_45
.LBB37_45:                              # %cond.end.91
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB37_71
.LBB37_46:                              # %if.else.95
	testb	$1, -105(%rbp)
	jne	.LBB37_58
# BB#47:                                # %land.lhs.true.97
	testb	$1, -106(%rbp)
	je	.LBB37_58
# BB#48:                                # %if.then.99
	leaq	-168(%rbp), %r9
	movl	-44(%rbp), %eax
	movl	%eax, -156(%rbp)
	movq	$0, -168(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	callq	xg_create_one_menuitem
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	xorl	%r9d, %r9d
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %rax
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	create_menus
	movabsq	$.L.str.65, %rsi
	movq	%rax, -184(%rbp)
	movq	-176(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_menu_shell_insert
	movq	-176(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_menu_item_set_submenu
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB37_49:                              # %while.cond.110
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -156(%rbp)
	cmpl	$0, %eax
	jle	.LBB37_54
# BB#50:                                # %while.body.113
                                        #   in Loop: Header=BB37_49 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB37_52
# BB#51:                                # %cond.true.115
                                        #   in Loop: Header=BB37_49 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB37_53
.LBB37_52:                              # %cond.false.117
                                        #   in Loop: Header=BB37_49 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB37_53
.LBB37_53:                              # %cond.end.118
                                        #   in Loop: Header=BB37_49 Depth=1
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB37_49
.LBB37_54:                              # %while.end.120
	cmpq	$0, -40(%rbp)
	je	.LBB37_56
# BB#55:                                # %cond.true.122
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB37_57
.LBB37_56:                              # %cond.false.124
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB37_57
.LBB37_57:                              # %cond.end.125
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB37_70
.LBB37_58:                              # %if.else.129
	movl	$80, %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rcx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_remove
	movq	-16(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_menu_shell_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %edx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_menu_shell_insert
	movl	$80, %edx
	movl	%edx, %esi
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB37_59:                              # %while.cond.145
                                        # =>This Inner Loop Header: Depth=1
	movl	-188(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, %eax
	jle	.LBB37_64
# BB#60:                                # %while.body.148
                                        #   in Loop: Header=BB37_59 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB37_62
# BB#61:                                # %cond.true.150
                                        #   in Loop: Header=BB37_59 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB37_63
.LBB37_62:                              # %cond.false.152
                                        #   in Loop: Header=BB37_59 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB37_63
.LBB37_63:                              # %cond.end.153
                                        #   in Loop: Header=BB37_59 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB37_59
.LBB37_64:                              # %while.end.155
	cmpq	$0, -40(%rbp)
	je	.LBB37_69
# BB#65:                                # %if.then.157
	cmpq	$0, -40(%rbp)
	je	.LBB37_67
# BB#66:                                # %cond.true.159
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB37_68
.LBB37_67:                              # %cond.false.161
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	jmp	.LBB37_68
.LBB37_68:                              # %cond.end.162
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB37_69:                              # %if.end.164
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB37_70:                              # %if.end.167
	jmp	.LBB37_71
.LBB37_71:                              # %if.end.168
	jmp	.LBB37_72
.LBB37_72:                              # %if.end.169
	jmp	.LBB37_73
.LBB37_73:                              # %if.end.170
	jmp	.LBB37_74
.LBB37_74:                              # %if.end.171
	jmp	.LBB37_75
.LBB37_75:                              # %if.end.172
	jmp	.LBB37_76
.LBB37_76:                              # %if.end.173
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %r10
	movq	-80(%rbp), %r11
	movq	-88(%rbp), %rbx
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	xg_update_menubar
.LBB37_77:                              # %return
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end37:
	.size	xg_update_menubar, .Lfunc_end37-xg_update_menubar
	.cfi_endproc

	.align	16, 0x90
	.type	update_cl_data,@function
update_cl_data:                         # @update_cl_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	168(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB38_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end38:
	.size	update_cl_data, .Lfunc_end38-update_cl_data
	.cfi_endproc

	.align	16, 0x90
	.type	xg_item_label_same_p,@function
xg_item_label_same_p:                   # @xg_item_label_same_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_utf8_string
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB39_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	xg_get_menu_item_label
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB39_3
.LBB39_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB39_3
.LBB39_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB39_6
# BB#4:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	jne	.LBB39_6
# BB#5:                                 # %if.then
	movb	$1, -17(%rbp)
	jmp	.LBB39_10
.LBB39_6:                               # %if.else
	cmpq	$0, -40(%rbp)
	je	.LBB39_9
# BB#7:                                 # %land.lhs.true.5
	cmpq	$0, -32(%rbp)
	je	.LBB39_9
# BB#8:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -17(%rbp)
.LBB39_9:                               # %if.end
	jmp	.LBB39_10
.LBB39_10:                              # %if.end.9
	cmpq	$0, -32(%rbp)
	je	.LBB39_12
# BB#11:                                # %if.then.11
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB39_12:                              # %if.end.12
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	xg_item_label_same_p, .Lfunc_end39-xg_item_label_same_p
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_submenu,@function
xg_update_submenu:                      # @xg_update_submenu
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp128:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -104(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB40_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -80(%rbp)
.LBB40_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB40_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -96(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	je	.LBB40_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB40_3 Depth=1
	cmpq	$0, -88(%rbp)
	setne	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB40_5:                               # %land.end
                                        #   in Loop: Header=BB40_3 Depth=1
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB40_6
	jmp	.LBB40_82
.LBB40_6:                               # %for.body
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB40_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB40_3 Depth=1
	cmpq	$0, -104(%rbp)
	jne	.LBB40_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB40_20
.LBB40_9:                               # %if.else
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$2, 52(%rax)
	je	.LBB40_19
# BB#10:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_radio_menu_item_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB40_12
# BB#11:                                # %if.then.14
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB40_17
.LBB40_12:                              # %if.else.15
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_15
# BB#13:                                # %land.lhs.true.17
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB40_15
# BB#14:                                # %if.then.20
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -132(%rbp)
	jmp	.LBB40_16
.LBB40_15:                              # %if.else.21
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB40_16:                              # %if.end.23
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_17
.LBB40_17:                              # %if.end.24
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	jne	.LBB40_19
# BB#18:                                # %if.then.26
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	$0, -104(%rbp)
.LBB40_19:                              # %if.end.27
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_20
.LBB40_20:                              # %if.end.28
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gtk_separator_menu_item_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB40_22
# BB#21:                                # %if.then.37
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -156(%rbp)
	jmp	.LBB40_27
.LBB40_22:                              # %if.else.38
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_25
# BB#23:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB40_25
# BB#24:                                # %if.then.45
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -156(%rbp)
	jmp	.LBB40_26
.LBB40_25:                              # %if.else.46
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB40_26:                              # %if.end.48
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_27
.LBB40_27:                              # %if.end.49
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB40_31
# BB#28:                                # %if.then.52
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	menu_separator_name_p
	testb	$1, %al
	jne	.LBB40_30
# BB#29:                                # %if.then.54
	jmp	.LBB40_82
.LBB40_30:                              # %if.end.55
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_77
.LBB40_31:                              # %if.else.56
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gtk_check_menu_item_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB40_33
# BB#32:                                # %if.then.65
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -180(%rbp)
	jmp	.LBB40_38
.LBB40_33:                              # %if.else.66
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_36
# BB#34:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB40_36
# BB#35:                                # %if.then.73
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -180(%rbp)
	jmp	.LBB40_37
.LBB40_36:                              # %if.else.74
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB40_37:                              # %if.end.76
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_38
.LBB40_38:                              # %if.end.77
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB40_42
# BB#39:                                # %if.then.80
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$1, 52(%rax)
	je	.LBB40_41
# BB#40:                                # %if.then.83
	jmp	.LBB40_82
.LBB40_41:                              # %if.end.84
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	xg_update_toggle_item
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	xg_update_menu_item
	jmp	.LBB40_76
.LBB40_42:                              # %if.else.85
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gtk_radio_menu_item_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB40_44
# BB#43:                                # %if.then.94
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -204(%rbp)
	jmp	.LBB40_49
.LBB40_44:                              # %if.else.95
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_47
# BB#45:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB40_47
# BB#46:                                # %if.then.102
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -204(%rbp)
	jmp	.LBB40_48
.LBB40_47:                              # %if.else.103
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB40_48:                              # %if.end.105
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_49
.LBB40_49:                              # %if.end.106
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB40_53
# BB#50:                                # %if.then.109
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$2, 52(%rax)
	je	.LBB40_52
# BB#51:                                # %if.then.112
	jmp	.LBB40_82
.LBB40_52:                              # %if.end.113
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	xg_update_radio_item
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	xg_update_menu_item
	jmp	.LBB40_75
.LBB40_53:                              # %if.else.114
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB40_55
# BB#54:                                # %if.then.123
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$0, -228(%rbp)
	jmp	.LBB40_60
.LBB40_55:                              # %if.else.124
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_58
# BB#56:                                # %land.lhs.true.127
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB40_58
# BB#57:                                # %if.then.131
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$1, -228(%rbp)
	jmp	.LBB40_59
.LBB40_58:                              # %if.else.132
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB40_59:                              # %if.end.134
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_60
.LBB40_60:                              # %if.end.135
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB40_73
# BB#61:                                # %if.then.138
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -240(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$0, 52(%rax)
	jne	.LBB40_63
# BB#62:                                # %lor.lhs.false
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	menu_separator_name_p
	testb	$1, %al
	jne	.LBB40_63
	jmp	.LBB40_64
.LBB40_63:                              # %if.then.147
	jmp	.LBB40_82
.LBB40_64:                              # %if.end.148
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	xg_update_menu_item
	movq	-240(%rbp), %rdi
	callq	gtk_menu_item_get_submenu
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB40_67
# BB#65:                                # %land.lhs.true.151
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB40_67
# BB#66:                                # %if.then.153
                                        #   in Loop: Header=BB40_3 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-248(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-240(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_menu_item_set_submenu
	movq	-248(%rbp), %rdi
	callq	gtk_widget_destroy
	jmp	.LBB40_72
.LBB40_67:                              # %if.else.156
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB40_71
# BB#68:                                # %if.then.159
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-248(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	callq	xg_update_submenu
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-248(%rbp), %rax
	je	.LBB40_70
# BB#69:                                # %if.then.164
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	gtk_menu_item_set_submenu
.LBB40_70:                              # %if.end.165
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_71
.LBB40_71:                              # %if.end.166
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_72
.LBB40_72:                              # %if.end.167
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_74
.LBB40_73:                              # %if.else.168
	jmp	.LBB40_82
.LBB40_74:                              # %if.end.169
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_75
.LBB40_75:                              # %if.end.170
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_76
.LBB40_76:                              # %if.end.171
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_77
.LBB40_77:                              # %if.end.172
                                        #   in Loop: Header=BB40_3 Depth=1
	jmp	.LBB40_78
.LBB40_78:                              # %for.inc
                                        #   in Loop: Header=BB40_3 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB40_80
# BB#79:                                # %cond.true
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB40_81
.LBB40_80:                              # %cond.false
                                        #   in Loop: Header=BB40_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB40_81
.LBB40_81:                              # %cond.end
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB40_3
.LBB40_82:                              # %for.end
	cmpq	$0, -88(%rbp)
	je	.LBB40_88
# BB#83:                                # %if.then.176
	cmpq	$0, -96(%rbp)
	je	.LBB40_86
# BB#84:                                # %land.lhs.true.178
	cmpq	$0, -104(%rbp)
	je	.LBB40_86
# BB#85:                                # %if.then.180
	movq	-104(%rbp), %rdi
	callq	xg_destroy_widgets
	jmp	.LBB40_87
.LBB40_86:                              # %if.else.181
	movq	-88(%rbp), %rdi
	callq	xg_destroy_widgets
.LBB40_87:                              # %if.end.182
	jmp	.LBB40_88
.LBB40_88:                              # %if.end.183
	cmpq	$0, -96(%rbp)
	je	.LBB40_90
# BB#89:                                # %if.then.185
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r10
	movq	-16(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	create_menus
	movq	%rax, -72(%rbp)
.LBB40_90:                              # %if.end.187
	cmpq	$0, -80(%rbp)
	je	.LBB40_92
# BB#91:                                # %if.then.189
	movq	-80(%rbp), %rdi
	callq	g_list_free
.LBB40_92:                              # %if.end.190
	movq	-72(%rbp), %rax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end40:
	.size	xg_update_submenu, .Lfunc_end40-xg_update_submenu
	.cfi_endproc

	.globl	xg_update_frame_menubar
	.align	16, 0x90
	.type	xg_update_frame_menubar,@function
xg_update_frame_menubar:                # @xg_update_frame_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	je	.LBB41_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB41_3
.LBB41_2:                               # %if.then
	jmp	.LBB41_9
.LBB41_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_get_parent
	cmpq	$0, %rax
	je	.LBB41_6
# BB#5:                                 # %if.then.9
	jmp	.LBB41_9
.LBB41_6:                               # %if.end.10
	callq	block_input
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movabsq	$.L.str.22, %rsi
	movabsq	$menubar_map_cb, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	112(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	112(%rcx), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_show_all
	leaq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_size_request
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	(%rax), %r9d
	cmpl	-20(%rbp), %r9d
	je	.LBB41_8
# BB#7:                                 # %if.then.24
	movl	$653, %edi              # imm = 0x28D
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB41_8:                               # %if.end.30
	callq	unblock_input
.LBB41_9:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	xg_update_frame_menubar, .Lfunc_end41-xg_update_frame_menubar
	.cfi_endproc

	.align	16, 0x90
	.type	menubar_map_cb,@function
menubar_map_cb:                         # @menubar_map_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_widget_size_request
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$653, %edi              # imm = 0x28D
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB42_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	menubar_map_cb, .Lfunc_end42-menubar_map_cb
	.cfi_endproc

	.globl	free_frame_menubar
	.align	16, 0x90
	.type	free_frame_menubar,@function
free_frame_menubar:                     # @free_frame_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	je	.LBB43_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movl	$653, %edi              # imm = 0x28D
	movq	-16(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	callq	unblock_input
.LBB43_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	free_frame_menubar, .Lfunc_end43-free_frame_menubar
	.cfi_endproc

	.globl	xg_event_is_for_menubar
	.align	16, 0x90
	.type	xg_event_is_for_menubar,@function
xg_event_is_for_menubar:                # @xg_event_is_for_menubar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 112(%rsi)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	jl	.LBB44_7
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	312(%rax), %ecx
	jge	.LBB44_7
# BB#4:                                 # %land.lhs.true.6
	movq	-24(%rbp), %rax
	cmpl	$0, 68(%rax)
	jl	.LBB44_7
# BB#5:                                 # %land.lhs.true.9
	movq	-24(%rbp), %rax
	movl	68(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpl	(%rax), %ecx
	jge	.LBB44_7
# BB#6:                                 # %land.lhs.true.15
	movq	-24(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	.LBB44_8
.LBB44_7:                               # %if.then.18
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_8:                               # %if.end.19
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rsi
	callq	gdk_xid_table_lookup_for_display
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB44_10
# BB#9:                                 # %if.then.25
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_10:                              # %if.end.26
	leaq	-168(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$-1, -168(%rbp)
	callq	gtk_get_event_widget
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB44_12
# BB#11:                                # %if.then.31
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_12:                              # %if.end.32
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	callq	gtk_menu_bar_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB44_14
# BB#13:                                # %if.then.35
	movl	$0, -196(%rbp)
	jmp	.LBB44_19
.LBB44_14:                              # %if.else
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_17
# BB#15:                                # %land.lhs.true.37
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB44_17
# BB#16:                                # %if.then.40
	movl	$1, -196(%rbp)
	jmp	.LBB44_18
.LBB44_17:                              # %if.else.41
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB44_18:                              # %if.end.43
	jmp	.LBB44_19
.LBB44_19:                              # %if.end.44
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	jne	.LBB44_30
# BB#20:                                # %land.lhs.true.46
	movq	-176(%rbp), %rax
	movq	%rax, -208(%rbp)
	callq	gtk_menu_item_get_type
	movq	%rax, -216(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB44_22
# BB#21:                                # %if.then.55
	movl	$0, -220(%rbp)
	jmp	.LBB44_27
.LBB44_22:                              # %if.else.56
	movq	-208(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_25
# BB#23:                                # %land.lhs.true.59
	movq	-208(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB44_25
# BB#24:                                # %if.then.63
	movl	$1, -220(%rbp)
	jmp	.LBB44_26
.LBB44_25:                              # %if.else.64
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -220(%rbp)
.LBB44_26:                              # %if.end.66
	jmp	.LBB44_27
.LBB44_27:                              # %if.end.67
	movl	-220(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -224(%rbp)
	jne	.LBB44_30
# BB#28:                                # %land.lhs.true.70
	movq	-32(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-176(%rbp), %rsi
	callq	gtk_widget_is_ancestor
	cmpl	$0, %eax
	jne	.LBB44_30
# BB#29:                                # %if.then.74
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_30:                              # %if.end.75
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB44_32
# BB#31:                                # %if.then.81
	movb	$0, -1(%rbp)
	jmp	.LBB44_43
.LBB44_32:                              # %if.end.82
	movq	-24(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$1, -44(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB44_33:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB44_42
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB44_33 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB44_37
# BB#35:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB44_33 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-232(%rbp), %rdi
	callq	gtk_widget_intersect
	cmpl	$0, %eax
	je	.LBB44_37
# BB#36:                                # %if.then.98
	jmp	.LBB44_42
.LBB44_37:                              # %if.end.99
                                        #   in Loop: Header=BB44_33 Depth=1
	jmp	.LBB44_38
.LBB44_38:                              # %for.inc
                                        #   in Loop: Header=BB44_33 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB44_40
# BB#39:                                # %cond.true
                                        #   in Loop: Header=BB44_33 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB44_41
.LBB44_40:                              # %cond.false
                                        #   in Loop: Header=BB44_33 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB44_41
.LBB44_41:                              # %cond.end
                                        #   in Loop: Header=BB44_33 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB44_33
.LBB44_42:                              # %for.end
	movq	-64(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB44_43:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end44:
	.size	xg_event_is_for_menubar, .Lfunc_end44-xg_event_is_for_menubar
	.cfi_endproc

	.globl	xg_get_default_scrollbar_width
	.align	16, 0x90
	.type	xg_get_default_scrollbar_width,@function
xg_get_default_scrollbar_width:         # @xg_get_default_scrollbar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	scroll_bar_width_for_theme, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	xg_get_gdk_scale
	movl	-4(%rbp), %ecx          # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	xg_get_default_scrollbar_width, .Lfunc_end45-xg_get_default_scrollbar_width
	.cfi_endproc

	.globl	xg_get_default_scrollbar_height
	.align	16, 0x90
	.type	xg_get_default_scrollbar_height,@function
xg_get_default_scrollbar_height:        # @xg_get_default_scrollbar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	scroll_bar_width_for_theme, %eax
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	xg_get_gdk_scale
	movl	-4(%rbp), %ecx          # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	xg_get_default_scrollbar_height, .Lfunc_end46-xg_get_default_scrollbar_height
	.cfi_endproc

	.globl	xg_get_scroll_id_for_window
	.align	16, 0x90
	.type	xg_get_scroll_id_for_window,@function
xg_get_scroll_id_for_window:            # @xg_get_scroll_id_for_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	xg_win_to_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB47_8
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
.LBB47_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	id_to_widget+8, %rax
	jge	.LBB47_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB47_2 Depth=1
	movq	-32(%rbp), %rax
	movq	id_to_widget, %rcx
	movq	(%rcx,%rax,8), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB47_5
# BB#4:                                 # %if.then.2
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB47_9
.LBB47_5:                               # %if.end
                                        #   in Loop: Header=BB47_2 Depth=1
	jmp	.LBB47_6
.LBB47_6:                               # %for.inc
                                        #   in Loop: Header=BB47_2 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB47_2
.LBB47_7:                               # %for.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.3
	movq	$-1, -8(%rbp)
.LBB47_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	xg_get_scroll_id_for_window, .Lfunc_end47-xg_get_scroll_id_for_window
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI48_0:
	.quad	4607182418800017408     # double 1
.LCPI48_1:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI48_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	xg_create_scroll_bar
	.align	16, 0x90
	.type	xg_create_scroll_bar,@function
xg_create_scroll_bar:                   # @xg_create_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	.LCPI48_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI48_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI48_2, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_vscrollbar_new
	movq	%rax, -48(%rbp)
	callq	gtk_event_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_widget_set_name
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_range_set_update_policy
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rdi
	callq	xg_store_widget_in_map
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$xg_gtk_scroll_destroy, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_fixed_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_fixed_put
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	152(%rax), %rsi
	callq	xg_set_cursor
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movb	$0, 68(%rax)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	xg_create_scroll_bar, .Lfunc_end48-xg_create_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	xg_store_widget_in_map,@function
xg_store_widget_in_map:                 # @xg_store_widget_in_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	id_to_widget+8, %rdi
	cmpq	id_to_widget+16, %rdi
	jne	.LBB49_8
# BB#1:                                 # %if.then
	movq	$-33, %rax
	cmpq	id_to_widget+8, %rax
	jae	.LBB49_3
# BB#2:                                 # %if.then.2
	movq	$-1, %rdi
	callq	memory_full
.LBB49_3:                               # %if.end
	movl	$8, %eax
	movl	%eax, %edx
	movq	id_to_widget+8, %rcx
	addq	$32, %rcx
	movq	%rcx, -24(%rbp)
	movq	id_to_widget, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	xnrealloc
	movq	%rax, id_to_widget
	movq	id_to_widget+8, %rax
	movq	%rax, -16(%rbp)
.LBB49_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB49_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB49_4 Depth=1
	movq	-16(%rbp), %rax
	movq	id_to_widget, %rcx
	movq	$0, (%rcx,%rax,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB49_4 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB49_4
.LBB49_7:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, id_to_widget+8
.LBB49_8:                               # %if.end.4
	movq	$0, -16(%rbp)
.LBB49_9:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	id_to_widget+8, %rax
	jge	.LBB49_14
# BB#10:                                # %for.body.7
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-16(%rbp), %rax
	movq	id_to_widget, %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB49_12
# BB#11:                                # %if.then.9
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	id_to_widget, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	id_to_widget+16, %rax
	addq	$1, %rax
	movq	%rax, id_to_widget+16
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB49_12:                              # %if.end.12
                                        #   in Loop: Header=BB49_9 Depth=1
	jmp	.LBB49_13
.LBB49_13:                              # %for.inc.13
                                        #   in Loop: Header=BB49_9 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB49_9
.LBB49_14:                              # %for.end.15
	callq	emacs_abort
.Lfunc_end49:
	.size	xg_store_widget_in_map, .Lfunc_end49-xg_store_widget_in_map
	.cfi_endproc

	.align	16, 0x90
	.type	xg_gtk_scroll_destroy,@function
xg_gtk_scroll_destroy:                  # @xg_gtk_scroll_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	xg_remove_widget_from_map
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	xg_gtk_scroll_destroy, .Lfunc_end50-xg_gtk_scroll_destroy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI51_0:
	.quad	4607182418800017408     # double 1
.LCPI51_1:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI51_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	xg_create_horizontal_scroll_bar
	.align	16, 0x90
	.type	xg_create_horizontal_scroll_bar,@function
xg_create_horizontal_scroll_bar:        # @xg_create_horizontal_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	.LCPI51_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI51_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI51_2, %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-88(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_hscrollbar_new
	movq	%rax, -48(%rbp)
	callq	gtk_event_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_widget_set_name
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_range_set_update_policy
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-48(%rbp), %rdi
	callq	xg_store_widget_in_map
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$xg_gtk_scroll_destroy, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	88(%rcx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_fixed_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_fixed_put
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	152(%rax), %rsi
	callq	xg_set_cursor
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movb	$1, 68(%rax)
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	xg_create_horizontal_scroll_bar, .Lfunc_end51-xg_create_horizontal_scroll_bar
	.cfi_endproc

	.globl	xg_remove_scroll_bar
	.align	16, 0x90
	.type	xg_remove_scroll_bar,@function
xg_remove_scroll_bar:                   # @xg_remove_scroll_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	xg_get_widget_from_map
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB52_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	andq	$-8193, %rdi            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rdi             # imm = 0x2000
	movq	%rdi, 208(%rax)
.LBB52_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	xg_remove_scroll_bar, .Lfunc_end52-xg_remove_scroll_bar
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_widget_from_map,@function
xg_get_widget_from_map:                 # @xg_get_widget_from_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	id_to_widget+8, %rdi
	jge	.LBB53_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	id_to_widget, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB53_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	id_to_widget, %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB53_4
.LBB53_3:                               # %if.end
	movq	$0, -8(%rbp)
.LBB53_4:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	xg_get_widget_from_map, .Lfunc_end53-xg_get_widget_from_map
	.cfi_endproc

	.globl	xg_update_scrollbar_pos
	.align	16, 0x90
	.type	xg_update_scrollbar_pos,@function
xg_update_scrollbar_pos:                # @xg_update_scrollbar_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	xg_get_widget_from_map
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB54_11
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -56(%rbp)
	callq	xg_get_gdk_scale
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-84(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	-64(%rbp), %eax
	movl	-24(%rbp), %esi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-88(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -24(%rbp)
	movl	-64(%rbp), %eax
	movl	-32(%rbp), %r8d
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-92(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movl	%eax, -32(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movl	-28(%rbp), %r9d
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	-64(%rbp)
	sarl	$1, %eax
	movl	-96(%rbp), %r9d         # 4-byte Reload
	imull	%eax, %r9d
	movl	-24(%rbp), %eax
	subl	%r9d, %eax
	movl	%eax, -24(%rbp)
	movl	$-1, -68(%rbp)
	movl	$-1, -72(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_parent
	cmpq	-48(%rbp), %rax
	jne	.LBB54_3
# BB#2:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdx
	leaq	-68(%rbp), %rcx
	movabsq	$.L.str.27, %r8
	leaq	-72(%rbp), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-56(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_container_child_get
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_size_request
.LBB54_3:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_fixed_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_fixed_move
	movabsq	$.L.str.28, %rsi
	leaq	-60(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movl	-60(%rbp), %r8d
	cmpl	-32(%rbp), %r8d
	jle	.LBB54_5
# BB#4:                                 # %if.then.14
	movq	-56(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rdi
	callq	gtk_widget_hide
	jmp	.LBB54_6
.LBB54_5:                               # %if.else
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gtk_widget_set_size_request
.LBB54_6:                               # %if.end.15
	movq	-48(%rbp), %rdi
	callq	gtk_widget_queue_draw
	callq	gdk_window_process_all_updates
	cmpl	$-1, -68(%rbp)
	je	.LBB54_10
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -76(%rbp)
	jle	.LBB54_10
# BB#8:                                 # %land.lhs.true.18
	cmpl	$0, -80(%rbp)
	jle	.LBB54_10
# BB#9:                                 # %if.then.20
	movl	-64(%rbp), %eax
	subl	$1, %eax
	imull	-76(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-64(%rbp), %eax
	subl	$1, %eax
	imull	-76(%rbp), %eax
	movl	-68(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	callq	x_clear_area
.LBB54_10:                              # %if.end.26
	movq	-8(%rbp), %rdi
	callq	x_sync
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rdi
	callq	cancel_mouse_face
.LBB54_11:                              # %if.end.27
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	xg_update_scrollbar_pos, .Lfunc_end54-xg_update_scrollbar_pos
	.cfi_endproc

	.globl	xg_update_horizontal_scrollbar_pos
	.align	16, 0x90
	.type	xg_update_horizontal_scrollbar_pos,@function
xg_update_horizontal_scrollbar_pos:     # @xg_update_horizontal_scrollbar_pos
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	xg_get_widget_from_map
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB55_11
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -56(%rbp)
	movl	$-1, -64(%rbp)
	movl	$-1, -68(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_get_parent
	cmpq	-48(%rbp), %rax
	jne	.LBB55_3
# BB#2:                                 # %if.then.3
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdx
	leaq	-64(%rbp), %rcx
	movabsq	$.L.str.27, %r8
	leaq	-68(%rbp), %r9
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	movq	-56(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_container_child_get
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_size_request
.LBB55_3:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_fixed_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_fixed_move
	movabsq	$.L.str.28, %rsi
	leaq	-60(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movl	-60(%rbp), %r8d
	cmpl	-28(%rbp), %r8d
	jle	.LBB55_5
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rdi
	callq	gtk_widget_hide
	movq	-40(%rbp), %rdi
	callq	gtk_widget_hide
	jmp	.LBB55_6
.LBB55_5:                               # %if.else
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show_all
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gtk_widget_set_size_request
.LBB55_6:                               # %if.end.10
	movq	-48(%rbp), %rdi
	callq	gtk_widget_queue_draw
	callq	gdk_window_process_all_updates
	cmpl	$-1, -64(%rbp)
	je	.LBB55_10
# BB#7:                                 # %land.lhs.true
	cmpl	$0, -72(%rbp)
	jle	.LBB55_10
# BB#8:                                 # %land.lhs.true.13
	cmpl	$0, -76(%rbp)
	jle	.LBB55_10
# BB#9:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	callq	x_clear_area
.LBB55_10:                              # %if.end.16
	movq	-8(%rbp), %rdi
	callq	x_sync
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rax
	andq	$-8193, %rax            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rax             # imm = 0x2000
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rdi
	callq	cancel_mouse_face
.LBB55_11:                              # %if.end.17
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	xg_update_horizontal_scrollbar_pos, .Lfunc_end55-xg_update_horizontal_scrollbar_pos
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI56_0:
	.quad	4607182418800017408     # double 1
.LCPI56_1:
	.quad	4711630319185297408     # double 9999999
	.text
	.globl	xg_set_toolkit_scroll_bar_thumb
	.align	16, 0x90
	.type	xg_set_toolkit_scroll_bar_thumb,@function
xg_set_toolkit_scroll_bar_thumb:        # @xg_set_toolkit_scroll_bar_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	xg_get_widget_from_map
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB56_23
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$-1, 64(%rax)
	jne	.LBB56_23
# BB#2:                                 # %if.then
	movb	$0, -81(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_range_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment
	movq	%rax, -48(%rbp)
	testb	$1, globals+3428
	je	.LBB56_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	XWINDOW
	imull	$30, 268(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB56_4:                               # %if.end
	cmpl	$0, -20(%rbp)
	jg	.LBB56_6
# BB#5:                                 # %if.then.10
	movsd	.LCPI56_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else
	cvtsi2sdl	-16(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB56_7:                               # %if.end.15
	movl	$1, %eax
	movl	%eax, %edi
	movl	$9999999, %eax          # imm = 0x98967F
	movl	%eax, %edx
	movsd	.LCPI56_1, %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %rsi
	callq	clip_to_bounds
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$10000000, %ecx         # imm = 0x989680
	movsd	.LCPI56_1, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, %r8d
	movl	%r8d, -68(%rbp)
	mulsd	-64(%rbp), %xmm0
	cvttsd2si	%xmm0, %rsi
	subl	-68(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	clip_to_bounds
	movl	$1, %ecx
	movl	%eax, %r8d
	movl	%r8d, -72(%rbp)
	movl	-68(%rbp), %eax
	movq	-40(%rbp), %rdx
	cmpl	276(%rdx), %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jle	.LBB56_9
# BB#8:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB56_10
.LBB56_9:                               # %cond.false
	movq	-40(%rbp), %rax
	movl	276(%rax), %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
.LBB56_10:                              # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_page_size
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB56_14
# BB#11:                                # %if.then.34
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_get_step_increment
	cvttsd2si	%xmm0, %eax
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.LBB56_13
# BB#12:                                # %if.then.39
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-68(%rbp), %xmm0
	callq	gtk_adjustment_set_page_size
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	callq	gtk_adjustment_set_step_increment
	movl	$20, %eax
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %ecx
	movl	-68(%rbp), %edx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-112(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%eax, %ecx
	cvtsi2sdl	%ecx, %xmm0
	callq	gtk_adjustment_set_page_increment
	movb	$1, -81(%rbp)
.LBB56_13:                              # %if.end.45
	jmp	.LBB56_14
.LBB56_14:                              # %if.end.46
	testb	$1, -81(%rbp)
	jne	.LBB56_16
# BB#15:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	int_gtk_range_get_value
	cmpl	-72(%rbp), %eax
	je	.LBB56_22
.LBB56_16:                              # %if.then.54
	callq	block_input
	movb	$1, xg_ignore_gtk_scrollbar
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	int_gtk_range_get_value
	cmpl	-72(%rbp), %eax
	je	.LBB56_18
# BB#17:                                # %if.then.60
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-72(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_range_set_value
	jmp	.LBB56_21
.LBB56_18:                              # %if.else.64
	testb	$1, -81(%rbp)
	je	.LBB56_20
# BB#19:                                # %if.then.66
	movq	-48(%rbp), %rdi
	callq	gtk_adjustment_changed
.LBB56_20:                              # %if.end.67
	jmp	.LBB56_21
.LBB56_21:                              # %if.end.68
	movb	$0, xg_ignore_gtk_scrollbar
	callq	unblock_input
.LBB56_22:                              # %if.end.69
	jmp	.LBB56_23
.LBB56_23:                              # %if.end.70
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	xg_set_toolkit_scroll_bar_thumb, .Lfunc_end56-xg_set_toolkit_scroll_bar_thumb
	.cfi_endproc

	.align	16, 0x90
	.type	int_gtk_range_get_value,@function
int_gtk_range_get_value:                # @int_gtk_range_get_value
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_range_get_value
	cvttsd2si	%xmm0, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	int_gtk_range_get_value, .Lfunc_end57-int_gtk_range_get_value
	.cfi_endproc

	.globl	xg_set_toolkit_horizontal_scroll_bar_thumb
	.align	16, 0x90
	.type	xg_set_toolkit_horizontal_scroll_bar_thumb,@function
xg_set_toolkit_horizontal_scroll_bar_thumb: # @xg_set_toolkit_horizontal_scroll_bar_thumb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	xg_get_widget_from_map
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB58_24
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$-1, 64(%rax)
	jne	.LBB58_24
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB58_4
# BB#3:                                 # %cond.true
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB58_5
.LBB58_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB58_5
.LBB58_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	$0, -12(%rbp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jle	.LBB58_7
# BB#6:                                 # %cond.true.4
	movl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB58_8
.LBB58_7:                               # %cond.false.5
	xorl	%eax, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB58_8
.LBB58_8:                               # %cond.end.6
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-72(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB58_10
# BB#9:                                 # %cond.true.9
	movl	-48(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB58_14
.LBB58_10:                              # %cond.false.10
	cmpl	$0, -12(%rbp)
	jle	.LBB58_12
# BB#11:                                # %cond.true.12
	movl	-12(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB58_13
.LBB58_12:                              # %cond.false.13
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB58_13
.LBB58_13:                              # %cond.end.14
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB58_14:                              # %cond.end.16
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB58_16
# BB#15:                                # %cond.true.20
	movl	-16(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB58_17
.LBB58_16:                              # %cond.false.21
	movl	-48(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB58_17:                              # %cond.end.23
	movl	-88(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jle	.LBB58_19
# BB#18:                                # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB58_23
.LBB58_19:                              # %cond.false.27
	movl	-16(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB58_21
# BB#20:                                # %cond.true.30
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB58_22
.LBB58_21:                              # %cond.false.31
	movl	-48(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB58_22:                              # %cond.end.33
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB58_23:                              # %cond.end.35
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	$4, -60(%rbp)
	movl	$1, -64(%rbp)
	callq	block_input
	movq	-32(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_range_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_range_get_adjustment
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-56(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	cvtsi2sdl	-48(%rbp), %xmm2
	cvtsi2sdl	-64(%rbp), %xmm3
	cvtsi2sdl	-60(%rbp), %xmm4
	cvtsi2sdl	-52(%rbp), %xmm5
	callq	gtk_adjustment_configure
	movq	-40(%rbp), %rdi
	callq	gtk_adjustment_changed
	callq	unblock_input
.LBB58_24:                              # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	xg_set_toolkit_horizontal_scroll_bar_thumb, .Lfunc_end58-xg_set_toolkit_horizontal_scroll_bar_thumb
	.cfi_endproc

	.globl	xg_event_is_for_scrollbar
	.align	16, 0x90
	.type	xg_event_is_for_scrollbar,@function
xg_event_is_for_scrollbar:              # @xg_event_is_for_scrollbar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB59_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB59_4
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rax
	cmpl	$4, 84(%rax)
	jae	.LBB59_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	gdk_x11_lookup_xdisplay
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	gdk_display_get_window_at_pointer
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	88(%rdx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-88(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	setne	%r8b
	andb	$1, %r8b
	movb	%r8b, -17(%rbp)
	jmp	.LBB59_19
.LBB59_4:                               # %if.else
	cmpq	$0, -8(%rbp)
	je	.LBB59_18
# BB#5:                                 # %land.lhs.true.10
	movq	-16(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB59_7
# BB#6:                                 # %land.lhs.true.13
	movq	-16(%rbp), %rax
	cmpl	$4, 84(%rax)
	jb	.LBB59_8
.LBB59_7:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$6, (%rax)
	jne	.LBB59_18
.LBB59_8:                               # %if.then.19
	callq	gtk_grab_get_current
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	movb	%dl, -89(%rbp)          # 1-byte Spill
	je	.LBB59_17
# BB#9:                                 # %land.rhs
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_scrollbar_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB59_11
# BB#10:                                # %if.then.24
	movl	$0, -68(%rbp)
	jmp	.LBB59_16
.LBB59_11:                              # %if.else.25
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB59_14
# BB#12:                                # %land.lhs.true.27
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB59_14
# BB#13:                                # %if.then.30
	movl	$1, -68(%rbp)
	jmp	.LBB59_15
.LBB59_14:                              # %if.else.31
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB59_15:                              # %if.end
	jmp	.LBB59_16
.LBB59_16:                              # %if.end.33
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB59_17:                              # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -17(%rbp)
.LBB59_18:                              # %if.end.36
	jmp	.LBB59_19
.LBB59_19:                              # %if.end.37
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	xg_event_is_for_scrollbar, .Lfunc_end59-xg_event_is_for_scrollbar
	.cfi_endproc

	.align	16, 0x90
	.type	xg_create_tool_bar,@function
xg_create_tool_bar:                     # @xg_create_tool_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	80(%rdi), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	movl	$32, %eax
	movl	%eax, %edi
	callq	xmalloc
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	builtin_lisp_symbol
	movl	$80, %edi
	movl	%edi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 20(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 28(%rax)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB60_2:                               # %if.end
	callq	gtk_toolbar_new
	movabsq	$.L.str.70, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_set_name
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_set_style
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movabsq	$.L.str.71, %rsi
	movabsq	$tb_size_cb, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	xg_create_tool_bar, .Lfunc_end60-xg_create_tool_bar
	.cfi_endproc

	.align	16, 0x90
	.type	file_for_image,@function
file_for_image:                         # @file_for_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB61_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB61_4
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB61_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB61_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB61_4:                               # %land.end
                                        #   in Loop: Header=BB61_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB61_5
	jmp	.LBB61_9
.LBB61_5:                               # %for.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movl	$41, %edi
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB61_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB61_7:                               # %if.end
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_8
.LBB61_8:                               # %for.inc
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB61_1
.LBB61_9:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	file_for_image, .Lfunc_end61-file_for_image
	.cfi_endproc

	.align	16, 0x90
	.type	find_icon_from_name,@function
find_icon_from_name:                    # @find_icon_from_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$110, %eax
	jne	.LBB62_5
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB62_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -8(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	gtk_icon_theme_has_icon
	cmpl	$0, %eax
	jne	.LBB62_4
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB62_4:                               # %if.end
	jmp	.LBB62_12
.LBB62_5:                               # %if.else
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_stock_lookup
	cmpl	$0, %eax
	je	.LBB62_7
# BB#6:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB62_11
.LBB62_7:                               # %if.else.10
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gtk_icon_theme_has_icon
	cmpl	$0, %eax
	je	.LBB62_9
# BB#8:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -8(%rbp)
	jmp	.LBB62_10
.LBB62_9:                               # %if.else.14
	movq	$0, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB62_10:                              # %if.end.15
	jmp	.LBB62_11
.LBB62_11:                              # %if.end.16
	jmp	.LBB62_12
.LBB62_12:                              # %if.end.17
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	find_icon_from_name, .Lfunc_end62-find_icon_from_name
	.cfi_endproc

	.align	16, 0x90
	.type	find_rtl_image,@function
find_rtl_image:                         # @find_rtl_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	%rax, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jge	.LBB63_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	imull	$11, -28(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	file_for_image
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB63_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB63_1 Depth=1
	movabsq	$.L.str.72, %rdi
	callq	intern
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Ffile_name_nondirectory
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call1
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB63_5
# BB#4:                                 # %if.then.13
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_8
.LBB63_5:                               # %if.end
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_6
.LBB63_6:                               # %if.end.14
                                        #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_7
.LBB63_7:                               # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB63_1
.LBB63_8:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	find_rtl_image, .Lfunc_end63-find_rtl_image
	.cfi_endproc

	.align	16, 0x90
	.type	xg_tool_item_stale_p,@function
xg_tool_item_stale_p:                   # @xg_tool_item_stale_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movb	%r9b, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	andb	$1, %al
	movb	%al, -49(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	leaq	-72(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	xg_get_tool_bar_widgets
	movq	%rax, -88(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB64_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB64_6
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB64_4
# BB#3:                                 # %lor.lhs.false
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_5
.LBB64_4:                               # %if.then.10
	movb	$1, -1(%rbp)
	jmp	.LBB64_27
.LBB64_5:                               # %if.end
	jmp	.LBB64_18
.LBB64_6:                               # %if.else
	cmpq	$0, -32(%rbp)
	je	.LBB64_12
# BB#7:                                 # %land.lhs.true.12
	cmpq	$0, -72(%rbp)
	je	.LBB64_12
# BB#8:                                 # %if.then.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.31, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB64_10
# BB#9:                                 # %lor.lhs.false.18
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB64_11
.LBB64_10:                              # %if.then.21
	movb	$1, -1(%rbp)
	jmp	.LBB64_27
.LBB64_11:                              # %if.end.22
	jmp	.LBB64_17
.LBB64_12:                              # %if.else.23
	cmpq	$0, -72(%rbp)
	je	.LBB64_16
# BB#13:                                # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	16(%rcx), %rax
	je	.LBB64_15
# BB#14:                                # %if.then.28
	movb	$1, -1(%rbp)
	jmp	.LBB64_27
.LBB64_15:                              # %if.end.29
	jmp	.LBB64_16
.LBB64_16:                              # %if.end.30
	jmp	.LBB64_17
.LBB64_17:                              # %if.end.31
	jmp	.LBB64_18
.LBB64_18:                              # %if.end.32
	movq	-80(%rbp), %rdi
	movb	-49(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	is_box_type
	testb	$1, %al
	jne	.LBB64_22
# BB#19:                                # %lor.lhs.false.35
	cmpq	$0, -48(%rbp)
	je	.LBB64_21
# BB#20:                                # %cond.true
	cmpq	$0, -88(%rbp)
	je	.LBB64_22
	jmp	.LBB64_23
.LBB64_21:                              # %cond.false
	cmpq	$0, -88(%rbp)
	je	.LBB64_23
.LBB64_22:                              # %if.then.39
	movb	$1, -1(%rbp)
	jmp	.LBB64_27
.LBB64_23:                              # %if.end.40
	cmpq	$0, -48(%rbp)
	je	.LBB64_26
# BB#24:                                # %land.lhs.true.42
	cmpq	$0, -88(%rbp)
	je	.LBB64_26
# BB#25:                                # %if.then.44
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
.LBB64_26:                              # %if.end.47
	movb	$0, -1(%rbp)
.LBB64_27:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	xg_tool_item_stale_p, .Lfunc_end64-xg_tool_item_stale_p
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_image_for_pixmap,@function
xg_get_image_for_pixmap:                # @xg_get_image_for_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	file_for_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB65_1
	jmp	.LBB65_6
.LBB65_1:                               # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	x_find_image_file
	movq	%rax, -64(%rbp)
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB65_2
	jmp	.LBB65_6
.LBB65_2:                               # %if.then
	movq	-64(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -72(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB65_4
# BB#3:                                 # %if.then.6
	movq	-72(%rbp), %rdi
	callq	gtk_image_new_from_file
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB65_5
.LBB65_4:                               # %if.else
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_image_set_from_file
.LBB65_5:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB65_12
.LBB65_6:                               # %if.end.12
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	callq	xg_get_pixbuf_from_pix_and_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB65_11
# BB#7:                                 # %if.then.15
	cmpq	$0, -40(%rbp)
	jne	.LBB65_9
# BB#8:                                 # %if.then.17
	movq	-48(%rbp), %rdi
	callq	gtk_image_new_from_pixbuf
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	jmp	.LBB65_10
.LBB65_9:                               # %if.else.21
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_image_set_from_pixbuf
.LBB65_10:                              # %if.end.22
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
.LBB65_11:                              # %if.end.24
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB65_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	xg_get_image_for_pixmap, .Lfunc_end65-xg_get_image_for_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	xg_make_tool_item,@function
xg_make_tool_item:                      # @xg_make_tool_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movb	%r9b, %al
	movb	16(%rbp), %r10b
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	andb	$1, %al
	movb	%al, -37(%rbp)
	andb	$1, %r10b
	movb	%r10b, -38(%rbp)
	callq	gtk_tool_item_new
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movb	-37(%rbp), %r10b
	testb	$1, %r10b
	cmovnel	%r9d, %r8d
	cmpl	$0, %r8d
	jne	.LBB66_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_hbox_new
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB66_3
.LBB66_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_vbox_new
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB66_3:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	callq	gtk_button_new
	movq	%rax, -64(%rbp)
	callq	gtk_event_box_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	cmpq	$0, -16(%rbp)
	je	.LBB66_6
# BB#4:                                 # %land.lhs.true
	testb	$1, -38(%rbp)
	jne	.LBB66_6
# BB#5:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB66_6:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB66_8
# BB#7:                                 # %if.then.14
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_label_new
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB66_8:                               # %if.end.18
	cmpq	$0, -16(%rbp)
	je	.LBB66_11
# BB#9:                                 # %land.lhs.true.20
	testb	$1, -38(%rbp)
	je	.LBB66_11
# BB#10:                                # %if.then.22
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
.LBB66_11:                              # %if.end.25
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_focus_on_click
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	cmpq	$0, -16(%rbp)
	jne	.LBB66_13
# BB#12:                                # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	je	.LBB66_14
.LBB66_13:                              # %if.then.38
	movl	$80, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rsi
	movabsq	$xg_tool_bar_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rsi
	movabsq	$xg_tool_bar_item_expose_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tool_item_set_homogeneous
	movabsq	$.L.str.25, %rsi
	movabsq	$xg_tool_bar_button_cb, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.62, %rsi
	movabsq	$xg_tool_bar_help_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.63, %rsi
	movabsq	$xg_tool_bar_help_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB66_14:                              # %if.end.50
	cmpq	$0, -24(%rbp)
	je	.LBB66_16
# BB#15:                                # %if.then.52
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB66_16:                              # %if.end.53
	movq	-48(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end66:
	.size	xg_make_tool_item, .Lfunc_end66-xg_make_tool_item
	.cfi_endproc

	.align	16, 0x90
	.type	xg_pack_tool_bar,@function
xg_pack_tool_bar:                       # @xg_pack_tool_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$607, %eax              # imm = 0x25F
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB67_2
# BB#1:                                 # %lor.rhs
	movl	$811, %edi              # imm = 0x32B
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -57(%rbp)          # 1-byte Spill
.LBB67_2:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movb	-25(%rbp), %r9b
	testb	$1, %r9b
	cmovnel	%r8d, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_orientable_set_orientation
	testb	$1, -25(%rbp)
	je	.LBB67_6
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$607, %edi              # imm = 0x25F
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_5
# BB#4:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
.LBB67_5:                               # %if.end
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 128(%rax)
	jmp	.LBB67_9
.LBB67_6:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	setne	%cl
	andb	$1, %cl
	movb	%cl, -41(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$928, %edi              # imm = 0x3A0
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_8
# BB#7:                                 # %if.then.22
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movb	-41(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
.LBB67_8:                               # %if.end.27
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 128(%rax)
.LBB67_9:                               # %if.end.31
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 128(%rax)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	xg_pack_tool_bar, .Lfunc_end67-xg_pack_tool_bar
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_tool_bar_sizes,@function
xg_update_tool_bar_sizes:               # @xg_update_tool_bar_sizes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB68_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rdx
	leaq	-60(%rbp), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_container_child_get
	cmpl	$0, -60(%rbp)
	jne	.LBB68_3
# BB#2:                                 # %if.then.5
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB68_4
.LBB68_3:                               # %if.else
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB68_4:                               # %if.end
	jmp	.LBB68_11
.LBB68_5:                               # %if.else.7
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rdx
	leaq	-64(%rbp), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_container_child_get
	cmpl	$0, -64(%rbp)
	je	.LBB68_8
# BB#6:                                 # %lor.lhs.false
	cmpl	$1, -64(%rbp)
	jne	.LBB68_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 112(%rax)
	je	.LBB68_9
.LBB68_8:                               # %if.then.13
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB68_10
.LBB68_9:                               # %if.else.14
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB68_10:                              # %if.end.16
	jmp	.LBB68_11
.LBB68_11:                              # %if.end.17
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB68_15
# BB#12:                                # %lor.lhs.false.21
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpl	16(%rcx), %eax
	jne	.LBB68_15
# BB#13:                                # %lor.lhs.false.25
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB68_15
# BB#14:                                # %lor.lhs.false.29
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpl	8(%rcx), %eax
	je	.LBB68_16
.LBB68_15:                              # %if.then.33
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, 12(%rax)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	$0, 16(%rax)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 12(%rax)
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 16(%rax)
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 4(%rax)
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	%ecx, 8(%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB68_17
.LBB68_16:                              # %if.else.58
	movb	$0, -1(%rbp)
.LBB68_17:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	xg_update_tool_bar_sizes, .Lfunc_end68-xg_update_tool_bar_sizes
	.cfi_endproc

	.globl	free_frame_tool_bar
	.align	16, 0x90
	.type	free_frame_tool_bar,@function
free_frame_tool_bar:                    # @free_frame_tool_bar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 120(%rdi)
	je	.LBB69_10
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	block_input
	movq	-16(%rbp), %rax
	movb	128(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB69_6
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movb	128(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB69_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	jmp	.LBB69_5
.LBB69_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB69_5:                               # %if.end
	jmp	.LBB69_7
.LBB69_6:                               # %if.else.11
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_destroy
.LBB69_7:                               # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	$0, 120(%rcx)
	movq	-16(%rbp), %rcx
	movq	$0, 120(%rcx)
	movq	-16(%rbp), %rcx
	movb	128(%rcx), %dl
	andb	$-3, %dl
	movb	%dl, 128(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	$0, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	$0, 4(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	$0, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	$0, 12(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB69_9
# BB#8:                                 # %if.then.32
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB69_9:                               # %if.end.37
	movl	$465, %edi              # imm = 0x1D1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$923, %edi              # imm = 0x39B
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	callq	unblock_input
.LBB69_10:                              # %if.end.41
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	free_frame_tool_bar, .Lfunc_end69-free_frame_tool_bar
	.cfi_endproc

	.globl	xg_change_toolbar_position
	.align	16, 0x90
	.type	xg_change_toolbar_position,@function
xg_change_toolbar_position:             # @xg_change_toolbar_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 120(%rsi)
	je	.LBB70_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB70_3
.LBB70_2:                               # %if.then
	jmp	.LBB70_11
.LBB70_3:                               # %if.end
	callq	block_input
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movb	128(%rdi), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	movq	%rax, -40(%rbp)         # 8-byte Spill
	je	.LBB70_8
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movb	128(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB70_6
# BB#5:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	jmp	.LBB70_7
.LBB70_6:                               # %if.else
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB70_7:                               # %if.end.13
	jmp	.LBB70_8
.LBB70_8:                               # %if.end.14
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xg_pack_tool_bar
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	callq	xg_update_tool_bar_sizes
	testb	$1, %al
	jne	.LBB70_9
	jmp	.LBB70_10
.LBB70_9:                               # %if.then.16
	movl	$1064, %edi             # imm = 0x428
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-76(%rbp), %edx         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$923, %edi              # imm = 0x39B
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB70_10:                              # %if.end.20
	callq	unblock_input
.LBB70_11:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	xg_change_toolbar_position, .Lfunc_end70-xg_change_toolbar_position
	.cfi_endproc

	.globl	xg_initialize
	.align	16, 0x90
	.type	xg_initialize,@function
xg_initialize:                          # @xg_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	XftInit
	movq	$0, gdpy_def
	movb	$0, xg_ignore_gtk_scrollbar
	movq	$0, xg_menu_item_cb_list+8
	movq	$0, xg_menu_item_cb_list
	movq	$0, xg_menu_cb_list+8
	movq	$0, xg_menu_cb_list
	movq	$0, id_to_widget+16
	movq	$0, id_to_widget+8
	movq	$0, id_to_widget
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gdk_display_get_default
	movq	%rax, %rdi
	callq	gdk_display_get_default_screen
	movq	%rax, %rdi
	callq	gtk_settings_get_for_screen
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.29, %rdx
	movabsq	$.L.str.5, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_settings_set_string_property
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.5, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	gtk_settings_set_string_property
	callq	gtk_dialog_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, %rdi
	callq	gtk_binding_set_by_class
	movl	$103, %esi
	movl	$4, %edx
	movabsq	$.L.str.35, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	callq	gtk_menu_shell_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, %rdi
	callq	gtk_binding_set_by_class
	movl	$103, %esi
	movl	$4, %edx
	movabsq	$.L.str.36, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	callq	update_theme_scrollbar_width
	callq	update_theme_scrollbar_height
	movq	$0, x_last_font_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	xg_initialize, .Lfunc_end71-xg_initialize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI72_0:
	.quad	4607182418800017408     # double 1
.LCPI72_1:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI72_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	update_theme_scrollbar_width,@function
update_theme_scrollbar_width:           # @update_theme_scrollbar_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI72_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI72_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI72_2, %xmm1        # xmm1 = mem[0],zero
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_vscrollbar_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movabsq	$.L.str.76, %rsi
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.77, %rcx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-24(%rbp), %r10d
	shll	$1, %r10d
	addl	-20(%rbp), %r10d
	movl	%r10d, -20(%rbp)
	cmpl	$16, -20(%rbp)
	jge	.LBB72_2
# BB#1:                                 # %if.then
	movl	$16, -20(%rbp)
.LBB72_2:                               # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, scroll_bar_width_for_theme
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	update_theme_scrollbar_width, .Lfunc_end72-update_theme_scrollbar_width
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI73_0:
	.quad	4607182418800017408     # double 1
.LCPI73_1:
	.quad	4711630319722168320     # double 1.0E+7
.LCPI73_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	update_theme_scrollbar_height,@function
update_theme_scrollbar_height:          # @update_theme_scrollbar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI73_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI73_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI73_2, %xmm1        # xmm1 = mem[0],zero
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-40(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-40(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_hscrollbar_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref_sink
	movabsq	$.L.str.76, %rsi
	leaq	-20(%rbp), %rdx
	movabsq	$.L.str.77, %rcx
	leaq	-24(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movl	-24(%rbp), %r10d
	shll	$1, %r10d
	addl	-20(%rbp), %r10d
	movl	%r10d, -20(%rbp)
	cmpl	$12, -20(%rbp)
	jge	.LBB73_2
# BB#1:                                 # %if.then
	movl	$12, -20(%rbp)
.LBB73_2:                               # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, scroll_bar_height_for_theme
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	update_theme_scrollbar_height, .Lfunc_end73-update_theme_scrollbar_height
	.cfi_endproc

	.align	16, 0x90
	.type	my_log_handler,@function
my_log_handler:                         # @my_log_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.41, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strstr
	cmpq	$0, %rax
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB74_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	my_log_handler, .Lfunc_end74-my_log_handler
	.cfi_endproc

	.align	16, 0x90
	.type	hierarchy_ch_cb,@function
hierarchy_ch_cb:                        # @hierarchy_ch_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	208(%rdx), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB75_9
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB75_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB75_8
.LBB75_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB75_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB75_6
# BB#5:                                 # %if.then.6
	movl	$1, -68(%rbp)
	jmp	.LBB75_7
.LBB75_6:                               # %if.else.7
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB75_7:                               # %if.end
	jmp	.LBB75_8
.LBB75_8:                               # %if.end.9
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB75_10
.LBB75_9:                               # %if.then.11
	movq	-16(%rbp), %rdi
	callq	gtk_widget_hide
.LBB75_10:                              # %if.end.12
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	hierarchy_ch_cb, .Lfunc_end75-hierarchy_ch_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_file_name_from_selector,@function
xg_get_file_name_from_selector:         # @xg_get_file_name_from_selector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_file_selection_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_file_selection_get_filename
	movq	%rax, %rdi
	callq	xstrdup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	xg_get_file_name_from_selector, .Lfunc_end76-xg_get_file_name_from_selector
	.cfi_endproc

	.align	16, 0x90
	.type	xg_toggle_visibility_cb,@function
xg_toggle_visibility_cb:                # @xg_toggle_visibility_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	leaq	-28(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	cmpl	$0, -28(%rbp)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	xg_toggle_visibility_cb, .Lfunc_end77-xg_toggle_visibility_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_toggle_notify_cb,@function
xg_toggle_notify_cb:                    # @xg_toggle_notify_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	$.L.str.50, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB78_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	leaq	-36(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	cmpl	$0, -40(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	cmpl	%r9d, %eax
	je	.LBB78_3
# BB#2:                                 # %if.then.14
	movl	$80, %eax
	movl	%eax, %esi
	movabsq	$xg_toggle_visibility_cb, %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-48(%rbp), %r9
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-48(%rbp), %r9
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB78_3:                               # %if.end
	cmpl	$0, -36(%rbp)
	setne	%al
	andb	$1, %al
	movb	%al, globals+3443
.LBB78_4:                               # %if.end.22
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	xg_toggle_notify_cb, .Lfunc_end78-xg_toggle_notify_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_file_name_from_chooser,@function
xg_get_file_name_from_chooser:          # @xg_get_file_name_from_chooser
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	xg_get_file_name_from_chooser, .Lfunc_end79-xg_get_file_name_from_chooser
	.cfi_endproc

	.align	16, 0x90
	.type	xg_dialog_response_cb,@function
xg_dialog_response_cb:                  # @xg_dialog_response_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movl	-12(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	%esi, 8(%rdx)
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	g_main_loop_quit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	xg_dialog_response_cb, .Lfunc_end80-xg_dialog_response_cb
	.cfi_endproc

	.align	16, 0x90
	.type	pop_down_dialog,@function
pop_down_dialog:                        # @pop_down_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	cmpq	$0, 16(%rdi)
	je	.LBB81_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_destroy
.LBB81_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB81_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movl	24(%rax), %edi
	callq	g_source_remove
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB81_4:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_main_loop_quit
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_main_loop_unref
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	pop_down_dialog, .Lfunc_end81-pop_down_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	xg_maybe_add_timer,@function
xg_maybe_add_timer:                     # @xg_maybe_add_timer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	timer_check
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB82_1
	jmp	.LBB82_4
.LBB82_1:                               # %if.then
	movl	$1000, %eax             # imm = 0x3E8
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	$1000000, -44(%rbp)     # imm = 0xF4240
	movq	-24(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	addq	%rsi, %rdx
	subq	$1, %rdx
	movslq	-44(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	cqto
	idivq	%rsi
	movl	%eax, %edi
	movl	%edi, -48(%rbp)
	movq	-40(%rbp), %rax
	subl	-48(%rbp), %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpq	%rsi, %r8
	jg	.LBB82_3
# BB#2:                                 # %if.then.8
	movabsq	$xg_maybe_add_timer, %rsi
	imulq	$1000, -40(%rbp), %rax  # imm = 0x3E8
	movslq	-48(%rbp), %rcx
	addq	%rcx, %rax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, %edi
	movq	%rax, %rdx
	callq	g_timeout_add
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
.LBB82_3:                               # %if.end
	jmp	.LBB82_4
.LBB82_4:                               # %if.end.14
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	xg_maybe_add_timer, .Lfunc_end82-xg_maybe_add_timer
	.cfi_endproc

	.align	16, 0x90
	.type	get_dialog_title,@function
get_dialog_title:                       # @get_dialog_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	$.L.str.29, -16(%rbp)
	movsbl	-1(%rbp), %edi
	movl	%edi, %ecx
	subl	$69, %ecx
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	je	.LBB83_1
	jmp	.LBB83_7
.LBB83_7:                               # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$73, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB83_2
	jmp	.LBB83_8
.LBB83_8:                               # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$76, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB83_3
	jmp	.LBB83_9
.LBB83_9:                               # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$80, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB83_4
	jmp	.LBB83_10
.LBB83_10:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$81, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB83_5
	jmp	.LBB83_11
.LBB83_11:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB83_1
	jmp	.LBB83_12
.LBB83_12:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB83_2
	jmp	.LBB83_13
.LBB83_13:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB83_3
	jmp	.LBB83_14
.LBB83_14:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB83_4
	jmp	.LBB83_15
.LBB83_15:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$113, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB83_5
	jmp	.LBB83_6
.LBB83_1:                               # %sw.bb
	movabsq	$.L.str.57, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB83_6
.LBB83_2:                               # %sw.bb.1
	movabsq	$.L.str.58, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB83_6
.LBB83_3:                               # %sw.bb.2
	movabsq	$.L.str.59, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB83_6
.LBB83_4:                               # %sw.bb.3
	movabsq	$.L.str.59, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB83_6
.LBB83_5:                               # %sw.bb.4
	movabsq	$.L.str.60, %rax
	movq	%rax, -16(%rbp)
.LBB83_6:                               # %sw.epilog
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end83:
	.size	get_dialog_title, .Lfunc_end83-get_dialog_title
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_delete_callback,@function
dialog_delete_callback:                 # @dialog_delete_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_unmap
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	dialog_delete_callback, .Lfunc_end84-dialog_delete_callback
	.cfi_endproc

	.align	16, 0x90
	.type	get_utf8_string,@function
get_utf8_string:                        # @get_utf8_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$1344, %rsp             # imm = 0x540
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB85_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB85_726
.LBB85_2:                               # %if.end
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	jne	.LBB85_4
# BB#3:                                 # %if.then.2
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_locale_to_utf8
	movq	%rax, -24(%rbp)
	jmp	.LBB85_5
.LBB85_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB85_726
.LBB85_5:                               # %if.end.5
	cmpq	$0, -24(%rbp)
	jne	.LBB85_725
# BB#6:                                 # %if.then.7
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -88(%rbp)
.LBB85_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	$-1, %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	-64(%rbp), %rdi
	callq	g_locale_to_utf8
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	movb	%r10b, -105(%rbp)       # 1-byte Spill
	jne	.LBB85_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB85_7 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$1, 4(%rax)
	sete	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB85_9:                               # %land.end
                                        #   in Loop: Header=BB85_7 Depth=1
	movb	-105(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB85_10
	jmp	.LBB85_11
.LBB85_10:                              # %while.body
                                        #   in Loop: Header=BB85_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	addq	$1, %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_error_free
	movq	$0, -88(%rbp)
	jmp	.LBB85_7
.LBB85_11:                              # %while.end
	cmpq	$0, -88(%rbp)
	je	.LBB85_13
# BB#12:                                # %if.then.11
	movq	-88(%rbp), %rdi
	callq	g_error_free
	movq	$0, -88(%rbp)
.LBB85_13:                              # %if.end.12
	cmpq	$0, -72(%rbp)
	je	.LBB85_15
# BB#14:                                # %if.then.14
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB85_15:                              # %if.end.15
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdi
	movb	%cl, -106(%rbp)         # 1-byte Spill
	callq	strlen
	movq	%rax, -32(%rbp)
	movb	-106(%rbp), %cl         # 1-byte Reload
	testb	$1, %cl
	jne	.LBB85_16
	jmp	.LBB85_95
.LBB85_16:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_17
	jmp	.LBB85_56
.LBB85_17:                              # %cond.true.17
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_19
# BB#18:                                # %cond.true.22
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
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB85_20
.LBB85_19:                              # %cond.false
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
.LBB85_20:                              # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB85_22
# BB#21:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB85_48
.LBB85_22:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_23
	jmp	.LBB85_34
.LBB85_23:                              # %cond.true.51
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB85_28
# BB#24:                                # %cond.true.56
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
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jge	.LBB85_26
# BB#25:                                # %cond.true.66
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
	movl	%edx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB85_27
.LBB85_26:                              # %cond.false.76
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -120(%rbp)        # 4-byte Spill
.LBB85_27:                              # %cond.end.82
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_48
	jmp	.LBB85_45
.LBB85_28:                              # %cond.false.86
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_29
	jmp	.LBB85_30
.LBB85_29:                              # %cond.true.87
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_48
	jmp	.LBB85_45
.LBB85_30:                              # %cond.false.88
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_32
# BB#31:                                # %cond.true.96
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
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB85_33
.LBB85_32:                              # %cond.false.116
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -124(%rbp)        # 4-byte Spill
.LBB85_33:                              # %cond.end.122
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_48
	jmp	.LBB85_45
.LBB85_34:                              # %cond.false.129
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_35
	jmp	.LBB85_36
.LBB85_35:                              # %cond.true.130
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_48
	jmp	.LBB85_45
.LBB85_36:                              # %cond.false.131
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB85_41
# BB#37:                                # %cond.true.136
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
	movl	%edx, -128(%rbp)        # 4-byte Spill
	jge	.LBB85_39
# BB#38:                                # %cond.true.146
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
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB85_40
.LBB85_39:                              # %cond.false.166
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -132(%rbp)        # 4-byte Spill
.LBB85_40:                              # %cond.end.172
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_48
	jmp	.LBB85_45
.LBB85_41:                              # %cond.false.177
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_43
# BB#42:                                # %cond.true.185
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
	movl	%edx, -136(%rbp)        # 4-byte Spill
	jmp	.LBB85_44
.LBB85_43:                              # %cond.false.195
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
.LBB85_44:                              # %cond.end.201
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_48
.LBB85_45:                              # %lor.lhs.false.208
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$2, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_47
# BB#46:                                # %land.lhs.true.216
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$2, %edx
	cmpl	$-128, %edx
	jl	.LBB85_48
.LBB85_47:                              # %lor.lhs.false.222
	movl	$127, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$2, %esi
	cmpl	%esi, %eax
	jge	.LBB85_52
.LBB85_48:                              # %cond.true.228
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB85_50
# BB#49:                                # %cond.true.234
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	jmp	.LBB85_51
.LBB85_50:                              # %cond.false.240
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
.LBB85_51:                              # %cond.end.248
	movl	-140(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_52:                              # %cond.false.251
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB85_54
# BB#53:                                # %cond.true.257
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
	jmp	.LBB85_55
.LBB85_54:                              # %cond.false.263
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -144(%rbp)        # 4-byte Spill
.LBB85_55:                              # %cond.end.271
	movl	-144(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_56:                              # %cond.false.274
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_58
# BB#57:                                # %cond.true.280
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
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB85_59
.LBB85_58:                              # %cond.false.297
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB85_59:                              # %cond.end.301
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_61
# BB#60:                                # %land.lhs.true.305
	cmpq	$0, -40(%rbp)
	jl	.LBB85_87
.LBB85_61:                              # %lor.lhs.false.308
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_62
	jmp	.LBB85_73
.LBB85_62:                              # %cond.true.309
	cmpq	$0, -40(%rbp)
	jge	.LBB85_67
# BB#63:                                # %cond.true.312
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jge	.LBB85_65
# BB#64:                                # %cond.true.318
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB85_66
.LBB85_65:                              # %cond.false.326
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB85_66:                              # %cond.end.330
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	cqto
	movq	-176(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_87
	jmp	.LBB85_84
.LBB85_67:                              # %cond.false.335
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_68
	jmp	.LBB85_69
.LBB85_68:                              # %cond.true.336
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_87
	jmp	.LBB85_84
.LBB85_69:                              # %cond.false.337
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_71
# BB#70:                                # %cond.true.343
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
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB85_72
.LBB85_71:                              # %cond.false.360
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB85_72:                              # %cond.end.364
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_87
	jmp	.LBB85_84
.LBB85_73:                              # %cond.false.369
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_74
	jmp	.LBB85_75
.LBB85_74:                              # %cond.true.370
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_87
	jmp	.LBB85_84
.LBB85_75:                              # %cond.false.371
	cmpq	$0, -40(%rbp)
	jge	.LBB85_80
# BB#76:                                # %cond.true.374
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jge	.LBB85_78
# BB#77:                                # %cond.true.380
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
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB85_79
.LBB85_78:                              # %cond.false.397
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB85_79:                              # %cond.end.401
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	cqto
	movq	-216(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_87
	jmp	.LBB85_84
.LBB85_80:                              # %cond.false.406
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_82
# BB#81:                                # %cond.true.412
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB85_83
.LBB85_82:                              # %cond.false.420
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB85_83:                              # %cond.end.424
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	cqto
	movq	-232(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_87
.LBB85_84:                              # %lor.lhs.false.429
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_86
# BB#85:                                # %land.lhs.true.435
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-128, %rax
	jl	.LBB85_87
.LBB85_86:                              # %lor.lhs.false.439
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_91
.LBB85_87:                              # %cond.true.443
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB85_89
# BB#88:                                # %cond.true.449
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB85_90
.LBB85_89:                              # %cond.false.455
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB85_90:                              # %cond.end.463
	movl	-236(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_91:                              # %cond.false.466
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	cmpl	$127, %edx
	jg	.LBB85_93
# BB#92:                                # %cond.true.472
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB85_94
.LBB85_93:                              # %cond.false.478
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$2, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB85_94:                              # %cond.end.486
	movl	-240(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_95:                              # %cond.false.489
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_96
	jmp	.LBB85_175
.LBB85_96:                              # %cond.true.490
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_97
	jmp	.LBB85_136
.LBB85_97:                              # %cond.true.491
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_99
# BB#98:                                # %cond.true.499
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
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB85_100
.LBB85_99:                              # %cond.false.519
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB85_100:                             # %cond.end.525
	movl	-244(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB85_102
# BB#101:                               # %land.lhs.true.529
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB85_128
.LBB85_102:                             # %lor.lhs.false.534
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_103
	jmp	.LBB85_114
.LBB85_103:                             # %cond.true.535
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB85_108
# BB#104:                               # %cond.true.540
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
	movl	%edx, -248(%rbp)        # 4-byte Spill
	jge	.LBB85_106
# BB#105:                               # %cond.true.550
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
	movl	%edx, -252(%rbp)        # 4-byte Spill
	jmp	.LBB85_107
.LBB85_106:                             # %cond.false.560
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -252(%rbp)        # 4-byte Spill
.LBB85_107:                             # %cond.end.566
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_128
	jmp	.LBB85_125
.LBB85_108:                             # %cond.false.571
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_109
	jmp	.LBB85_110
.LBB85_109:                             # %cond.true.572
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_128
	jmp	.LBB85_125
.LBB85_110:                             # %cond.false.573
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_112
# BB#111:                               # %cond.true.581
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
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB85_113
.LBB85_112:                             # %cond.false.601
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -256(%rbp)        # 4-byte Spill
.LBB85_113:                             # %cond.end.607
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_128
	jmp	.LBB85_125
.LBB85_114:                             # %cond.false.614
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_115
	jmp	.LBB85_116
.LBB85_115:                             # %cond.true.615
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_128
	jmp	.LBB85_125
.LBB85_116:                             # %cond.false.616
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB85_121
# BB#117:                               # %cond.true.621
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
	movl	%edx, -260(%rbp)        # 4-byte Spill
	jge	.LBB85_119
# BB#118:                               # %cond.true.631
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
	jmp	.LBB85_120
.LBB85_119:                             # %cond.false.651
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -264(%rbp)        # 4-byte Spill
.LBB85_120:                             # %cond.end.657
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-260(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_128
	jmp	.LBB85_125
.LBB85_121:                             # %cond.false.662
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_123
# BB#122:                               # %cond.true.670
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
	movl	%edx, -268(%rbp)        # 4-byte Spill
	jmp	.LBB85_124
.LBB85_123:                             # %cond.false.680
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -268(%rbp)        # 4-byte Spill
.LBB85_124:                             # %cond.end.686
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_128
.LBB85_125:                             # %lor.lhs.false.693
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$2, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_127
# BB#126:                               # %land.lhs.true.701
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$2, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB85_128
.LBB85_127:                             # %lor.lhs.false.707
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$2, %esi
	cmpl	%esi, %eax
	jge	.LBB85_132
.LBB85_128:                             # %cond.true.713
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_130
# BB#129:                               # %cond.true.719
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -272(%rbp)        # 4-byte Spill
	jmp	.LBB85_131
.LBB85_130:                             # %cond.false.725
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB85_131:                             # %cond.end.733
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_132:                             # %cond.false.736
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_134
# BB#133:                               # %cond.true.742
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -276(%rbp)        # 4-byte Spill
	jmp	.LBB85_135
.LBB85_134:                             # %cond.false.748
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -276(%rbp)        # 4-byte Spill
.LBB85_135:                             # %cond.end.756
	movl	-276(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_136:                             # %cond.false.759
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_138
# BB#137:                               # %cond.true.765
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
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB85_139
.LBB85_138:                             # %cond.false.782
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB85_139:                             # %cond.end.786
	movq	-288(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_141
# BB#140:                               # %land.lhs.true.790
	cmpq	$0, -40(%rbp)
	jl	.LBB85_167
.LBB85_141:                             # %lor.lhs.false.793
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_142
	jmp	.LBB85_153
.LBB85_142:                             # %cond.true.794
	cmpq	$0, -40(%rbp)
	jge	.LBB85_147
# BB#143:                               # %cond.true.797
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jge	.LBB85_145
# BB#144:                               # %cond.true.803
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB85_146
.LBB85_145:                             # %cond.false.811
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB85_146:                             # %cond.end.815
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	cqto
	movq	-312(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_167
	jmp	.LBB85_164
.LBB85_147:                             # %cond.false.820
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_148
	jmp	.LBB85_149
.LBB85_148:                             # %cond.true.821
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_167
	jmp	.LBB85_164
.LBB85_149:                             # %cond.false.822
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_151
# BB#150:                               # %cond.true.828
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
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB85_152
.LBB85_151:                             # %cond.false.845
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB85_152:                             # %cond.end.849
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cqto
	movq	-328(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_167
	jmp	.LBB85_164
.LBB85_153:                             # %cond.false.854
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_154
	jmp	.LBB85_155
.LBB85_154:                             # %cond.true.855
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_167
	jmp	.LBB85_164
.LBB85_155:                             # %cond.false.856
	cmpq	$0, -40(%rbp)
	jge	.LBB85_160
# BB#156:                               # %cond.true.859
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jge	.LBB85_158
# BB#157:                               # %cond.true.865
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
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB85_159
.LBB85_158:                             # %cond.false.882
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB85_159:                             # %cond.end.886
	movq	-344(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	cqto
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_167
	jmp	.LBB85_164
.LBB85_160:                             # %cond.false.891
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_162
# BB#161:                               # %cond.true.897
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB85_163
.LBB85_162:                             # %cond.false.905
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB85_163:                             # %cond.end.909
	movq	-360(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	cqto
	movq	-368(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_167
.LBB85_164:                             # %lor.lhs.false.914
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_166
# BB#165:                               # %land.lhs.true.920
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB85_167
.LBB85_166:                             # %lor.lhs.false.924
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_171
.LBB85_167:                             # %cond.true.928
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_169
# BB#168:                               # %cond.true.934
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB85_170
.LBB85_169:                             # %cond.false.940
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -372(%rbp)        # 4-byte Spill
.LBB85_170:                             # %cond.end.948
	movl	-372(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_171:                             # %cond.false.951
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_173
# BB#172:                               # %cond.true.957
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -376(%rbp)        # 4-byte Spill
	jmp	.LBB85_174
.LBB85_173:                             # %cond.false.963
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$2, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -376(%rbp)        # 4-byte Spill
.LBB85_174:                             # %cond.end.971
	movl	-376(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_175:                             # %cond.false.974
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_176
	jmp	.LBB85_255
.LBB85_176:                             # %cond.true.975
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_177
	jmp	.LBB85_216
.LBB85_177:                             # %cond.true.976
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_179
# BB#178:                               # %cond.true.983
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
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB85_180
.LBB85_179:                             # %cond.false.1001
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
.LBB85_180:                             # %cond.end.1006
	movl	-380(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB85_182
# BB#181:                               # %land.lhs.true.1010
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB85_208
.LBB85_182:                             # %lor.lhs.false.1014
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_183
	jmp	.LBB85_194
.LBB85_183:                             # %cond.true.1015
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_188
# BB#184:                               # %cond.true.1019
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	jge	.LBB85_186
# BB#185:                               # %cond.true.1027
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	jmp	.LBB85_187
.LBB85_186:                             # %cond.false.1036
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
.LBB85_187:                             # %cond.end.1041
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-384(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_208
	jmp	.LBB85_205
.LBB85_188:                             # %cond.false.1046
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_189
	jmp	.LBB85_190
.LBB85_189:                             # %cond.true.1047
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_208
	jmp	.LBB85_205
.LBB85_190:                             # %cond.false.1048
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_192
# BB#191:                               # %cond.true.1055
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
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB85_193
.LBB85_192:                             # %cond.false.1073
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -392(%rbp)        # 4-byte Spill
.LBB85_193:                             # %cond.end.1078
	movl	-392(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_208
	jmp	.LBB85_205
.LBB85_194:                             # %cond.false.1084
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_195
	jmp	.LBB85_196
.LBB85_195:                             # %cond.true.1085
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_208
	jmp	.LBB85_205
.LBB85_196:                             # %cond.false.1086
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_201
# BB#197:                               # %cond.true.1090
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jge	.LBB85_199
# BB#198:                               # %cond.true.1098
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
	jmp	.LBB85_200
.LBB85_199:                             # %cond.false.1116
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -400(%rbp)        # 4-byte Spill
.LBB85_200:                             # %cond.end.1121
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movl	-396(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB85_208
	jmp	.LBB85_205
.LBB85_201:                             # %cond.false.1126
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_203
# BB#202:                               # %cond.true.1133
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	jmp	.LBB85_204
.LBB85_203:                             # %cond.false.1142
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
.LBB85_204:                             # %cond.end.1147
	movl	-404(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	cltd
	idivl	%ecx
	movq	-40(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB85_208
.LBB85_205:                             # %lor.lhs.false.1153
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_207
# BB#206:                               # %land.lhs.true.1160
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB85_208
.LBB85_207:                             # %lor.lhs.false.1165
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	shll	$2, %edx
	cmpl	%edx, %eax
	jge	.LBB85_212
.LBB85_208:                             # %cond.true.1170
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_210
# BB#209:                               # %cond.true.1175
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jmp	.LBB85_211
.LBB85_210:                             # %cond.false.1178
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -408(%rbp)        # 4-byte Spill
.LBB85_211:                             # %cond.end.1183
	movl	-408(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_212:                             # %cond.false.1186
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_214
# BB#213:                               # %cond.true.1191
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	jmp	.LBB85_215
.LBB85_214:                             # %cond.false.1194
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -412(%rbp)        # 4-byte Spill
.LBB85_215:                             # %cond.end.1199
	movl	-412(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_216:                             # %cond.false.1202
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_218
# BB#217:                               # %cond.true.1208
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
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB85_219
.LBB85_218:                             # %cond.false.1225
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB85_219:                             # %cond.end.1229
	movq	-424(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_221
# BB#220:                               # %land.lhs.true.1233
	cmpq	$0, -40(%rbp)
	jl	.LBB85_247
.LBB85_221:                             # %lor.lhs.false.1236
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_222
	jmp	.LBB85_233
.LBB85_222:                             # %cond.true.1237
	cmpq	$0, -40(%rbp)
	jge	.LBB85_227
# BB#223:                               # %cond.true.1240
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB85_225
# BB#224:                               # %cond.true.1246
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB85_226
.LBB85_225:                             # %cond.false.1254
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB85_226:                             # %cond.end.1258
	movq	-440(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	cqto
	movq	-448(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-432(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_247
	jmp	.LBB85_244
.LBB85_227:                             # %cond.false.1263
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_228
	jmp	.LBB85_229
.LBB85_228:                             # %cond.true.1264
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_247
	jmp	.LBB85_244
.LBB85_229:                             # %cond.false.1265
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_231
# BB#230:                               # %cond.true.1271
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
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	jmp	.LBB85_232
.LBB85_231:                             # %cond.false.1288
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB85_232:                             # %cond.end.1292
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_247
	jmp	.LBB85_244
.LBB85_233:                             # %cond.false.1297
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_234
	jmp	.LBB85_235
.LBB85_234:                             # %cond.true.1298
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_247
	jmp	.LBB85_244
.LBB85_235:                             # %cond.false.1299
	cmpq	$0, -40(%rbp)
	jge	.LBB85_240
# BB#236:                               # %cond.true.1302
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jge	.LBB85_238
# BB#237:                               # %cond.true.1308
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
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB85_239
.LBB85_238:                             # %cond.false.1325
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB85_239:                             # %cond.end.1329
	movq	-480(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	cqto
	movq	-488(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-472(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_247
	jmp	.LBB85_244
.LBB85_240:                             # %cond.false.1334
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_242
# BB#241:                               # %cond.true.1340
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB85_243
.LBB85_242:                             # %cond.false.1348
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB85_243:                             # %cond.end.1352
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	cqto
	movq	-504(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_247
.LBB85_244:                             # %lor.lhs.false.1357
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_246
# BB#245:                               # %land.lhs.true.1363
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB85_247
.LBB85_246:                             # %lor.lhs.false.1367
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	shlq	$2, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_251
.LBB85_247:                             # %cond.true.1371
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_249
# BB#248:                               # %cond.true.1376
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB85_250
.LBB85_249:                             # %cond.false.1379
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -508(%rbp)        # 4-byte Spill
.LBB85_250:                             # %cond.end.1384
	movl	-508(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_251:                             # %cond.false.1387
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_253
# BB#252:                               # %cond.true.1392
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB85_254
.LBB85_253:                             # %cond.false.1395
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	shll	$2, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -512(%rbp)        # 4-byte Spill
.LBB85_254:                             # %cond.end.1400
	movl	-512(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_255:                             # %cond.false.1403
	movb	$1, %al
	testb	$1, %al
	jne	.LBB85_256
	jmp	.LBB85_335
.LBB85_256:                             # %cond.true.1404
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_257
	jmp	.LBB85_296
.LBB85_257:                             # %cond.true.1405
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_259
# BB#258:                               # %cond.true.1411
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
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	jmp	.LBB85_260
.LBB85_259:                             # %cond.false.1428
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB85_260:                             # %cond.end.1432
	movq	-520(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_262
# BB#261:                               # %land.lhs.true.1436
	cmpq	$0, -40(%rbp)
	jl	.LBB85_288
.LBB85_262:                             # %lor.lhs.false.1439
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_263
	jmp	.LBB85_274
.LBB85_263:                             # %cond.true.1440
	cmpq	$0, -40(%rbp)
	jge	.LBB85_268
# BB#264:                               # %cond.true.1443
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jge	.LBB85_266
# BB#265:                               # %cond.true.1449
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB85_267
.LBB85_266:                             # %cond.false.1457
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB85_267:                             # %cond.end.1461
	movq	-536(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	cqto
	movq	-544(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_288
	jmp	.LBB85_285
.LBB85_268:                             # %cond.false.1466
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_269
	jmp	.LBB85_270
.LBB85_269:                             # %cond.true.1467
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_288
	jmp	.LBB85_285
.LBB85_270:                             # %cond.false.1468
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_272
# BB#271:                               # %cond.true.1474
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
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB85_273
.LBB85_272:                             # %cond.false.1491
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB85_273:                             # %cond.end.1495
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_288
	jmp	.LBB85_285
.LBB85_274:                             # %cond.false.1500
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_275
	jmp	.LBB85_276
.LBB85_275:                             # %cond.true.1501
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_288
	jmp	.LBB85_285
.LBB85_276:                             # %cond.false.1502
	cmpq	$0, -40(%rbp)
	jge	.LBB85_281
# BB#277:                               # %cond.true.1505
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jge	.LBB85_279
# BB#278:                               # %cond.true.1511
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
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB85_280
.LBB85_279:                             # %cond.false.1528
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB85_280:                             # %cond.end.1532
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -584(%rbp)        # 8-byte Spill
	cqto
	movq	-584(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-568(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_288
	jmp	.LBB85_285
.LBB85_281:                             # %cond.false.1537
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_283
# BB#282:                               # %cond.true.1543
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB85_284
.LBB85_283:                             # %cond.false.1551
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
.LBB85_284:                             # %cond.end.1555
	movq	-592(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -600(%rbp)        # 8-byte Spill
	cqto
	movq	-600(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_288
.LBB85_285:                             # %lor.lhs.false.1560
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_287
# BB#286:                               # %land.lhs.true.1566
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_288
.LBB85_287:                             # %lor.lhs.false.1570
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_292
.LBB85_288:                             # %cond.true.1574
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_290
# BB#289:                               # %cond.true.1578
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	jmp	.LBB85_291
.LBB85_290:                             # %cond.false.1580
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
.LBB85_291:                             # %cond.end.1584
	movq	-608(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_292:                             # %cond.false.1586
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_294
# BB#293:                               # %cond.true.1590
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	jmp	.LBB85_295
.LBB85_294:                             # %cond.false.1592
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB85_295:                             # %cond.end.1596
	movq	-616(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_296:                             # %cond.false.1598
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_298
# BB#297:                               # %cond.true.1604
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
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB85_299
.LBB85_298:                             # %cond.false.1621
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB85_299:                             # %cond.end.1625
	movq	-624(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_301
# BB#300:                               # %land.lhs.true.1629
	cmpq	$0, -40(%rbp)
	jl	.LBB85_327
.LBB85_301:                             # %lor.lhs.false.1632
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_302
	jmp	.LBB85_313
.LBB85_302:                             # %cond.true.1633
	cmpq	$0, -40(%rbp)
	jge	.LBB85_307
# BB#303:                               # %cond.true.1636
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jge	.LBB85_305
# BB#304:                               # %cond.true.1642
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB85_306
.LBB85_305:                             # %cond.false.1650
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB85_306:                             # %cond.end.1654
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_327
	jmp	.LBB85_324
.LBB85_307:                             # %cond.false.1659
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_308
	jmp	.LBB85_309
.LBB85_308:                             # %cond.true.1660
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_327
	jmp	.LBB85_324
.LBB85_309:                             # %cond.false.1661
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_311
# BB#310:                               # %cond.true.1667
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
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB85_312
.LBB85_311:                             # %cond.false.1684
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB85_312:                             # %cond.end.1688
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_327
	jmp	.LBB85_324
.LBB85_313:                             # %cond.false.1693
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_314
	jmp	.LBB85_315
.LBB85_314:                             # %cond.true.1694
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_327
	jmp	.LBB85_324
.LBB85_315:                             # %cond.false.1695
	cmpq	$0, -40(%rbp)
	jge	.LBB85_320
# BB#316:                               # %cond.true.1698
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB85_318
# BB#317:                               # %cond.true.1704
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
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB85_319
.LBB85_318:                             # %cond.false.1721
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB85_319:                             # %cond.end.1725
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_327
	jmp	.LBB85_324
.LBB85_320:                             # %cond.false.1730
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_322
# BB#321:                               # %cond.true.1736
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB85_323
.LBB85_322:                             # %cond.false.1744
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB85_323:                             # %cond.end.1748
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_327
.LBB85_324:                             # %lor.lhs.false.1753
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_326
# BB#325:                               # %land.lhs.true.1759
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_327
.LBB85_326:                             # %lor.lhs.false.1763
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_331
.LBB85_327:                             # %cond.true.1767
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_329
# BB#328:                               # %cond.true.1771
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB85_330
.LBB85_329:                             # %cond.false.1773
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB85_330:                             # %cond.end.1777
	movq	-712(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_331:                             # %cond.false.1779
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_333
# BB#332:                               # %cond.true.1783
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB85_334
.LBB85_333:                             # %cond.false.1785
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB85_334:                             # %cond.end.1789
	movq	-720(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_335:                             # %cond.false.1791
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_336
	jmp	.LBB85_375
.LBB85_336:                             # %cond.true.1792
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_338
# BB#337:                               # %cond.true.1798
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
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB85_339
.LBB85_338:                             # %cond.false.1815
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB85_339:                             # %cond.end.1819
	movq	-728(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_341
# BB#340:                               # %land.lhs.true.1823
	cmpq	$0, -40(%rbp)
	jl	.LBB85_367
.LBB85_341:                             # %lor.lhs.false.1826
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_342
	jmp	.LBB85_353
.LBB85_342:                             # %cond.true.1827
	cmpq	$0, -40(%rbp)
	jge	.LBB85_347
# BB#343:                               # %cond.true.1830
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB85_345
# BB#344:                               # %cond.true.1836
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB85_346
.LBB85_345:                             # %cond.false.1844
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB85_346:                             # %cond.end.1848
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_367
	jmp	.LBB85_364
.LBB85_347:                             # %cond.false.1853
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_348
	jmp	.LBB85_349
.LBB85_348:                             # %cond.true.1854
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_367
	jmp	.LBB85_364
.LBB85_349:                             # %cond.false.1855
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_351
# BB#350:                               # %cond.true.1861
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
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB85_352
.LBB85_351:                             # %cond.false.1878
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB85_352:                             # %cond.end.1882
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_367
	jmp	.LBB85_364
.LBB85_353:                             # %cond.false.1887
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_354
	jmp	.LBB85_355
.LBB85_354:                             # %cond.true.1888
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_367
	jmp	.LBB85_364
.LBB85_355:                             # %cond.false.1889
	cmpq	$0, -40(%rbp)
	jge	.LBB85_360
# BB#356:                               # %cond.true.1892
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jge	.LBB85_358
# BB#357:                               # %cond.true.1898
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
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB85_359
.LBB85_358:                             # %cond.false.1915
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB85_359:                             # %cond.end.1919
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_367
	jmp	.LBB85_364
.LBB85_360:                             # %cond.false.1924
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_362
# BB#361:                               # %cond.true.1930
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB85_363
.LBB85_362:                             # %cond.false.1938
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB85_363:                             # %cond.end.1942
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_367
.LBB85_364:                             # %lor.lhs.false.1947
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_366
# BB#365:                               # %land.lhs.true.1953
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_367
.LBB85_366:                             # %lor.lhs.false.1957
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_371
.LBB85_367:                             # %cond.true.1961
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_369
# BB#368:                               # %cond.true.1965
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB85_370
.LBB85_369:                             # %cond.false.1967
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB85_370:                             # %cond.end.1971
	movq	-816(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_371:                             # %cond.false.1973
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_373
# BB#372:                               # %cond.true.1977
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB85_374
.LBB85_373:                             # %cond.false.1979
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB85_374:                             # %cond.end.1983
	movq	-824(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_375:                             # %cond.false.1985
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_377
# BB#376:                               # %cond.true.1991
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
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB85_378
.LBB85_377:                             # %cond.false.2008
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB85_378:                             # %cond.end.2012
	movq	-832(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB85_380
# BB#379:                               # %land.lhs.true.2016
	cmpq	$0, -40(%rbp)
	jl	.LBB85_406
.LBB85_380:                             # %lor.lhs.false.2019
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_381
	jmp	.LBB85_392
.LBB85_381:                             # %cond.true.2020
	cmpq	$0, -40(%rbp)
	jge	.LBB85_386
# BB#382:                               # %cond.true.2023
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB85_384
# BB#383:                               # %cond.true.2029
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB85_385
.LBB85_384:                             # %cond.false.2037
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB85_385:                             # %cond.end.2041
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-840(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_406
	jmp	.LBB85_403
.LBB85_386:                             # %cond.false.2046
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_387
	jmp	.LBB85_388
.LBB85_387:                             # %cond.true.2047
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_406
	jmp	.LBB85_403
.LBB85_388:                             # %cond.false.2048
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_390
# BB#389:                               # %cond.true.2054
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
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB85_391
.LBB85_390:                             # %cond.false.2071
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB85_391:                             # %cond.end.2075
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_406
	jmp	.LBB85_403
.LBB85_392:                             # %cond.false.2080
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_393
	jmp	.LBB85_394
.LBB85_393:                             # %cond.true.2081
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_406
	jmp	.LBB85_403
.LBB85_394:                             # %cond.false.2082
	cmpq	$0, -40(%rbp)
	jge	.LBB85_399
# BB#395:                               # %cond.true.2085
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jge	.LBB85_397
# BB#396:                               # %cond.true.2091
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
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB85_398
.LBB85_397:                             # %cond.false.2108
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB85_398:                             # %cond.end.2112
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB85_406
	jmp	.LBB85_403
.LBB85_399:                             # %cond.false.2117
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_401
# BB#400:                               # %cond.true.2123
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB85_402
.LBB85_401:                             # %cond.false.2131
	movq	-40(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB85_402:                             # %cond.end.2135
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$4, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-40(%rbp), %rax
	jl	.LBB85_406
.LBB85_403:                             # %lor.lhs.false.2140
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_405
# BB#404:                               # %land.lhs.true.2146
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_406
.LBB85_405:                             # %lor.lhs.false.2150
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_410
.LBB85_406:                             # %cond.true.2154
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_408
# BB#407:                               # %cond.true.2158
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB85_409
.LBB85_408:                             # %cond.false.2160
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB85_409:                             # %cond.end.2164
	movq	-920(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_414
.LBB85_410:                             # %cond.false.2166
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-40(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_412
# BB#411:                               # %cond.true.2170
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB85_413
.LBB85_412:                             # %cond.false.2172
	movq	-40(%rbp), %rax
	shlq	$2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB85_413:                             # %cond.end.2176
	movq	-928(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
.LBB85_414:                             # %lor.lhs.false.2178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_415
	jmp	.LBB85_474
.LBB85_415:                             # %cond.true.2179
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_416
	jmp	.LBB85_445
.LBB85_416:                             # %cond.true.2180
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_418
# BB#417:                               # %cond.true.2192
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	jmp	.LBB85_419
.LBB85_418:                             # %cond.false.2220
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -932(%rbp)        # 4-byte Spill
.LBB85_419:                             # %cond.end.2230
	movl	-932(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB85_429
# BB#420:                               # %cond.true.2234
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB85_425
# BB#421:                               # %cond.true.2239
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -936(%rbp)        # 4-byte Spill
	jge	.LBB85_423
# BB#422:                               # %cond.true.2254
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -940(%rbp)        # 4-byte Spill
	jmp	.LBB85_424
.LBB85_423:                             # %cond.false.2282
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -940(%rbp)        # 4-byte Spill
.LBB85_424:                             # %cond.end.2292
	movl	-940(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-936(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB85_437
	jmp	.LBB85_434
.LBB85_425:                             # %cond.false.2299
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_427
# BB#426:                               # %cond.true.2311
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -944(%rbp)        # 4-byte Spill
	jmp	.LBB85_428
.LBB85_427:                             # %cond.false.2325
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -944(%rbp)        # 4-byte Spill
.LBB85_428:                             # %cond.end.2335
	movl	-944(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB85_437
	jmp	.LBB85_434
.LBB85_429:                             # %cond.false.2345
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB85_431
# BB#430:                               # %cond.true.2351
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB85_437
	jmp	.LBB85_434
.LBB85_431:                             # %cond.false.2362
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB85_433
# BB#432:                               # %cond.true.2367
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB85_437
	jmp	.LBB85_434
.LBB85_433:                             # %cond.false.2379
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	cmpl	%esi, %edx
	jl	.LBB85_437
.LBB85_434:                             # %lor.lhs.false.2390
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_436
# BB#435:                               # %land.lhs.true.2401
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$-128, %edx
	jl	.LBB85_437
.LBB85_436:                             # %lor.lhs.false.2410
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-96(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB85_441
.LBB85_437:                             # %cond.true.2419
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB85_439
# BB#438:                               # %cond.true.2428
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -948(%rbp)        # 4-byte Spill
	jmp	.LBB85_440
.LBB85_439:                             # %cond.false.2437
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -948(%rbp)        # 4-byte Spill
.LBB85_440:                             # %cond.end.2448
	movl	-948(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_441:                             # %cond.false.2451
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB85_443
# BB#442:                               # %cond.true.2460
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
	jmp	.LBB85_444
.LBB85_443:                             # %cond.false.2469
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
.LBB85_444:                             # %cond.end.2480
	movl	-952(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_445:                             # %cond.false.2483
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_447
# BB#446:                               # %cond.true.2491
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	jmp	.LBB85_448
.LBB85_447:                             # %cond.false.2512
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB85_448:                             # %cond.end.2518
	movq	-960(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_458
# BB#449:                               # %cond.true.2522
	cmpq	$0, -96(%rbp)
	jge	.LBB85_454
# BB#450:                               # %cond.true.2525
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jge	.LBB85_452
# BB#451:                               # %cond.true.2534
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB85_453
.LBB85_452:                             # %cond.false.2555
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB85_453:                             # %cond.end.2561
	movq	-976(%rbp), %rax        # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_466
	jmp	.LBB85_463
.LBB85_454:                             # %cond.false.2566
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_456
# BB#455:                               # %cond.true.2574
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB85_457
.LBB85_456:                             # %cond.false.2584
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB85_457:                             # %cond.end.2590
	movq	-984(%rbp), %rax        # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_466
	jmp	.LBB85_463
.LBB85_458:                             # %cond.false.2596
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_460
# BB#459:                               # %cond.true.2600
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_466
	jmp	.LBB85_463
.LBB85_460:                             # %cond.false.2605
	cmpq	$0, -96(%rbp)
	jge	.LBB85_462
# BB#461:                               # %cond.true.2608
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_466
	jmp	.LBB85_463
.LBB85_462:                             # %cond.false.2614
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_466
.LBB85_463:                             # %lor.lhs.false.2619
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_465
# BB#464:                               # %land.lhs.true.2626
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB85_466
.LBB85_465:                             # %lor.lhs.false.2631
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	-96(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_470
.LBB85_466:                             # %cond.true.2636
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB85_468
# BB#467:                               # %cond.true.2645
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -988(%rbp)        # 4-byte Spill
	jmp	.LBB85_469
.LBB85_468:                             # %cond.false.2654
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -988(%rbp)        # 4-byte Spill
.LBB85_469:                             # %cond.end.2665
	movl	-988(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_470:                             # %cond.false.2668
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	cmpl	$127, %edx
	jg	.LBB85_472
# BB#471:                               # %cond.true.2677
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -992(%rbp)        # 4-byte Spill
	jmp	.LBB85_473
.LBB85_472:                             # %cond.false.2686
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-96(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %esi
	addl	%esi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -992(%rbp)        # 4-byte Spill
.LBB85_473:                             # %cond.end.2697
	movl	-992(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_474:                             # %cond.false.2700
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_475
	jmp	.LBB85_534
.LBB85_475:                             # %cond.true.2701
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_476
	jmp	.LBB85_505
.LBB85_476:                             # %cond.true.2702
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_478
# BB#477:                               # %cond.true.2714
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -996(%rbp)        # 4-byte Spill
	jmp	.LBB85_479
.LBB85_478:                             # %cond.false.2742
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -996(%rbp)        # 4-byte Spill
.LBB85_479:                             # %cond.end.2752
	movl	-996(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB85_489
# BB#480:                               # %cond.true.2756
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB85_485
# BB#481:                               # %cond.true.2761
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1000(%rbp)       # 4-byte Spill
	jge	.LBB85_483
# BB#482:                               # %cond.true.2776
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	subl	%esi, %eax
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB85_484
.LBB85_483:                             # %cond.false.2804
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1004(%rbp)       # 4-byte Spill
.LBB85_484:                             # %cond.end.2814
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-1000(%rbp), %esi       # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB85_497
	jmp	.LBB85_494
.LBB85_485:                             # %cond.false.2821
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_487
# BB#486:                               # %cond.true.2833
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1008(%rbp)       # 4-byte Spill
	jmp	.LBB85_488
.LBB85_487:                             # %cond.false.2847
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1008(%rbp)       # 4-byte Spill
.LBB85_488:                             # %cond.end.2857
	movl	-1008(%rbp), %eax       # 4-byte Reload
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB85_497
	jmp	.LBB85_494
.LBB85_489:                             # %cond.false.2867
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB85_491
# BB#490:                               # %cond.true.2873
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB85_497
	jmp	.LBB85_494
.LBB85_491:                             # %cond.false.2884
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB85_493
# BB#492:                               # %cond.true.2889
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %esi
	cmpl	%esi, %edx
	jle	.LBB85_497
	jmp	.LBB85_494
.LBB85_493:                             # %cond.false.2901
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	cmpl	%esi, %edx
	jl	.LBB85_497
.LBB85_494:                             # %lor.lhs.false.2912
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB85_496
# BB#495:                               # %land.lhs.true.2923
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	%esi, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB85_497
.LBB85_496:                             # %lor.lhs.false.2932
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	movq	-96(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %edi
	addl	%edi, %esi
	cmpl	%esi, %eax
	jge	.LBB85_501
.LBB85_497:                             # %cond.true.2941
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_499
# BB#498:                               # %cond.true.2950
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB85_500
.LBB85_499:                             # %cond.false.2959
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1012(%rbp)       # 4-byte Spill
.LBB85_500:                             # %cond.end.2970
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_501:                             # %cond.false.2973
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_503
# BB#502:                               # %cond.true.2982
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1016(%rbp)       # 4-byte Spill
	jmp	.LBB85_504
.LBB85_503:                             # %cond.false.2991
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1016(%rbp)       # 4-byte Spill
.LBB85_504:                             # %cond.end.3002
	movl	-1016(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_505:                             # %cond.false.3005
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_507
# BB#506:                               # %cond.true.3013
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB85_508
.LBB85_507:                             # %cond.false.3034
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB85_508:                             # %cond.end.3040
	movq	-1024(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_518
# BB#509:                               # %cond.true.3044
	cmpq	$0, -96(%rbp)
	jge	.LBB85_514
# BB#510:                               # %cond.true.3047
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jge	.LBB85_512
# BB#511:                               # %cond.true.3056
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB85_513
.LBB85_512:                             # %cond.false.3077
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB85_513:                             # %cond.end.3083
	movq	-1040(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_526
	jmp	.LBB85_523
.LBB85_514:                             # %cond.false.3088
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_516
# BB#515:                               # %cond.true.3096
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB85_517
.LBB85_516:                             # %cond.false.3106
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB85_517:                             # %cond.end.3112
	movq	-1048(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_526
	jmp	.LBB85_523
.LBB85_518:                             # %cond.false.3118
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_520
# BB#519:                               # %cond.true.3122
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_526
	jmp	.LBB85_523
.LBB85_520:                             # %cond.false.3127
	cmpq	$0, -96(%rbp)
	jge	.LBB85_522
# BB#521:                               # %cond.true.3130
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_526
	jmp	.LBB85_523
.LBB85_522:                             # %cond.false.3136
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_526
.LBB85_523:                             # %lor.lhs.false.3141
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_525
# BB#524:                               # %land.lhs.true.3148
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB85_526
.LBB85_525:                             # %lor.lhs.false.3153
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	-96(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_530
.LBB85_526:                             # %cond.true.3158
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_528
# BB#527:                               # %cond.true.3167
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB85_529
.LBB85_528:                             # %cond.false.3176
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1052(%rbp)       # 4-byte Spill
.LBB85_529:                             # %cond.end.3187
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_530:                             # %cond.false.3190
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB85_532
# BB#531:                               # %cond.true.3199
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1056(%rbp)       # 4-byte Spill
	jmp	.LBB85_533
.LBB85_532:                             # %cond.false.3208
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	movq	-96(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %esi
	addl	%esi, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1056(%rbp)       # 4-byte Spill
.LBB85_533:                             # %cond.end.3219
	movl	-1056(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_534:                             # %cond.false.3222
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_535
	jmp	.LBB85_594
.LBB85_535:                             # %cond.true.3223
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_536
	jmp	.LBB85_565
.LBB85_536:                             # %cond.true.3224
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_538
# BB#537:                               # %cond.true.3234
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB85_539
.LBB85_538:                             # %cond.false.3258
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1060(%rbp)       # 4-byte Spill
.LBB85_539:                             # %cond.end.3266
	movl	-1060(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB85_549
# BB#540:                               # %cond.true.3270
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_545
# BB#541:                               # %cond.true.3274
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1064(%rbp)       # 4-byte Spill
	jge	.LBB85_543
# BB#542:                               # %cond.true.3286
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %edx
	subl	%edx, %eax
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	jmp	.LBB85_544
.LBB85_543:                             # %cond.false.3310
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
.LBB85_544:                             # %cond.end.3318
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-1064(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB85_557
	jmp	.LBB85_554
.LBB85_545:                             # %cond.false.3324
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_547
# BB#546:                               # %cond.true.3334
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
	jmp	.LBB85_548
.LBB85_547:                             # %cond.false.3346
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1072(%rbp)       # 4-byte Spill
.LBB85_548:                             # %cond.end.3354
	movl	-1072(%rbp), %eax       # 4-byte Reload
	movq	-96(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB85_557
	jmp	.LBB85_554
.LBB85_549:                             # %cond.false.3362
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_551
# BB#550:                               # %cond.true.3367
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB85_557
	jmp	.LBB85_554
.LBB85_551:                             # %cond.false.3375
	movq	-96(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_553
# BB#552:                               # %cond.true.3379
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%eax, %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB85_557
	jmp	.LBB85_554
.LBB85_553:                             # %cond.false.3388
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	cmpl	%edx, %ecx
	jl	.LBB85_557
.LBB85_554:                             # %lor.lhs.false.3396
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB85_556
# BB#555:                               # %land.lhs.true.3405
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB85_557
.LBB85_556:                             # %lor.lhs.false.3412
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	movq	-96(%rbp), %rcx
	movl	%ecx, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB85_561
.LBB85_557:                             # %cond.true.3419
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_559
# BB#558:                               # %cond.true.3426
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB85_560
.LBB85_559:                             # %cond.false.3431
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
.LBB85_560:                             # %cond.end.3438
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_561:                             # %cond.false.3441
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_563
# BB#562:                               # %cond.true.3448
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB85_564
.LBB85_563:                             # %cond.false.3453
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1080(%rbp)       # 4-byte Spill
.LBB85_564:                             # %cond.end.3460
	movl	-1080(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_565:                             # %cond.false.3463
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_567
# BB#566:                               # %cond.true.3471
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB85_568
.LBB85_567:                             # %cond.false.3492
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB85_568:                             # %cond.end.3498
	movq	-1088(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_578
# BB#569:                               # %cond.true.3502
	cmpq	$0, -96(%rbp)
	jge	.LBB85_574
# BB#570:                               # %cond.true.3505
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jge	.LBB85_572
# BB#571:                               # %cond.true.3514
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB85_573
.LBB85_572:                             # %cond.false.3535
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB85_573:                             # %cond.end.3541
	movq	-1104(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_586
	jmp	.LBB85_583
.LBB85_574:                             # %cond.false.3546
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_576
# BB#575:                               # %cond.true.3554
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB85_577
.LBB85_576:                             # %cond.false.3564
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB85_577:                             # %cond.end.3570
	movq	-1112(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_586
	jmp	.LBB85_583
.LBB85_578:                             # %cond.false.3576
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_580
# BB#579:                               # %cond.true.3580
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_586
	jmp	.LBB85_583
.LBB85_580:                             # %cond.false.3585
	cmpq	$0, -96(%rbp)
	jge	.LBB85_582
# BB#581:                               # %cond.true.3588
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_586
	jmp	.LBB85_583
.LBB85_582:                             # %cond.false.3594
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_586
.LBB85_583:                             # %lor.lhs.false.3599
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_585
# BB#584:                               # %land.lhs.true.3606
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB85_586
.LBB85_585:                             # %lor.lhs.false.3611
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	-96(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB85_590
.LBB85_586:                             # %cond.true.3616
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_588
# BB#587:                               # %cond.true.3623
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	jmp	.LBB85_589
.LBB85_588:                             # %cond.false.3628
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
.LBB85_589:                             # %cond.end.3635
	movl	-1116(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_590:                             # %cond.false.3638
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB85_592
# BB#591:                               # %cond.true.3645
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, -1120(%rbp)       # 4-byte Spill
	jmp	.LBB85_593
.LBB85_592:                             # %cond.false.3650
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movl	%eax, %ecx
	movq	-96(%rbp), %rax
	movl	%eax, %edx
	addl	%edx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1120(%rbp)       # 4-byte Spill
.LBB85_593:                             # %cond.end.3657
	movl	-1120(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_594:                             # %cond.false.3660
	movb	$1, %al
	testb	$1, %al
	jne	.LBB85_595
	jmp	.LBB85_654
.LBB85_595:                             # %cond.true.3661
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_596
	jmp	.LBB85_625
.LBB85_596:                             # %cond.true.3662
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_598
# BB#597:                               # %cond.true.3670
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB85_599
.LBB85_598:                             # %cond.false.3691
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB85_599:                             # %cond.end.3697
	movq	-1128(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_609
# BB#600:                               # %cond.true.3701
	cmpq	$0, -96(%rbp)
	jge	.LBB85_605
# BB#601:                               # %cond.true.3704
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jge	.LBB85_603
# BB#602:                               # %cond.true.3713
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB85_604
.LBB85_603:                             # %cond.false.3734
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB85_604:                             # %cond.end.3740
	movq	-1144(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_617
	jmp	.LBB85_614
.LBB85_605:                             # %cond.false.3745
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_607
# BB#606:                               # %cond.true.3753
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB85_608
.LBB85_607:                             # %cond.false.3763
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB85_608:                             # %cond.end.3769
	movq	-1152(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_617
	jmp	.LBB85_614
.LBB85_609:                             # %cond.false.3775
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_611
# BB#610:                               # %cond.true.3779
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_617
	jmp	.LBB85_614
.LBB85_611:                             # %cond.false.3784
	cmpq	$0, -96(%rbp)
	jge	.LBB85_613
# BB#612:                               # %cond.true.3787
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_617
	jmp	.LBB85_614
.LBB85_613:                             # %cond.false.3793
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_617
.LBB85_614:                             # %lor.lhs.false.3798
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_616
# BB#615:                               # %land.lhs.true.3805
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_617
.LBB85_616:                             # %lor.lhs.false.3810
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_621
.LBB85_617:                             # %cond.true.3815
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_619
# BB#618:                               # %cond.true.3820
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB85_620
.LBB85_619:                             # %cond.false.3823
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB85_620:                             # %cond.end.3828
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_621:                             # %cond.false.3830
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_623
# BB#622:                               # %cond.true.3835
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB85_624
.LBB85_623:                             # %cond.false.3838
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB85_624:                             # %cond.end.3843
	movq	-1168(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_625:                             # %cond.false.3845
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_627
# BB#626:                               # %cond.true.3853
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB85_628
.LBB85_627:                             # %cond.false.3874
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB85_628:                             # %cond.end.3880
	movq	-1176(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_638
# BB#629:                               # %cond.true.3884
	cmpq	$0, -96(%rbp)
	jge	.LBB85_634
# BB#630:                               # %cond.true.3887
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	jge	.LBB85_632
# BB#631:                               # %cond.true.3896
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB85_633
.LBB85_632:                             # %cond.false.3917
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB85_633:                             # %cond.end.3923
	movq	-1192(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_646
	jmp	.LBB85_643
.LBB85_634:                             # %cond.false.3928
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_636
# BB#635:                               # %cond.true.3936
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB85_637
.LBB85_636:                             # %cond.false.3946
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB85_637:                             # %cond.end.3952
	movq	-1200(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_646
	jmp	.LBB85_643
.LBB85_638:                             # %cond.false.3958
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_640
# BB#639:                               # %cond.true.3962
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_646
	jmp	.LBB85_643
.LBB85_640:                             # %cond.false.3967
	cmpq	$0, -96(%rbp)
	jge	.LBB85_642
# BB#641:                               # %cond.true.3970
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_646
	jmp	.LBB85_643
.LBB85_642:                             # %cond.false.3976
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_646
.LBB85_643:                             # %lor.lhs.false.3981
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_645
# BB#644:                               # %land.lhs.true.3988
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_646
.LBB85_645:                             # %lor.lhs.false.3993
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_650
.LBB85_646:                             # %cond.true.3998
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_648
# BB#647:                               # %cond.true.4003
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB85_649
.LBB85_648:                             # %cond.false.4006
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB85_649:                             # %cond.end.4011
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_650:                             # %cond.false.4013
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_652
# BB#651:                               # %cond.true.4018
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB85_653
.LBB85_652:                             # %cond.false.4021
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB85_653:                             # %cond.end.4026
	movq	-1216(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_654:                             # %cond.false.4028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB85_655
	jmp	.LBB85_684
.LBB85_655:                             # %cond.true.4029
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_657
# BB#656:                               # %cond.true.4037
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB85_658
.LBB85_657:                             # %cond.false.4058
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB85_658:                             # %cond.end.4064
	movq	-1224(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_668
# BB#659:                               # %cond.true.4068
	cmpq	$0, -96(%rbp)
	jge	.LBB85_664
# BB#660:                               # %cond.true.4071
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jge	.LBB85_662
# BB#661:                               # %cond.true.4080
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB85_663
.LBB85_662:                             # %cond.false.4101
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB85_663:                             # %cond.end.4107
	movq	-1240(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_676
	jmp	.LBB85_673
.LBB85_664:                             # %cond.false.4112
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_666
# BB#665:                               # %cond.true.4120
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB85_667
.LBB85_666:                             # %cond.false.4130
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB85_667:                             # %cond.end.4136
	movq	-1248(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_676
	jmp	.LBB85_673
.LBB85_668:                             # %cond.false.4142
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_670
# BB#669:                               # %cond.true.4146
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_676
	jmp	.LBB85_673
.LBB85_670:                             # %cond.false.4151
	cmpq	$0, -96(%rbp)
	jge	.LBB85_672
# BB#671:                               # %cond.true.4154
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_676
	jmp	.LBB85_673
.LBB85_672:                             # %cond.false.4160
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_676
.LBB85_673:                             # %lor.lhs.false.4165
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_675
# BB#674:                               # %land.lhs.true.4172
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_676
.LBB85_675:                             # %lor.lhs.false.4177
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_680
.LBB85_676:                             # %cond.true.4182
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_678
# BB#677:                               # %cond.true.4187
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB85_679
.LBB85_678:                             # %cond.false.4190
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB85_679:                             # %cond.end.4195
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_680:                             # %cond.false.4197
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_682
# BB#681:                               # %cond.true.4202
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB85_683
.LBB85_682:                             # %cond.false.4205
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB85_683:                             # %cond.end.4210
	movq	-1264(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_684:                             # %cond.false.4212
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_686
# BB#685:                               # %cond.true.4220
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB85_687
.LBB85_686:                             # %cond.false.4241
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB85_687:                             # %cond.end.4247
	movq	-1272(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB85_697
# BB#688:                               # %cond.true.4251
	cmpq	$0, -96(%rbp)
	jge	.LBB85_693
# BB#689:                               # %cond.true.4254
	movq	-32(%rbp), %rax
	addq	$1, %rax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	jge	.LBB85_691
# BB#690:                               # %cond.true.4263
	xorl	%eax, %eax
	imulq	$0, -96(%rbp), %rcx
	movq	-32(%rbp), %rdx
	addq	$1, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -96(%rbp), %rdx
	movq	-32(%rbp), %r8
	addq	$1, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	jmp	.LBB85_692
.LBB85_691:                             # %cond.false.4284
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
.LBB85_692:                             # %cond.end.4290
	movq	-1288(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB85_705
	jmp	.LBB85_702
.LBB85_693:                             # %cond.false.4295
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_695
# BB#694:                               # %cond.true.4303
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB85_696
.LBB85_695:                             # %cond.false.4313
	imulq	$0, -96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB85_696:                             # %cond.end.4319
	movq	-1296(%rbp), %rax       # 8-byte Reload
	subq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jl	.LBB85_705
	jmp	.LBB85_702
.LBB85_697:                             # %cond.false.4325
	movq	-32(%rbp), %rax
	addq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_699
# BB#698:                               # %cond.true.4329
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_705
	jmp	.LBB85_702
.LBB85_699:                             # %cond.false.4334
	cmpq	$0, -96(%rbp)
	jge	.LBB85_701
# BB#700:                               # %cond.true.4337
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB85_705
	jmp	.LBB85_702
.LBB85_701:                             # %cond.false.4343
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jl	.LBB85_705
.LBB85_702:                             # %lor.lhs.false.4348
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB85_704
# BB#703:                               # %land.lhs.true.4355
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB85_705
.LBB85_704:                             # %lor.lhs.false.4360
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB85_709
.LBB85_705:                             # %cond.true.4365
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_707
# BB#706:                               # %cond.true.4370
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB85_708
.LBB85_707:                             # %cond.false.4373
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
.LBB85_708:                             # %cond.end.4378
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -96(%rbp)
	testb	$1, %cl
	jne	.LBB85_714
	jmp	.LBB85_713
.LBB85_709:                             # %cond.false.4380
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	addq	-96(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB85_711
# BB#710:                               # %cond.true.4385
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB85_712
.LBB85_711:                             # %cond.false.4388
	movq	-32(%rbp), %rax
	addq	$1, %rax
	addq	-96(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB85_712:                             # %cond.end.4393
	movq	-1312(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)
	testb	$1, %dl
	jne	.LBB85_714
.LBB85_713:                             # %lor.lhs.false.4395
	movq	$-1, %rax
	cmpq	-96(%rbp), %rax
	jae	.LBB85_715
.LBB85_714:                             # %if.then.4398
	movq	$-1, %rdi
	callq	memory_full
.LBB85_715:                             # %if.end.4399
	movq	-96(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -24(%rbp)
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB85_716:                             # %while.cond.4401
                                        # =>This Inner Loop Header: Depth=1
	movq	$-1, %rsi
	leaq	-48(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	-64(%rbp), %rdi
	callq	g_locale_to_utf8
	xorl	%r9d, %r9d
	movb	%r9b, %r10b
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	movb	%r10b, -1313(%rbp)      # 1-byte Spill
	jne	.LBB85_718
# BB#717:                               # %land.rhs.4404
                                        #   in Loop: Header=BB85_716 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$1, 4(%rax)
	sete	%cl
	movb	%cl, -1313(%rbp)        # 1-byte Spill
.LBB85_718:                             # %land.end.4408
                                        #   in Loop: Header=BB85_716 Depth=1
	movb	-1313(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB85_719
	jmp	.LBB85_720
.LBB85_719:                             # %while.body.4409
                                        #   in Loop: Header=BB85_716 Depth=1
	movabsq	$.L.str.61, %rsi
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rsi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-56(%rbp), %rax
	addq	-80(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rdx
	movzbl	(%rdx,%rax), %edx
	movq	-1328(%rbp), %rsi       # 8-byte Reload
	movb	$0, %al
	callq	sprintf
	movq	-80(%rbp), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movq	-56(%rbp), %rsi
	addq	$1, %rsi
	addq	-64(%rbp), %rsi
	movq	%rsi, -64(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_error_free
	movq	$0, -88(%rbp)
	jmp	.LBB85_716
.LBB85_720:                             # %while.end.4416
	cmpq	$0, -72(%rbp)
	je	.LBB85_722
# BB#721:                               # %if.then.4418
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	strcpy
	movq	-72(%rbp), %rdi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	g_free
.LBB85_722:                             # %if.end.4420
	cmpq	$0, -88(%rbp)
	je	.LBB85_724
# BB#723:                               # %if.then.4422
	movq	-88(%rbp), %rdi
	callq	g_error_free
	movq	$0, -88(%rbp)
.LBB85_724:                             # %if.end.4423
	jmp	.LBB85_725
.LBB85_725:                             # %if.end.4424
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB85_726:                             # %return
	movq	-8(%rbp), %rax
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end85:
	.size	get_utf8_string, .Lfunc_end85-get_utf8_string
	.cfi_endproc

	.align	16, 0x90
	.type	menuitem_highlight_callback,@function
menuitem_highlight_callback:            # @menuitem_highlight_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	leaq	-112(%rbp), %rax
	movl	$88, %ecx
	movl	%ecx, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%r8, %rdx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gtk_get_event_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB86_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB86_7
# BB#2:                                 # %land.lhs.true
	movq	-128(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB86_7
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	cmpl	$11, (%rax)
	jne	.LBB86_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB86_6
.LBB86_5:                               # %cond.false
	movq	-128(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB86_6:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-128(%rbp), %rax
	movq	40(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	-120(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	*%rax
.LBB86_7:                               # %if.end
	jmp	.LBB86_8
.LBB86_8:                               # %if.end.9
	xorl	%eax, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	menuitem_highlight_callback, .Lfunc_end86-menuitem_highlight_callback
	.cfi_endproc

	.align	16, 0x90
	.type	make_cl_data,@function
make_cl_data:                           # @make_cl_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB87_2
# BB#1:                                 # %if.then
	movl	$56, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$xg_menu_cb_list, %rdi
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movl	168(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-8(%rbp), %rsi
	callq	xg_list_insert
.LBB87_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	make_cl_data, .Lfunc_end87-make_cl_data
	.cfi_endproc

	.align	16, 0x90
	.type	menu_destroy_callback,@function
menu_destroy_callback:                  # @menu_destroy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	unref_cl_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	menu_destroy_callback, .Lfunc_end88-menu_destroy_callback
	.cfi_endproc

	.align	16, 0x90
	.type	xg_create_one_menuitem,@function
xg_create_one_menuitem:                 # @xg_create_one_menuitem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	get_utf8_string
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	make_menu_item
	movq	%rax, -72(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB89_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB89_2:                               # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB89_4
# BB#3:                                 # %if.then.4
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB89_4:                               # %if.end.5
	movl	$48, %eax
	movl	%eax, %edi
	callq	xmalloc
	movabsq	$xg_menu_item_cb_list, %rdi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	callq	xg_list_insert
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	-40(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$menuitem_destroy_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB89_9
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB89_9
# BB#6:                                 # %if.then.16
	cmpq	$0, -24(%rbp)
	je	.LBB89_8
# BB#7:                                 # %if.then.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB89_8:                               # %if.end.22
	jmp	.LBB89_9
.LBB89_9:                               # %if.end.23
	movq	-72(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	xg_create_one_menuitem, .Lfunc_end89-xg_create_one_menuitem
	.cfi_endproc

	.align	16, 0x90
	.type	xg_list_insert,@function
xg_list_insert:                         # @xg_list_insert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB90_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB90_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	popq	%rbp
	retq
.Lfunc_end90:
	.size	xg_list_insert, .Lfunc_end90-xg_list_insert
	.cfi_endproc

	.align	16, 0x90
	.type	unref_cl_data,@function
unref_cl_data:                          # @unref_cl_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB91_5
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jle	.LBB91_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 48(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB91_4
# BB#3:                                 # %if.then.4
	movabsq	$xg_menu_cb_list, %rdi
	movq	-8(%rbp), %rsi
	callq	xg_list_remove
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	xfree
.LBB91_4:                               # %if.end
	jmp	.LBB91_5
.LBB91_5:                               # %if.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	unref_cl_data, .Lfunc_end91-unref_cl_data
	.cfi_endproc

	.align	16, 0x90
	.type	xg_list_remove,@function
xg_list_remove:                         # @xg_list_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	-24(%rbp), %rsi
	jne	.LBB92_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB92_3
# BB#2:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	$0, (%rax)
.LBB92_3:                               # %if.end
	jmp	.LBB92_7
.LBB92_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB92_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
.LBB92_6:                               # %if.end.15
	jmp	.LBB92_7
.LBB92_7:                               # %if.end.16
	popq	%rbp
	retq
.Lfunc_end92:
	.size	xg_list_remove, .Lfunc_end92-xg_list_remove
	.cfi_endproc

	.align	16, 0x90
	.type	make_menu_item,@function
make_menu_item:                         # @make_menu_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB93_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.68, %rax
	movq	%rax, -8(%rbp)
.LBB93_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB93_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	make_widget_for_menu_item
	movq	%rax, -48(%rbp)
.LBB93_4:                               # %if.end.3
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB93_9
# BB#5:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB93_7
# BB#6:                                 # %if.then.6
	callq	gtk_check_menu_item_new
	movq	%rax, -40(%rbp)
	jmp	.LBB93_8
.LBB93_7:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_check_menu_item_new_with_label
	movq	%rax, -40(%rbp)
.LBB93_8:                               # %if.end.9
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movb	49(%rsi), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_check_menu_item_set_active
	jmp	.LBB93_21
.LBB93_9:                               # %if.else.13
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB93_16
# BB#10:                                # %if.then.17
	cmpq	$0, -16(%rbp)
	je	.LBB93_12
# BB#11:                                # %if.then.19
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_radio_menu_item_new
	movq	%rax, -40(%rbp)
	jmp	.LBB93_13
.LBB93_12:                              # %if.else.21
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gtk_radio_menu_item_new_with_label
	movq	%rax, -40(%rbp)
.LBB93_13:                              # %if.end.23
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_radio_menu_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_menu_item_get_group
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	testb	$1, 49(%rax)
	je	.LBB93_15
# BB#14:                                # %if.then.29
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_check_menu_item_set_active
.LBB93_15:                              # %if.end.32
	jmp	.LBB93_20
.LBB93_16:                              # %if.else.33
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB93_18
# BB#17:                                # %if.then.35
	callq	gtk_menu_item_new
	movq	%rax, -40(%rbp)
	jmp	.LBB93_19
.LBB93_18:                              # %if.else.37
	movq	-8(%rbp), %rdi
	callq	gtk_menu_item_new_with_label
	movq	%rax, -40(%rbp)
.LBB93_19:                              # %if.end.39
	jmp	.LBB93_20
.LBB93_20:                              # %if.end.40
	jmp	.LBB93_21
.LBB93_21:                              # %if.end.41
	cmpq	$0, -48(%rbp)
	je	.LBB93_23
# BB#22:                                # %if.then.43
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
.LBB93_23:                              # %if.end.46
	movq	-24(%rbp), %rax
	testb	$1, 48(%rax)
	jne	.LBB93_25
# BB#24:                                # %if.then.48
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB93_25:                              # %if.end.49
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	make_menu_item, .Lfunc_end93-make_menu_item
	.cfi_endproc

	.align	16, 0x90
	.type	menuitem_destroy_callback,@function
menuitem_destroy_callback:              # @menuitem_destroy_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB94_2
# BB#1:                                 # %if.then
	movabsq	$xg_menu_item_cb_list, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	callq	xg_list_remove
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB94_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	menuitem_destroy_callback, .Lfunc_end94-menuitem_destroy_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI95_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	make_widget_for_menu_item,@function
make_widget_for_menu_item:              # @make_widget_for_menu_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_hbox_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI95_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI95_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.65, %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_name
	movabsq	$.L.str.65, %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_name
	movabsq	$.L.str.65, %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_name
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	make_widget_for_menu_item, .Lfunc_end95-make_widget_for_menu_item
	.cfi_endproc

	.align	16, 0x90
	.type	xg_destroy_widgets,@function
xg_destroy_widgets:                     # @xg_destroy_widgets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB96_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB96_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB96_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB96_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB96_6
.LBB96_5:                               # %cond.false
                                        #   in Loop: Header=BB96_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB96_6
.LBB96_6:                               # %cond.end
                                        #   in Loop: Header=BB96_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB96_1
.LBB96_7:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	xg_destroy_widgets, .Lfunc_end96-xg_destroy_widgets
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_menu_item_label,@function
xg_get_menu_item_label:                 # @xg_get_menu_item_label
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_label_get_label
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	xg_get_menu_item_label, .Lfunc_end97-xg_get_menu_item_label
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_toggle_item,@function
xg_update_toggle_item:                  # @xg_update_toggle_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movb	49(%rsi), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_check_menu_item_set_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	xg_update_toggle_item, .Lfunc_end98-xg_update_toggle_item
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_menu_item,@function
xg_update_menu_item:                    # @xg_update_menu_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movb	$0, -105(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	get_utf8_string
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB99_2
# BB#1:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB99_7
.LBB99_2:                               # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB99_5
# BB#3:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB99_5
# BB#4:                                 # %if.then.8
	movl	$1, -132(%rbp)
	jmp	.LBB99_6
.LBB99_5:                               # %if.else.9
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB99_6:                               # %if.end
	jmp	.LBB99_7
.LBB99_7:                               # %if.end.11
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB99_11
# BB#8:                                 # %if.then.13
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-144(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -80(%rbp)
	jne	.LBB99_10
# BB#9:                                 # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, -64(%rbp)
.LBB99_10:                              # %if.end.34
	jmp	.LBB99_14
.LBB99_11:                              # %if.else.35
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB99_13
# BB#12:                                # %if.then.39
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	make_widget_for_menu_item
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
.LBB99_13:                              # %if.end.58
	jmp	.LBB99_14
.LBB99_14:                              # %if.end.59
	cmpq	$0, -64(%rbp)
	je	.LBB99_16
# BB#15:                                # %if.then.61
	movq	-64(%rbp), %rdi
	callq	gtk_label_get_label
	movq	%rax, -96(%rbp)
.LBB99_16:                              # %if.end.63
	cmpq	$0, -56(%rbp)
	je	.LBB99_18
# BB#17:                                # %if.then.65
	movq	-56(%rbp), %rdi
	callq	gtk_label_get_label
	movq	%rax, -88(%rbp)
.LBB99_18:                              # %if.end.67
	cmpq	$0, -64(%rbp)
	je	.LBB99_23
# BB#19:                                # %land.lhs.true.69
	cmpq	$0, -80(%rbp)
	je	.LBB99_23
# BB#20:                                # %land.lhs.true.71
	cmpq	$0, -96(%rbp)
	je	.LBB99_22
# BB#21:                                # %lor.lhs.false
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB99_23
.LBB99_22:                              # %if.then.75
	movb	$1, -105(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_label_set_text
.LBB99_23:                              # %if.end.76
	cmpq	$0, -88(%rbp)
	je	.LBB99_25
# BB#24:                                # %lor.lhs.false.78
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB99_26
.LBB99_25:                              # %if.then.81
	movb	$1, -105(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_label_set_text
.LBB99_26:                              # %if.end.82
	cmpq	$0, -80(%rbp)
	je	.LBB99_28
# BB#27:                                # %if.then.84
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB99_28:                              # %if.end.85
	cmpq	$0, -72(%rbp)
	je	.LBB99_30
# BB#29:                                # %if.then.87
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB99_30:                              # %if.end.88
	movq	-8(%rbp), %rax
	testb	$1, 48(%rax)
	jne	.LBB99_33
# BB#31:                                # %land.lhs.true.90
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	je	.LBB99_33
# BB#32:                                # %if.then.93
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB99_37
.LBB99_33:                              # %if.else.94
	movq	-8(%rbp), %rax
	testb	$1, 48(%rax)
	je	.LBB99_36
# BB#34:                                # %land.lhs.true.97
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_sensitive
	cmpl	$0, %eax
	jne	.LBB99_36
# BB#35:                                # %if.then.100
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB99_36:                              # %if.end.101
	jmp	.LBB99_37
.LBB99_37:                              # %if.end.102
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB99_47
# BB#38:                                # %if.then.106
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB99_43
# BB#39:                                # %land.lhs.true.112
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	.LBB99_43
# BB#40:                                # %if.then.114
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB99_42
# BB#41:                                # %if.then.116
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	-104(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB99_42:                              # %if.end.120
	jmp	.LBB99_46
.LBB99_43:                              # %if.else.121
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB99_45
# BB#44:                                # %if.then.124
	movq	-16(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movq	-104(%rbp), %rax
	movq	$0, 16(%rax)
.LBB99_45:                              # %if.end.127
	jmp	.LBB99_46
.LBB99_46:                              # %if.end.128
	jmp	.LBB99_47
.LBB99_47:                              # %if.end.129
	testb	$1, -105(%rbp)
	je	.LBB99_49
# BB#48:                                # %if.then.131
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB99_49:                              # %if.end.133
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end99:
	.size	xg_update_menu_item, .Lfunc_end99-xg_update_menu_item
	.cfi_endproc

	.align	16, 0x90
	.type	xg_update_radio_item,@function
xg_update_radio_item:                   # @xg_update_radio_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_check_menu_item_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movb	49(%rsi), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_check_menu_item_set_active
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	xg_update_radio_item, .Lfunc_end100-xg_update_radio_item
	.cfi_endproc

	.align	16, 0x90
	.type	xg_remove_widget_from_map,@function
xg_remove_widget_from_map:              # @xg_remove_widget_from_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	id_to_widget+8, %rdi
	jge	.LBB101_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	id_to_widget, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB101_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	id_to_widget, %rcx
	movq	$0, (%rcx,%rax,8)
	movq	id_to_widget+16, %rax
	addq	$-1, %rax
	movq	%rax, id_to_widget+16
.LBB101_3:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end101:
	.size	xg_remove_widget_from_map, .Lfunc_end101-xg_remove_widget_from_map
	.cfi_endproc

	.align	16, 0x90
	.type	tb_size_cb,@function
tb_size_cb:                             # @tb_size_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp314:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	xg_update_tool_bar_sizes
	testb	$1, %al
	jne	.LBB102_1
	jmp	.LBB102_2
.LBB102_1:                              # %if.then
	movl	$903, %edi              # imm = 0x387
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	callq	frame_size_history_add
	movl	$923, %edi              # imm = 0x39B
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
.LBB102_2:                              # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	tb_size_cb, .Lfunc_end102-tb_size_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_get_tool_bar_widgets,@function
xg_get_tool_bar_widgets:                # @xg_get_tool_bar_widgets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp315:
	.cfi_def_cfa_offset 16
.Ltmp316:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp317:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB103_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB103_3
.LBB103_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB103_3
.LBB103_3:                              # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB103_5
# BB#4:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB103_10
.LBB103_5:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB103_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB103_8
# BB#7:                                 # %if.then.9
	movl	$1, -60(%rbp)
	jmp	.LBB103_9
.LBB103_8:                              # %if.else.10
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB103_9:                              # %if.end
	jmp	.LBB103_10
.LBB103_10:                             # %if.end.12
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB103_12
# BB#11:                                # %cond.true.14
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB103_13
.LBB103_12:                             # %cond.false.15
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB103_13:                             # %cond.end.16
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_label_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB103_15
# BB#14:                                # %if.then.26
	movl	$0, -84(%rbp)
	jmp	.LBB103_20
.LBB103_15:                             # %if.else.27
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB103_18
# BB#16:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB103_18
# BB#17:                                # %if.then.34
	movl	$1, -84(%rbp)
	jmp	.LBB103_19
.LBB103_18:                             # %if.else.35
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB103_19:                             # %if.end.37
	jmp	.LBB103_20
.LBB103_20:                             # %if.end.38
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB103_22
# BB#21:                                # %cond.true.41
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB103_23
.LBB103_22:                             # %cond.false.42
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB103_23:                             # %cond.end.43
	movq	-120(%rbp), %rax        # 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	xg_get_tool_bar_widgets, .Lfunc_end103-xg_get_tool_bar_widgets
	.cfi_endproc

	.align	16, 0x90
	.type	is_box_type,@function
is_box_type:                            # @is_box_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp318:
	.cfi_def_cfa_offset 16
.Ltmp319:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp320:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB104_9
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_vbox_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB104_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB104_8
.LBB104_3:                              # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB104_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB104_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB104_7
.LBB104_6:                              # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB104_7:                              # %if.end
	jmp	.LBB104_8
.LBB104_8:                              # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB104_17
.LBB104_9:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_hbox_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB104_11
# BB#10:                                # %if.then.16
	movl	$0, -60(%rbp)
	jmp	.LBB104_16
.LBB104_11:                             # %if.else.17
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB104_14
# BB#12:                                # %land.lhs.true.20
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB104_14
# BB#13:                                # %if.then.24
	movl	$1, -60(%rbp)
	jmp	.LBB104_15
.LBB104_14:                             # %if.else.25
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB104_15:                             # %if.end.27
	jmp	.LBB104_16
.LBB104_16:                             # %if.end.28
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB104_17:                             # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	is_box_type, .Lfunc_end104-is_box_type
	.cfi_endproc

	.align	16, 0x90
	.type	xg_tool_bar_callback,@function
xg_tool_bar_callback:                   # @xg_tool_bar_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp321:
	.cfi_def_cfa_offset 16
.Ltmp322:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp323:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.74, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%esi, %esi
	movl	$56, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-120(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	%rcx, %rdi
	callq	memset
	cmpq	$0, -48(%rbp)
	je	.LBB105_3
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB105_3
# BB#2:                                 # %lor.lhs.false.5
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_4
.LBB105_3:                              # %if.then
	jmp	.LBB105_5
.LBB105_4:                              # %if.end
	imulq	$11, -24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rax
	addq	$0, %rax
	movq	%rax, %rsi
	callq	AREF
	movl	$5, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	leaq	-120(%rbp), %rdi
	movq	%rax, -64(%rbp)
	movl	-120(%rbp), %esi
	andl	$-65536, %esi           # imm = 0xFFFFFFFFFFFF0000
	orl	$21, %esi
	movl	%esi, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	kbd_buffer_store_event
	movl	-120(%rbp), %esi
	andl	$-65536, %esi           # imm = 0xFFFFFFFFFFFF0000
	orl	$21, %esi
	movl	%esi, -120(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %esi
	callq	x_x_to_emacs_modifiers
	leaq	-120(%rbp), %rdi
	movl	%eax, -112(%rbp)
	callq	kbd_buffer_store_event
	movq	-48(%rbp), %rdi
	callq	x_focus_frame
.LBB105_5:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	xg_tool_bar_callback, .Lfunc_end105-xg_tool_bar_callback
	.cfi_endproc

	.align	16, 0x90
	.type	xg_tool_bar_item_expose_callback,@function
xg_tool_bar_item_expose_callback:       # @xg_tool_bar_item_expose_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
.Ltmp325:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp326:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gdk_drawable_get_size
	movl	-28(%rbp), %r8d
	movq	-16(%rbp), %rax
	cmpl	28(%rax), %r8d
	jle	.LBB106_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	28(%rcx), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB106_3
.LBB106_2:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB106_3
.LBB106_3:                              # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	20(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 20(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jle	.LBB106_5
# BB#4:                                 # %cond.true.9
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	32(%rcx), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB106_6
.LBB106_5:                              # %cond.false.13
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB106_6
.LBB106_6:                              # %cond.end.14
	movl	-40(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movl	24(%rdx), %esi
	subl	%eax, %esi
	movl	%esi, 24(%rdx)
	movq	-16(%rbp), %rdx
	cmpl	20(%rdx), %ecx
	jle	.LBB106_8
# BB#7:                                 # %cond.true.21
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB106_9
.LBB106_8:                              # %cond.false.22
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB106_9:                              # %cond.end.25
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-16(%rbp), %rdx
	cmpl	24(%rdx), %ecx
	jle	.LBB106_11
# BB#10:                                # %cond.true.32
	xorl	%eax, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB106_12
.LBB106_11:                             # %cond.false.33
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB106_12:                             # %cond.end.36
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB106_14
# BB#13:                                # %cond.true.43
	movl	-28(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB106_15
.LBB106_14:                             # %cond.false.44
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
.LBB106_15:                             # %cond.end.47
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jle	.LBB106_17
# BB#16:                                # %cond.true.54
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB106_18
.LBB106_17:                             # %cond.false.55
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB106_18:                             # %cond.end.58
	movl	-56(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 32(%rdx)
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	xg_tool_bar_item_expose_callback, .Lfunc_end106-xg_tool_bar_item_expose_callback
	.cfi_endproc

	.align	16, 0x90
	.type	xg_tool_bar_button_cb,@function
xg_tool_bar_button_cb:                  # @xg_tool_bar_button_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp327:
	.cfi_def_cfa_offset 16
.Ltmp328:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp329:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.74, %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	xg_tool_bar_button_cb, .Lfunc_end107-xg_tool_bar_button_cb
	.cfi_endproc

	.align	16, 0x90
	.type	xg_tool_bar_help_callback,@function
xg_tool_bar_help_callback:              # @xg_tool_bar_help_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp330:
	.cfi_def_cfa_offset 16
.Ltmp331:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp332:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB108_3
# BB#1:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	cmpl	$0, 228(%rax)
	je	.LBB108_3
# BB#2:                                 # %lor.lhs.false.3
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB108_4
.LBB108_3:                              # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB108_10
.LBB108_4:                              # %if.end
	movq	-24(%rbp), %rax
	cmpl	$10, (%rax)
	jne	.LBB108_8
# BB#5:                                 # %if.then.6
	imulq	$11, -40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$7, %rax
	movq	%rax, %rsi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB108_7
# BB#6:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rsi
	callq	AREF
	movq	%rax, -56(%rbp)
.LBB108_7:                              # %if.end.15
	jmp	.LBB108_9
.LBB108_8:                              # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB108_9:                              # %if.end.17
	movl	$5, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	kbd_buffer_store_help_event
	movl	$0, -4(%rbp)
.LBB108_10:                             # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	xg_tool_bar_help_callback, .Lfunc_end108-xg_tool_bar_help_callback
	.cfi_endproc

	.type	gdpy_def,@object        # @gdpy_def
	.local	gdpy_def
	.comm	gdpy_def,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gtk_selection_bg_color"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk_selection_fg_color"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-enable-tooltips"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"restore-tt"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gdk-display-current-tooltip"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Emacs"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pane"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"delete-event"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<none>"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Dummy text"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"query-tooltip"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"notify::gtk-theme-name"
	.size	.L.str.11, 23

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"xg_frame_tb_info"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"emacs-filedialog"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Pick a font"
	.size	.L.str.14, 12

	.type	x_last_font_name,@object # @x_last_font_name
	.local	x_last_font_name
	.comm	x_last_font_name,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"emacs-fontdialog"
	.size	.L.str.15, 17

	.type	xg_menu_cb_list,@object # @xg_menu_cb_list
	.local	xg_menu_cb_list
	.comm	xg_menu_cb_list,16,8
	.type	xg_menu_item_cb_list,@object # @xg_menu_item_cb_list
	.local	xg_menu_item_cb_list
	.comm	xg_menu_item_cb_list,16,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"menubar"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"popup"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"dialog"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"emacs-dialog"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"bad type in xg_create_widget: %s, doing nothing\n"
	.size	.L.str.20, 49

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"emacs_frame"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"map"
	.size	.L.str.22, 4

	.type	scroll_bar_width_for_theme,@object # @scroll_bar_width_for_theme
	.local	scroll_bar_width_for_theme
	.comm	scroll_bar_width_for_theme,4,4
	.type	id_to_widget,@object    # @id_to_widget
	.local	id_to_widget
	.comm	id_to_widget,24,8
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"destroy"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"change-value"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"button-release-event"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"x"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"y"
	.size	.L.str.27, 2

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"min-slider-length"
	.size	.L.str.28, 18

	.type	xg_ignore_gtk_scrollbar,@object # @xg_ignore_gtk_scrollbar
	.comm	xg_ignore_gtk_scrollbar,1,1
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.zero	1
	.size	.L.str.29, 1

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"emacs-tool-bar-stock-name"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"emacs-tool-bar-icon-name"
	.size	.L.str.31, 25

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"emacs-tool-bar-image"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-menu-bar-accel"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gtk-key-theme-name"
	.size	.L.str.34, 19

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"close"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"cancel"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"GDK_SCALE"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"=%dx%d%c%d%c%d"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Gtk"
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Failed to parse: '%s'\n"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"visible children"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"XX %s-WARNING **: %s\n"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"has-tooltip"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"hierarchy-changed"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"theme-name"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gtk-cancel"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gtk-open"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gtk-ok"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Show hidden files."
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"show-hidden"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"clicked"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"notify"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"\nType C-l to display a file name text entry box.\n"
	.size	.L.str.53, 50

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"\nIf you don't like this file selector, use the corresponding\nkey binding or customize use-file-dialog to turn it off."
	.size	.L.str.54, 118

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"response"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"message"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Error"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Information"
	.size	.L.str.58, 12

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Prompt"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Question"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\\%03o"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"enter-notify-event"
	.size	.L.str.62, 19

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"leave-notify-event"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"selection-done"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"emacs-menuitem"
	.size	.L.str.65, 15

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"emacs_menuitem"
	.size	.L.str.66, 15

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"activate"
	.size	.L.str.67, 9

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	" "
	.size	.L.str.68, 2

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"label"
	.size	.L.str.69, 6

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"emacs-toolbar"
	.size	.L.str.70, 14

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"size-allocate"
	.size	.L.str.71, 14

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"file-name-sans-extension"
	.size	.L.str.72, 25

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"expose-event"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"emacs-tool-bar-modifier"
	.size	.L.str.74, 24

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"position"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"slider-width"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"trough-border"
	.size	.L.str.77, 14

	.type	scroll_bar_height_for_theme,@object # @scroll_bar_height_for_theme
	.local	scroll_bar_height_for_theme
	.comm	scroll_bar_height_for_theme,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
