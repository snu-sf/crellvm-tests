	.text
	.file	"xfns.bc"
	.globl	check_x_display_info
	.align	16, 0x90
	.type	check_x_display_info,@function
check_x_display_info:                   # @check_x_display_info
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_9
# BB#1:                                 # %if.then
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_8
.LBB0_4:                                # %if.else
	cmpq	$0, x_display_list
	je	.LBB0_6
# BB#5:                                 # %if.then.5
	movq	x_display_list, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.6
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.7
	jmp	.LBB0_18
.LBB0_9:                                # %if.else.8
	movq	-8(%rbp), %rdi
	callq	TERMINALP
	testb	$1, %al
	jne	.LBB0_10
	jmp	.LBB0_13
.LBB0_10:                               # %if.then.10
	movq	-8(%rbp), %rdi
	callq	decode_live_terminal
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$2, 56(%rax)
	je	.LBB0_12
# BB#11:                                # %if.then.13
	movabsq	$.L.str.1, %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %esi
	movb	$0, %al
	callq	error
.LBB0_12:                               # %if.end.14
	movq	-32(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_17
.LBB0_13:                               # %if.else.17
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_15
.LBB0_14:                               # %if.then.19
	movq	-8(%rbp), %rdi
	callq	x_display_info_for_name
	movq	%rax, -16(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.21
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_16:                               # %if.end.26
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.27
	jmp	.LBB0_18
.LBB0_18:                               # %if.end.28
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	check_x_display_info, .Lfunc_end0-check_x_display_info
	.cfi_endproc

	.align	16, 0x90
	.type	x_display_info_for_name,@function
x_display_info_for_name:                # @x_display_info_for_name
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	x_display_list, %rdi
	movq	%rdi, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB1_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	movq	globals+1192, %rax
	movq	%rax, globals+2856
	callq	validate_x_resource_name
	movq	-16(%rbp), %rdi
	movq	globals+2856, %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	x_term_init
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.88, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB1_8:                                # %if.end.7
	movl	$11, %eax
	movl	%eax, %edi
	callq	make_natnum
	movq	%rax, globals+2672
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	x_display_info_for_name, .Lfunc_end1-x_display_info_for_name
	.cfi_endproc

	.globl	x_real_pos_and_offsets
	.align	16, 0x90
	.type	x_real_pos_and_offsets,@function
x_real_pos_and_offsets:                 # @x_real_pos_and_offsets
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
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movl	$0, -112(%rbp)
	movb	$0, -113(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	$400, -144(%rbp)        # imm = 0x190
	movq	$6, -152(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	$0, -172(%rbp)
	movq	-136(%rbp), %rax
	movq	1008(%rax), %rax
	movq	%rax, -184(%rbp)
	movb	$0, -201(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.LBB2_2:                                # %if.end
	cmpq	$0, -64(%rbp)
	je	.LBB2_4
# BB#3:                                 # %if.then.4
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
.LBB2_4:                                # %if.end.5
	cmpq	$0, -24(%rbp)
	je	.LBB2_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
.LBB2_6:                                # %if.end.8
	cmpq	$0, -40(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
.LBB2_8:                                # %if.end.11
	cmpq	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
.LBB2_10:                               # %if.end.14
	cmpq	$0, -48(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.16
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
.LBB2_12:                               # %if.end.17
	cmpq	$0, -72(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.19
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
.LBB2_14:                               # %if.end.20
	cmpq	$0, -80(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.22
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
.LBB2_16:                               # %if.end.23
	cmpq	$0, -88(%rbp)
	je	.LBB2_18
# BB#17:                                # %if.then.25
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
.LBB2_18:                               # %if.end.26
	movq	-128(%rbp), %rax
	movq	-136(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	.LBB2_27
# BB#19:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_25
# BB#20:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_23
# BB#21:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB2_23
# BB#22:                                # %cond.true.39
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB2_24
.LBB2_23:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB2_24
.LBB2_24:                               # %cond.end
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB2_26
.LBB2_25:                               # %cond.false.45
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB2_26:                               # %cond.end.48
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
.LBB2_27:                               # %if.end.50
	callq	block_input
.LBB2_28:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	xcb_query_tree
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -248(%rbp)
	movl	-248(%rbp), %eax
	movl	%eax, -232(%rbp)
	movq	-184(%rbp), %rdi
	movl	-232(%rbp), %esi
	callq	xcb_query_tree_reply
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB2_30
# BB#29:                                # %if.then.56
                                        #   in Loop: Header=BB2_28 Depth=1
	movb	$1, -113(%rbp)
	jmp	.LBB2_31
.LBB2_30:                               # %if.else
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-240(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -216(%rbp)
	movq	-240(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -224(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_31:                               # %if.end.59
                                        #   in Loop: Header=BB2_28 Depth=1
	testb	$1, -113(%rbp)
	jne	.LBB2_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB2_34
.LBB2_33:                               # %if.then.64
	jmp	.LBB2_35
.LBB2_34:                               # %if.end.65
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB2_28
.LBB2_35:                               # %for.end
	testb	$1, -113(%rbp)
	jne	.LBB2_84
# BB#36:                                # %if.then.67
	movq	-184(%rbp), %rdi
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	xcb_get_geometry
	xorl	%ecx, %ecx
	movl	%eax, -296(%rbp)
	movl	-296(%rbp), %eax
	movl	%eax, -256(%rbp)
	movq	-184(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	104(%rdx), %rdx
	movl	%edx, %eax
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rdx
	movl	%edx, %esi
	movl	%esi, -380(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-380(%rbp), %edx        # 4-byte Reload
	movl	%ecx, -384(%rbp)        # 4-byte Spill
	movl	-384(%rbp), %r8d        # 4-byte Reload
	callq	xcb_translate_coordinates
	movl	%eax, -304(%rbp)
	movl	-304(%rbp), %eax
	movl	%eax, -264(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	56(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	384(%r9), %r9
	cmpq	$0, 80(%r9)
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	je	.LBB2_42
# BB#37:                                # %cond.true.91
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_40
# BB#38:                                # %land.lhs.true.96
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB2_40
# BB#39:                                # %cond.true.102
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB2_41
.LBB2_40:                               # %cond.false.108
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	jmp	.LBB2_41
.LBB2_41:                               # %cond.end.109
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB2_43
.LBB2_42:                               # %cond.false.111
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB2_43:                               # %cond.end.115
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_52
# BB#44:                                # %if.then.119
	movq	-184(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	je	.LBB2_50
# BB#45:                                # %cond.true.129
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_48
# BB#46:                                # %land.lhs.true.134
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB2_48
# BB#47:                                # %cond.true.140
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB2_49
.LBB2_48:                               # %cond.false.146
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB2_49
.LBB2_49:                               # %cond.end.147
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB2_51
.LBB2_50:                               # %cond.false.149
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB2_51:                               # %cond.end.153
	movq	-440(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %esi        # 4-byte Reload
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	xcb_translate_coordinates
	movl	%eax, -312(%rbp)
	movl	-312(%rbp), %eax
	movl	%eax, -272(%rbp)
.LBB2_52:                               # %if.end.159
	cmpq	$0, -32(%rbp)
	jne	.LBB2_54
# BB#53:                                # %lor.lhs.false.161
	cmpq	$0, -48(%rbp)
	je	.LBB2_62
.LBB2_54:                               # %if.then.163
	movq	-184(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	je	.LBB2_60
# BB#55:                                # %cond.true.168
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_58
# BB#56:                                # %land.lhs.true.173
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB2_58
# BB#57:                                # %cond.true.179
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB2_59
.LBB2_58:                               # %cond.false.185
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB2_59
.LBB2_59:                               # %cond.end.186
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB2_61
.LBB2_60:                               # %cond.false.188
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB2_61:                               # %cond.end.192
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	xcb_get_geometry
	movl	%eax, -320(%rbp)
	movl	-320(%rbp), %eax
	movl	%eax, -200(%rbp)
.LBB2_62:                               # %if.end.198
	movq	-136(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB2_64
# BB#63:                                # %if.then.205
	xorl	%eax, %eax
	movq	-184(%rbp), %rdi
	movq	-128(%rbp), %rcx
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx
	movq	912(%rcx), %rcx
	movl	%ecx, %esi
	movq	-152(%rbp), %rcx
	movl	%ecx, %r8d
	movq	-144(%rbp), %rcx
	movl	%ecx, %r9d
	movl	%esi, -476(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-476(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, -480(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-480(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	xcb_get_property
	movl	%eax, -328(%rbp)
	movl	-328(%rbp), %eax
	movl	%eax, -192(%rbp)
.LBB2_64:                               # %if.end.213
	xorl	%eax, %eax
	movl	%eax, %edx
	movb	$1, -201(%rbp)
	movq	-184(%rbp), %rdi
	movl	-256(%rbp), %esi
	callq	xcb_get_geometry_reply
	movq	%rax, -288(%rbp)
	cmpq	$0, -288(%rbp)
	je	.LBB2_66
# BB#65:                                # %if.then.217
	movq	-288(%rbp), %rax
	movswl	12(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-288(%rbp), %rax
	movswl	14(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movq	-288(%rbp), %rax
	movzwl	16(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movq	-288(%rbp), %rax
	movzwl	18(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movq	-288(%rbp), %rax
	movzwl	20(%rax), %ecx
	movl	%ecx, -172(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB2_67
.LBB2_66:                               # %if.else.224
	movb	$1, -113(%rbp)
.LBB2_67:                               # %if.end.225
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rdi
	movl	-264(%rbp), %esi
	callq	xcb_translate_coordinates_reply
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	je	.LBB2_69
# BB#68:                                # %if.then.229
	movq	-280(%rbp), %rax
	movswl	12(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-280(%rbp), %rax
	movswl	14(%rax), %ecx
	movl	%ecx, -96(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB2_70
.LBB2_69:                               # %if.else.232
	movb	$1, -113(%rbp)
.LBB2_70:                               # %if.end.233
	movl	-108(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-112(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	384(%rdx), %rdx
	cmpq	$0, 80(%rdx)
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	je	.LBB2_76
# BB#71:                                # %cond.true.242
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB2_74
# BB#72:                                # %land.lhs.true.247
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB2_74
# BB#73:                                # %cond.true.253
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB2_75
.LBB2_74:                               # %cond.false.259
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB2_75
.LBB2_75:                               # %cond.end.260
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB2_77
.LBB2_76:                               # %cond.false.262
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB2_77:                               # %cond.end.266
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_79
# BB#78:                                # %if.then.270
	movl	-92(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB2_83
.LBB2_79:                               # %if.else.271
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rdi
	movl	-272(%rbp), %esi
	callq	xcb_translate_coordinates_reply
	movq	%rax, -336(%rbp)
	cmpq	$0, -336(%rbp)
	je	.LBB2_81
# BB#80:                                # %if.then.275
	movq	-336(%rbp), %rax
	movswl	12(%rax), %ecx
	movl	%ecx, -100(%rbp)
	movq	-336(%rbp), %rax
	movswl	14(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB2_82
.LBB2_81:                               # %if.else.280
	movb	$1, -113(%rbp)
.LBB2_82:                               # %if.end.281
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB2_83:                               # %if.end.284
	jmp	.LBB2_84
.LBB2_84:                               # %if.end.285
	movq	-136(%rbp), %rax
	movq	104(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	72(%rcx), %rax
	jne	.LBB2_94
# BB#85:                                # %if.then.292
	testb	$1, -201(%rbp)
	je	.LBB2_93
# BB#86:                                # %if.then.294
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rdi
	movl	-192(%rbp), %esi
	callq	xcb_get_property_reply
	movq	%rax, -344(%rbp)
	cmpq	$0, -344(%rbp)
	je	.LBB2_92
# BB#87:                                # %if.then.298
	movq	-344(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cmpq	-152(%rbp), %rax
	jne	.LBB2_91
# BB#88:                                # %land.lhs.true.302
	movq	-344(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB2_91
# BB#89:                                # %land.lhs.true.306
	movq	-344(%rbp), %rdi
	callq	xcb_get_property_value_length
	movslq	%eax, %rdi
	cmpq	$16, %rdi
	jne	.LBB2_91
# BB#90:                                # %if.then.311
	movq	-344(%rbp), %rdi
	callq	xcb_get_property_value
	xorl	%ecx, %ecx
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	movl	%ecx, %edx
	subl	(%rax), %edx
	movl	%edx, -100(%rbp)
	movq	-352(%rbp), %rax
	subl	8(%rax), %ecx
	movl	%ecx, -104(%rbp)
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	movl	-108(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -108(%rbp)
	movq	-352(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-112(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -112(%rbp)
.LBB2_91:                               # %if.end.319
	movq	-344(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_92:                               # %if.end.320
	jmp	.LBB2_93
.LBB2_93:                               # %if.end.321
	jmp	.LBB2_94
.LBB2_94:                               # %if.end.322
	cmpq	$0, -32(%rbp)
	jne	.LBB2_96
# BB#95:                                # %lor.lhs.false.324
	cmpq	$0, -48(%rbp)
	je	.LBB2_102
.LBB2_96:                               # %if.then.326
	testb	$1, -201(%rbp)
	je	.LBB2_101
# BB#97:                                # %if.then.328
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-184(%rbp), %rdi
	movl	-200(%rbp), %esi
	callq	xcb_get_geometry_reply
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	je	.LBB2_99
# BB#98:                                # %if.then.332
	movq	-360(%rbp), %rax
	movzwl	16(%rax), %ecx
	movl	%ecx, -164(%rbp)
	movq	-360(%rbp), %rax
	movzwl	18(%rax), %ecx
	movl	%ecx, -168(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB2_100
.LBB2_99:                               # %if.else.337
	movb	$1, -113(%rbp)
.LBB2_100:                              # %if.end.338
	jmp	.LBB2_101
.LBB2_101:                              # %if.end.339
	jmp	.LBB2_102
.LBB2_102:                              # %if.end.340
	callq	unblock_input
	testb	$1, -113(%rbp)
	je	.LBB2_104
# BB#103:                               # %if.then.342
	jmp	.LBB2_122
.LBB2_104:                              # %if.end.343
	cmpq	$0, -56(%rbp)
	je	.LBB2_106
# BB#105:                               # %if.then.345
	xorl	%eax, %eax
	subl	-92(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_106:                              # %if.end.347
	cmpq	$0, -64(%rbp)
	je	.LBB2_108
# BB#107:                               # %if.then.349
	xorl	%eax, %eax
	subl	-96(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_108:                              # %if.end.351
	cmpq	$0, -24(%rbp)
	je	.LBB2_110
# BB#109:                               # %if.then.353
	xorl	%eax, %eax
	subl	-100(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_110:                              # %if.end.355
	cmpq	$0, -40(%rbp)
	je	.LBB2_112
# BB#111:                               # %if.then.357
	xorl	%eax, %eax
	subl	-104(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_112:                              # %if.end.359
	cmpq	$0, -72(%rbp)
	je	.LBB2_114
# BB#113:                               # %if.then.361
	movl	-108(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_114:                              # %if.end.362
	cmpq	$0, -80(%rbp)
	je	.LBB2_116
# BB#115:                               # %if.then.364
	movl	-112(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_116:                              # %if.end.365
	cmpq	$0, -88(%rbp)
	je	.LBB2_118
# BB#117:                               # %if.then.367
	movl	-172(%rbp), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_118:                              # %if.end.368
	cmpq	$0, -32(%rbp)
	je	.LBB2_120
# BB#119:                               # %if.then.370
	movl	-156(%rbp), %eax
	subl	-164(%rbp), %eax
	addl	-100(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_120:                              # %if.end.373
	cmpq	$0, -48(%rbp)
	je	.LBB2_122
# BB#121:                               # %if.then.375
	movl	-160(%rbp), %eax
	subl	-168(%rbp), %eax
	addl	-104(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB2_122:                              # %if.end.378
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	x_real_pos_and_offsets, .Lfunc_end2-x_real_pos_and_offsets
	.cfi_endproc

	.globl	x_real_positions
	.align	16, 0x90
	.type	x_real_positions,@function
x_real_positions:                       # @x_real_positions
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	x_real_pos_and_offsets
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	x_real_positions, .Lfunc_end3-x_real_positions
	.cfi_endproc

	.globl	x_relative_mouse_position
	.align	16, 0x90
	.type	x_relative_mouse_position,@function
x_relative_mouse_position:              # @x_relative_mouse_position
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	block_input
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movslq	224(%rax), %rax
	movq	-8(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	shlq	$7, %rax
	addq	232(%r8), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	XQueryPointer
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	104(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rdx
	movq	-16(%rbp), %r8
	movl	(%r8), %r10d
	movq	-24(%rbp), %r8
	movl	(%r8), %r8d
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %r11
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	%r11, (%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, 8(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	XTranslateCoordinates
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	x_relative_mouse_position, .Lfunc_end4-x_relative_mouse_position
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4679239875398991872     # double 65535
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gamma_correct
	.align	16, 0x90
	.type	gamma_correct,@function
gamma_correct:                          # @gamma_correct
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
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	456(%rsi), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB5_1
	jp	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %if.then
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	456(%rax), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 8(%rax)
	movq	-16(%rbp), %rax
	movzwl	10(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	456(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm2, -32(%rbp)        # 8-byte Spill
	callq	pow
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 10(%rax)
	movq	-16(%rbp), %rax
	movzwl	12(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	456(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	pow
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movw	%cx, %dx
	movq	-16(%rbp), %rax
	movw	%dx, 12(%rax)
.LBB5_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gamma_correct, .Lfunc_end5-gamma_correct
	.cfi_endproc

	.globl	x_defined_color
	.align	16, 0x90
	.type	x_defined_color,@function
x_defined_color:                        # @x_defined_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movb	$0, -26(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	xg_check_special_colors
	andb	$1, %al
	movb	%al, -26(%rbp)
	testb	$1, -26(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	x_parse_color
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -26(%rbp)
.LBB6_2:                                # %if.end
	testb	$1, -26(%rbp)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -25(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	x_alloc_nearest_color
	andb	$1, %al
	movb	%al, -26(%rbp)
.LBB6_5:                                # %if.end.10
	callq	unblock_input
	movb	-26(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	x_defined_color, .Lfunc_end6-x_defined_color
	.cfi_endproc

	.globl	xg_set_icon
	.align	16, 0x90
	.type	xg_set_icon,@function
xg_set_icon:                            # @xg_set_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_find_image_file
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_5
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -56(%rbp)
	callq	block_input
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gdk_pixbuf_new_from_file
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_icon
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movb	$1, -17(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rdi
	callq	g_error_free
.LBB7_4:                                # %if.end
	callq	unblock_input
.LBB7_5:                                # %if.end.8
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xg_set_icon, .Lfunc_end7-xg_set_icon
	.cfi_endproc

	.globl	xg_set_icon_from_xpm_data
	.align	16, 0x90
	.type	xg_set_icon_from_xpm_data,@function
xg_set_icon_from_xpm_data:              # @xg_set_icon_from_xpm_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_pixbuf_new_from_xpm_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movb	$1, -1(%rbp)
.LBB8_3:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	xg_set_icon_from_xpm_data, .Lfunc_end8-xg_set_icon_from_xpm_data
	.cfi_endproc

	.globl	x_change_tool_bar_height
	.align	16, 0x90
	.type	x_change_tool_bar_height,@function
x_change_tool_bar_height:               # @x_change_tool_bar_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 216(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 220(%rdi)
	cmpl	$0, -12(%rbp)
	je	.LBB9_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-33, %rcx
	orq	$32, %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$2, %edx
	jne	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 120(%rax)
	jne	.LBB9_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$-5, %cx
	orw	$4, %cx
	movw	%cx, 468(%rax)
.LBB9_4:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	update_frame_tool_bar
	jmp	.LBB9_8
.LBB9_5:                                # %if.else
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$5, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB9_7
# BB#6:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	callq	free_frame_tool_bar
.LBB9_7:                                # %if.end.14
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-33, %rcx
	movq	%rcx, 208(%rax)
.LBB9_8:                                # %if.end.18
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	x_change_tool_bar_height, .Lfunc_end9-x_change_tool_bar_height
	.cfi_endproc

	.globl	x_implicitly_set_name
	.align	16, 0x90
	.type	x_implicitly_set_name,@function
x_implicitly_set_name:                  # @x_implicitly_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	callq	x_set_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	x_implicitly_set_name, .Lfunc_end10-x_implicitly_set_name
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_name,@function
x_set_name:                             # @x_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB11_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$18, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB11_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_4
# BB#3:                                 # %if.then.1
	movl	$37, update_mode_lines
.LBB11_4:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-8(%rbp), %rax
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	%edi, %esi
	movq	208(%rax), %r8
	shlq	$18, %rsi
	andq	$-262145, %r8           # imm = 0xFFFFFFFFFFFBFFFF
	orq	%rsi, %r8
	movq	%r8, 208(%rax)
	jmp	.LBB11_8
.LBB11_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$18, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB11_7
# BB#6:                                 # %if.then.13
	jmp	.LBB11_18
.LBB11_7:                               # %if.end.14
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.15
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_12
# BB#9:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	264(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB11_11
# BB#10:                                # %if.then.23
	jmp	.LBB11_18
.LBB11_11:                              # %if.end.24
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	264(%rax), %rdi
	callq	build_string
	movq	%rax, -16(%rbp)
	jmp	.LBB11_13
.LBB11_12:                              # %if.else.30
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
.LBB11_13:                              # %if.end.31
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_15
# BB#14:                                # %if.then.36
	jmp	.LBB11_18
.LBB11_15:                              # %if.end.37
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_name
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_17
# BB#16:                                # %if.then.40
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB11_17:                              # %if.end.42
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_set_name_internal
.LBB11_18:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	x_set_name, .Lfunc_end11-x_set_name
	.cfi_endproc

	.globl	x_set_scroll_bar_default_width
	.align	16, 0x90
	.type	x_set_scroll_bar_default_width,@function
x_set_scroll_bar_default_width:         # @x_set_scroll_bar_default_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	364(%rdi), %eax
	movl	%eax, -12(%rbp)
	callq	xg_get_default_scrollbar_width
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, 424(%rdi)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 420(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	x_set_scroll_bar_default_width, .Lfunc_end12-x_set_scroll_bar_default_width
	.cfi_endproc

	.globl	x_set_scroll_bar_default_height
	.align	16, 0x90
	.type	x_set_scroll_bar_default_height,@function
x_set_scroll_bar_default_height:        # @x_set_scroll_bar_default_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	368(%rdi), %eax
	movl	%eax, -12(%rbp)
	callq	xg_get_default_scrollbar_height
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 428(%rdi)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, 432(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	x_set_scroll_bar_default_height, .Lfunc_end13-x_set_scroll_bar_default_height
	.cfi_endproc

	.globl	xic_free_xfontset
	.align	16, 0x90
	.type	xic_free_xfontset,@function
xic_free_xfontset:                      # @xic_free_xfontset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 464(%rdi)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_17
.LBB14_2:                               # %if.end
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB14_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB14_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB14_3 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB14_5:                               # %land.end
                                        #   in Loop: Header=BB14_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_6
	jmp	.LBB14_14
.LBB14_6:                               # %for.body
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB14_12
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB14_12
# BB#8:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB14_12
# BB#9:                                 # %land.lhs.true.10
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	424(%rcx), %rax
	jne	.LBB14_12
# BB#10:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	464(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	464(%rcx), %rax
	jne	.LBB14_12
# BB#11:                                # %if.then.27
	movb	$1, -25(%rbp)
	jmp	.LBB14_14
.LBB14_12:                              # %if.end.28
                                        #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_13
.LBB14_13:                              # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB14_3
.LBB14_14:                              # %for.end
	testb	$1, -25(%rbp)
	jne	.LBB14_16
# BB#15:                                # %if.then.31
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	464(%rax), %rsi
	callq	XFreeFontSet
.LBB14_16:                              # %if.end.38
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 464(%rax)
.LBB14_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	xic_free_xfontset, .Lfunc_end14-xic_free_xfontset
	.cfi_endproc

	.globl	create_frame_xic
	.align	16, 0x90
	.type	create_frame_xic,@function
create_frame_xic:                       # @create_frame_xic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp49:
	.cfi_offset %rbx, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 448(%rdi)
	je	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_29
.LBB15_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	704(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.6
	jmp	.LBB15_29
.LBB15_4:                               # %if.end.7
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	712(%rax), %rdi
	callq	best_xim_style
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$260, %rax              # imm = 0x104
	cmpq	$0, %rax
	je	.LBB15_8
# BB#5:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	callq	xic_create_xfontset
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_7
# BB#6:                                 # %if.then.15
	jmp	.LBB15_29
.LBB15_7:                               # %if.end.16
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 464(%rcx)
.LBB15_8:                               # %if.end.19
	movq	-96(%rbp), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB15_12
# BB#9:                                 # %if.then.22
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r9
	leaq	-88(%rbp), %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$.L.str.5, %r10
	movw	$0, -88(%rbp)
	movw	$1, -86(%rbp)
	movq	-56(%rbp), %rdx
	movq	-32(%rbp), %r11
	movq	480(%r11), %r11
	movq	-32(%rbp), %rbx
	movq	472(%rbx), %rbx
	movq	-96(%rbp), %r14
	andq	$4, %r14
	cmpq	$0, %r14
	cmovneq	%r10, %r8
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	XVaCreateNestedList
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_11
# BB#10:                                # %if.then.28
	jmp	.LBB15_29
.LBB15_11:                              # %if.end.29
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.30
	movq	-96(%rbp), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB15_16
# BB#13:                                # %if.then.33
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	leaq	-80(%rbp), %rdx
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movw	$0, -80(%rbp)
	movw	$0, -78(%rbp)
	movw	$1, -76(%rbp)
	movw	$1, -74(%rbp)
	movq	-56(%rbp), %r8
	movq	-32(%rbp), %r11
	movq	480(%r11), %r11
	movq	-32(%rbp), %rbx
	movq	472(%rbx), %rbx
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	XVaCreateNestedList
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.40
	jmp	.LBB15_29
.LBB15_15:                              # %if.end.41
	jmp	.LBB15_16
.LBB15_16:                              # %if.end.42
	cmpq	$0, -72(%rbp)
	je	.LBB15_19
# BB#17:                                # %land.lhs.true
	cmpq	$0, -64(%rbp)
	je	.LBB15_19
# BB#18:                                # %if.then.45
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %rdx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %r10
	movq	-32(%rbp), %r11
	movq	384(%r11), %r11
	movq	56(%r11), %r11
	movq	-32(%rbp), %rbx
	movq	384(%rbx), %rbx
	movq	56(%rbx), %rbx
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r15
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%r14, 16(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	XCreateIC
	movq	%rax, -48(%rbp)
	jmp	.LBB15_26
.LBB15_19:                              # %if.else
	cmpq	$0, -72(%rbp)
	je	.LBB15_21
# BB#20:                                # %if.then.53
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.11, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %r8
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %r10
	movq	384(%r10), %r10
	movq	56(%r10), %r10
	movq	-32(%rbp), %r11
	movq	384(%r11), %r11
	movq	56(%r11), %r11
	movq	-72(%rbp), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%r10, %r8
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	XCreateIC
	movq	%rax, -48(%rbp)
	jmp	.LBB15_25
.LBB15_21:                              # %if.else.61
	cmpq	$0, -64(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.63
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rax
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-40(%rbp), %r8
	movq	-96(%rbp), %rdx
	movq	-32(%rbp), %r10
	movq	384(%r10), %r10
	movq	56(%r10), %r10
	movq	-32(%rbp), %r11
	movq	384(%r11), %r11
	movq	56(%r11), %r11
	movq	-64(%rbp), %rbx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%r10, %r8
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	XCreateIC
	movq	%rax, -48(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %if.else.71
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %r8
	movq	-32(%rbp), %r10
	movq	384(%r10), %r10
	movq	56(%r10), %r10
	movq	-32(%rbp), %r11
	movq	384(%r11), %r11
	movq	56(%r11), %r11
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%r10, %r8
	movq	%r11, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	XCreateIC
	movq	%rax, -48(%rbp)
.LBB15_24:                              # %if.end.79
	jmp	.LBB15_25
.LBB15_25:                              # %if.end.80
	jmp	.LBB15_26
.LBB15_26:                              # %if.end.81
	cmpq	$0, -48(%rbp)
	jne	.LBB15_28
# BB#27:                                # %if.then.83
	jmp	.LBB15_29
.LBB15_28:                              # %if.end.84
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 448(%rcx)
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 456(%rcx)
	movq	$0, -56(%rbp)
.LBB15_29:                              # %out
	cmpq	$0, -56(%rbp)
	je	.LBB15_31
# BB#30:                                # %if.then.92
	movq	-32(%rbp), %rdi
	callq	free_frame_xic
.LBB15_31:                              # %if.end.93
	cmpq	$0, -72(%rbp)
	je	.LBB15_33
# BB#32:                                # %if.then.95
	movq	-72(%rbp), %rdi
	callq	XFree
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB15_33:                              # %if.end.97
	cmpq	$0, -64(%rbp)
	je	.LBB15_35
# BB#34:                                # %if.then.99
	movq	-64(%rbp), %rdi
	callq	XFree
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB15_35:                              # %if.end.101
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	create_frame_xic, .Lfunc_end15-create_frame_xic
	.cfi_endproc

	.align	16, 0x90
	.type	best_xim_style,@function
best_xim_style:                         # @best_xim_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	$10, -28(%rbp)
	movl	$0, -20(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB16_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	$0, -24(%rbp)
.LBB16_3:                               # %for.cond.1
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzwl	(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB16_8
# BB#4:                                 # %for.body.4
                                        #   in Loop: Header=BB16_3 Depth=2
	movslq	-20(%rbp), %rax
	movq	supported_xim_styles(,%rax,8), %rax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then
	movslq	-20(%rbp), %rax
	movq	supported_xim_styles(,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_11
.LBB16_6:                               # %if.end
                                        #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_3
.LBB16_8:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_9
.LBB16_9:                               # %for.inc.11
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_1
.LBB16_10:                              # %for.end.13
	movq	$1032, -8(%rbp)         # imm = 0x408
.LBB16_11:                              # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	best_xim_style, .Lfunc_end16-best_xim_style
	.cfi_endproc

	.align	16, 0x90
	.type	xic_create_xfontset,@function
xic_create_xfontset:                    # @xic_create_xfontset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	232(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	152(%rdi), %eax
	movl	%eax, -28(%rbp)
	movq	Vframe_list, %rdi
	movq	%rdi, -40(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -449(%rbp)         # 1-byte Spill
	jne	.LBB17_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -449(%rbp)         # 1-byte Spill
.LBB17_3:                               # %land.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movb	-449(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_4
	jmp	.LBB17_13
.LBB17_4:                               # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB17_11
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB17_11
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB17_11
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	424(%rcx), %rax
	jne	.LBB17_11
# BB#8:                                 # %land.lhs.true.20
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 232(%rax)
	je	.LBB17_11
# BB#9:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movl	152(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB17_11
# BB#10:                                # %if.then
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	464(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_13
.LBB17_11:                              # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_12
.LBB17_12:                              # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB17_1
.LBB17_13:                              # %for.end
	cmpq	$0, -16(%rbp)
	jne	.LBB17_49
# BB#14:                                # %if.then.35
	leaq	-320(%rbp), %rdi
	movabsq	$.L.str.133, %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rsi
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-328(%rbp), %rdx
	leaq	-332(%rbp), %rcx
	leaq	-344(%rbp), %r8
	leaq	-320(%rbp), %rsi
	movq	$0, -328(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -456(%rbp)        # 4-byte Spill
	callq	XCreateFontSet
	movq	%rax, -16(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB17_16
# BB#15:                                # %if.then.42
	movq	-328(%rbp), %rdi
	callq	XFreeStringList
.LBB17_16:                              # %if.end.43
	cmpq	$0, -16(%rbp)
	jne	.LBB17_44
# BB#17:                                # %if.then.45
	leaq	-416(%rbp), %rax
	movabsq	$.Lxic_create_xfontset.sizes, %rcx
	movl	$52, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)
.LBB17_18:                              # %for.cond.47
                                        # =>This Inner Loop Header: Depth=1
	movq	-424(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB17_23
# BB#19:                                # %for.body.49
                                        #   in Loop: Header=BB17_18 Depth=1
	movq	-424(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jl	.LBB17_21
# BB#20:                                # %if.then.53
	jmp	.LBB17_23
.LBB17_21:                              # %if.end.54
                                        #   in Loop: Header=BB17_18 Depth=1
	jmp	.LBB17_22
.LBB17_22:                              # %for.inc.55
                                        #   in Loop: Header=BB17_18 Depth=1
	movq	-424(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB17_18
.LBB17_23:                              # %for.end.56
	movq	-424(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB17_25
# BB#24:                                # %if.then.59
	movq	-432(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -432(%rbp)
.LBB17_25:                              # %if.end.61
	jmp	.LBB17_26
.LBB17_26:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	movq	-424(%rbp), %rcx
	cmpl	$0, (%rcx)
	movb	%al, -465(%rbp)         # 1-byte Spill
	jne	.LBB17_28
# BB#27:                                # %lor.rhs
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-432(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%cl
	movb	%cl, -465(%rbp)         # 1-byte Spill
.LBB17_28:                              # %lor.end
                                        #   in Loop: Header=BB17_26 Depth=1
	movb	-465(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_29
	jmp	.LBB17_43
.LBB17_29:                              # %while.body
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-432(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB17_31
# BB#30:                                # %if.then.65
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-424(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -424(%rbp)
	movl	(%rax), %edx
	movl	%edx, -436(%rbp)
	jmp	.LBB17_38
.LBB17_31:                              # %if.else
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-424(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB17_33
# BB#32:                                # %if.then.68
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-432(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -432(%rbp)
	movl	(%rax), %edx
	movl	%edx, -436(%rbp)
	jmp	.LBB17_37
.LBB17_33:                              # %if.else.70
                                        #   in Loop: Header=BB17_26 Depth=1
	movl	-28(%rbp), %eax
	movq	-424(%rbp), %rcx
	subl	(%rcx), %eax
	movq	-432(%rbp), %rcx
	movl	(%rcx), %edx
	subl	-28(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB17_35
# BB#34:                                # %if.then.75
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-424(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -424(%rbp)
	movl	(%rax), %edx
	movl	%edx, -436(%rbp)
	jmp	.LBB17_36
.LBB17_35:                              # %if.else.77
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-432(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -432(%rbp)
	movl	(%rax), %edx
	movl	%edx, -436(%rbp)
.LBB17_36:                              # %if.end.79
                                        #   in Loop: Header=BB17_26 Depth=1
	jmp	.LBB17_37
.LBB17_37:                              # %if.end.80
                                        #   in Loop: Header=BB17_26 Depth=1
	jmp	.LBB17_38
.LBB17_38:                              # %if.end.81
                                        #   in Loop: Header=BB17_26 Depth=1
	leaq	-320(%rbp), %rdi
	movq	-352(%rbp), %rsi
	movl	-436(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	leaq	-328(%rbp), %rdx
	leaq	-332(%rbp), %rcx
	leaq	-344(%rbp), %r8
	leaq	-320(%rbp), %rsi
	movq	$0, -328(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -472(%rbp)        # 4-byte Spill
	callq	XCreateFontSet
	movq	%rax, -16(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB17_40
# BB#39:                                # %if.then.91
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	-328(%rbp), %rdi
	callq	XFreeStringList
.LBB17_40:                              # %if.end.92
                                        #   in Loop: Header=BB17_26 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB17_42
# BB#41:                                # %if.then.94
	jmp	.LBB17_43
.LBB17_42:                              # %if.end.95
                                        #   in Loop: Header=BB17_26 Depth=1
	jmp	.LBB17_26
.LBB17_43:                              # %while.end
	jmp	.LBB17_44
.LBB17_44:                              # %if.end.96
	cmpq	$0, -16(%rbp)
	jne	.LBB17_48
# BB#45:                                # %if.then.98
	leaq	-328(%rbp), %rdx
	leaq	-332(%rbp), %rcx
	leaq	-344(%rbp), %r8
	movabsq	$.L.str.134, %rax
	movq	%rax, -448(%rbp)
	movq	$0, -328(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-448(%rbp), %rsi
	callq	XCreateFontSet
	movq	%rax, -16(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB17_47
# BB#46:                                # %if.then.105
	movq	-328(%rbp), %rdi
	callq	XFreeStringList
.LBB17_47:                              # %if.end.106
	jmp	.LBB17_48
.LBB17_48:                              # %if.end.107
	jmp	.LBB17_49
.LBB17_49:                              # %if.end.108
	movq	-16(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end17:
	.size	xic_create_xfontset, .Lfunc_end17-xic_create_xfontset
	.cfi_endproc

	.globl	free_frame_xic
	.align	16, 0x90
	.type	free_frame_xic,@function
free_frame_xic:                         # @free_frame_xic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 448(%rdi)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	callq	XDestroyIC
	movq	-8(%rbp), %rdi
	callq	xic_free_xfontset
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 448(%rax)
.LBB18_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	free_frame_xic, .Lfunc_end18-free_frame_xic
	.cfi_endproc

	.globl	xic_set_preeditarea
	.align	16, 0x90
	.type	xic_set_preeditarea,@function
xic_set_preeditarea:                    # @xic_set_preeditarea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	subq	$5, %rdi
	movl	332(%rdi), %esi
	movq	-8(%rbp), %rdi
	movl	240(%rdi), %eax
	movq	-8(%rbp), %rdi
	movw	468(%rdi), %cx
	shrw	$11, %cx
	andw	$1, %cx
	testw	$1, %cx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB19_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB19_9
.LBB19_2:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_4
# BB#3:                                 # %cond.true.3
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$30, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB19_8
.LBB19_4:                               # %cond.false.11
	movl	$607, %edi              # imm = 0x25F
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_6
# BB#5:                                 # %cond.true.15
	movl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB19_7
.LBB19_6:                               # %cond.false.16
	movl	$811, %edi              # imm = 0x32B
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	$2, %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
.LBB19_7:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB19_8:                               # %cond.end.21
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB19_9:                               # %cond.end.23
	movl	-56(%rbp), %eax         # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB19_14
# BB#10:                                # %cond.true.26
	movq	-8(%rbp), %rax
	cmpl	$0, 436(%rax)
	jl	.LBB19_12
# BB#11:                                # %cond.true.28
	movq	-8(%rbp), %rax
	movl	436(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB19_13
.LBB19_12:                              # %cond.false.30
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	420(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB19_13:                              # %cond.end.33
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB19_15
.LBB19_14:                              # %cond.false.35
	xorl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB19_15
.LBB19_15:                              # %cond.end.36
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	-48(%rbp), %eax         # 4-byte Reload
	addl	%ecx, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	-8(%rbp), %rdx
	cmpl	$0, 420(%rdx)
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jl	.LBB19_17
# BB#16:                                # %cond.true.41
	movq	-8(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	jmp	.LBB19_18
.LBB19_17:                              # %cond.false.43
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	$5, %rax
	movl	344(%rax), %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB19_18:                              # %cond.end.47
	movl	-112(%rbp), %eax        # 4-byte Reload
	xorl	%edi, %edi
	movabsq	$.L.str.5, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	-108(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movw	%r8w, %r9w
	movw	%r9w, -40(%rbp)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %r10
	movq	8(%r10), %r10
	subq	$5, %r10
	movl	332(%r10), %r8d
	movq	-8(%rbp), %r10
	addl	244(%r10), %r8d
	addl	%r8d, %eax
	movq	-24(%rbp), %r10
	movq	384(%r10), %r10
	movq	232(%r10), %r10
	addl	168(%r10), %eax
	movw	%ax, %r9w
	movw	%r9w, -38(%rbp)
	movb	$0, %al
	callq	XVaCreateNestedList
	movabsq	$.L.str.11, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	448(%rax), %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	XSetICValues
	movq	-32(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	XFree
	movl	%eax, -124(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	xic_set_preeditarea, .Lfunc_end19-xic_set_preeditarea
	.cfi_endproc

	.globl	xic_set_statusarea
	.align	16, 0x90
	.type	xic_set_statusarea,@function
xic_set_statusarea:                     # @xic_set_statusarea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movabsq	$.L.str.12, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	448(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movw	$0, -26(%rbp)
	movw	$0, -28(%rbp)
	movw	$0, -30(%rbp)
	movw	$0, -32(%rbp)
	movl	%eax, %edi
	movb	$0, %al
	callq	XVaCreateNestedList
	movabsq	$.L.str.10, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XSetICValues
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	XFree
	xorl	%edi, %edi
	movabsq	$.L.str.12, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	XVaCreateNestedList
	movabsq	$.L.str.10, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XGetICValues
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	XFree
	movq	-40(%rbp), %rcx
	movzwl	4(%rcx), %r8d
	cmpl	$0, %r8d
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB20_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	XVaCreateNestedList
	movabsq	$.L.str.10, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XGetICValues
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	XFree
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB20_2:                               # %if.end
	movq	-40(%rbp), %rax
	movw	4(%rax), %cx
	movw	%cx, -28(%rbp)
	movq	-40(%rbp), %rax
	movw	6(%rax), %cx
	movw	%cx, -26(%rbp)
	movq	-8(%rbp), %rax
	movl	312(%rax), %edx
	movzwl	-28(%rbp), %esi
	subl	%esi, %edx
	movq	-8(%rbp), %rax
	subl	332(%rax), %edx
	movw	%dx, %cx
	movw	%cx, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	316(%rax), %edx
	movzwl	-26(%rbp), %esi
	subl	%esi, %edx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	subl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	subl	4(%rax), %edx
	movq	-8(%rbp), %rax
	subl	332(%rax), %edx
	movw	%dx, %cx
	movw	%cx, -30(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	XFree
	xorl	%edi, %edi
	movabsq	$.L.str.6, %rsi
	leaq	-32(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	XVaCreateNestedList
	movabsq	$.L.str.10, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XSetICValues
	movq	-24(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	XFree
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	xic_set_statusarea, .Lfunc_end20-xic_set_statusarea
	.cfi_endproc

	.globl	xic_set_xfontset
	.align	16, 0x90
	.type	xic_set_xfontset,@function
xic_set_xfontset:                       # @xic_set_xfontset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	xic_free_xfontset
	movq	-8(%rbp), %rdi
	callq	xic_create_xfontset
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	XVaCreateNestedList
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$4, %rax
	cmpq	$0, %rax
	je	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	448(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XSetICValues
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB21_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	456(%rax), %rax
	andq	$256, %rax              # imm = 0x100
	cmpq	$0, %rax
	je	.LBB21_4
# BB#3:                                 # %if.then.10
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	448(%rdx), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	XSetICValues
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB21_4:                               # %if.end.15
	movq	-24(%rbp), %rdi
	callq	XFree
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rdi, 464(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	xic_set_xfontset, .Lfunc_end21-xic_set_xfontset
	.cfi_endproc

	.globl	x_free_gcs
	.align	16, 0x90
	.type	x_free_gcs,@function
x_free_gcs:                             # @x_free_gcs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	32(%rax), %rsi
	callq	XFreeGC
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 32(%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB22_4
# BB#3:                                 # %if.then.12
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	40(%rax), %rsi
	callq	XFreeGC
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 40(%rsi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB22_4:                               # %if.end.20
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB22_6
# BB#5:                                 # %if.then.24
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	48(%rax), %rsi
	callq	XFreeGC
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 48(%rsi)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB22_6:                               # %if.end.32
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB22_8
# BB#7:                                 # %if.then.36
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	24(%rax), %rsi
	callq	XFreePixmap
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	$0, 24(%rsi)
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB22_8:                               # %if.end.44
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	x_free_gcs, .Lfunc_end22-x_free_gcs
	.cfi_endproc

	.globl	Fx_wm_set_size_hint
	.align	16, 0x90
	.type	Fx_wm_set_size_hint,@function
Fx_wm_set_size_hint:                    # @Fx_wm_set_size_hint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -16(%rbp)
	callq	block_input
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	x_wm_set_size_hint
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	Fx_wm_set_size_hint, .Lfunc_end23-Fx_wm_set_size_hint
	.cfi_endproc

	.globl	Fx_create_frame
	.align	16, 0x90
	.type	Fx_create_frame,@function
Fx_create_frame:                        # @Fx_create_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$2016, %rsp             # imm = 0x7E0
.Ltmp79:
	.cfi_offset %rbx, -32
.Ltmp80:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movb	$0, -57(%rbp)
	movq	$0, -72(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcopy_alist
	movl	$906, %edi              # imm = 0x38A
	movq	%rax, -24(%rbp)
	movq	globals+1192, %rax
	movq	%rax, globals+2856
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movl	$344, %edi              # imm = 0x158
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$3, %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movq	%rax, -88(%rbp)
.LBB24_2:                               # %if.end
	movl	$957, %edi              # imm = 0x3BD
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_4
# BB#3:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB24_4:                               # %if.end.11
	movq	-88(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	72(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB24_6
# BB#5:                                 # %if.then.15
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB24_6:                               # %if.end.16
	movl	$696, %edi              # imm = 0x2B8
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movl	$3, %r9d
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_arg
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_10
# BB#7:                                 # %land.lhs.true
	movl	$957, %edi              # imm = 0x3BD
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_10
# BB#8:                                 # %land.lhs.true.22
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_10
# BB#9:                                 # %if.then.25
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB24_10:                              # %if.end.26
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_11
	jmp	.LBB24_12
.LBB24_11:                              # %if.then.28
	movq	-56(%rbp), %rax
	movq	%rax, globals+2856
.LBB24_12:                              # %if.end.29
	movl	$742, %edi              # imm = 0x2E6
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_14
# BB#13:                                # %if.then.34
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB24_14:                              # %if.end.36
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_19
# BB#15:                                # %if.then.39
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB24_17
# BB#16:                                # %cond.true
	jmp	.LBB24_18
.LBB24_17:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB24_18:                              # %cond.end
	jmp	.LBB24_19
.LBB24_19:                              # %if.end.44
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$661, %edi              # imm = 0x295
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movl	$4, %r9d
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_arg
	movl	$706, %edi              # imm = 0x2C2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_21
# BB#20:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_22
.LBB24_21:                              # %if.then.54
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	make_frame_without_minibuffer
	movq	%rax, -32(%rbp)
	jmp	.LBB24_29
.LBB24_22:                              # %if.else
	movl	$717, %edi              # imm = 0x2CD
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_24
# BB#23:                                # %if.then.60
	callq	make_minibuffer_frame
	movq	%rax, -32(%rbp)
	movb	$1, -57(%rbp)
	jmp	.LBB24_28
.LBB24_24:                              # %if.else.62
	movq	-48(%rbp), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB24_25
	jmp	.LBB24_26
.LBB24_25:                              # %if.then.64
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	make_frame_without_minibuffer
	movq	%rax, -32(%rbp)
	jmp	.LBB24_27
.LBB24_26:                              # %if.else.66
	movl	$1, %edi
	callq	make_frame
	movq	%rax, -32(%rbp)
.LBB24_27:                              # %if.end.68
	jmp	.LBB24_28
.LBB24_28:                              # %if.end.69
	jmp	.LBB24_29
.LBB24_29:                              # %if.end.70
	movl	$5, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$528, %esi              # imm = 0x210
	movl	%esi, %edi
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 376(%rcx)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-58720257, %rcx        # imm = 0xFFFFFFFFFC7FFFFF
	orq	$16777216, %rcx         # imm = 0x1000000
	movq	%rcx, 208(%rax)
	callq	xzalloc
	movl	$530, %edi              # imm = 0x212
	movq	-32(%rbp), %rcx
	movq	%rax, 384(%rcx)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 224(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movl	$-1, 244(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 280(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 288(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 496(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 480(%rax)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rsi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movl	$3, %r9d
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_arg
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_icon_name
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB24_31
# BB#30:                                # %if.then.91
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_icon_name
.LBB24_31:                              # %if.end.93
	movabsq	$do_unwind_create_frame, %rdi
	movq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 424(%rcx)
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect
	movabsq	$.L.str.21, %rdi
	movq	-32(%rbp), %rax
	movq	$-1, 480(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 472(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 248(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 272(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 256(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 264(%rax)
	callq	build_string
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, 480(%rsi)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, 472(%rsi)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rcx, 248(%rsi)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rcx, 272(%rsi)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rcx, 256(%rsi)
	movq	-32(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movq	96(%rcx), %rcx
	movl	%ecx, %eax
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	xorl	%edi, %edi
	movslq	%eax, %rcx
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rcx, 264(%rsi)
	movq	-104(%rbp), %rcx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_33
# BB#32:                                # %if.then.213
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %dl
	andb	$-3, %dl
	orb	$2, %dl
	movb	%dl, 440(%rax)
	jmp	.LBB24_34
.LBB24_33:                              # %if.else.221
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %dl
	andb	$-3, %dl
	movb	%dl, 440(%rax)
.LBB24_34:                              # %if.end.233
	movl	$957, %edi              # imm = 0x3BD
	movq	-56(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_36
# BB#35:                                # %lor.lhs.false.237
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_37
.LBB24_36:                              # %if.then.241
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_name
	movq	-32(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-262145, %rsi          # imm = 0xFFFFFFFFFFFBFFFF
	movq	%rsi, 208(%rax)
	jmp	.LBB24_38
.LBB24_37:                              # %if.else.245
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fset_name
	movl	$1054, %edi             # imm = 0x41E
	movq	-32(%rbp), %rsi
	movq	208(%rsi), %rax
	andq	$-262145, %rax          # imm = 0xFFFFFFFFFFFBFFFF
	orq	$262144, %rax           # imm = 0x40000
	movq	%rax, 208(%rsi)
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
.LBB24_38:                              # %if.end.251
	movabsq	$xftfont_driver, %rdi
	movq	-32(%rbp), %rsi
	callq	register_font_driver
	movabsq	$xfont_driver, %rdi
	movq	-32(%rbp), %rsi
	callq	register_font_driver
	movq	-32(%rbp), %rsi
	movq	376(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB24_40
# BB#39:                                # %cond.true.254
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB24_41
.LBB24_40:                              # %cond.false.257
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB24_41
.LBB24_41:                              # %cond.end.258
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$440, %edi              # imm = 0x1B8
	movq	%rax, image_cache_refcount
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movl	$3, %edi
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -524(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	callq	x_default_parameter
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	x_default_font_parameter
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 232(%rax)
	jne	.LBB24_43
# BB#42:                                # %if.then.265
	movl	$704, %edi              # imm = 0x2C0
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movabsq	$.L.str.24, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB24_43:                              # %if.end.268
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB24_45
# BB#44:                                # %if.then.277
	movl	$210, %edi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movabsq	$.L.str.25, %r8
	movabsq	$.L.str.26, %r9
	xorl	%edi, %edi
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -572(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB24_45:                              # %if.end.280
	movl	$563, %edi              # imm = 0x233
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB24_49
# BB#46:                                # %if.then.286
	movl	$563, %edi              # imm = 0x233
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.27, %rsi
	xorl	%r9d, %r9d
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	movq	-616(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_48
# BB#47:                                # %if.then.292
	movl	$563, %edi              # imm = 0x233
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB24_48:                              # %if.end.296
	jmp	.LBB24_49
.LBB24_49:                              # %if.end.297
	movl	$563, %edi              # imm = 0x233
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movabsq	$.L.str.28, %rsi
	xorl	%edi, %edi
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -644(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	-632(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rax, %rdx
	movq	-656(%rbp), %r8         # 8-byte Reload
	movq	-656(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$813, %edi              # imm = 0x32D
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movq	-680(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -684(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-672(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-696(%rbp), %r8         # 8-byte Reload
	movq	-696(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$215, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	movq	%rsi, -712(%rbp)        # 8-byte Spill
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movq	-720(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -724(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-712(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-736(%rbp), %r8         # 8-byte Reload
	movq	-736(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$1003, %edi             # imm = 0x3EB
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movq	%rsi, -752(%rbp)        # 8-byte Spill
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$811, %edi              # imm = 0x32B
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.29, %r8
	movabsq	$.L.str.30, %r9
	movl	$4, %edi
	movq	-760(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -772(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	-752(%rbp), %rsi        # 8-byte Reload
	movq	-768(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$525, %edi              # imm = 0x20D
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.31, %r8
	movabsq	$.L.str.30, %r9
	movl	$4, %edi
	movq	-800(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -812(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	-792(%rbp), %rsi        # 8-byte Reload
	movq	-808(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$451, %edi              # imm = 0x1C3
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rsi, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.32, %r9
	movl	$3, %r10d
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	-832(%rbp), %rsi        # 8-byte Reload
	movq	-848(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -852(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$193, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movq	%rsi, -872(%rbp)        # 8-byte Spill
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.33, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.34, %r9
	movl	$3, %r10d
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movq	-888(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -892(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$686, %edi              # imm = 0x2AE
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.32, %r9
	movl	$3, %r10d
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	-912(%rbp), %rsi        # 8-byte Reload
	movq	-928(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -932(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$209, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movq	%rsi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.36, %r8
	movabsq	$.L.str.37, %r9
	movl	$3, %r10d
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-952(%rbp), %rsi        # 8-byte Reload
	movq	-968(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -972(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$829, %edi              # imm = 0x33D
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.38, %r8
	movabsq	$.L.str.39, %r9
	movl	$1, %edi
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1012(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-992(%rbp), %rsi        # 8-byte Reload
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	x_default_parameter
	movl	$623, %edi              # imm = 0x26F
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movq	%rsi, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.40, %r8
	movabsq	$.L.str.41, %r9
	xorl	%edi, %edi
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1052(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$608, %edi              # imm = 0x260
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	movq	%rsi, -1072(%rbp)       # 8-byte Spill
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.42, %r8
	movabsq	$.L.str.43, %r9
	xorl	%edi, %edi
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1092(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$814, %edi              # imm = 0x32E
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	movq	%rsi, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.44, %r8
	movabsq	$.L.str.45, %r9
	xorl	%edi, %edi
	movq	-1120(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1132(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$832, %edi              # imm = 0x340
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	movq	%rsi, -1152(%rbp)       # 8-byte Spill
	movq	%rcx, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.47, %r8
	movl	$1, %r9d
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	-1152(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	x_default_scroll_bar_color_parameter
	movl	$831, %edi              # imm = 0x33F
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	movq	%rsi, -1176(%rbp)       # 8-byte Spill
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.48, %rcx
	movabsq	$.L.str.49, %r8
	xorl	%r9d, %r9d
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	x_default_scroll_bar_color_parameter
	movq	-32(%rbp), %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	init_frame_faces
	movl	$1047, %edi             # imm = 0x417
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	272(%rcx), %r9d
	movq	-32(%rbp), %rcx
	imull	364(%rcx), %r9d
	movq	-32(%rbp), %rcx
	movl	276(%rcx), %r10d
	movq	-32(%rbp), %rcx
	imull	368(%rcx), %r10d
	movl	%r10d, -1196(%rbp)      # 4-byte Spill
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movl	%r9d, -1212(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %ecx
	movl	$1, %r8d
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movl	-1212(%rbp), %esi       # 4-byte Reload
	movl	-1196(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movl	$653, %edi              # imm = 0x28D
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -1224(%rbp)       # 8-byte Spill
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	globals+1416, %rsi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	movq	%rsi, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$6, %edx
	movl	%edx, %r9d
	movl	$2, %edx
	movl	%edx, %r11d
	movq	-1248(%rbp), %rbx       # 8-byte Reload
	cmpq	%rax, %rbx
	cmoveq	%r11, %r9
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rsi, -1256(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	movl	%ecx, -1260(%rbp)       # 4-byte Spill
	movq	%r9, %rcx
	movq	-1256(%rbp), %r8        # 8-byte Reload
	movq	-1256(%rbp), %r9        # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$923, %edi              # imm = 0x39B
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movq	%rsi, -1280(%rbp)       # 8-byte Spill
	movq	%rcx, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	globals+2408, %rcx
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	$6, %r10d
	movl	%r10d, %edx
	movl	$2, %r10d
	movl	%r10d, %esi
	movq	-1304(%rbp), %r8        # 8-byte Reload
	cmpq	%rax, %r8
	cmoveq	%rsi, %rdx
	movq	-1288(%rbp), %rax       # 8-byte Reload
	movl	%edi, -1308(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	-1280(%rbp), %rsi       # 8-byte Reload
	movq	-1296(%rbp), %r9        # 8-byte Reload
	movq	%rdx, -1320(%rbp)       # 8-byte Spill
	movq	%r9, %rdx
	movq	-1320(%rbp), %r11       # 8-byte Reload
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	movq	%r11, %rcx
	movq	-1328(%rbp), %r8        # 8-byte Reload
	movq	-1328(%rbp), %r9        # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$227, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movq	%rsi, -1344(%rbp)       # 8-byte Spill
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.50, %r8
	movabsq	$.L.str.51, %r9
	movl	$4, %edi
	movq	-1352(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1364(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1344(%rbp), %rsi       # 8-byte Reload
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$919, %edi              # imm = 0x397
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	movq	%rsi, -1384(%rbp)       # 8-byte Spill
	movq	%rcx, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.52, %r8
	movabsq	$.L.str.20, %r9
	movl	$3, %edi
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1404(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	movq	-1400(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	callq	x_default_parameter
	movl	$1010, %edi             # imm = 0x3F2
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	movq	%rsi, -1424(%rbp)       # 8-byte Spill
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.53, %r8
	movabsq	$.L.str.54, %r9
	movl	$2, %edi
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1444(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	movq	-1440(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$924, %edi              # imm = 0x39C
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	movq	%rsi, -1464(%rbp)       # 8-byte Spill
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	$4, %edi
	movq	-32(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	movl	%edi, -1476(%rbp)       # 4-byte Spill
	movq	%rsi, %rdi
	movq	-1464(%rbp), %rsi       # 8-byte Reload
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-1496(%rbp), %r8        # 8-byte Reload
	movq	-1496(%rbp), %r9        # 8-byte Reload
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$1, %edx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	x_figure_window_size
	movl	$976, %edi              # imm = 0x3D0
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -1512(%rbp)       # 8-byte Spill
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$2, %r9d
	movq	-1520(%rbp), %rdi       # 8-byte Reload
	movq	-1512(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -1528(%rbp)       # 8-byte Spill
	movq	-1528(%rbp), %r8        # 8-byte Reload
	callq	x_get_arg
	movb	$1, %r14b
	movq	%rax, -48(%rbp)
	testb	$1, -57(%rbp)
	movb	%r14b, -1529(%rbp)      # 1-byte Spill
	jne	.LBB24_51
# BB#50:                                # %lor.rhs
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1544(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -1529(%rbp)        # 1-byte Spill
.LBB24_51:                              # %lor.end
	movb	-1529(%rbp), %al        # 1-byte Reload
	movq	-32(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, %esi
	movq	208(%rcx), %rdi
	shlq	$17, %rsi
	andq	$-131073, %rdi          # imm = 0xFFFFFFFFFFFDFFFF
	orq	%rsi, %rdi
	movq	%rdi, 208(%rcx)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_icon_verify
	movq	-32(%rbp), %rdi
	callq	x_window
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_icon
	movq	-32(%rbp), %rdi
	callq	x_make_gc
	movq	-32(%rbp), %rcx
	movq	376(%rcx), %rcx
	movl	52(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 52(%rcx)
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movl	40(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 40(%rcx)
	movq	-40(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fcons
	movl	$532, %edi              # imm = 0x214
	movq	%rax, Vframe_list
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -1552(%rbp)       # 8-byte Spill
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.55, %r8
	movabsq	$.L.str.56, %r9
	movl	$2, %edx
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	-1552(%rbp), %rsi       # 8-byte Reload
	movq	-1568(%rbp), %rcx       # 8-byte Reload
	movl	%edx, -1572(%rbp)       # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$189, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	movq	%rsi, -1592(%rbp)       # 8-byte Spill
	movq	%rcx, -1600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.57, %r8
	movabsq	$.L.str.58, %r9
	movl	$2, %edi
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1612(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1592(%rbp), %rsi       # 8-byte Reload
	movq	-1608(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$188, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	movq	%rsi, -1632(%rbp)       # 8-byte Spill
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.59, %r8
	movabsq	$.L.str.58, %r9
	movl	$2, %edi
	movq	-1640(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1652(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1632(%rbp), %rsi       # 8-byte Reload
	movq	-1648(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$309, %edi              # imm = 0x135
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	movq	%rsi, -1672(%rbp)       # 8-byte Spill
	movq	%rcx, -1680(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$218, %edi
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.60, %r8
	movabsq	$.L.str.61, %r9
	movl	$4, %edi
	movq	-1680(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1692(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1672(%rbp), %rsi       # 8-byte Reload
	movq	-1688(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$835, %edi              # imm = 0x343
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	movq	%rsi, -1712(%rbp)       # 8-byte Spill
	movq	%rcx, -1720(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.62, %r8
	movabsq	$.L.str.63, %r9
	xorl	%edi, %edi
	movq	-1720(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1732(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1712(%rbp), %rsi       # 8-byte Reload
	movq	-1728(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$833, %edi              # imm = 0x341
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	movq	%rsi, -1752(%rbp)       # 8-byte Spill
	movq	%rcx, -1760(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1768(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.64, %r8
	movabsq	$.L.str.65, %r9
	xorl	%edi, %edi
	movq	-1760(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1772(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1752(%rbp), %rsi       # 8-byte Reload
	movq	-1768(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$170, %edi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	movq	%rsi, -1792(%rbp)       # 8-byte Spill
	movq	%rcx, -1800(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1808(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.66, %r8
	movabsq	$.L.str.67, %r9
	xorl	%edi, %edi
	movq	-1800(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1812(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1792(%rbp), %rsi       # 8-byte Reload
	movq	-1808(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	testb	$1, -57(%rbp)
	movq	%rax, -1824(%rbp)       # 8-byte Spill
	jne	.LBB24_54
# BB#52:                                # %land.lhs.true.404
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB24_54
# BB#53:                                # %if.then.410
	movq	-32(%rbp), %rdi
	callq	initialize_frame_menubar
.LBB24_54:                              # %if.end.411
	movq	-32(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$17179869184, %rdx      # imm = 0x400000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	cmpl	$0, -116(%rbp)
	jle	.LBB24_59
# BB#55:                                # %if.then.417
	movl	-116(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movl	-116(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%eax, -1828(%rbp)       # 4-byte Spill
	je	.LBB24_57
# BB#56:                                # %cond.true.424
	movq	-32(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -1832(%rbp)       # 4-byte Spill
	jmp	.LBB24_58
.LBB24_57:                              # %cond.false.425
	xorl	%eax, %eax
	movl	%eax, -1832(%rbp)       # 4-byte Spill
	jmp	.LBB24_58
.LBB24_58:                              # %cond.end.426
	movl	-1832(%rbp), %eax       # 4-byte Reload
	movl	-1828(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-32(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, 312(%rdx)
.LBB24_59:                              # %if.end.432
	cmpl	$0, -120(%rbp)
	jle	.LBB24_64
# BB#60:                                # %if.then.435
	movl	-120(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 292(%rcx)
	movl	-120(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	360(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	220(%rcx), %edx
	addl	%edx, %eax
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -1836(%rbp)       # 4-byte Spill
	je	.LBB24_62
# BB#61:                                # %cond.true.443
	movq	-32(%rbp), %rax
	movl	428(%rax), %ecx
	movl	%ecx, -1840(%rbp)       # 4-byte Spill
	jmp	.LBB24_63
.LBB24_62:                              # %cond.false.444
	xorl	%eax, %eax
	movl	%eax, -1840(%rbp)       # 4-byte Spill
	jmp	.LBB24_63
.LBB24_63:                              # %cond.end.445
	movl	-1840(%rbp), %eax       # 4-byte Reload
	movl	-1836(%rbp), %ecx       # 4-byte Reload
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	%ecx, 316(%rdx)
.LBB24_64:                              # %if.end.451
	callq	block_input
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	x_wm_set_size_hint
	callq	unblock_input
	movl	$1048, %edi             # imm = 0x418
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	288(%rax), %edx
	movq	-32(%rbp), %rax
	movl	292(%rax), %ecx
	movl	%ecx, -1844(%rbp)       # 4-byte Spill
	movq	%rsi, -1856(%rbp)       # 8-byte Spill
	movl	%edx, -1860(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-1856(%rbp), %rdi       # 8-byte Reload
	movl	-1860(%rbp), %esi       # 4-byte Reload
	movl	-1844(%rbp), %edx       # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movl	$472, %edi              # imm = 0x1D8
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -1872(%rbp)       # 8-byte Spill
	movq	%rax, -1880(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.68, %r8
	movabsq	$.L.str.69, %r9
	movl	$4, %ecx
	movq	-1880(%rbp), %rdi       # 8-byte Reload
	movq	-1872(%rbp), %rsi       # 8-byte Reload
	movq	-1888(%rbp), %rdx       # 8-byte Reload
	movl	%ecx, -1892(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movb	440(%rcx), %r10b
	shrb	$1, %r10b
	andb	$1, %r10b
	testb	$1, %r10b
	movq	%rax, -1904(%rbp)       # 8-byte Spill
	jne	.LBB24_74
# BB#65:                                # %if.then.465
	movl	$1004, %edi             # imm = 0x3EC
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -1912(%rbp)       # 8-byte Spill
	movq	%rax, -1920(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$4, %r9d
	movq	-1920(%rbp), %rdi       # 8-byte Reload
	movq	-1912(%rbp), %rcx       # 8-byte Reload
	movq	%rsi, -1928(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-1928(%rbp), %rcx       # 8-byte Reload
	movq	-1928(%rbp), %r8        # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1936(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_67
# BB#66:                                # %if.then.471
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
.LBB24_67:                              # %if.end.473
	movl	$528, %edi              # imm = 0x210
	movq	-144(%rbp), %rax
	movq	%rax, -1944(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1944(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_69
# BB#68:                                # %if.then.477
	movq	-32(%rbp), %rdi
	callq	x_iconify_frame
	jmp	.LBB24_73
.LBB24_69:                              # %if.else.478
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1952(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_71
# BB#70:                                # %if.then.482
	movq	-32(%rbp), %rdi
	callq	x_make_frame_visible
	jmp	.LBB24_72
.LBB24_71:                              # %if.else.483
	jmp	.LBB24_72
.LBB24_72:                              # %if.end.484
	jmp	.LBB24_73
.LBB24_73:                              # %if.end.485
	jmp	.LBB24_74
.LBB24_74:                              # %if.end.486
	callq	block_input
	movq	-32(%rbp), %rdi
	callq	set_machine_and_pid_properties
	movq	-96(%rbp), %rdi
	cmpq	$0, 112(%rdi)
	je	.LBB24_83
# BB#75:                                # %if.then.489
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -1960(%rbp)       # 8-byte Spill
	je	.LBB24_81
# BB#76:                                # %cond.true.497
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB24_79
# BB#77:                                # %land.lhs.true.502
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB24_79
# BB#78:                                # %cond.true.508
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -1968(%rbp)       # 8-byte Spill
	jmp	.LBB24_80
.LBB24_79:                              # %cond.false.514
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1968(%rbp)       # 8-byte Spill
	jmp	.LBB24_80
.LBB24_80:                              # %cond.end.515
	movq	-1968(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB24_82
.LBB24_81:                              # %cond.false.517
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
.LBB24_82:                              # %cond.end.520
	movq	-1976(%rbp), %rax       # 8-byte Reload
	movl	$33, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %edx
	movq	-96(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	-96(%rbp), %rdi
	addq	$112, %rdi
	movq	-1960(%rbp), %r10       # 8-byte Reload
	movq	%rdi, -1984(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -1992(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-1992(%rbp), %rax       # 8-byte Reload
	movl	%edx, -1996(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movq	-1984(%rbp), %r11       # 8-byte Reload
	movq	%r11, (%rsp)
	movl	$1, 8(%rsp)
	callq	XChangeProperty
	movl	%eax, -2000(%rbp)       # 4-byte Spill
.LBB24_83:                              # %if.end.524
	callq	unblock_input
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB24_84
	jmp	.LBB24_88
.LBB24_84:                              # %land.lhs.true.527
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XWINDOW
	movq	8(%rax), %rax
	subq	$5, %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_88
# BB#85:                                # %land.lhs.true.533
	movq	-112(%rbp), %rax
	movq	160(%rax), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB24_86
	jmp	.LBB24_87
.LBB24_86:                              # %lor.lhs.false.535
	movq	-112(%rbp), %rax
	movq	160(%rax), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	jne	.LBB24_88
.LBB24_87:                              # %if.then.541
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	kset_default_minibuffer_frame
.LBB24_88:                              # %if.end.542
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB24_89:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_95
# BB#90:                                # %for.body
                                        #   in Loop: Header=BB24_89 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_93
# BB#91:                                # %land.lhs.true.552
                                        #   in Loop: Header=BB24_89 Depth=1
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -2008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_93
# BB#92:                                # %if.then.560
                                        #   in Loop: Header=BB24_89 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rdi, -2016(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-2016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_param_alist
.LBB24_93:                              # %if.end.564
                                        #   in Loop: Header=BB24_89 Depth=1
	jmp	.LBB24_94
.LBB24_94:                              # %for.inc
                                        #   in Loop: Header=BB24_89 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB24_89
.LBB24_95:                              # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, Vwindow_list
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	unbind_to
	addq	$2016, %rsp             # imm = 0x7E0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fx_create_frame, .Lfunc_end24-Fx_create_frame
	.cfi_endproc

	.align	16, 0x90
	.type	do_unwind_create_frame,@function
do_unwind_create_frame:                 # @do_unwind_create_frame
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
	callq	unwind_create_frame
	movq	%rax, -16(%rbp)         # 8-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	do_unwind_create_frame, .Lfunc_end25-do_unwind_create_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_decode_color,@function
x_decode_color:                         # @x_decode_color
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	cmpl	$1, 88(%rsi)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB26_5
.LBB26_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-48(%rbp), %rdx
	movl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_defined_color
	testb	$1, %al
	jne	.LBB26_3
	jmp	.LBB26_4
.LBB26_3:                               # %if.then.2
	movq	-48(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.end.3
	movabsq	$.L.str.102, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB26_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	x_decode_color, .Lfunc_end26-x_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_default_font_parameter,@function
x_default_font_parameter:               # @x_default_font_parameter
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
	subq	$320, %rsp              # imm = 0x140
	movl	$439, %eax              # imm = 0x1B7
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$3, %r9d
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB27_2:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_6
# BB#3:                                 # %if.then.7
	callq	xsettings_get_system_font
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB27_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_unibyte_string
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_open_by_name
	movq	%rax, -40(%rbp)
.LBB27_5:                               # %if.end.12
	jmp	.LBB27_6
.LBB27_6:                               # %if.end.13
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_11
# BB#7:                                 # %if.then.16
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_9
# BB#8:                                 # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB27_10
.LBB27_9:                               # %cond.false
	movl	$439, %edi              # imm = 0x1B7
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.135, %rcx
	movabsq	$.L.str.136, %r8
	movl	$3, %r9d
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_arg
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB27_10:                              # %cond.end
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB27_11:                              # %if.end.21
	movq	-40(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB27_22
# BB#12:                                # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB27_22
# BB#13:                                # %if.then.24
	movabsq	$.Lx_default_font_parameter.names, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-112(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	$0, -116(%rbp)
.LBB27_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-116(%rbp), %rax
	cmpq	$0, -112(%rbp,%rax,8)
	je	.LBB27_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB27_14 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-116(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_unibyte_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_open_by_name
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_17
# BB#16:                                # %if.then.32
	jmp	.LBB27_19
.LBB27_17:                              # %if.end.33
                                        #   in Loop: Header=BB27_14 Depth=1
	jmp	.LBB27_18
.LBB27_18:                              # %for.inc
                                        #   in Loop: Header=BB27_14 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB27_14
.LBB27_19:                              # %for.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_21
# BB#20:                                # %if.then.36
	movabsq	$.L.str.144, %rdi
	movb	$0, %al
	callq	error
.LBB27_21:                              # %if.end.37
	jmp	.LBB27_25
.LBB27_22:                              # %if.else
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_24
# BB#23:                                # %if.then.40
	movl	$444, %edi              # imm = 0x1BC
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-160(%rbp), %rcx
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-144(%rbp), %rcx
	movq	%rax, -136(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	x_set_frame_parameters
.LBB27_24:                              # %if.end.52
	jmp	.LBB27_25
.LBB27_25:                              # %if.end.53
	movl	$439, %edi              # imm = 0x1B7
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.135, %r8
	movabsq	$.L.str.136, %r9
	movl	$3, %edi
	movq	-40(%rbp), %rcx
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -300(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	$3, (%rsp)
	callq	x_default_parameter
	movq	%rax, -312(%rbp)        # 8-byte Spill
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end27:
	.size	x_default_font_parameter, .Lfunc_end27-x_default_font_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	x_default_scroll_bar_color_parameter,@function
x_default_scroll_bar_color_parameter:   # @x_default_scroll_bar_color_parameter
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
	subq	$256, %rsp              # imm = 0x100
	movb	%r9b, %al
	movl	$3, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_7
# BB#1:                                 # %if.then
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.3, %rcx
	movq	$10, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-144(%rbp), %rcx
	movabsq	$.L.str.3, %rdi
	movq	%rax, -72(%rbp)
	movq	$10, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rdi, -120(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-184(%rbp), %rcx
	movabsq	$.L.str.145, %rdi
	movq	%rax, -112(%rbp)
	movq	$17, -184(%rbp)
	movq	$-1, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	%rdi, -160(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -152(%rbp)
	movq	-56(%rbp), %rdi
	testb	$1, -41(%rbp)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	je	.LBB28_3
# BB#2:                                 # %cond.true
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB28_4
.LBB28_3:                               # %cond.false
	movq	-112(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB28_4:                               # %cond.end
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	empty_unibyte_string, %rdx
	movq	-152(%rbp), %rcx
	movq	empty_unibyte_string, %r8
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	display_x_get_resource
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB28_6
# BB#5:                                 # %if.then.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
.LBB28_6:                               # %if.end
	jmp	.LBB28_7
.LBB28_7:                               # %if.end.24
	movl	$3, %esi
	leaq	-224(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -224(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-208(%rbp), %rcx
	movq	%rax, -200(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -192(%rbp)
	movq	-8(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	x_set_frame_parameters
	movq	-64(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end28:
	.size	x_default_scroll_bar_color_parameter, .Lfunc_end28-x_default_scroll_bar_color_parameter
	.cfi_endproc

	.align	16, 0x90
	.type	x_icon_verify,@function
x_icon_verify:                          # @x_icon_verify
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
	subq	$128, %rsp
	movl	$529, %eax              # imm = 0x211
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	x_frame_get_and_record_arg
	movl	$531, %edi              # imm = 0x213
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	x_frame_get_and_record_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_9
# BB#1:                                 # %land.lhs.true
	movl	$957, %edi              # imm = 0x3BD
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_9
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_4
# BB#3:                                 # %cond.true
	jmp	.LBB29_5
.LBB29_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB29_5:                               # %cond.end
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_7
# BB#6:                                 # %cond.true.16
	jmp	.LBB29_8
.LBB29_7:                               # %cond.false.17
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB29_8:                               # %cond.end.19
	jmp	.LBB29_13
.LBB29_9:                               # %if.else
	movl	$957, %edi              # imm = 0x3BD
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_11
# BB#10:                                # %lor.lhs.false
	movl	$957, %edi              # imm = 0x3BD
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_12
.LBB29_11:                              # %if.then.26
	movabsq	$.L.str.146, %rdi
	movb	$0, %al
	callq	error
.LBB29_12:                              # %if.end
	jmp	.LBB29_13
.LBB29_13:                              # %if.end.27
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	x_icon_verify, .Lfunc_end29-x_icon_verify
	.cfi_endproc

	.align	16, 0x90
	.type	x_window,@function
x_window:                               # @x_window
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	xg_create_frame_widgets
	testb	$1, %al
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.147, %rdi
	movb	$0, %al
	callq	error
.LBB30_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 448(%rax)
	testb	$1, use_xim
	je	.LBB30_8
# BB#3:                                 # %if.then.1
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	create_frame_xic
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	cmpq	$0, 448(%rdi)
	je	.LBB30_7
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.148, %rsi
	leaq	-16(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	448(%rdi), %rdi
	movb	$0, %al
	callq	XGetICValues
	cmpq	$0, -16(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
	je	.LBB30_6
# BB#5:                                 # %if.then.11
	leaq	-264(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XGetWindowAttributes
	leaq	-128(%rbp), %rcx
	movq	-160(%rbp), %rdx
	orq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	$2048, -272(%rbp)       # imm = 0x800
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rsi
	movq	-272(%rbp), %rdx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	XChangeWindowAttributes
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB30_6:                               # %if.end.25
	jmp	.LBB30_7
.LBB30_7:                               # %if.end.26
	callq	unblock_input
.LBB30_8:                               # %if.end.27
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end30:
	.size	x_window, .Lfunc_end30-x_window
	.cfi_endproc

	.align	16, 0x90
	.type	x_icon,@function
x_icon:                                 # @x_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$529, %eax              # imm = 0x211
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	x_frame_get_and_record_arg
	movl	$531, %edi              # imm = 0x213
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	x_frame_get_and_record_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_23
# BB#1:                                 # %land.lhs.true
	movl	$957, %edi              # imm = 0x3BD
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_23
# BB#2:                                 # %if.then
	jmp	.LBB31_3
.LBB31_3:                               # %do.body
	jmp	.LBB31_4
.LBB31_4:                               # %do.body.7
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_6
# BB#5:                                 # %cond.true
	jmp	.LBB31_7
.LBB31_6:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB31_7:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB31_9
# BB#8:                                 # %land.lhs.true.14
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB31_10
.LBB31_9:                               # %if.then.18
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB31_10:                              # %if.end
	jmp	.LBB31_11
.LBB31_11:                              # %do.end
	jmp	.LBB31_12
.LBB31_12:                              # %do.end.19
	jmp	.LBB31_13
.LBB31_13:                              # %do.body.20
	jmp	.LBB31_14
.LBB31_14:                              # %do.body.21
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_16
# BB#15:                                # %cond.true.27
	jmp	.LBB31_17
.LBB31_16:                              # %cond.false.28
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB31_17:                              # %cond.end.30
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB31_19
# BB#18:                                # %land.lhs.true.34
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB31_20
.LBB31_19:                              # %if.then.38
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-32(%rbp), %rdi
	callq	args_out_of_range_3
.LBB31_20:                              # %if.end.39
	jmp	.LBB31_21
.LBB31_21:                              # %do.end.40
	jmp	.LBB31_22
.LBB31_22:                              # %do.end.41
	jmp	.LBB31_27
.LBB31_23:                              # %if.else
	movl	$957, %edi              # imm = 0x3BD
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB31_25
# BB#24:                                # %lor.lhs.false
	movl	$957, %edi              # imm = 0x3BD
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_26
.LBB31_25:                              # %if.then.48
	movabsq	$.L.str.146, %rdi
	movb	$0, %al
	callq	error
.LBB31_26:                              # %if.end.49
	jmp	.LBB31_27
.LBB31_27:                              # %if.end.50
	callq	block_input
	movl	$957, %edi              # imm = 0x3BD
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_29
# BB#28:                                # %if.then.54
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%ecx, %esi
	callq	x_wm_set_icon_position
.LBB31_29:                              # %if.end.59
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_31
# BB#30:                                # %cond.true.63
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB31_32
.LBB31_31:                              # %cond.false.65
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB31_32:                              # %cond.end.66
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	SSDATA
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	x_text_icon
	movb	%al, -161(%rbp)         # 1-byte Spill
	callq	unblock_input
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	x_icon, .Lfunc_end31-x_icon
	.cfi_endproc

	.align	16, 0x90
	.type	x_make_gc,@function
x_make_gc:                              # @x_make_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
	movl	$28, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	480(%rdi), %rdi
	movq	%rdi, -120(%rbp)
	movq	-8(%rbp), %rdi
	movq	472(%rdi), %rdi
	movq	%rdi, -112(%rbp)
	movl	$0, -104(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	callq	XCreateGC
	movl	$28, %r8d
	movl	%r8d, %edx
	leaq	-136(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XCreateGC
	movl	$284, %r8d              # imm = 0x11C
	movl	%r8d, %edx
	leaq	-136(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	248(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	callq	XCreateGC
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	480(%rax), %r9
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movabsq	$gray_bits, %rdx
	movl	$2, %r8d
	movslq	%eax, %rcx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rcx
	addq	232(%rsi), %rcx
	movl	56(%rcx), %eax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %ecx
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	XCreatePixmapFromBitmapData
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rax, 24(%rdx)
	callq	unblock_input
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	x_make_gc, .Lfunc_end32-x_make_gc
	.cfi_endproc

	.align	16, 0x90
	.type	set_machine_and_pid_properties,@function
set_machine_and_pid_properties:         # @set_machine_and_pid_properties
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	je	.LBB33_6
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB33_4
# BB#3:                                 # %cond.true.11
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB33_5
.LBB33_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB33_5
.LBB33_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB33_7
.LBB33_6:                               # %cond.false.17
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB33_7:                               # %cond.end.20
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	XSetWMProperties
	callq	getpid
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	ja	.LBB33_16
# BB#8:                                 # %if.then
	movslq	-12(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	je	.LBB33_14
# BB#9:                                 # %cond.true.31
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB33_12
# BB#10:                                # %land.lhs.true.36
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB33_12
# BB#11:                                # %cond.true.42
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB33_13
.LBB33_12:                              # %cond.false.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB33_13
.LBB33_13:                              # %cond.end.49
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB33_15
.LBB33_14:                              # %cond.false.51
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB33_15:                              # %cond.end.55
	movq	-80(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.149, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	XInternAtom
	movl	$6, %edx
	movl	%edx, %ecx
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %edx
	leaq	-24(%rbp), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	callq	XChangeProperty
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB33_16:                              # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	set_machine_and_pid_properties, .Lfunc_end33-set_machine_and_pid_properties
	.cfi_endproc

	.globl	x_get_focus_frame
	.align	16, 0x90
	.type	x_get_focus_frame,@function
x_get_focus_frame:                      # @x_get_focus_frame
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 600(%rdi)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.end
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	600(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB34_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	x_get_focus_frame, .Lfunc_end34-x_get_focus_frame
	.cfi_endproc

	.globl	x_focus_frame
	.align	16, 0x90
	.type	x_focus_frame,@function
x_focus_frame:                          # @x_focus_frame
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	x_catch_errors
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movb	440(%rdi), %al
	shrb	$1, %al
	andb	$1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	xembed_request_focus
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	movl	$2, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	callq	XSetInputFocus
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	x_ewmh_activate_frame
.LBB35_3:                               # %if.end
	callq	x_uncatch_errors
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	x_focus_frame, .Lfunc_end35-x_focus_frame
	.cfi_endproc

	.globl	Fxw_color_defined_p
	.align	16, 0x90
	.type	Fxw_color_defined_p,@function
Fxw_color_defined_p:                    # @Fxw_color_defined_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_defined_color
	testb	$1, %al
	jne	.LBB36_1
	jmp	.LBB36_2
.LBB36_1:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB36_3
.LBB36_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB36_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fxw_color_defined_p, .Lfunc_end36-Fxw_color_defined_p
	.cfi_endproc

	.globl	Fxw_color_values
	.align	16, 0x90
	.type	Fxw_color_values,@function
Fxw_color_values:                       # @Fxw_color_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_defined_color
	testb	$1, %al
	jne	.LBB37_1
	jmp	.LBB37_2
.LBB37_1:                               # %if.then
	movzwl	-32(%rbp), %eax
	movl	%eax, %edi
	movzwl	-30(%rbp), %eax
	movl	%eax, %esi
	movzwl	-28(%rbp), %eax
	movl	%eax, %edx
	callq	list3i
	movq	%rax, -8(%rbp)
	jmp	.LBB37_3
.LBB37_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB37_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fxw_color_values, .Lfunc_end37-Fxw_color_values
	.cfi_endproc

	.globl	Fxw_display_color_p
	.align	16, 0x90
	.type	Fxw_display_color_p,@function
Fxw_display_color_p:                    # @Fxw_display_color_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$2, 88(%rax)
	jg	.LBB38_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_5
.LBB38_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	16(%rax), %ecx
	addl	$-2, %ecx
	subl	$3, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB38_4
	jmp	.LBB38_3
.LBB38_3:                               # %sw.bb
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_5
.LBB38_4:                               # %sw.default
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB38_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fxw_display_color_p, .Lfunc_end38-Fxw_display_color_p
	.cfi_endproc

	.globl	Fx_display_grayscale_p
	.align	16, 0x90
	.type	Fx_display_grayscale_p,@function
Fx_display_grayscale_p:                 # @Fx_display_grayscale_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$1, 88(%rax)
	jg	.LBB39_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_5
.LBB39_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	16(%rax), %ecx
	subl	$5, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	ja	.LBB39_4
	jmp	.LBB39_3
.LBB39_3:                               # %sw.bb
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_5
.LBB39_4:                               # %sw.default
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB39_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fx_display_grayscale_p, .Lfunc_end39-Fx_display_grayscale_p
	.cfi_endproc

	.globl	Fx_display_pixel_width
	.align	16, 0x90
	.type	Fx_display_pixel_width,@function
Fx_display_pixel_width:                 # @Fx_display_pixel_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_display_pixel_width
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fx_display_pixel_width, .Lfunc_end40-Fx_display_pixel_width
	.cfi_endproc

	.globl	Fx_display_pixel_height
	.align	16, 0x90
	.type	Fx_display_pixel_height,@function
Fx_display_pixel_height:                # @Fx_display_pixel_height
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	x_display_pixel_height
	movslq	%eax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Fx_display_pixel_height, .Lfunc_end41-Fx_display_pixel_height
	.cfi_endproc

	.globl	Fx_display_planes
	.align	16, 0x90
	.type	Fx_display_planes,@function
Fx_display_planes:                      # @Fx_display_planes
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movslq	88(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fx_display_planes, .Lfunc_end42-Fx_display_planes
	.cfi_endproc

	.globl	Fx_display_color_cells
	.align	16, 0x90
	.type	Fx_display_color_cells,@function
Fx_display_color_cells:                 # @Fx_display_color_cells
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XScreenNumberOfScreen
	movslq	%eax, %rdi
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	shlq	$7, %rdi
	addq	232(%rcx), %rdi
	movl	56(%rdi), %eax
	movl	%eax, -20(%rbp)
	cmpl	$24, -20(%rbp)
	jle	.LBB43_2
# BB#1:                                 # %if.then
	movl	$24, -20(%rbp)
.LBB43_2:                               # %if.end
	movl	$1, %eax
	movl	-20(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fx_display_color_cells, .Lfunc_end43-Fx_display_color_cells
	.cfi_endproc

	.globl	Fx_server_max_request_size
	.align	16, 0x90
	.type	Fx_server_max_request_size,@function
Fx_server_max_request_size:             # @Fx_server_max_request_size
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	XMaxRequestSize
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fx_server_max_request_size, .Lfunc_end44-Fx_server_max_request_size
	.cfi_endproc

	.globl	Fx_server_vendor
	.align	16, 0x90
	.type	Fx_server_vendor,@function
Fx_server_vendor:                       # @Fx_server_vendor
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.70, %rax
	movq	%rax, -24(%rbp)
.LBB45_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	build_string
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fx_server_vendor, .Lfunc_end45-Fx_server_vendor
	.cfi_endproc

	.globl	Fx_server_version
	.align	16, 0x90
	.type	Fx_server_version,@function
Fx_server_version:                      # @Fx_server_version
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movslq	28(%rax), %rsi
	movq	-24(%rbp), %rax
	movslq	116(%rax), %rdx
	callq	list3i
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fx_server_version, .Lfunc_end46-Fx_server_version
	.cfi_endproc

	.globl	Fx_display_screens
	.align	16, 0x90
	.type	Fx_display_screens,@function
Fx_display_screens:                     # @Fx_display_screens
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movslq	228(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Fx_display_screens, .Lfunc_end47-Fx_display_screens
	.cfi_endproc

	.globl	Fx_display_mm_height
	.align	16, 0x90
	.type	Fx_display_mm_height,@function
Fx_display_mm_height:                   # @Fx_display_mm_height
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	36(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fx_display_mm_height, .Lfunc_end48-Fx_display_mm_height
	.cfi_endproc

	.globl	Fx_display_mm_width
	.align	16, 0x90
	.type	Fx_display_mm_width,@function
Fx_display_mm_width:                    # @Fx_display_mm_width
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	32(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fx_display_mm_width, .Lfunc_end49-Fx_display_mm_width
	.cfi_endproc

	.globl	Fx_display_backing_store
	.align	16, 0x90
	.type	Fx_display_backing_store,@function
Fx_display_backing_store:               # @Fx_display_backing_store
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	48(%rax), %rax
	movl	112(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB50_3
	jmp	.LBB50_6
.LBB50_6:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB50_2
	jmp	.LBB50_7
.LBB50_7:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB50_4
	jmp	.LBB50_1
.LBB50_1:                               # %sw.bb
	movabsq	$.L.str.71, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB50_5
.LBB50_2:                               # %sw.bb.2
	movabsq	$.L.str.72, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB50_5
.LBB50_3:                               # %sw.bb.4
	movabsq	$.L.str.73, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB50_5
.LBB50_4:                               # %sw.default
	movabsq	$.L.str.74, %rdi
	movb	$0, %al
	callq	error
.LBB50_5:                               # %sw.epilog
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fx_display_backing_store, .Lfunc_end50-Fx_display_backing_store
	.cfi_endproc

	.globl	Fx_display_visual_class
	.align	16, 0x90
	.type	Fx_display_visual_class,@function
Fx_display_visual_class:                # @Fx_display_visual_class
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	72(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$5, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	ja	.LBB51_7
# BB#9:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI51_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB51_1:                               # %sw.bb
	movabsq	$.L.str.75, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_2:                               # %sw.bb.2
	movabsq	$.L.str.76, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %sw.bb.4
	movabsq	$.L.str.77, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_4:                               # %sw.bb.6
	movabsq	$.L.str.78, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_5:                               # %sw.bb.8
	movabsq	$.L.str.79, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_6:                               # %sw.bb.10
	movabsq	$.L.str.80, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB51_8
.LBB51_7:                               # %sw.default
	movabsq	$.L.str.81, %rdi
	movb	$0, %al
	callq	error
.LBB51_8:                               # %sw.epilog
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Fx_display_visual_class, .Lfunc_end51-Fx_display_visual_class
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI51_0:
	.quad	.LBB51_1
	.quad	.LBB51_2
	.quad	.LBB51_3
	.quad	.LBB51_4
	.quad	.LBB51_5
	.quad	.LBB51_6

	.text
	.globl	Fx_display_save_under
	.align	16, 0x90
	.type	Fx_display_save_under,@function
Fx_display_save_under:                  # @Fx_display_save_under
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpl	$1, 116(%rax)
	jne	.LBB52_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB52_3
.LBB52_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB52_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fx_display_save_under, .Lfunc_end52-Fx_display_save_under
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI53_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	Fx_display_monitor_attributes_list
	.align	16, 0x90
	.type	Fx_display_monitor_attributes_list,@function
Fx_display_monitor_attributes_list:     # @Fx_display_monitor_attributes_list
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movl	$0, -60(%rbp)
	callq	block_input
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	cvtsi2sdl	32(%rax), %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	x_display_pixel_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	cvtsi2sdl	36(%rdi), %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	x_display_pixel_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	gdk_x11_lookup_xdisplay
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_display_get_default_screen
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_screen_get_primary_monitor
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rdi
	callq	gdk_screen_get_n_monitors
	xorl	%edi, %edi
	movl	%eax, -64(%rbp)
	movslq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -80(%rbp)
	movslq	-64(%rbp), %rax
	shlq	$5, %rax
	movq	%rax, %rdi
	callq	xzalloc
	movq	%rax, -104(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -88(%rbp)
.LBB53_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jne	.LBB53_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB53_1 Depth=1
	movb	$1, %al
	movq	-88(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB53_3:                               # %land.end
                                        #   in Loop: Header=BB53_1 Depth=1
	movb	-201(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB53_4
	jmp	.LBB53_10
.LBB53_4:                               # %for.body
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	-112(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB53_8
# BB#6:                                 # %land.lhs.true.25
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	-96(%rbp), %rax
	cmpq	tip_frame, %rax
	je	.LBB53_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	-112(%rbp), %rax
	movq	384(%rax), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gdk_screen_get_monitor_at_window
	movl	%eax, -68(%rbp)
	movq	-80(%rbp), %rdi
	movslq	-68(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movslq	-68(%rbp), %r8
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	AREF
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB53_8:                               # %if.end
                                        #   in Loop: Header=BB53_1 Depth=1
	jmp	.LBB53_9
.LBB53_9:                               # %for.inc
                                        #   in Loop: Header=BB53_1 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB53_1
.LBB53_10:                              # %for.end
	movl	$0, -68(%rbp)
.LBB53_11:                              # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB53_24
# BB#12:                                # %for.body.40
                                        #   in Loop: Header=BB53_11 Depth=1
	leaq	-144(%rbp), %rdx
	movl	$-1, -124(%rbp)
	movl	$-1, -128(%rbp)
	movslq	-68(%rbp), %rax
	shlq	$5, %rax
	addq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_width_mm
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_height_mm
	movl	%eax, -128(%rbp)
	cmpl	$0, -124(%rbp)
	jge	.LBB53_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB53_11 Depth=1
	movsd	.LCPI53_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-136(%rbp), %xmm1
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -124(%rbp)
.LBB53_14:                              # %if.end.50
                                        #   in Loop: Header=BB53_11 Depth=1
	cmpl	$0, -128(%rbp)
	jge	.LBB53_16
# BB#15:                                # %if.then.53
                                        #   in Loop: Header=BB53_11 Depth=1
	movsd	.LCPI53_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-132(%rbp), %xmm1
	mulsd	-40(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -128(%rbp)
.LBB53_16:                              # %if.end.58
                                        #   in Loop: Header=BB53_11 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB53_21
# BB#17:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB53_11 Depth=1
	leaq	-176(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	x_get_net_workarea
	testb	$1, %al
	jne	.LBB53_18
	jmp	.LBB53_21
.LBB53_18:                              # %if.then.64
                                        #   in Loop: Header=BB53_11 Depth=1
	leaq	-144(%rbp), %rdi
	leaq	-160(%rbp), %rax
	movswl	-176(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movswl	-174(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movzwl	-172(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movzwl	-170(%rbp), %ecx
	movl	%ecx, -148(%rbp)
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gdk_rectangle_intersect
	cmpl	$0, %eax
	jne	.LBB53_20
# BB#19:                                # %if.then.77
                                        #   in Loop: Header=BB53_11 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB53_20:                              # %if.end.78
                                        #   in Loop: Header=BB53_11 Depth=1
	jmp	.LBB53_22
.LBB53_21:                              # %if.else
                                        #   in Loop: Header=BB53_11 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
.LBB53_22:                              # %if.end.79
                                        #   in Loop: Header=BB53_11 Depth=1
	movl	-144(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, (%rdx)
	movl	-140(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 2(%rdx)
	movl	-136(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 4(%rdx)
	movl	-132(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 6(%rdx)
	movl	-160(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 8(%rdx)
	movl	-156(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 10(%rdx)
	movl	-152(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 12(%rdx)
	movl	-148(%rbp), %eax
	movw	%ax, %cx
	movq	-168(%rbp), %rdx
	movw	%cx, 14(%rdx)
	movl	-124(%rbp), %eax
	movq	-168(%rbp), %rdx
	movl	%eax, 16(%rdx)
	movl	-128(%rbp), %eax
	movq	-168(%rbp), %rdx
	movl	%eax, 20(%rdx)
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_plug_name
	movq	-168(%rbp), %rdx
	movq	%rax, 24(%rdx)
# BB#23:                                # %for.inc.112
                                        #   in Loop: Header=BB53_11 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB53_11
.LBB53_24:                              # %for.end.113
	movq	-104(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-80(%rbp), %rcx
	movq	Fx_display_monitor_attributes_list.source, %r8
	callq	make_monitor_attribute_list
	movq	%rax, -24(%rbp)
	callq	unblock_input
	movq	-24(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fx_display_monitor_attributes_list, .Lfunc_end53-Fx_display_monitor_attributes_list
	.cfi_endproc

	.align	16, 0x90
	.type	x_get_net_workarea,@function
x_get_net_workarea:                     # @x_get_net_workarea
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp171:
	.cfi_offset %rbx, -48
.Ltmp172:
	.cfi_offset %r12, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	$0, -120(%rbp)
	movb	$0, -121(%rbp)
	movq	-56(%rbp), %rdi
	callq	x_catch_errors
	xorl	%r9d, %r9d
	leaq	-88(%rbp), %rsi
	leaq	-112(%rbp), %rdi
	leaq	-96(%rbp), %rax
	leaq	-104(%rbp), %rcx
	leaq	-120(%rbp), %rdx
	movq	$0, -64(%rbp)
	movq	$1, -72(%rbp)
	movq	$6, -80(%rbp)
	movq	-56(%rbp), %r8
	movq	-40(%rbp), %r10
	movq	104(%r10), %r10
	movq	-40(%rbp), %r11
	movq	920(%r11), %r11
	movq	-64(%rbp), %rbx
	movq	-72(%rbp), %r14
	movq	-80(%rbp), %r15
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%r11, %rdx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, %r8
	movq	%r15, (%rsp)
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-152(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB54_12
# BB#1:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB54_12
# BB#2:                                 # %land.lhs.true.2
	movq	-56(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB54_12
# BB#3:                                 # %land.lhs.true.4
	cmpl	$32, -112(%rbp)
	jne	.LBB54_12
# BB#4:                                 # %land.lhs.true.6
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB54_12
# BB#5:                                 # %if.then
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rdi
	callq	XFree
	xorl	%r9d, %r9d
	leaq	-88(%rbp), %rdi
	leaq	-112(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	leaq	-120(%rbp), %r8
	movq	$0, -120(%rbp)
	movq	-136(%rbp), %r10
	shlq	$2, %r10
	movq	%r10, -64(%rbp)
	movq	$4, -72(%rbp)
	movq	-56(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	104(%r11), %r11
	movq	-40(%rbp), %rbx
	movq	928(%rbx), %rbx
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r15
	movq	-80(%rbp), %r12
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%r14, %rcx
	movq	%r8, -216(%rbp)         # 8-byte Spill
	movq	%r15, %r8
	movq	%r12, (%rsp)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	-216(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	XGetWindowProperty
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jne	.LBB54_11
# BB#6:                                 # %land.lhs.true.12
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB54_11
# BB#7:                                 # %land.lhs.true.14
	movq	-56(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB54_11
# BB#8:                                 # %land.lhs.true.16
	cmpl	$32, -112(%rbp)
	jne	.LBB54_11
# BB#9:                                 # %land.lhs.true.18
	movq	-96(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB54_11
# BB#10:                                # %if.then.20
	movq	-120(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movw	%ax, %cx
	movq	-48(%rbp), %rax
	movw	%cx, (%rax)
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movw	%ax, %cx
	movq	-48(%rbp), %rax
	movw	%cx, 2(%rax)
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movw	%ax, %cx
	movq	-48(%rbp), %rax
	movw	%cx, 4(%rax)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movw	%ax, %cx
	movq	-48(%rbp), %rax
	movw	%cx, 6(%rax)
	movq	-120(%rbp), %rdi
	callq	XFree
	movq	$0, -120(%rbp)
	movb	$1, -121(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB54_11:                              # %if.end
	jmp	.LBB54_12
.LBB54_12:                              # %if.end.29
	cmpq	$0, -120(%rbp)
	je	.LBB54_14
# BB#13:                                # %if.then.30
	movq	-120(%rbp), %rdi
	callq	XFree
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB54_14:                              # %if.end.32
	callq	x_uncatch_errors
	movb	-121(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	x_get_net_workarea, .Lfunc_end54-x_get_net_workarea
	.cfi_endproc

	.globl	Fx_frame_geometry
	.align	16, 0x90
	.type	Fx_frame_geometry,@function
Fx_frame_geometry:                      # @Fx_frame_geometry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	frame_geometry
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Fx_frame_geometry, .Lfunc_end55-Fx_frame_geometry
	.cfi_endproc

	.align	16, 0x90
	.type	frame_geometry,@function
frame_geometry:                         # @frame_geometry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp181:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
	movb	$0, -141(%rbp)
	movb	$0, -142(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -160(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB56_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB56_3
.LBB56_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	jmp	.LBB56_47
.LBB56_3:                               # %if.end
	callq	block_input
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	je	.LBB56_9
# BB#4:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB56_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB56_7
# BB#6:                                 # %cond.true.19
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB56_8
.LBB56_7:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB56_8
.LBB56_8:                               # %cond.end
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB56_10
.LBB56_9:                               # %cond.false.25
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB56_10:                              # %cond.end.28
	movq	-184(%rbp), %rax        # 8-byte Reload
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-56(%rbp), %r9
	leaq	-60(%rbp), %rsi
	leaq	-52(%rbp), %rdi
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-192(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	%r10, 16(%rsp)
	callq	XGetGeometry
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	leaq	-68(%rbp), %rdi
	leaq	-72(%rbp), %r10
	movq	-40(%rbp), %rbx
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	$0, (%rsp)
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	x_real_pos_and_offsets
	callq	unblock_input
	movl	-68(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-72(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	-56(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-96(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	-92(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	-96(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-108(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-112(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -120(%rbp)
	movq	-40(%rbp), %rcx
	movl	332(%rcx), %eax
	movl	%eax, -140(%rbp)
	movl	-108(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-112(%rbp), %eax
	addl	-140(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-116(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-120(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -136(%rbp)
	movb	$1, -141(%rbp)
	movq	-40(%rbp), %rcx
	movq	384(%rcx), %rcx
	movl	(%rcx), %eax
	movl	%eax, -148(%rbp)
	movl	-148(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-148(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -148(%rbp)
	je	.LBB56_12
# BB#11:                                # %cond.true.49
	movl	-56(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB56_13
.LBB56_12:                              # %cond.false.50
	xorl	%eax, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB56_13
.LBB56_13:                              # %cond.end.51
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$607, %edi              # imm = 0x25F
	movl	%eax, -152(%rbp)
	movb	$1, -142(%rbp)
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_18
# BB#14:                                # %if.then.55
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	addl	16(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movl	-160(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-160(%rbp), %ecx
	addl	-124(%rbp), %ecx
	movl	%ecx, -124(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB56_16
# BB#15:                                # %cond.true.64
	movl	-60(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB56_17
.LBB56_16:                              # %cond.false.66
	xorl	%eax, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB56_17
.LBB56_17:                              # %cond.end.67
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	jmp	.LBB56_34
.LBB56_18:                              # %if.else
	movl	$928, %edi              # imm = 0x3A0
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_23
# BB#19:                                # %if.then.72
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movl	-156(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-156(%rbp), %ecx
	addl	-128(%rbp), %ecx
	movl	%ecx, -128(%rbp)
	cmpl	$0, -156(%rbp)
	je	.LBB56_21
# BB#20:                                # %cond.true.81
	movl	-56(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB56_22
.LBB56_21:                              # %cond.false.82
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB56_22
.LBB56_22:                              # %cond.end.83
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
	jmp	.LBB56_33
.LBB56_23:                              # %if.else.85
	movl	$811, %edi              # imm = 0x32B
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_28
# BB#24:                                # %if.then.89
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	addl	16(%rax), %ecx
	movl	%ecx, -160(%rbp)
	movl	-160(%rbp), %ecx
	movl	-116(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -116(%rbp)
	movl	-160(%rbp), %ecx
	movl	-132(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -132(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB56_26
# BB#25:                                # %cond.true.100
	movl	-60(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB56_27
.LBB56_26:                              # %cond.false.102
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB56_27
.LBB56_27:                              # %cond.end.103
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)
	jmp	.LBB56_32
.LBB56_28:                              # %if.else.105
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	addl	8(%rax), %ecx
	movl	%ecx, -156(%rbp)
	movl	-156(%rbp), %ecx
	movl	-120(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -120(%rbp)
	movl	-156(%rbp), %ecx
	movl	-136(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -136(%rbp)
	cmpl	$0, -156(%rbp)
	je	.LBB56_30
# BB#29:                                # %cond.true.116
	movl	-56(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB56_31
.LBB56_30:                              # %cond.false.117
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB56_31
.LBB56_31:                              # %cond.end.118
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
.LBB56_32:                              # %if.end.120
	jmp	.LBB56_33
.LBB56_33:                              # %if.end.121
	jmp	.LBB56_34
.LBB56_34:                              # %if.end.122
	movl	$724, %edi              # imm = 0x2D4
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_36
# BB#35:                                # %if.then.125
	movslq	-92(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-96(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-100(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movslq	-104(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	list4
	movq	%rax, -16(%rbp)
	jmp	.LBB56_47
.LBB56_36:                              # %if.else.137
	movl	$697, %edi              # imm = 0x2B9
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_38
# BB#37:                                # %if.then.141
	movslq	-108(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-112(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-116(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movslq	-120(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	list4
	movq	%rax, -16(%rbp)
	jmp	.LBB56_47
.LBB56_38:                              # %if.else.155
	movl	$549, %edi              # imm = 0x225
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB56_40
# BB#39:                                # %if.then.159
	movslq	-124(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-128(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-132(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movslq	-136(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	list4
	movq	%rax, -16(%rbp)
	jmp	.LBB56_47
.LBB56_40:                              # %if.else.173
	movl	$725, %edi              # imm = 0x2D5
	callq	builtin_lisp_symbol
	movslq	-92(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-96(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$726, %edi              # imm = 0x2D6
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-100(%rbp), %edi
	subl	-92(%rbp), %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movl	-104(%rbp), %edi
	subl	-96(%rbp), %edi
	movslq	%edi, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$393, %edi              # imm = 0x189
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-80(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-88(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$920, %edi              # imm = 0x398
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	-84(%rbp), %r8d
	subl	-88(%rbp), %r8d
	movslq	%r8d, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$652, %edi              # imm = 0x28C
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -141(%rbp)
	movq	%rax, -392(%rbp)        # 8-byte Spill
	je	.LBB56_42
# BB#41:                                # %cond.true.213
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB56_43
.LBB56_42:                              # %cond.false.215
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB56_43:                              # %cond.end.217
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$654, %edi              # imm = 0x28E
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-152(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-148(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$922, %edi              # imm = 0x39A
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	testb	$1, -142(%rbp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	je	.LBB56_45
# BB#44:                                # %cond.true.232
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB56_46
.LBB56_45:                              # %cond.false.234
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB56_46:                              # %cond.end.236
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$924, %edi              # imm = 0x39C
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$925, %edi              # imm = 0x39D
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-160(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movslq	-156(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	Fcons
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movl	$563, %edi              # imm = 0x233
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-140(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movl	$10, %edx
	movl	%edx, %esi
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	-384(%rbp), %r9         # 8-byte Reload
	movq	-408(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-424(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-448(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-456(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-472(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 32(%rsp)
	movq	%rax, 40(%rsp)
	movb	$0, %al
	callq	listn
	movq	%rax, -16(%rbp)
.LBB56_47:                              # %return
	movq	-16(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end56:
	.size	frame_geometry, .Lfunc_end56-frame_geometry
	.cfi_endproc

	.globl	Fx_frame_edges
	.align	16, 0x90
	.type	Fx_frame_edges,@function
Fx_frame_edges:                         # @Fx_frame_edges
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp182:
	.cfi_def_cfa_offset 16
.Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$724, %eax              # imm = 0x2D4
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB57_2
# BB#1:                                 # %lor.lhs.false
	movl	$549, %edi              # imm = 0x225
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB57_3
.LBB57_2:                               # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB57_4
.LBB57_3:                               # %cond.false
	movl	$697, %edi              # imm = 0x2B9
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB57_4:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	frame_geometry
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Fx_frame_edges, .Lfunc_end57-Fx_frame_edges
	.cfi_endproc

	.globl	Fx_mouse_absolute_pixel_position
	.align	16, 0x90
	.type	Fx_mouse_absolute_pixel_position,@function
Fx_mouse_absolute_pixel_position:       # @Fx_mouse_absolute_pixel_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
.Ltmp186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp187:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB58_1
	jmp	.LBB58_3
.LBB58_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB58_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB58_4
.LBB58_3:                               # %cond.false
	callq	emacs_abort
.LBB58_4:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	je	.LBB58_6
# BB#5:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB58_7
.LBB58_6:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB58_8
.LBB58_7:                               # %if.end
	callq	block_input
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-36(%rbp), %r8
	leaq	-40(%rbp), %r9
	leaq	-44(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	movslq	224(%rsi), %rsi
	movq	-16(%rbp), %r10
	movq	384(%r10), %r10
	movq	424(%r10), %r10
	movq	16(%r10), %r10
	shlq	$7, %rsi
	addq	232(%r10), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	XQueryPointer
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	unblock_input
	movslq	-36(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-40(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
.LBB58_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	Fx_mouse_absolute_pixel_position, .Lfunc_end58-Fx_mouse_absolute_pixel_position
	.cfi_endproc

	.globl	Fx_set_mouse_absolute_pixel_position
	.align	16, 0x90
	.type	Fx_set_mouse_absolute_pixel_position,@function
Fx_set_mouse_absolute_pixel_position:   # @Fx_set_mouse_absolute_pixel_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp188:
	.cfi_def_cfa_offset 16
.Ltmp189:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp190:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB59_1
	jmp	.LBB59_3
.LBB59_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB59_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB59_4
.LBB59_3:                               # %cond.false
	callq	emacs_abort
.LBB59_4:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$0, %edx
	je	.LBB59_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB59_7
.LBB59_6:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB59_28
.LBB59_7:                               # %if.end
	jmp	.LBB59_8
.LBB59_8:                               # %do.body
	jmp	.LBB59_9
.LBB59_9:                               # %do.body.10
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB59_11
# BB#10:                                # %cond.true.14
	jmp	.LBB59_12
.LBB59_11:                              # %cond.false.15
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB59_12:                              # %cond.end.17
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB59_14
# BB#13:                                # %land.lhs.true.20
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB59_15
.LBB59_14:                              # %if.then.24
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB59_15:                              # %if.end.25
	jmp	.LBB59_16
.LBB59_16:                              # %do.end
	jmp	.LBB59_17
.LBB59_17:                              # %do.end.26
	jmp	.LBB59_18
.LBB59_18:                              # %do.body.27
	jmp	.LBB59_19
.LBB59_19:                              # %do.body.28
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB59_21
# BB#20:                                # %cond.true.34
	jmp	.LBB59_22
.LBB59_21:                              # %cond.false.35
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB59_22:                              # %cond.end.37
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB59_24
# BB#23:                                # %land.lhs.true.41
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB59_25
.LBB59_24:                              # %if.then.45
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB59_25:                              # %if.end.46
	jmp	.LBB59_26
.LBB59_26:                              # %do.end.47
	jmp	.LBB59_27
.LBB59_27:                              # %do.end.48
	callq	block_input
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rcx
	movslq	224(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	shlq	$7, %rcx
	addq	232(%rdx), %rcx
	movq	16(%rcx), %rdx
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %r8d
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %r9d
	movl	%eax, %ecx
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	XWarpPointer
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB59_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	Fx_set_mouse_absolute_pixel_position, .Lfunc_end59-Fx_set_mouse_absolute_pixel_position
	.cfi_endproc

	.globl	select_visual
	.align	16, 0x90
	.type	select_visual,@function
select_visual:                          # @select_visual
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
.Ltmp192:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp193:
	.cfi_def_cfa_register %rbp
	subq	$352, %rsp              # imm = 0x160
	movl	$4, %esi
	leaq	-64(%rbp), %rax
	movabsq	$.L.str.83, %rcx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	$11, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-104(%rbp), %rcx
	movabsq	$.L.str.84, %rdi
	movq	%rax, -32(%rbp)
	movq	$11, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	-288(%rbp), %rdx        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB60_1
	jmp	.LBB60_17
.LBB60_1:                               # %if.then
	movq	-112(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -120(%rbp)
	movl	$-1, -136(%rbp)
	movq	-120(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	lispstpcpy
	movl	$45, %esi
	movq	-120(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	strchr
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.LBB60_3
# BB#2:                                 # %if.then.19
	movq	-128(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movq	-8(%rbp), %rdi
	movl	%eax, 88(%rdi)
	movq	-128(%rbp), %rdi
	movb	$0, (%rdi)
	jmp	.LBB60_4
.LBB60_3:                               # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 88(%rax)
.LBB60_4:                               # %if.end
	movl	$0, -132(%rbp)
.LBB60_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$visual_classes, %rax
	movslq	-132(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB60_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB60_5 Depth=1
	movabsq	$visual_classes, %rax
	movq	-120(%rbp), %rdi
	movslq	-132(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB60_8
# BB#7:                                 # %if.then.27
	movabsq	$visual_classes, %rax
	movslq	-132(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -136(%rbp)
	jmp	.LBB60_10
.LBB60_8:                               # %if.end.31
                                        #   in Loop: Header=BB60_5 Depth=1
	jmp	.LBB60_9
.LBB60_9:                               # %for.inc
                                        #   in Loop: Header=BB60_5 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB60_5
.LBB60_10:                              # %for.end
	cmpl	$-1, -136(%rbp)
	je	.LBB60_12
# BB#11:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XScreenNumberOfScreen
	leaq	-200(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	88(%rdi), %edx
	movl	-136(%rbp), %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	XMatchVisualInfo
	cmpl	$0, %eax
	jne	.LBB60_16
.LBB60_12:                              # %if.then.37
	xorl	%edi, %edi
	movq	globals+1344, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB60_14
# BB#13:                                # %cond.true
	movl	$1, %edx
	movq	-112(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB60_15
.LBB60_14:                              # %cond.false
	movq	-112(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB60_15:                              # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$.L.str.85, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fatal
.LBB60_16:                              # %if.end.42
	movq	-200(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB60_20
.LBB60_17:                              # %if.else.44
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	XVisualIDFromVisual
	movq	%rax, -272(%rbp)
	movq	-24(%rbp), %rdi
	callq	XScreenNumberOfScreen
	movl	$3, %edx
	movl	%edx, %esi
	leaq	-280(%rbp), %rdx
	leaq	-204(%rbp), %rcx
	movl	%eax, -264(%rbp)
	movq	-16(%rbp), %rdi
	callq	XGetVisualInfo
	movq	%rax, -216(%rbp)
	cmpl	$0, -204(%rbp)
	jg	.LBB60_19
# BB#18:                                # %if.then.53
	movabsq	$.L.str.86, %rdi
	movb	$0, %al
	callq	fatal
.LBB60_19:                              # %if.end.54
	movq	-216(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	XFree
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB60_20:                              # %if.end.57
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	select_visual, .Lfunc_end60-select_visual
	.cfi_endproc

	.globl	Fx_open_connection
	.align	16, 0x90
	.type	Fx_open_connection,@function
Fx_open_connection:                     # @Fx_open_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
.Ltmp195:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp196:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB61_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
.LBB61_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB61_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB61_5
.LBB61_4:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB61_5:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	callq	validate_x_resource_name
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	globals+2856, %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	x_term_init
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB61_9
# BB#6:                                 # %if.then.7
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB61_8
# BB#7:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.87, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fatal
.LBB61_8:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.88, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB61_9:                               # %if.end.13
	movl	$11, %eax
	movl	%eax, %edi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, globals+2672
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Fx_open_connection, .Lfunc_end61-Fx_open_connection
	.cfi_endproc

	.globl	Fx_close_connection
	.align	16, 0x90
	.type	Fx_close_connection,@function
Fx_close_connection:                    # @Fx_close_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp199:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	check_x_display_info
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 40(%rax)
	jle	.LBB62_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.89, %rdi
	movb	$0, %al
	callq	error
.LBB62_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	x_delete_terminal
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	Fx_close_connection, .Lfunc_end62-Fx_close_connection
	.cfi_endproc

	.globl	Fx_display_list
	.align	16, 0x90
	.type	Fx_display_list,@function
Fx_display_list:                        # @Fx_display_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	movq	x_display_list, %rax
	movq	%rax, -16(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB63_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB63_1
.LBB63_4:                               # %for.end
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	Fx_display_list, .Lfunc_end63-Fx_display_list
	.cfi_endproc

	.globl	Fx_synchronize
	.align	16, 0x90
	.type	Fx_synchronize,@function
Fx_synchronize:                         # @Fx_synchronize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	check_x_display_info
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	XSynchronize
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Fx_synchronize, .Lfunc_end64-Fx_synchronize
	.cfi_endproc

	.globl	x_sync
	.align	16, 0x90
	.type	x_sync,@function
x_sync:                                 # @x_sync
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	block_input
# BB#1:                                 # %do.body
	callq	gdk_window_process_all_updates
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XSync
	movl	%eax, -12(%rbp)         # 4-byte Spill
# BB#2:                                 # %do.end
	callq	unblock_input
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	x_sync, .Lfunc_end65-x_sync
	.cfi_endproc

	.globl	Fx_change_window_property
	.align	16, 0x90
	.type	Fx_change_window_property,@function
Fx_change_window_property:              # @Fx_change_window_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp209:
	.cfi_def_cfa_offset 16
.Ltmp210:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp211:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -56(%rbp)
	movq	$31, -72(%rbp)
	movl	$8, -76(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_9
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB66_3
# BB#2:                                 # %cond.true
	jmp	.LBB66_4
.LBB66_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB66_4:                               # %cond.end
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$8, %rax
	je	.LBB66_8
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$16, %rax
	je	.LBB66_8
# BB#6:                                 # %land.lhs.true.11
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$32, %rax
	je	.LBB66_8
# BB#7:                                 # %if.then.15
	movabsq	$.L.str.90, %rdi
	movb	$0, %al
	callq	error
.LBB66_8:                               # %if.end
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
.LBB66_9:                               # %if.end.18
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB66_16
# BB#10:                                # %if.then.23
	movq	-16(%rbp), %rdi
	callq	x_check_property_data
	movl	%eax, -92(%rbp)
	cmpl	$-1, -92(%rbp)
	jne	.LBB66_12
# BB#11:                                # %if.then.27
	movabsq	$.L.str.91, %rdi
	movb	$0, %al
	callq	error
.LBB66_12:                              # %if.end.28
	cmpl	$32, -76(%rbp)
	jne	.LBB66_14
# BB#13:                                # %cond.true.31
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB66_15
.LBB66_14:                              # %cond.false.32
	movl	-76(%rbp), %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB66_15:                              # %cond.end.35
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	movslq	-92(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	xnmalloc
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movl	-76(%rbp), %ecx
	callq	x_fill_property_data
	jmp	.LBB66_19
.LBB66_16:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jge	.LBB66_18
# BB#17:                                # %if.then.42
	movabsq	$.L.str.92, %rdi
	movb	$0, %al
	callq	error
.LBB66_18:                              # %if.end.43
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
.LBB66_19:                              # %if.end.46
	callq	block_input
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB66_21
# BB#20:                                # %if.then.56
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-56(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -72(%rbp)
.LBB66_21:                              # %if.end.63
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_30
# BB#22:                                # %if.then.67
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB66_28
# BB#23:                                # %cond.true.70
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB66_26
# BB#24:                                # %land.lhs.true.75
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB66_26
# BB#25:                                # %cond.true.81
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB66_27
.LBB66_26:                              # %cond.false.87
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB66_27
.LBB66_27:                              # %cond.end.88
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB66_29
.LBB66_28:                              # %cond.false.90
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB66_29:                              # %cond.end.93
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	jmp	.LBB66_31
.LBB66_30:                              # %if.else.95
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB66_31:                              # %if.end.99
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movl	-76(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %r10d
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	XChangeProperty
	movq	-16(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %r8d
	cmpl	$3, %r8d
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jne	.LBB66_33
# BB#32:                                # %if.then.109
	movq	-88(%rbp), %rdi
	callq	xfree
.LBB66_33:                              # %if.end.110
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XFlush
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	unblock_input
	movq	-16(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fx_change_window_property, .Lfunc_end66-Fx_change_window_property
	.cfi_endproc

	.globl	Fx_delete_window_property
	.align	16, 0x90
	.type	Fx_delete_window_property,@function
Fx_delete_window_property:              # @Fx_delete_window_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
.Ltmp213:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp214:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	callq	block_input
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-32(%rbp), %rdx
	callq	XDeleteProperty
	movq	-24(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	XFlush
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Fx_delete_window_property, .Lfunc_end67-Fx_delete_window_property
	.cfi_endproc

	.globl	Fx_window_property
	.align	16, 0x90
	.type	Fx_window_property,@function
Fx_window_property:                     # @Fx_window_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
.Ltmp216:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp217:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movq	$31, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_4
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	movq	-32(%rbp), %rdi
	callq	cons_to_unsigned
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB68_3
# BB#2:                                 # %if.then.4
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB68_3:                               # %if.end
	jmp	.LBB68_4
.LBB68_4:                               # %if.end.7
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB68_5
	jmp	.LBB68_9
.LBB68_5:                               # %if.then.9
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$.L.str.93, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB68_7
# BB#6:                                 # %if.then.13
	movq	$0, -80(%rbp)
	jmp	.LBB68_8
.LBB68_7:                               # %if.else
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	movq	%rax, -80(%rbp)
.LBB68_8:                               # %if.end.19
	jmp	.LBB68_9
.LBB68_9:                               # %if.end.20
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XInternAtom
	leaq	-89(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	x_window_property_intern
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_28
# BB#10:                                # %land.lhs.true
	testb	$1, -89(%rbp)
	jne	.LBB68_28
# BB#11:                                # %land.lhs.true.31
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_28
# BB#12:                                # %land.lhs.true.34
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 80(%rcx)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	je	.LBB68_18
# BB#13:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB68_16
# BB#14:                                # %land.lhs.true.42
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB68_16
# BB#15:                                # %cond.true.48
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB68_17
.LBB68_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB68_17
.LBB68_17:                              # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB68_19
.LBB68_18:                              # %cond.false.54
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB68_19:                              # %cond.end.58
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_28
# BB#20:                                # %if.then.61
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB68_26
# BB#21:                                # %cond.true.66
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB68_24
# BB#22:                                # %land.lhs.true.71
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB68_24
# BB#23:                                # %cond.true.77
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB68_25
.LBB68_24:                              # %cond.false.83
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB68_25
.LBB68_25:                              # %cond.end.84
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB68_27
.LBB68_26:                              # %cond.false.86
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB68_27:                              # %cond.end.90
	movq	-192(%rbp), %rax        # 8-byte Reload
	leaq	-89(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	x_window_property_intern
	movq	%rax, -72(%rbp)
.LBB68_28:                              # %if.end.93
	callq	unblock_input
	movq	-72(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fx_window_property, .Lfunc_end68-Fx_window_property
	.cfi_endproc

	.align	16, 0x90
	.type	x_window_property_intern,@function
x_window_property_intern:               # @x_window_property_intern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
.Ltmp219:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp220:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp221:
	.cfi_offset %rbx, -56
.Ltmp222:
	.cfi_offset %r12, -48
.Ltmp223:
	.cfi_offset %r13, -40
.Ltmp224:
	.cfi_offset %r14, -32
.Ltmp225:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movl	%r10d, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	xorl	%r9d, %r9d
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rsi
	leaq	-136(%rbp), %r8
	leaq	-144(%rbp), %r11
	leaq	-104(%rbp), %rbx
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %r14
	movq	-72(%rbp), %r15
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%r14, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%r8, -208(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r15, (%rsp)
	movq	-192(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	-184(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-208(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rbx, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -148(%rbp)
	cmpl	$0, -124(%rbp)
	setne	%r13b
	movq	-96(%rbp), %rcx
	andb	$1, %r13b
	movb	%r13b, (%rcx)
	cmpl	$0, -148(%rbp)
	jne	.LBB69_17
# BB#1:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	testb	$1, (%rax)
	je	.LBB69_17
# BB#2:                                 # %if.then
	movq	-104(%rbp), %rdi
	callq	XFree
	xorl	%edi, %edi
	movq	$0, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-144(%rbp), %r8
	movq	-80(%rbp), %r9
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%r9, -224(%rbp)         # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%r8, -256(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rsi
	leaq	-136(%rbp), %r8
	leaq	-144(%rbp), %r9
	leaq	-104(%rbp), %r10
	movq	-224(%rbp), %r11        # 8-byte Reload
	cmpq	%rax, %r11
	sete	%bl
	xorb	$-1, %bl
	andb	$1, %bl
	movzbl	%bl, %edi
	movq	-72(%rbp), %rax
	movq	-232(%rbp), %r14        # 8-byte Reload
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movq	%r14, %rdi
	movq	-240(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-248(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-256(%rbp), %r13        # 8-byte Reload
	movq	%r8, -288(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movl	-260(%rbp), %r11d       # 4-byte Reload
	movq	%r9, -296(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movq	%rax, (%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	XGetWindowProperty
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	.LBB69_14
# BB#3:                                 # %land.lhs.true.12
	cmpq	$0, -104(%rbp)
	je	.LBB69_14
# BB#4:                                 # %if.then.14
	cmpl	$32, -124(%rbp)
	jne	.LBB69_10
# BB#5:                                 # %if.then.16
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	$0, -160(%rbp)
.LBB69_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jae	.LBB69_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB69_6 Depth=1
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	%eax, %edx
	movq	-160(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	%edx, (%rcx,%rax,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB69_6 Depth=1
	movq	-160(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB69_6
.LBB69_9:                               # %for.end
	jmp	.LBB69_10
.LBB69_10:                              # %if.end
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_12
# BB#11:                                # %if.then.22
	movq	-104(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	make_string
	movq	%rax, -112(%rbp)
	jmp	.LBB69_13
.LBB69_12:                              # %if.else
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %ecx
	movq	-136(%rbp), %r8
	callq	x_property_data_to_lisp
	movq	%rax, -112(%rbp)
.LBB69_13:                              # %if.end.25
	jmp	.LBB69_14
.LBB69_14:                              # %if.end.26
	cmpq	$0, -104(%rbp)
	je	.LBB69_16
# BB#15:                                # %if.then.28
	movq	-104(%rbp), %rdi
	callq	XFree
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB69_16:                              # %if.end.30
	jmp	.LBB69_17
.LBB69_17:                              # %if.end.31
	movq	-112(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	x_window_property_intern, .Lfunc_end69-x_window_property_intern
	.cfi_endproc

	.globl	Fx_show_tip
	.align	16, 0x90
	.type	Fx_show_tip,@function
Fx_show_tip:                            # @Fx_show_tip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp226:
	.cfi_def_cfa_offset 16
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp228:
	.cfi_def_cfa_register %rbp
	subq	$592, %rsp              # imm = 0x250
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	windows_or_buffers_changed, %eax
	movl	%eax, -116(%rbp)
	callq	SPECPDL_INDEX
	movl	$548, %edi              # imm = 0x224
	movq	%rax, -128(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.94, %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
.LBB70_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_4
# BB#3:                                 # %if.then.8
	movq	$22, -32(%rbp)
	jmp	.LBB70_5
.LBB70_4:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	CHECK_NATNUM
.LBB70_5:                               # %if.end.9
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_7
# BB#6:                                 # %if.then.12
	movq	$22, -40(%rbp)
	jmp	.LBB70_11
.LBB70_7:                               # %if.else.13
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_9
# BB#8:                                 # %cond.true
	jmp	.LBB70_10
.LBB70_9:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB70_10:                              # %cond.end
	jmp	.LBB70_11
.LBB70_11:                              # %if.end.18
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_13
# BB#12:                                # %if.then.22
	movq	$-38, -48(%rbp)
	jmp	.LBB70_17
.LBB70_13:                              # %if.else.23
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB70_15
# BB#14:                                # %cond.true.29
	jmp	.LBB70_16
.LBB70_15:                              # %cond.false.30
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB70_16:                              # %cond.end.32
	jmp	.LBB70_17
.LBB70_17:                              # %if.end.33
	testb	$1, globals+3445
	je	.LBB70_23
# BB#18:                                # %if.then.34
	callq	Fx_hide_tip
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	block_input
	leaq	-104(%rbp), %rdx
	leaq	-108(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	xg_prepare_tooltip
	andb	$1, %al
	movb	%al, -129(%rbp)
	testb	$1, -129(%rbp)
	je	.LBB70_20
# BB#19:                                # %if.then.38
	leaq	-68(%rbp), %rax
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movl	-104(%rbp), %r9d
	movl	-108(%rbp), %r10d
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	compute_tip_xy
	movq	-56(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	xg_show_tooltip
	movl	$5, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, tip_frame
.LBB70_20:                              # %if.end.40
	callq	unblock_input
	testb	$1, -129(%rbp)
	je	.LBB70_22
# BB#21:                                # %if.then.42
	jmp	.LBB70_93
.LBB70_22:                              # %if.end.43
	jmp	.LBB70_23
.LBB70_23:                              # %if.end.44
	xorl	%edi, %edi
	movq	last_show_tip_args, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#24:                                # %if.then.48
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$14, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, last_show_tip_args
.LBB70_25:                              # %if.end.51
	xorl	%edi, %edi
	movq	tip_frame, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_33
# BB#26:                                # %if.then.55
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	last_show_tip_args, %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -144(%rbp)
	movq	last_show_tip_args, %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movq	last_show_tip_args, %rdi
	callq	AREF
	movq	%rax, -160(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB70_32
# BB#27:                                # %land.lhs.true
	movq	-144(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB70_32
# BB#28:                                # %land.lhs.true.65
	movq	-160(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB70_32
# BB#29:                                # %if.then.70
	xorl	%edi, %edi
	movq	tip_frame, %rax
	subq	$5, %rax
	movq	%rax, -168(%rbp)
	movq	tip_timer, %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_31
# BB#30:                                # %if.then.74
	xorl	%edi, %edi
	movq	tip_timer, %rax
	movq	%rax, -176(%rbp)
	callq	builtin_lisp_symbol
	movl	$236, %edi
	movq	%rax, tip_timer
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB70_31:                              # %if.end.78
	callq	block_input
	leaq	-68(%rbp), %rax
	leaq	-72(%rbp), %rcx
	movq	-168(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movq	-168(%rbp), %r9
	movl	312(%r9), %r10d
	movq	-168(%rbp), %r9
	movl	316(%r9), %r9d
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r10d, %r8d
	movq	%rax, (%rsp)
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	compute_tip_xy
	movq	-168(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-168(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	callq	XMoveWindow
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	unblock_input
	jmp	.LBB70_93
.LBB70_32:                              # %if.end.82
	jmp	.LBB70_33
.LBB70_33:                              # %if.end.83
	callq	Fx_hide_tip
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	last_show_tip_args, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	last_show_tip_args, %rdi
	movq	-16(%rbp), %rdx
	callq	ASET
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	last_show_tip_args, %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	movl	$696, %edi              # imm = 0x2B8
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB70_35
# BB#34:                                # %if.then.90
	movl	$696, %edi              # imm = 0x2B8
	callq	builtin_lisp_symbol
	movabsq	$.L.str.95, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_35:                              # %if.end.95
	movl	$563, %edi              # imm = 0x233
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_37
# BB#36:                                # %if.then.101
	movl	$563, %edi              # imm = 0x233
	callq	builtin_lisp_symbol
	movl	$14, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_37:                              # %if.end.105
	movl	$210, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_39
# BB#38:                                # %if.then.111
	movl	$210, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_39:                              # %if.end.115
	movl	$215, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_41
# BB#40:                                # %if.then.121
	movl	$215, %edi
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_41:                              # %if.end.125
	movl	$813, %edi              # imm = 0x32D
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_43
# BB#42:                                # %if.then.131
	movl	$813, %edi              # imm = 0x32D
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_43:                              # %if.end.135
	movl	$209, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_45
# BB#44:                                # %if.then.141
	movl	$209, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.96, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_45:                              # %if.end.146
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_47
# BB#46:                                # %if.then.152
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.96, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB70_47:                              # %if.end.157
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	x_create_tip_frame
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, 248(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 240(%rax)
	movq	-64(%rbp), %rax
	movl	$0, 244(%rax)
	movq	globals+2792, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB70_51
# BB#48:                                # %land.lhs.true.168
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2792, %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB70_49
	jmp	.LBB70_51
.LBB70_49:                              # %land.lhs.true.172
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	globals+2792, %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB70_50
	jmp	.LBB70_51
.LBB70_50:                              # %if.then.176
	movq	globals+2792, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 264(%rax)
	movq	globals+2792, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 268(%rax)
	jmp	.LBB70_52
.LBB70_51:                              # %if.else.185
	movq	-64(%rbp), %rax
	movl	$80, 264(%rax)
	movq	-64(%rbp), %rax
	movl	$40, 268(%rax)
.LBB70_52:                              # %if.end.188
	movq	-64(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	364(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 256(%rax)
	movq	-64(%rbp), %rax
	movl	268(%rax), %ecx
	movq	-56(%rbp), %rax
	imull	368(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 260(%rax)
	movq	-64(%rbp), %rax
	movl	264(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 280(%rax)
	movq	-56(%rbp), %rdi
	callq	adjust_frame_glyphs
	movq	-64(%rbp), %rax
	movw	468(%rax), %dx
	andw	$-2049, %dx             # imm = 0xFFFFFFFFFFFFF7FF
	orw	$2048, %dx              # imm = 0x800
	movw	%dx, 468(%rax)
	movq	current_buffer, %rax
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal_1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_truncate_lines
	movq	-64(%rbp), %rax
	movq	200(%rax), %rdi
	callq	clear_glyph_matrix
	movq	-64(%rbp), %rax
	movq	192(%rax), %rdi
	callq	clear_glyph_matrix
	movl	$2, %ecx
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	try_window
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
	movb	$0, -109(%rbp)
	movl	$0, -100(%rbp)
	movl	%eax, -460(%rbp)        # 4-byte Spill
.LBB70_53:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB70_72
# BB#54:                                # %for.body
                                        #   in Loop: Header=BB70_53 Depth=1
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	200(%rcx), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB70_56
# BB#55:                                # %lor.lhs.false
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-184(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB70_57
.LBB70_56:                              # %if.then.212
	jmp	.LBB70_72
.LBB70_57:                              # %if.end.213
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-184(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 236(%rax)
	movq	-184(%rbp), %rax
	movl	52(%rax), %edx
	movl	%edx, -196(%rbp)
	movq	-184(%rbp), %rax
	cmpw	$0, 34(%rax)
	je	.LBB70_67
# BB#58:                                # %if.then.220
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-184(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB70_62
# BB#59:                                # %if.then.225
                                        #   in Loop: Header=BB70_53 Depth=1
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movswl	34(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-184(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	8(%rdx), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB70_61
# BB#60:                                # %if.then.236
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-192(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	-196(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -196(%rbp)
.LBB70_61:                              # %if.end.240
                                        #   in Loop: Header=BB70_53 Depth=1
	jmp	.LBB70_66
.LBB70_62:                              # %if.else.241
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$7, %ecx
	cmpl	$4, %ecx
	jne	.LBB70_65
# BB#63:                                # %land.lhs.true.248
                                        #   in Loop: Header=BB70_53 Depth=1
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_65
# BB#64:                                # %if.then.253
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-208(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	-196(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -196(%rbp)
	movb	$1, -109(%rbp)
.LBB70_65:                              # %if.end.257
                                        #   in Loop: Header=BB70_53 Depth=1
	jmp	.LBB70_66
.LBB70_66:                              # %if.end.258
                                        #   in Loop: Header=BB70_53 Depth=1
	jmp	.LBB70_67
.LBB70_67:                              # %if.end.259
                                        #   in Loop: Header=BB70_53 Depth=1
	movq	-184(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-104(%rbp), %ecx
	cmpl	-196(%rbp), %ecx
	jle	.LBB70_69
# BB#68:                                # %cond.true.263
                                        #   in Loop: Header=BB70_53 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB70_70
.LBB70_69:                              # %cond.false.264
                                        #   in Loop: Header=BB70_53 Depth=1
	movl	-196(%rbp), %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
.LBB70_70:                              # %cond.end.265
                                        #   in Loop: Header=BB70_53 Depth=1
	movl	-484(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
# BB#71:                                # %for.inc
                                        #   in Loop: Header=BB70_53 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB70_53
.LBB70_72:                              # %for.end
	testb	$1, -109(%rbp)
	je	.LBB70_92
# BB#73:                                # %if.then.267
	movl	-104(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 256(%rcx)
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movl	364(%rcx), %eax
	movl	-104(%rbp), %edx
	movl	%eax, -488(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-488(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 264(%rcx)
	movl	-104(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movl	-104(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movl	-104(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %edi
	cmpl	$0, %edi
	movl	%eax, -492(%rbp)        # 4-byte Spill
	je	.LBB70_75
# BB#74:                                # %cond.true.280
	movq	-56(%rbp), %rax
	movl	420(%rax), %ecx
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	jmp	.LBB70_76
.LBB70_75:                              # %cond.false.281
	xorl	%eax, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB70_76
.LBB70_76:                              # %cond.end.282
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	-492(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	344(%rdx), %eax
	movq	-56(%rbp), %rdx
	addl	348(%rdx), %eax
	addl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	332(%rdx), %eax
	shll	$1, %eax
	addl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	%ecx, 312(%rdx)
	movq	-56(%rbp), %rdi
	callq	adjust_frame_glyphs
	movq	-64(%rbp), %rdx
	movq	200(%rdx), %rdi
	callq	clear_glyph_matrix
	movq	-64(%rbp), %rdx
	movq	192(%rdx), %rdi
	callq	clear_glyph_matrix
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	try_window
	movl	$0, -108(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -100(%rbp)
	movl	%eax, -500(%rbp)        # 4-byte Spill
.LBB70_77:                              # %for.cond.294
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	200(%rcx), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB70_91
# BB#78:                                # %for.body.299
                                        #   in Loop: Header=BB70_77 Depth=1
	movslq	-100(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	200(%rcx), %rcx
	shlq	$8, %rax
	addq	8(%rcx), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$10, %rax
	andq	$1, %rax
	testq	$1, %rax
	je	.LBB70_80
# BB#79:                                # %lor.lhs.false.312
                                        #   in Loop: Header=BB70_77 Depth=1
	movq	-216(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$14, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB70_81
.LBB70_80:                              # %if.then.318
	jmp	.LBB70_91
.LBB70_81:                              # %if.end.319
                                        #   in Loop: Header=BB70_77 Depth=1
	movq	-216(%rbp), %rax
	movq	236(%rax), %rcx
	andq	$-524289, %rcx          # imm = 0xFFFFFFFFFFF7FFFF
	orq	$524288, %rcx           # imm = 0x80000
	movq	%rcx, 236(%rax)
	movq	-216(%rbp), %rax
	movl	52(%rax), %edx
	movl	%edx, -228(%rbp)
	movq	-216(%rbp), %rax
	movswl	34(%rax), %edx
	cmpl	$0, %edx
	je	.LBB70_86
# BB#82:                                # %land.lhs.true.329
                                        #   in Loop: Header=BB70_77 Depth=1
	movq	-216(%rbp), %rax
	movq	236(%rax), %rax
	shrq	$34, %rax
	andq	$1, %rax
	testq	$1, %rax
	jne	.LBB70_86
# BB#83:                                # %if.then.335
                                        #   in Loop: Header=BB70_77 Depth=1
	xorl	%edi, %edi
	movq	-216(%rbp), %rax
	movswl	34(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-216(%rbp), %rdx
	imulq	$48, %rax, %rax
	addq	8(%rdx), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB70_85
# BB#84:                                # %if.then.348
                                        #   in Loop: Header=BB70_77 Depth=1
	movq	-224(%rbp), %rax
	movswl	16(%rax), %ecx
	movl	-228(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -228(%rbp)
.LBB70_85:                              # %if.end.352
                                        #   in Loop: Header=BB70_77 Depth=1
	jmp	.LBB70_86
.LBB70_86:                              # %if.end.353
                                        #   in Loop: Header=BB70_77 Depth=1
	movq	-216(%rbp), %rax
	movl	60(%rax), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-104(%rbp), %ecx
	cmpl	-228(%rbp), %ecx
	jle	.LBB70_88
# BB#87:                                # %cond.true.358
                                        #   in Loop: Header=BB70_77 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
	jmp	.LBB70_89
.LBB70_88:                              # %cond.false.359
                                        #   in Loop: Header=BB70_77 Depth=1
	movl	-228(%rbp), %eax
	movl	%eax, -516(%rbp)        # 4-byte Spill
.LBB70_89:                              # %cond.end.360
                                        #   in Loop: Header=BB70_77 Depth=1
	movl	-516(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
# BB#90:                                # %for.inc.362
                                        #   in Loop: Header=BB70_77 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB70_77
.LBB70_91:                              # %for.end.364
	jmp	.LBB70_92
.LBB70_92:                              # %if.end.365
	leaq	-68(%rbp), %rax
	leaq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	332(%rdx), %esi
	shll	$1, %esi
	addl	-108(%rbp), %esi
	movl	%esi, -108(%rbp)
	movq	-56(%rbp), %rdx
	movl	332(%rdx), %esi
	shll	$1, %esi
	addl	-104(%rbp), %esi
	movl	%esi, -104(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %r8
	movl	-104(%rbp), %r9d
	movl	-108(%rbp), %r10d
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movq	%rax, (%rsp)
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	compute_tip_xy
	callq	block_input
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	callq	XMoveResizeWindow
	movq	-56(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-56(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	56(%rsi), %rsi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	XMapRaised
	movl	%eax, -536(%rbp)        # 4-byte Spill
	callq	unblock_input
	movq	-64(%rbp), %rsi
	movw	468(%rsi), %r11w
	andw	$-1025, %r11w           # imm = 0xFFFFFFFFFFFFFBFF
	orw	$1024, %r11w            # imm = 0x400
	movw	%r11w, 468(%rsi)
	movq	-64(%rbp), %rdi
	callq	update_single_window
	movq	-80(%rbp), %rdi
	callq	set_buffer_internal_1
	movl	-116(%rbp), %eax
	movl	%eax, windows_or_buffers_changed
.LBB70_93:                              # %start_timer
	movabsq	$.L.str.97, %rdi
	callq	intern
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.98, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	intern
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	xorl	%edi, %edi
	movq	%rax, tip_timer
	movq	-128(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$592, %rsp              # imm = 0x250
	popq	%rbp
	retq
.Lfunc_end70:
	.size	Fx_show_tip, .Lfunc_end70-Fx_show_tip
	.cfi_endproc

	.globl	Fx_hide_tip
	.align	16, 0x90
	.type	Fx_hide_tip,@function
Fx_hide_tip:                            # @Fx_hide_tip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp229:
	.cfi_def_cfa_offset 16
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp231:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%edi, %edi
	movq	tip_timer, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	tip_frame, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_3
# BB#2:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB71_11
.LBB71_3:                               # %if.end
	xorl	%edi, %edi
	movq	tip_frame, %rax
	movq	%rax, -32(%rbp)
	movq	tip_timer, %rax
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	%rax, tip_timer
	movq	%rax, tip_frame
	callq	SPECPDL_INDEX
	movl	$548, %edi              # imm = 0x224
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$546, %edi              # imm = 0x222
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB71_5
# BB#4:                                 # %if.then.12
	movl	$236, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB71_5:                               # %if.end.15
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 376(%rax)
	je	.LBB71_8
# BB#6:                                 # %land.lhs.true.17
	movq	-48(%rbp), %rdi
	callq	xg_hide_tooltip
	testb	$1, %al
	jne	.LBB71_7
	jmp	.LBB71_8
.LBB71_7:                               # %if.then.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB71_8:                               # %if.end.21
	movq	-32(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB71_9
	jmp	.LBB71_10
.LBB71_9:                               # %if.then.23
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	delete_frame
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB71_10:                              # %if.end.27
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB71_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Fx_hide_tip, .Lfunc_end71-Fx_hide_tip
	.cfi_endproc

	.align	16, 0x90
	.type	compute_tip_xy,@function
compute_tip_xy:                         # @compute_tip_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp234:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	$607, %r11d             # imm = 0x25F
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$-1, -132(%rbp)
	movl	%r11d, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movl	$928, %edi              # imm = 0x3A0
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movl	$811, %edi              # imm = 0x32B
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movl	$213, %edi
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	je	.LBB72_2
# BB#1:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_4
.LBB72_2:                               # %lor.lhs.false
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB72_15
# BB#3:                                 # %land.lhs.true.24
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB72_15
.LBB72_4:                               # %if.then
	callq	block_input
	leaq	-104(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-92(%rbp), %rax
	leaq	-96(%rbp), %rsi
	leaq	-116(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	movq	-8(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	104(%r9), %r9
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%r10, %r8
	movq	%r11, %r9
	movq	%rax, (%rsp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	XQueryPointer
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	unblock_input
	movl	$5, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdi
	callq	Fx_display_monitor_attributes_list
	movq	%rax, -152(%rbp)
.LBB72_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB72_14
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB72_5 Depth=1
	movl	$482, %edi              # imm = 0x1E2
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB72_13
# BB#7:                                 # %if.then.46
                                        #   in Loop: Header=BB72_5 Depth=1
	movl	$6, %eax
	movl	%eax, %edi
	movq	-168(%rbp), %rsi
	callq	Fnth
	movl	$10, %ecx
	movl	%ecx, %edi
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -120(%rbp)
	movq	-168(%rbp), %rsi
	callq	Fnth
	movl	$14, %ecx
	movl	%ecx, %edi
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -124(%rbp)
	movslq	-120(%rbp), %rax
	movq	-168(%rbp), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	Fnth
	movl	$18, %ecx
	movl	%ecx, %edi
	sarq	$2, %rax
	movq	-200(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -128(%rbp)
	movslq	-124(%rbp), %rax
	movq	-168(%rbp), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	Fnth
	sarq	$2, %rax
	movq	-208(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -132(%rbp)
	movl	-120(%rbp), %ecx
	movq	-48(%rbp), %rax
	cmpl	(%rax), %ecx
	jg	.LBB72_12
# BB#8:                                 # %land.lhs.true.63
                                        #   in Loop: Header=BB72_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-128(%rbp), %ecx
	jge	.LBB72_12
# BB#9:                                 # %land.lhs.true.66
                                        #   in Loop: Header=BB72_5 Depth=1
	movl	-124(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB72_12
# BB#10:                                # %land.lhs.true.69
                                        #   in Loop: Header=BB72_5 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-132(%rbp), %ecx
	jge	.LBB72_12
# BB#11:                                # %if.then.72
	jmp	.LBB72_14
.LBB72_12:                              # %if.end
                                        #   in Loop: Header=BB72_5 Depth=1
	movl	$-1, -132(%rbp)
.LBB72_13:                              # %if.end.73
                                        #   in Loop: Header=BB72_5 Depth=1
	movq	-152(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB72_5
.LBB72_14:                              # %while.end
	jmp	.LBB72_15
.LBB72_15:                              # %if.end.75
	cmpl	$0, -132(%rbp)
	jge	.LBB72_17
# BB#16:                                # %if.then.78
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rdi
	callq	x_display_pixel_width
	movl	%eax, -128(%rbp)
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	callq	x_display_pixel_height
	movl	%eax, -132(%rbp)
.LBB72_17:                              # %if.end.87
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_19
# BB#18:                                # %if.then.93
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB72_32
.LBB72_19:                              # %if.else
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_21
# BB#20:                                # %if.then.101
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	movslq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.LBB72_31
.LBB72_21:                              # %if.else.106
	movq	-56(%rbp), %rax
	movslq	(%rax), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-124(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_23
# BB#22:                                # %if.then.113
	movl	-124(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB72_30
.LBB72_23:                              # %if.else.114
	movq	-56(%rbp), %rax
	movslq	(%rax), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-132(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_25
# BB#24:                                # %if.then.123
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-56(%rbp), %rcx
	movslq	(%rcx), %rdx
	addq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, (%rcx)
	jmp	.LBB72_29
.LBB72_25:                              # %if.else.128
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-124(%rbp), %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_27
# BB#26:                                # %if.then.137
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	-56(%rbp), %rcx
	movslq	(%rcx), %rdx
	subq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, (%rcx)
	jmp	.LBB72_28
.LBB72_27:                              # %if.else.144
	movl	-124(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB72_28:                              # %if.end.145
	jmp	.LBB72_29
.LBB72_29:                              # %if.end.146
	jmp	.LBB72_30
.LBB72_30:                              # %if.end.147
	jmp	.LBB72_31
.LBB72_31:                              # %if.end.148
	jmp	.LBB72_32
.LBB72_32:                              # %if.end.149
	movq	-64(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_34
# BB#33:                                # %if.then.155
	movq	-64(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB72_47
.LBB72_34:                              # %if.else.158
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB72_36
# BB#35:                                # %if.then.164
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movslq	-36(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-48(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.LBB72_46
.LBB72_36:                              # %if.else.169
	movq	-48(%rbp), %rax
	movslq	(%rax), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-120(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_38
# BB#37:                                # %if.then.176
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB72_45
.LBB72_38:                              # %if.else.177
	movq	-48(%rbp), %rax
	movslq	(%rax), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-128(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_40
# BB#39:                                # %if.then.186
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rdx
	addq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, (%rcx)
	jmp	.LBB72_44
.LBB72_40:                              # %if.else.191
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movslq	-120(%rbp), %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpq	%rcx, %rax
	jg	.LBB72_42
# BB#41:                                # %if.then.200
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rcx
	movslq	(%rcx), %rdx
	subq	%rax, %rdx
	movl	%edx, %esi
	movl	%esi, (%rcx)
	jmp	.LBB72_43
.LBB72_42:                              # %if.else.207
	movl	-120(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB72_43:                              # %if.end.208
	jmp	.LBB72_44
.LBB72_44:                              # %if.end.209
	jmp	.LBB72_45
.LBB72_45:                              # %if.end.210
	jmp	.LBB72_46
.LBB72_46:                              # %if.end.211
	jmp	.LBB72_47
.LBB72_47:                              # %if.end.212
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	compute_tip_xy, .Lfunc_end72-compute_tip_xy
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_tip_frame,@function
x_create_tip_frame:                     # @x_create_tip_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp235:
	.cfi_def_cfa_offset 16
.Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$1440, %rsp             # imm = 0x5A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	face_change, %cl
	andb	$1, %cl
	movb	%cl, -65(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB73_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB73_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	Fcopy_alist
	movl	$696, %edi              # imm = 0x2B8
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -424(%rbp)        # 8-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movl	$3, %r9d
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_get_arg
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB73_6
# BB#3:                                 # %land.lhs.true
	movl	$957, %edi              # imm = 0x3BD
	movq	-48(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_6
# BB#4:                                 # %land.lhs.true.8
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB73_6:                               # %if.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	%rax, -40(%rbp)
	callq	make_frame
	movl	$5, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-136(%rbp), %rdi
	movabsq	$.L.str.156, %rcx
	movq	%rax, -40(%rbp)
	movq	$6, -136(%rbp)
	movq	$-1, -128(%rbp)
	movq	$0, -120(%rbp)
	movq	%rcx, -112(%rbp)
	callq	make_lisp_ptr
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	Fget_buffer_create
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-80(%rbp), %rax
	movl	%esi, -452(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-452(%rbp), %edx        # 4-byte Reload
	movl	-452(%rbp), %ecx        # 4-byte Reload
	callq	set_window_buffer
	movq	current_buffer, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal_1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_truncate_lines
	movl	$547, %edi              # imm = 0x223
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	callq	Ferase_buffer
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-24(%rbp), %rsi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	Finsert
	movq	-88(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	set_buffer_internal_1
	movabsq	$unwind_create_tip_frame, %rdi
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect
	movl	$528, %ecx              # imm = 0x210
	movl	%ecx, %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 376(%rsi)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-58720257, %rsi        # imm = 0xFFFFFFFFFC7FFFFF
	orq	$16777216, %rsi         # imm = 0x1000000
	movq	%rsi, 208(%rax)
	callq	xzalloc
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	%rax, 384(%rsi)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 224(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movl	$-1, 244(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 280(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 288(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 496(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 480(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_icon_name
	movabsq	$.L.str.21, %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 424(%rsi)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 72(%rsi)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movb	440(%rax), %r8b
	andb	$-3, %r8b
	movb	%r8b, 440(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 480(%rax)
	movq	-32(%rbp), %rax
	movq	$-1, 472(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 248(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 272(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 256(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	$-1, 264(%rax)
	callq	build_string
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, 480(%rdi)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	48(%r9), %r9
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -536(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	-536(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, 472(%rdi)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	48(%r9), %r9
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rsi, 248(%rdi)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	48(%r9), %r9
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rsi, 272(%rdi)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	48(%r9), %r9
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -584(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	-584(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rsi, 256(%rdi)
	movq	-32(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	48(%r9), %r9
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	-600(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movl	$957, %edi              # imm = 0x3BD
	movslq	%eax, %rsi
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	%rsi, 264(%r9)
	movq	-48(%rbp), %rsi
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB73_8
# BB#7:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_9
.LBB73_8:                               # %if.then.174
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_name
	movq	-32(%rbp), %rax
	movq	208(%rax), %rsi
	andq	$-262145, %rsi          # imm = 0xFFFFFFFFFFFBFFFF
	movq	%rsi, 208(%rax)
	jmp	.LBB73_10
.LBB73_9:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	fset_name
	movl	$1054, %edi             # imm = 0x41E
	movq	-32(%rbp), %rsi
	movq	208(%rsi), %rax
	andq	$-262145, %rax          # imm = 0xFFFFFFFFFFFBFFFF
	orq	$262144, %rax           # imm = 0x40000
	movq	%rax, 208(%rsi)
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
.LBB73_10:                              # %if.end.183
	movabsq	$xfont_driver, %rdi
	movq	-32(%rbp), %rsi
	callq	register_font_driver
	movabsq	$xftfont_driver, %rdi
	movq	-32(%rbp), %rsi
	callq	register_font_driver
	movq	-32(%rbp), %rsi
	movq	376(%rsi), %rsi
	cmpq	$0, 80(%rsi)
	je	.LBB73_12
# BB#11:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB73_13
.LBB73_12:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB73_13
.LBB73_13:                              # %cond.end
	movq	-632(%rbp), %rax        # 8-byte Reload
	movl	$440, %edi              # imm = 0x1B8
	movq	%rax, image_cache_refcount
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -640(%rbp)        # 8-byte Spill
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movl	$3, %edi
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -660(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-640(%rbp), %rsi        # 8-byte Reload
	movq	-656(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	callq	x_default_parameter
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	x_default_font_parameter
	movl	$210, %edi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movabsq	$.L.str.25, %r8
	movabsq	$.L.str.26, %r9
	xorl	%edi, %edi
	movq	-688(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -692(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	-680(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$563, %edi              # imm = 0x233
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fassq
	xorl	%edi, %edi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_17
# BB#14:                                # %if.then.198
	movl	$563, %edi              # imm = 0x233
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -720(%rbp)        # 8-byte Spill
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.27, %rsi
	xorl	%r9d, %r9d
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -736(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	callq	x_get_arg
	movl	$957, %edi              # imm = 0x3BD
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_16
# BB#15:                                # %if.then.204
	movl	$563, %edi              # imm = 0x233
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -16(%rbp)
.LBB73_16:                              # %if.end.208
	jmp	.LBB73_17
.LBB73_17:                              # %if.end.209
	movl	$563, %edi              # imm = 0x233
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -752(%rbp)        # 8-byte Spill
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %ecx
	movabsq	$.L.str.28, %rsi
	xorl	%edi, %edi
	movq	-760(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -764(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	-752(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -776(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	%rax, %rdx
	movq	-776(%rbp), %r8         # 8-byte Reload
	movq	-776(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$813, %edi              # imm = 0x32D
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movq	-800(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -804(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-792(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-816(%rbp), %r8         # 8-byte Reload
	movq	-816(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$215, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movq	%rsi, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	xorl	%edi, %edi
	movl	%edi, %edx
	xorl	%edi, %edi
	movq	-840(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -844(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-832(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-856(%rbp), %r8         # 8-byte Reload
	movq	-856(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	x_default_parameter
	movl	$451, %edi              # imm = 0x1C3
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movq	%rsi, -872(%rbp)        # 8-byte Spill
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.32, %r9
	movl	$3, %r10d
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movq	-888(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -892(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$193, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rsi, -912(%rbp)        # 8-byte Spill
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.33, %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.4, %r8
	movabsq	$.L.str.34, %r9
	movl	$3, %r10d
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	-912(%rbp), %rsi        # 8-byte Reload
	movq	-928(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -932(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$686, %edi              # imm = 0x2AE
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movq	%rsi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.35, %r8
	movabsq	$.L.str.32, %r9
	movl	$3, %r10d
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-952(%rbp), %rsi        # 8-byte Reload
	movq	-968(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -972(%rbp)       # 4-byte Spill
	callq	x_default_parameter
	movl	$307, %edi              # imm = 0x133
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -984(%rbp)        # 8-byte Spill
	movq	%rsi, -992(%rbp)        # 8-byte Spill
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.157, %r8
	movabsq	$.L.str.32, %r9
	movl	$3, %r10d
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	-992(%rbp), %rsi        # 8-byte Reload
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -1012(%rbp)      # 4-byte Spill
	callq	x_default_parameter
	movl	$209, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movq	%rsi, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	build_string
	movabsq	$.L.str.36, %r8
	movabsq	$.L.str.37, %r9
	movl	$3, %r10d
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$3, (%rsp)
	movl	%r10d, -1052(%rbp)      # 4-byte Spill
	callq	x_default_parameter
	movq	-32(%rbp), %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	init_frame_faces
	xorl	%edx, %edx
	leaq	-92(%rbp), %rcx
	leaq	-96(%rbp), %r8
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	104(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 72(%rsi)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_figure_window_size
	movq	-32(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	848(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	block_input
	movq	$18946, -272(%rbp)      # imm = 0x4A02
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	cmpl	$0, 116(%rax)
	je	.LBB73_19
# BB#18:                                # %if.then.244
	movq	-272(%rbp), %rax
	orq	$1024, %rax             # imm = 0x400
	movq	%rax, -272(%rbp)
.LBB73_19:                              # %if.end.245
	xorl	%eax, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-264(%rbp), %rdi
	movl	$1, -176(%rbp)
	movl	$1, -200(%rbp)
	movq	-32(%rbp), %r8
	movq	472(%r8), %r8
	movq	%r8, -256(%rbp)
	movq	-32(%rbp), %r8
	movq	384(%r8), %r8
	movq	296(%r8), %r8
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	%r8, 352(%r9)
	movq	%r8, -160(%rbp)
	movq	$131072, -192(%rbp)     # imm = 0x20000
	movq	-32(%rbp), %r8
	movq	384(%r8), %r8
	movq	424(%r8), %r8
	movq	16(%r8), %r8
	movq	-32(%rbp), %r9
	movq	384(%r9), %r9
	movq	424(%r9), %r9
	movq	104(%r9), %r9
	movq	-32(%rbp), %r10
	movl	328(%r10), %edx
	movq	-272(%rbp), %r10
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -1088(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movl	%edx, -1092(%rbp)       # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -1096(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-1096(%rbp), %r8d       # 4-byte Reload
	movl	-1096(%rbp), %r9d       # 4-byte Reload
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	-1080(%rbp), %r10       # 8-byte Reload
	movq	%r10, 40(%rsp)
	callq	XCreateWindow
	movl	$4, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$32, %r8d
	xorl	%r9d, %r9d
	movl	$1, %edx
	leaq	-280(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	%rax, 56(%rdi)
	movq	%rax, tip_window
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	tip_window, %rax
	movq	-32(%rbp), %r10
	movq	384(%r10), %r10
	movq	424(%r10), %r10
	movq	840(%r10), %r10
	movq	%rsi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -1108(%rbp)       # 4-byte Spill
	movq	%r10, %rdx
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	callq	XChangeProperty
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	callq	unblock_input
	movq	-32(%rbp), %rdi
	callq	x_make_gc
	movl	$189, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, -1120(%rbp)       # 8-byte Spill
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.57, %r8
	movabsq	$.L.str.58, %r9
	movl	$2, %edi
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1140(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1120(%rbp), %rsi       # 8-byte Reload
	movq	-1136(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$188, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	movq	%rsi, -1160(%rbp)       # 8-byte Spill
	movq	%rcx, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.59, %r8
	movabsq	$.L.str.58, %r9
	movl	$2, %edi
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1180(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	movq	-1176(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$2, (%rsp)
	callq	x_default_parameter
	movl	$309, %edi              # imm = 0x135
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	movq	%rsi, -1200(%rbp)       # 8-byte Spill
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$218, %edi
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.60, %r8
	movabsq	$.L.str.61, %r9
	movl	$4, %edi
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1220(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1200(%rbp), %rsi       # 8-byte Reload
	movq	-1216(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$4, (%rsp)
	callq	x_default_parameter
	movl	$170, %edi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	movq	%rsi, -1240(%rbp)       # 8-byte Spill
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.66, %r8
	movabsq	$.L.str.67, %r9
	xorl	%edi, %edi
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	movl	%edi, -1260(%rbp)       # 4-byte Spill
	movq	%rcx, %rdi
	movq	-1240(%rbp), %rsi       # 8-byte Reload
	movq	-1256(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	x_default_parameter
	movq	-32(%rbp), %rcx
	movl	272(%rcx), %r11d
	movl	%r11d, -52(%rbp)
	movq	-32(%rbp), %rcx
	movl	276(%rcx), %r11d
	movl	%r11d, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$0, 272(%rcx)
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$30, %rcx
	andq	$3, %rcx
	movl	%ecx, %r11d
	cmpl	$0, %r11d
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	je	.LBB73_21
# BB#20:                                # %cond.true.288
	movq	-32(%rbp), %rax
	movl	424(%rax), %ecx
	movl	%ecx, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB73_22
.LBB73_21:                              # %cond.false.289
	xorl	%eax, %eax
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	jmp	.LBB73_22
.LBB73_22:                              # %cond.end.290
	movl	-1276(%rbp), %eax       # 4-byte Reload
	addl	$0, %eax
	movq	-32(%rbp), %rcx
	addl	352(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, 276(%rcx)
	movq	-32(%rbp), %rcx
	movl	356(%rcx), %eax
	movq	-32(%rbp), %rcx
	addl	216(%rcx), %eax
	addl	$0, %eax
	movq	-32(%rbp), %rcx
	movq	208(%rcx), %rcx
	shrq	$32, %rcx
	andq	$1, %rcx
	testq	$1, %rcx
	movl	%eax, -1280(%rbp)       # 4-byte Spill
	je	.LBB73_24
# BB#23:                                # %cond.true.301
	movq	-32(%rbp), %rax
	movl	432(%rax), %ecx
	movl	%ecx, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB73_25
.LBB73_24:                              # %cond.false.302
	xorl	%eax, %eax
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	jmp	.LBB73_25
.LBB73_25:                              # %cond.end.303
	movl	-1284(%rbp), %eax       # 4-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	-1280(%rbp), %esi       # 4-byte Reload
	addl	%eax, %esi
	movq	-32(%rbp), %rdi
	movl	%esi, 284(%rdi)
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %eax
	movl	%edx, -1288(%rbp)       # 4-byte Spill
	movl	%eax, %edx
	movl	-1288(%rbp), %r8d       # 4-byte Reload
	movl	-1288(%rbp), %r9d       # 4-byte Reload
	movl	$0, (%rsp)
	callq	change_frame_size
	movl	$927, %edi              # imm = 0x39F
	movq	-40(%rbp), %r10
	movq	%r10, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	xorl	%edi, %edi
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB73_27
# BB#26:                                # %if.then.311
	movl	$927, %edi              # imm = 0x39F
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -320(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-320(%rbp), %rcx
	movq	%rax, -312(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -304(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-304(%rbp), %rcx
	movq	%rax, -296(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -288(%rbp)
	movq	-40(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB73_27:                              # %if.end.327
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$1, 88(%rax)
	jne	.LBB73_29
# BB#28:                                # %if.then.333
	movl	$680, %edi              # imm = 0x2A8
	callq	builtin_lisp_symbol
	movq	%rax, -328(%rbp)
	jmp	.LBB73_34
.LBB73_29:                              # %if.else.335
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	72(%rax), %rax
	cmpl	$1, 16(%rax)
	je	.LBB73_31
# BB#30:                                # %lor.lhs.false.341
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	72(%rax), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB73_32
.LBB73_31:                              # %if.then.349
	movabsq	$.L.str.158, %rdi
	callq	intern
	movq	%rax, -328(%rbp)
	jmp	.LBB73_33
.LBB73_32:                              # %if.else.351
	movabsq	$.L.str.159, %rdi
	callq	intern
	movq	%rax, -328(%rbp)
.LBB73_33:                              # %if.end.353
	jmp	.LBB73_34
.LBB73_34:                              # %if.end.354
	movl	$347, %edi              # imm = 0x15B
	movq	-40(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	xorl	%edi, %edi
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB73_36
# BB#35:                                # %if.then.360
	movl	$347, %edi              # imm = 0x15B
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-368(%rbp), %rcx
	movq	%rax, -368(%rbp)
	movq	-328(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -352(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-352(%rbp), %rcx
	movq	%rax, -344(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -336(%rbp)
	movq	-40(%rbp), %rdi
	movq	-336(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -1336(%rbp)       # 8-byte Spill
.LBB73_36:                              # %if.end.379
	movl	$193, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movl	$400, %edi              # imm = 0x190
	movq	%rax, -376(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, tip_frame
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-40(%rbp), %rsi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	movq	%rsi, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1352(%rbp), %rdi       # 8-byte Reload
	movq	-1360(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movl	$193, %edi
	movq	-376(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	movq	%rsi, -1376(%rbp)       # 8-byte Spill
	movq	%rdx, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB73_38
# BB#37:                                # %if.then.389
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-416(%rbp), %rcx
	movq	%rax, -416(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -400(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-400(%rbp), %rcx
	movq	%rax, -392(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -384(%rbp)
	movq	-40(%rbp), %rdi
	movq	-384(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB73_38:                              # %if.end.408
	movq	-32(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-131073, %rcx          # imm = 0xFFFFFFFFFFFDFFFF
	orq	$131072, %rcx           # imm = 0x20000
	movq	%rcx, 208(%rax)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movl	40(%rax), %edx
	addl	$1, %edx
	movl	%edx, 40(%rax)
	movq	-32(%rbp), %rax
	movq	376(%rax), %rax
	movl	52(%rax), %edx
	addl	$1, %edx
	movl	%edx, 52(%rax)
	movq	-40(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fcons
	movq	%rax, Vframe_list
	movq	-32(%rbp), %rax
	movabsq	$-17179869185, %rcx     # imm = 0xFFFFFFFBFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$17179869184, %rsi      # imm = 0x400000000
	orq	%rsi, %rcx
	movq	%rcx, 208(%rax)
	movb	-65(%rbp), %r8b
	andb	$1, %r8b
	movb	%r8b, face_change
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	unbind_to
	addq	$1440, %rsp             # imm = 0x5A0
	popq	%rbp
	retq
.Lfunc_end73:
	.size	x_create_tip_frame, .Lfunc_end73-x_create_tip_frame
	.cfi_endproc

	.globl	Fx_uses_old_gtk_dialog
	.align	16, 0x90
	.type	Fx_uses_old_gtk_dialog,@function
Fx_uses_old_gtk_dialog:                 # @Fx_uses_old_gtk_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
.Ltmp239:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp240:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	testb	$1, globals+3433
	je	.LBB74_9
# BB#1:                                 # %land.lhs.true
	testb	$1, globals+3434
	je	.LBB74_9
# BB#2:                                 # %land.lhs.true.2
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB74_3
	jmp	.LBB74_5
.LBB74_3:                               # %land.lhs.true.3
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB74_5
# BB#4:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB74_6
.LBB74_5:                               # %cond.false
	callq	emacs_abort
.LBB74_6:                               # %cond.end
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	window_system_available
	testb	$1, %al
	jne	.LBB74_7
	jmp	.LBB74_9
.LBB74_7:                               # %land.lhs.true.6
	callq	xg_uses_old_file_dialog
	testb	$1, %al
	jne	.LBB74_8
	jmp	.LBB74_9
.LBB74_8:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_10
.LBB74_9:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB74_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Fx_uses_old_gtk_dialog, .Lfunc_end74-Fx_uses_old_gtk_dialog
	.cfi_endproc

	.globl	Fx_file_dialog
	.align	16, 0x90
	.type	Fx_file_dialog,@function
Fx_file_dialog:                         # @Fx_file_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp243:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB75_1
	jmp	.LBB75_3
.LBB75_1:                               # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB75_3
# BB#2:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB75_4
.LBB75_3:                               # %cond.false
	callq	emacs_abort
.LBB75_4:                               # %cond.end
	xorl	%edi, %edi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	check_window_system
	callq	popup_activated
	cmpl	$0, %eax
	je	.LBB75_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.99, %rdi
	movb	$0, %al
	callq	error
.LBB75_6:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$548, %edi              # imm = 0x224
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movabsq	$clean_up_dialog, %rdi
	callq	record_unwind_protect_void
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB75_7
	jmp	.LBB75_8
.LBB75_7:                               # %if.then.8
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -88(%rbp)
	jmp	.LBB75_9
.LBB75_8:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -88(%rbp)
.LBB75_9:                               # %if.end.11
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movb	%sil, -145(%rbp)        # 1-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movb	-145(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %edi
	andl	$1, %edi
	movzbl	%sil, %r9d
	andl	$1, %r9d
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%edi, -152(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	-152(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	callq	xg_get_file_name
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB75_11
# BB#10:                                # %if.then.20
	movq	-56(%rbp), %rdi
	callq	build_string
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	xfree
.LBB75_11:                              # %if.end.22
	callq	unblock_input
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB75_13
# BB#12:                                # %if.then.25
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB75_13:                              # %if.end.29
	movq	-64(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	unbind_to
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fx_file_dialog, .Lfunc_end75-Fx_file_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	clean_up_dialog,@function
clean_up_dialog:                        # @clean_up_dialog
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp244:
	.cfi_def_cfa_offset 16
.Ltmp245:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp246:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	callq	x_menu_set_in_use
	popq	%rbp
	retq
.Lfunc_end76:
	.size	clean_up_dialog, .Lfunc_end76-clean_up_dialog
	.cfi_endproc

	.globl	Fx_select_font
	.align	16, 0x90
	.type	Fx_select_font,@function
Fx_select_font:                         # @Fx_select_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
.Ltmp248:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp249:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	callq	popup_activated
	cmpl	$0, %eax
	je	.LBB77_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.99, %rdi
	movb	$0, %al
	callq	error
.LBB77_2:                               # %if.end
	movl	$548, %edi              # imm = 0x224
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movabsq	$clean_up_dialog, %rdi
	callq	record_unwind_protect_void
	callq	block_input
	movl	$5, %esi
	movq	-24(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$86, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB77_3
	jmp	.LBB77_4
.LBB77_3:                               # %if.then.10
	movq	-40(%rbp), %rdi
	callq	xlispstrdup
	movq	%rax, -48(%rbp)
	jmp	.LBB77_7
.LBB77_4:                               # %if.else
	movl	$444, %edi              # imm = 0x1BC
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB77_5
	jmp	.LBB77_6
.LBB77_5:                               # %if.then.15
	movq	-40(%rbp), %rdi
	callq	xlispstrdup
	movq	%rax, -48(%rbp)
.LBB77_6:                               # %if.end.17
	jmp	.LBB77_7
.LBB77_7:                               # %if.end.18
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	xg_get_font
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	xfree
	callq	unblock_input
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB77_9
# BB#8:                                 # %if.then.21
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB77_9:                               # %if.end.25
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unbind_to
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fx_select_font, .Lfunc_end77-Fx_select_font
	.cfi_endproc

	.globl	Fx_backspace_delete_keys_p
	.align	16, 0x90
	.type	Fx_backspace_delete_keys_p,@function
Fx_backspace_delete_keys_p:             # @Fx_backspace_delete_keys_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp252:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_window_system_frame
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	block_input
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movl	$1, -52(%rbp)
	movl	$0, -56(%rbp)
	callq	XkbLibraryVersion
	cmpl	$0, %eax
	jne	.LBB78_2
# BB#1:                                 # %if.then
	callq	unblock_input
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB78_27
.LBB78_2:                               # %if.end
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-56(%rbp), %r9
	movl	$1, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	XkbQueryExtension
	cmpl	$0, %eax
	jne	.LBB78_4
# BB#3:                                 # %if.then.5
	callq	unblock_input
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB78_27
.LBB78_4:                               # %if.end.7
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$255, %esi
	movl	$256, %edx              # imm = 0x100
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	XkbGetMap
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB78_26
# BB#5:                                 # %if.then.11
	movl	$16383, %esi            # imm = 0x3FFF
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	XkbGetNames
	cmpl	$0, %eax
	jne	.LBB78_20
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movzbl	12(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB78_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-80(%rbp), %eax
	movq	-24(%rbp), %rdx
	movzbl	13(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jge	.LBB78_11
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB78_7 Depth=1
	movb	$1, %al
	cmpl	$0, -72(%rbp)
	movb	%al, -82(%rbp)          # 1-byte Spill
	je	.LBB78_10
# BB#9:                                 # %lor.rhs
                                        #   in Loop: Header=BB78_7 Depth=1
	cmpl	$0, -76(%rbp)
	sete	%al
	movb	%al, -82(%rbp)          # 1-byte Spill
.LBB78_10:                              # %lor.end
                                        #   in Loop: Header=BB78_7 Depth=1
	movb	-82(%rbp), %al          # 1-byte Reload
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB78_11:                              # %land.end
                                        #   in Loop: Header=BB78_7 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB78_12
	jmp	.LBB78_19
.LBB78_12:                              # %for.body
                                        #   in Loop: Header=BB78_7 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	shlq	$2, %rax
	addq	456(%rcx), %rax
	movl	(%rax), %edx
	subl	$1162626372, %edx       # imm = 0x454C4544
	setne	%sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jne	.LBB78_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB78_7 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB78_17
.LBB78_14:                              # %if.else
                                        #   in Loop: Header=BB78_7 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	shlq	$2, %rax
	addq	456(%rcx), %rax
	movl	(%rax), %edx
	subl	$1347636034, %edx       # imm = 0x50534B42
	setne	%sil
	movzbl	%sil, %edi
	cmpl	$0, %edi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	jne	.LBB78_16
# BB#15:                                # %if.then.34
                                        #   in Loop: Header=BB78_7 Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB78_16:                              # %if.end.35
                                        #   in Loop: Header=BB78_7 Depth=1
	jmp	.LBB78_17
.LBB78_17:                              # %if.end.36
                                        #   in Loop: Header=BB78_7 Depth=1
	jmp	.LBB78_18
.LBB78_18:                              # %for.inc
                                        #   in Loop: Header=BB78_7 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB78_7
.LBB78_19:                              # %for.end
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	XkbFreeNames
.LBB78_20:                              # %if.end.37
	movl	$255, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	XkbFreeKeyboard
	cmpl	$0, -72(%rbp)
	je	.LBB78_25
# BB#21:                                # %land.lhs.true
	cmpl	$0, -76(%rbp)
	je	.LBB78_25
# BB#22:                                # %land.lhs.true.40
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	XKeysymToKeycode
	movzbl	%al, %ecx
	cmpl	-72(%rbp), %ecx
	jne	.LBB78_25
# BB#23:                                # %land.lhs.true.45
	movl	$65288, %eax            # imm = 0xFF08
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	XKeysymToKeycode
	movzbl	%al, %ecx
	cmpl	-76(%rbp), %ecx
	jne	.LBB78_25
# BB#24:                                # %if.then.50
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB78_25:                              # %if.end.52
	jmp	.LBB78_26
.LBB78_26:                              # %if.end.53
	callq	unblock_input
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB78_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	Fx_backspace_delete_keys_p, .Lfunc_end78-Fx_backspace_delete_keys_p
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_background_color,@function
x_set_background_color:                 # @x_set_background_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp253:
	.cfi_def_cfa_offset 16
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp255:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rdx
	addq	232(%rsi), %rdx
	movq	88(%rdx), %rdx
	movl	%edx, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	472(%rsi), %rsi
	callq	unload_color
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 472(%rdi)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB79_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	block_input
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	XSetBackground
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	XSetForeground
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	XSetWindowBackground
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	XSetForeground
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	xg_set_background_color
	callq	unblock_input
	movl	$193, %edi
	movq	-8(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB79_3
# BB#2:                                 # %if.then.25
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB79_3:                               # %if.end
	jmp	.LBB79_4
.LBB79_4:                               # %if.end.26
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	x_set_background_color, .Lfunc_end79-x_set_background_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_border_color,@function
x_set_border_color:                     # @x_set_border_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
.Ltmp257:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp258:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rdx
	addq	232(%rsi), %rdx
	movq	96(%rdx), %rdx
	movl	%edx, %eax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	x_set_border_pixel
	movl	$209, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	x_set_border_color, .Lfunc_end80-x_set_border_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_cursor_color,@function
x_set_cursor_color:                     # @x_set_cursor_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp259:
	.cfi_def_cfa_offset 16
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -41(%rbp)
	movb	$0, -42(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	globals+2752, %rdx
	movl	%eax, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB81_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	globals+2752, %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	88(%rsi), %rsi
	movl	%esi, %eax
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movb	$1, -41(%rbp)
	jmp	.LBB81_3
.LBB81_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB81_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	movb	$1, -42(%rbp)
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	472(%rdi), %rsi
	jne	.LBB81_11
# BB#4:                                 # %if.then.28
	testb	$1, -42(%rbp)
	je	.LBB81_6
# BB#5:                                 # %if.then.29
	leaq	-40(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	x_free_colors
	movb	$0, -42(%rbp)
.LBB81_6:                               # %if.end.30
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB81_10
# BB#7:                                 # %if.then.33
	testb	$1, -41(%rbp)
	je	.LBB81_9
# BB#8:                                 # %if.then.35
	leaq	-32(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	x_free_colors
	movb	$0, -41(%rbp)
.LBB81_9:                               # %if.end.36
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB81_10:                              # %if.end.38
	jmp	.LBB81_11
.LBB81_11:                              # %if.end.39
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	272(%rax), %rsi
	callq	unload_color
	testb	$1, -41(%rbp)
	jne	.LBB81_13
# BB#12:                                # %if.then.41
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	x_copy_color
	movq	%rax, -32(%rbp)
.LBB81_13:                              # %if.end.43
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 272(%rcx)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	248(%rax), %rsi
	callq	unload_color
	testb	$1, -42(%rbp)
	jne	.LBB81_15
# BB#14:                                # %if.then.46
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	x_copy_color
	movq	%rax, -40(%rbp)
.LBB81_15:                              # %if.end.48
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB81_19
# BB#16:                                # %if.then.54
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	248(%rax), %rdx
	callq	XSetBackground
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-56(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	XSetForeground
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	unblock_input
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$10, %rdx
	andq	$3, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB81_18
# BB#17:                                # %if.then.68
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	x_update_cursor
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	x_update_cursor
.LBB81_18:                              # %if.end.69
	jmp	.LBB81_19
.LBB81_19:                              # %if.end.70
	movl	$307, %edi              # imm = 0x133
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	x_set_cursor_color, .Lfunc_end81-x_set_cursor_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_cursor_type,@function
x_set_cursor_type:                      # @x_set_cursor_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp262:
	.cfi_def_cfa_offset 16
.Ltmp263:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp264:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	set_frame_cursor_types
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	x_set_cursor_type, .Lfunc_end82-x_set_cursor_type
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_foreground_color,@function
x_set_foreground_color:                 # @x_set_foreground_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp267:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rdx
	addq	232(%rsi), %rdx
	movq	96(%rdx), %rdx
	movl	%edx, %eax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movq	480(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 480(%rdi)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB83_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	block_input
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	XSetForeground
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	XSetBackground
	movq	-32(%rbp), %rdx
	movq	248(%rdx), %rdx
	cmpq	-48(%rbp), %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jne	.LBB83_3
# BB#2:                                 # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	248(%rax), %rsi
	callq	unload_color
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	x_copy_color
	movq	-32(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	248(%rax), %rdx
	callq	XSetBackground
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB83_3:                               # %if.end
	callq	unblock_input
	movl	$451, %edi              # imm = 0x1C3
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB83_5
# BB#4:                                 # %if.then.28
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB83_5:                               # %if.end.29
	jmp	.LBB83_6
.LBB83_6:                               # %if.end.30
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	unload_color
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	x_set_foreground_color, .Lfunc_end83-x_set_foreground_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_icon_name,@function
x_set_icon_name:                        # @x_set_icon_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp268:
	.cfi_def_cfa_offset 16
.Ltmp269:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp270:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB84_1
	jmp	.LBB84_5
.LBB84_1:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB84_2
	jmp	.LBB84_4
.LBB84_2:                               # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fstring_equal
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB84_4
# BB#3:                                 # %if.then.4
	jmp	.LBB84_20
.LBB84_4:                               # %if.end
	jmp	.LBB84_9
.LBB84_5:                               # %if.else
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_7
# BB#6:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB84_8
.LBB84_7:                               # %if.then.9
	jmp	.LBB84_20
.LBB84_8:                               # %if.end.10
	jmp	.LBB84_9
.LBB84_9:                               # %if.end.11
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_icon_name
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 224(%rsi)
	je	.LBB84_11
# BB#10:                                # %if.then.13
	jmp	.LBB84_20
.LBB84_11:                              # %if.end.14
	callq	block_input
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB84_13
# BB#12:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB84_17
.LBB84_13:                              # %cond.false
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB84_15
# BB#14:                                # %cond.true.20
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB84_16
.LBB84_15:                              # %cond.false.22
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB84_16:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB84_17:                              # %cond.end.23
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	SSDATA
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_text_icon
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB84_19
# BB#18:                                # %if.then.27
	callq	unblock_input
	movabsq	$.L.str.160, %rdi
	movb	$0, %al
	callq	error
.LBB84_19:                              # %if.end.28
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XFlush
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	unblock_input
.LBB84_20:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	x_set_icon_name, .Lfunc_end84-x_set_icon_name
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_icon_type,@function
x_set_icon_type:                        # @x_set_icon_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp271:
	.cfi_def_cfa_offset 16
.Ltmp272:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp273:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB85_1
	jmp	.LBB85_5
.LBB85_1:                               # %if.then
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB85_2
	jmp	.LBB85_4
.LBB85_2:                               # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fstring_equal
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB85_4
# BB#3:                                 # %if.then.4
	jmp	.LBB85_18
.LBB85_4:                               # %if.end
	jmp	.LBB85_9
.LBB85_5:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB85_8
# BB#6:                                 # %land.lhs.true.6
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	-60(%rbp), %edi         # 4-byte Reload
	cmpl	%esi, %edi
	jne	.LBB85_8
# BB#7:                                 # %if.then.14
	jmp	.LBB85_18
.LBB85_8:                               # %if.end.15
	jmp	.LBB85_9
.LBB85_9:                               # %if.end.16
	callq	block_input
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_14
# BB#10:                                # %if.then.20
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB85_12
# BB#11:                                # %cond.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB85_13
.LBB85_12:                              # %cond.false
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB85_13:                              # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	SSDATA
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_text_icon
	andb	$1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB85_15
.LBB85_14:                              # %if.else.27
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_bitmap_icon
	andb	$1, %al
	movb	%al, -25(%rbp)
.LBB85_15:                              # %if.end.30
	testb	$1, -25(%rbp)
	je	.LBB85_17
# BB#16:                                # %if.then.31
	callq	unblock_input
	movabsq	$.L.str.160, %rdi
	movb	$0, %al
	callq	error
.LBB85_17:                              # %if.end.32
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	callq	XFlush
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	unblock_input
.LBB85_18:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	x_set_icon_type, .Lfunc_end85-x_set_icon_type
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_internal_border_width,@function
x_set_internal_border_width:            # @x_set_internal_border_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB86_2
.LBB86_2:                               # %do.body.1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB86_4
# BB#3:                                 # %cond.true
	jmp	.LBB86_5
.LBB86_4:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB86_5:                               # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB86_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB86_8
.LBB86_7:                               # %if.then
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB86_8:                               # %if.end
	jmp	.LBB86_9
.LBB86_9:                               # %do.end
	jmp	.LBB86_10
.LBB86_10:                              # %do.end.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB86_12
# BB#11:                                # %cond.true.13
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB86_13
.LBB86_12:                              # %cond.false.15
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB86_13
.LBB86_13:                              # %cond.end.16
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	332(%rax), %ecx
	je	.LBB86_17
# BB#14:                                # %if.then.20
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 332(%rcx)
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB86_16
# BB#15:                                # %if.then.24
	movl	$563, %edi              # imm = 0x233
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	%rax, %r9
	callq	adjust_frame_size
	movq	-8(%rbp), %rdi
	callq	xg_clear_under_internal_border
.LBB86_16:                              # %if.end.26
	jmp	.LBB86_17
.LBB86_17:                              # %if.end.27
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	x_set_internal_border_width, .Lfunc_end86-x_set_internal_border_width
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_menu_bar_lines,@function
x_set_menu_bar_lines:                   # @x_set_menu_bar_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp277:
	.cfi_def_cfa_offset 16
.Ltmp278:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp279:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rdx
	jne	.LBB87_2
# BB#1:                                 # %if.then
	jmp	.LBB87_20
.LBB87_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_8
# BB#3:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB87_5
	jmp	.LBB87_4
.LBB87_4:                               # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB87_6
	jmp	.LBB87_8
.LBB87_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB87_8
.LBB87_6:                               # %land.lhs.true.9
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB87_8
# BB#7:                                 # %if.then.13
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB87_9
.LBB87_8:                               # %if.else
	movl	$0, -28(%rbp)
.LBB87_9:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rdi
	movl	$0, 356(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 360(%rdi)
	cmpl	$0, -28(%rbp)
	je	.LBB87_14
# BB#10:                                # %if.then.17
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	orq	$512, %rcx              # imm = 0x200
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$2, %edx
	jne	.LBB87_13
# BB#11:                                # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 112(%rax)
	jne	.LBB87_13
# BB#12:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	XWINDOW
	movw	468(%rax), %cx
	andw	$-5, %cx
	orw	$4, %cx
	movw	%cx, 468(%rax)
.LBB87_13:                              # %if.end.29
	jmp	.LBB87_19
.LBB87_14:                              # %if.else.30
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$9, %rax
	andq	$1, %rax
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB87_16
# BB#15:                                # %if.then.39
	movq	-8(%rbp), %rdi
	callq	free_frame_menubar
.LBB87_16:                              # %if.end.40
	movq	-8(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-513, %rcx             # imm = 0xFFFFFFFFFFFFFDFF
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$2, %edx
	jne	.LBB87_18
# BB#17:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	$0, 112(%rax)
.LBB87_18:                              # %if.end.55
	jmp	.LBB87_19
.LBB87_19:                              # %if.end.56
	movq	-8(%rbp), %rdi
	callq	adjust_frame_glyphs
	movq	-8(%rbp), %rdi
	callq	run_window_configuration_change_hook
.LBB87_20:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	x_set_menu_bar_lines, .Lfunc_end87-x_set_menu_bar_lines
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_mouse_color,@function
x_set_mouse_color:                      # @x_set_mouse_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp280:
	.cfi_def_cfa_offset 16
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp282:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	xorl	%eax, %eax
	movl	$160, %ecx
	movl	%ecx, %r8d
	leaq	-200(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
	movl	$-1, -200(%rbp)
	movl	$-1, -196(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rsi
	shlq	$7, %rdx
	addq	232(%rsi), %rdx
	movq	96(%rdx), %rdx
	movl	%edx, %eax
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -208(%rbp)
	movq	-8(%rbp), %rsi
	movq	472(%rsi), %rsi
	movq	%rsi, -216(%rbp)
	movq	-216(%rbp), %rsi
	cmpq	-208(%rbp), %rsi
	jne	.LBB88_2
# BB#1:                                 # %if.then
	leaq	-208(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	x_free_colors
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	480(%rsi), %rsi
	callq	x_copy_color
	movq	%rax, -208(%rbp)
.LBB88_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	264(%rax), %rsi
	callq	unload_color
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, 264(%rsi)
	movl	$0, -220(%rbp)
.LBB88_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -220(%rbp)
	jge	.LBB88_19
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB88_3 Depth=1
	xorl	%edi, %edi
	movabsq	$mouse_cursor_types, %rax
	movslq	-220(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB88_16
# BB#5:                                 # %if.then.23
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_6
.LBB88_6:                               # %do.body
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_7
.LBB88_7:                               # %do.body.24
                                        #   in Loop: Header=BB88_3 Depth=1
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB88_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_10
.LBB88_9:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB88_10:                              # %cond.end
                                        #   in Loop: Header=BB88_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB88_12
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB88_3 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %ecx
	movq	-232(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rcx, %rdx
	jle	.LBB88_13
.LBB88_12:                              # %if.then.35
	movl	$2, %eax
	movl	%eax, %esi
	movabsq	$17179869182, %rdx      # imm = 0x3FFFFFFFE
	movq	-232(%rbp), %rdi
	callq	args_out_of_range_3
.LBB88_13:                              # %if.end.36
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_14
.LBB88_14:                              # %do.end
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_15
.LBB88_15:                              # %do.end.37
                                        #   in Loop: Header=BB88_3 Depth=1
	movq	-232(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movslq	-220(%rbp), %rax
	movl	%ecx, -192(%rbp,%rax,4)
	jmp	.LBB88_17
.LBB88_16:                              # %if.else
                                        #   in Loop: Header=BB88_3 Depth=1
	movabsq	$mouse_cursor_types, %rax
	movslq	-220(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edx
	movslq	-220(%rbp), %rax
	movl	%edx, -192(%rbp,%rax,4)
.LBB88_17:                              # %if.end.47
                                        #   in Loop: Header=BB88_3 Depth=1
	jmp	.LBB88_18
.LBB88_18:                              # %for.inc
                                        #   in Loop: Header=BB88_3 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB88_3
.LBB88_19:                              # %for.end
	callq	block_input
	movabsq	$x_set_mouse_color_handler, %rsi
	leaq	-200(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, %rdx
	callq	x_catch_errors_with_handler
	movl	$0, -220(%rbp)
.LBB88_20:                              # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -220(%rbp)
	jge	.LBB88_23
# BB#21:                                # %for.body.51
                                        #   in Loop: Header=BB88_20 Depth=1
	movq	-40(%rbp), %rdi
	callq	XNextRequest
	movslq	-220(%rbp), %rdi
	movq	%rax, -104(%rbp,%rdi,8)
	movl	-220(%rbp), %ecx
	movl	%ecx, -200(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-220(%rbp), %rax
	movl	-192(%rbp,%rax,4), %esi
	callq	XCreateFontCursor
	movslq	-220(%rbp), %rdi
	movq	%rax, -160(%rbp,%rdi,8)
# BB#22:                                # %for.inc.61
                                        #   in Loop: Header=BB88_20 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB88_20
.LBB88_23:                              # %for.end.63
	movq	-40(%rbp), %rdi
	callq	x_had_errors_p
	testb	$1, %al
	jne	.LBB88_24
	jmp	.LBB88_35
.LBB88_24:                              # %if.then.65
	movq	$0, -240(%rbp)
	movq	-48(%rbp), %rdi
	callq	strlen
	movq	%rax, -248(%rbp)
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -256(%rbp)
	movq	-256(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-248(%rbp), %rdx
	callq	memcpy
	callq	x_uncatch_errors
	movl	$0, -220(%rbp)
.LBB88_25:                              # %for.cond.68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -220(%rbp)
	jge	.LBB88_30
# BB#26:                                # %for.body.71
                                        #   in Loop: Header=BB88_25 Depth=1
	movslq	-220(%rbp), %rax
	cmpq	$0, -160(%rbp,%rax,8)
	je	.LBB88_28
# BB#27:                                # %if.then.77
                                        #   in Loop: Header=BB88_25 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-220(%rbp), %rax
	movq	-160(%rbp,%rax,8), %rsi
	callq	XFreeCursor
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB88_28:                              # %if.end.82
                                        #   in Loop: Header=BB88_25 Depth=1
	jmp	.LBB88_29
.LBB88_29:                              # %for.inc.83
                                        #   in Loop: Header=BB88_25 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB88_25
.LBB88_30:                              # %for.end.85
	cmpl	$0, -196(%rbp)
	jl	.LBB88_32
# BB#31:                                # %if.then.88
	movabsq	$mouse_cursor_types, %rax
	movslq	-196(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
.LBB88_32:                              # %if.end.92
	cmpq	$0, -240(%rbp)
	je	.LBB88_34
# BB#33:                                # %if.then.93
	movabsq	$.L.str.161, %rdi
	movq	-240(%rbp), %rsi
	movq	-256(%rbp), %rdx
	movb	$0, %al
	callq	error
.LBB88_34:                              # %if.else.94
	movabsq	$.L.str.162, %rdi
	movq	-256(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB88_35:                              # %if.end.95
	callq	x_uncatch_errors_after_check
	movl	$2, %edx
	leaq	-288(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-8(%rbp), %rdi
	callq	x_query_colors
	movl	$0, -220(%rbp)
.LBB88_36:                              # %for.cond.101
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, -220(%rbp)
	jge	.LBB88_39
# BB#37:                                # %for.body.104
                                        #   in Loop: Header=BB88_36 Depth=1
	leaq	-288(%rbp), %rax
	movq	-40(%rbp), %rdi
	movslq	-220(%rbp), %rcx
	movq	-160(%rbp,%rcx,8), %rsi
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rax, %rdx
	callq	XRecolorCursor
	movl	%eax, -328(%rbp)        # 4-byte Spill
# BB#38:                                # %for.inc.111
                                        #   in Loop: Header=BB88_36 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	jmp	.LBB88_36
.LBB88_39:                              # %for.end.113
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB88_41
# BB#40:                                # %if.then.118
	movq	-160(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 352(%rcx)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	352(%rax), %rdx
	callq	XDefineCursor
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB88_41:                              # %if.end.130
	movq	-32(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB88_43
# BB#42:                                # %if.then.133
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	296(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB88_43:                              # %if.end.136
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB88_45
# BB#44:                                # %if.then.142
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	304(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB88_45:                              # %if.end.145
	movq	-152(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB88_47
# BB#46:                                # %if.then.151
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	328(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB88_47:                              # %if.end.154
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 328(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB88_49
# BB#48:                                # %if.then.160
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	312(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB88_49:                              # %if.end.163
	movq	-136(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB88_51
# BB#50:                                # %if.then.169
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	320(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB88_51:                              # %if.end.172
	movq	-128(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 320(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 336(%rax)
	je	.LBB88_53
# BB#52:                                # %if.then.178
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB88_53:                              # %if.end.181
	movq	-120(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 336(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 344(%rax)
	je	.LBB88_55
# BB#54:                                # %if.then.187
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	344(%rax), %rsi
	callq	XFreeCursor
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB88_55:                              # %if.end.190
	movq	-112(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 344(%rcx)
	movq	-40(%rbp), %rdi
	callq	XFlush
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	unblock_input
	movl	$686, %edi              # imm = 0x2AE
	movq	-8(%rbp), %rcx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	x_set_mouse_color, .Lfunc_end88-x_set_mouse_color
	.cfi_endproc

	.align	16, 0x90
	.type	x_explicitly_set_name,@function
x_explicitly_set_name:                  # @x_explicitly_set_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp283:
	.cfi_def_cfa_offset 16
.Ltmp284:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp285:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	callq	x_set_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	x_explicitly_set_name, .Lfunc_end89-x_explicitly_set_name
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_title,@function
x_set_title:                            # @x_set_title
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp286:
	.cfi_def_cfa_offset 16
.Ltmp287:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp288:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	jne	.LBB90_2
# BB#1:                                 # %if.then
	jmp	.LBB90_6
.LBB90_2:                               # %if.end
	movl	$38, update_mode_lines
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_title
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB90_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB90_5
.LBB90_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
.LBB90_5:                               # %if.end.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	x_set_name_internal
.LBB90_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	x_set_title, .Lfunc_end90-x_set_title
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_tool_bar_lines,@function
x_set_tool_bar_lines:                   # @x_set_tool_bar_lines
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
.Ltmp290:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp291:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-8(%rbp), %rsi
	cmpq	56(%rsi), %rdx
	jne	.LBB91_2
# BB#1:                                 # %if.then
	jmp	.LBB91_6
.LBB91_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-16(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB91_3
	jmp	.LBB91_4
.LBB91_3:                               # %if.then.1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB91_5
.LBB91_4:                               # %if.else
	movl	$0, -28(%rbp)
.LBB91_5:                               # %if.end.2
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	368(%rcx), %eax
	movl	%eax, %esi
	callq	x_change_tool_bar_height
.LBB91_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	x_set_tool_bar_lines, .Lfunc_end91-x_set_tool_bar_lines
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_scroll_bar_foreground,@function
x_set_scroll_bar_foreground:            # @x_set_scroll_bar_foreground
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
.Ltmp293:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp294:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB92_1
	jmp	.LBB92_2
.LBB92_1:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	96(%rsi), %rsi
	movl	%esi, %eax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	jmp	.LBB92_3
.LBB92_2:                               # %if.else
	movq	$-1, -32(%rbp)
.LBB92_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 280(%rax)
	je	.LBB92_5
# BB#4:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	280(%rax), %rsi
	callq	unload_color
.LBB92_5:                               # %if.end.14
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 280(%rcx)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB92_12
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB92_12
# BB#7:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 312(%rax)
	je	.LBB92_9
# BB#8:                                 # %if.then.23
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB92_9:                               # %if.end.26
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 328(%rax)
	je	.LBB92_11
# BB#10:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	328(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB92_11:                              # %if.end.32
	movl	$832, %edi              # imm = 0x340
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB92_12:                              # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	x_set_scroll_bar_foreground, .Lfunc_end92-x_set_scroll_bar_foreground
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_scroll_bar_background,@function
x_set_scroll_bar_background:            # @x_set_scroll_bar_background
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp295:
	.cfi_def_cfa_offset 16
.Ltmp296:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp297:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB93_1
	jmp	.LBB93_2
.LBB93_1:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	XScreenNumberOfScreen
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movq	384(%rdi), %rdi
	movq	424(%rdi), %rdi
	movq	16(%rdi), %rdi
	shlq	$7, %rsi
	addq	232(%rdi), %rsi
	movq	88(%rsi), %rsi
	movl	%esi, %eax
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	x_decode_color
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	jmp	.LBB93_3
.LBB93_2:                               # %if.else
	movq	$-1, -32(%rbp)
.LBB93_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$-1, 288(%rax)
	je	.LBB93_5
# BB#4:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	288(%rax), %rsi
	callq	unload_color
.LBB93_5:                               # %if.end.14
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	%rax, 288(%rcx)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB93_12
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$10, %rax
	andq	$3, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB93_12
# BB#7:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 312(%rax)
	je	.LBB93_9
# BB#8:                                 # %if.then.23
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB93_9:                               # %if.end.26
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 328(%rax)
	je	.LBB93_11
# BB#10:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	328(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB93_11:                              # %if.end.32
	movl	$831, %edi              # imm = 0x33F
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	update_face_from_frame_parameter
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB93_12:                              # %if.end.34
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	x_set_scroll_bar_background, .Lfunc_end93-x_set_scroll_bar_background
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_wait_for_wm,@function
x_set_wait_for_wm:                      # @x_set_wait_for_wm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp298:
	.cfi_def_cfa_offset 16
.Ltmp299:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp300:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	andb	$1, %cl
	movb	440(%rax), %r8b
	shlb	$4, %cl
	andb	$-17, %r8b
	orb	%cl, %r8b
	movb	%r8b, 440(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	x_set_wait_for_wm, .Lfunc_end94-x_set_wait_for_wm
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_tool_bar_position,@function
x_set_tool_bar_position:                # @x_set_tool_bar_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
.Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp303:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$607, %eax              # imm = 0x25F
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$811, %edi              # imm = 0x32B
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$928, %edi              # imm = 0x3A0
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$213, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	list4
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB95_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB95_3
# BB#2:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	xg_change_toolbar_position
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fset_tool_bar_position
.LBB95_3:                               # %if.end
	jmp	.LBB95_5
.LBB95_4:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	wrong_choice
.LBB95_5:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	x_set_tool_bar_position, .Lfunc_end95-x_set_tool_bar_position
	.cfi_endproc

	.globl	syms_of_xfns
	.align	16, 0x90
	.type	syms_of_xfns,@function
syms_of_xfns:                           # @syms_of_xfns
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp304:
	.cfi_def_cfa_offset 16
.Ltmp305:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp306:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$960, %edi              # imm = 0x3C0
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$960, %edi              # imm = 0x3C0
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	listn
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$960, %edi              # imm = 0x3C0
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.102, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_xfns.o_fwd, %rdi
	movabsq	$.L.str.103, %rsi
	movabsq	$globals, %rax
	addq	$2840, %rax             # imm = 0xB18
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2840
	callq	builtin_lisp_symbol
	movq	%rax, globals+2824
# BB#3:                                 # %do.body.12
	movabsq	$syms_of_xfns.o_fwd.104, %rdi
	movabsq	$.L.str.105, %rsi
	movabsq	$globals, %rax
	addq	$2760, %rax             # imm = 0xAC8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, globals+2760
	callq	builtin_lisp_symbol
	movq	%rax, globals+2808
# BB#5:                                 # %do.body.16
	movabsq	$syms_of_xfns.o_fwd.106, %rdi
	movabsq	$.L.str.107, %rsi
	movabsq	$globals, %rax
	addq	$2872, %rax             # imm = 0xB38
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2872
# BB#7:                                 # %do.body.19
	movabsq	$syms_of_xfns.o_fwd.108, %rdi
	movabsq	$.L.str.109, %rsi
	movabsq	$globals, %rax
	addq	$2920, %rax             # imm = 0xB68
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2920
# BB#9:                                 # %do.body.22
	movabsq	$syms_of_xfns.o_fwd.110, %rdi
	movabsq	$.L.str.111, %rsi
	movabsq	$globals, %rax
	addq	$2928, %rax             # imm = 0xB70
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2928
# BB#11:                                # %do.body.25
	movabsq	$syms_of_xfns.o_fwd.112, %rdi
	movabsq	$.L.str.113, %rsi
	movabsq	$globals, %rax
	addq	$2752, %rax             # imm = 0xAC0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2752
# BB#13:                                # %do.body.28
	movabsq	$syms_of_xfns.o_fwd.114, %rdi
	movabsq	$.L.str.115, %rsi
	movabsq	$globals, %rax
	addq	$2792, %rax             # imm = 0xAE8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.29
	movl	$322, %eax              # imm = 0x142
	movl	%eax, %edi
	movl	$162, %eax
	movl	%eax, %esi
	callq	Fcons
	movq	%rax, globals+2792
# BB#15:                                # %do.body.31
	movabsq	$syms_of_xfns.o_fwd.116, %rdi
	movabsq	$.L.str.117, %rsi
	movabsq	$globals, %rax
	addq	$2816, %rax             # imm = 0xB00
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2816
# BB#17:                                # %do.body.34
	movabsq	$syms_of_xfns.o_fwd.118, %rdi
	movabsq	$.L.str.119, %rsi
	movabsq	$globals, %rax
	addq	$2832, %rax             # imm = 0xB10
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2832
# BB#19:                                # %do.body.37
	movabsq	$syms_of_xfns.b_fwd, %rdi
	movabsq	$.L.str.120, %rsi
	movabsq	$globals, %rax
	addq	$3444, %rax             # imm = 0xD74
	movq	%rax, %rdx
	callq	defvar_bool
# BB#20:                                # %do.end.38
	movb	$0, globals+3444
# BB#21:                                # %do.body.39
	movabsq	$syms_of_xfns.b_fwd.121, %rdi
	movabsq	$.L.str.122, %rsi
	movabsq	$globals, %rax
	addq	$3443, %rax             # imm = 0xD73
	movq	%rax, %rdx
	callq	defvar_bool
# BB#22:                                # %do.end.40
	movb	$0, globals+3443
# BB#23:                                # %do.body.41
	movabsq	$syms_of_xfns.b_fwd.123, %rdi
	movabsq	$.L.str.124, %rsi
	movabsq	$globals, %rax
	addq	$3442, %rax             # imm = 0xD72
	movq	%rax, %rdx
	callq	defvar_bool
# BB#24:                                # %do.end.42
	movb	$1, globals+3442
# BB#25:                                # %do.body.43
	movabsq	$syms_of_xfns.b_fwd.125, %rdi
	movabsq	$.L.str.126, %rsi
	movabsq	$globals, %rax
	addq	$3445, %rax             # imm = 0xD75
	movq	%rax, %rdx
	callq	defvar_bool
# BB#26:                                # %do.end.44
	movl	$1045, %edi             # imm = 0x415
	movb	$1, globals+3445
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movabsq	$.L.str.127, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movabsq	$.L.str.128, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movabsq	$.L.str.129, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	intern_c_string
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fprovide
	movq	%rax, -176(%rbp)        # 8-byte Spill
# BB#27:                                # %do.body.57
	movabsq	$syms_of_xfns.o_fwd.130, %rdi
	movabsq	$.L.str.131, %rsi
	movabsq	$globals, %rax
	addq	$960, %rax              # imm = 0x3C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#28:                                # %do.end.58
	movabsq	$.L.str.132, %rsi
	movl	$2, %edx
	movl	$24, %ecx
	movl	$28, %r8d
	leaq	-48(%rbp), %rdi
	movb	$0, %al
	callq	sprintf
	xorl	%ecx, %ecx
	leaq	-48(%rbp), %rdi
	movl	%eax, -52(%rbp)
	movslq	-52(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	callq	make_pure_string
	movabsq	$Sx_change_window_property, %rdx
	movq	%rax, globals+960
	movq	%rdx, %rdi
	callq	defsubr
	movabsq	$Sx_delete_window_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_window_property, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sxw_display_color_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_grayscale_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sxw_color_defined_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sxw_color_values, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_server_max_request_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_server_vendor, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_server_version, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_pixel_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_pixel_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_mm_width, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_mm_height, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_screens, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_planes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_color_cells, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_visual_class, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_backing_store, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_save_under, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_monitor_attributes_list, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_frame_geometry, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_frame_edges, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_mouse_absolute_pixel_position, %rdi
	callq	defsubr
	movabsq	$Sx_set_mouse_absolute_pixel_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_wm_set_size_hint, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_create_frame, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_open_connection, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_close_connection, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_display_list, %rdi
	callq	defsubr
	movabsq	$Sx_synchronize, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_backspace_delete_keys_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_show_tip, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_hide_tip, %rdi
	callq	defsubr
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$tip_timer, %rdi
	movq	%rax, tip_timer
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$tip_frame, %rdi
	movq	%rax, tip_frame
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$last_show_tip_args, %rdi
	movq	%rax, last_show_tip_args
	callq	staticpro
	movabsq	$Sx_uses_old_gtk_dialog, %rdi
	callq	defsubr
	movabsq	$Sx_file_dialog, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_select_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	syms_of_xfns, .Lfunc_end96-syms_of_xfns
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_name_internal,@function
x_set_name_internal:                    # @x_set_name_internal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp307:
	.cfi_def_cfa_offset 16
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp309:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	cmpq	$0, 56(%rsi)
	je	.LBB97_29
# BB#1:                                 # %if.then
	callq	block_input
	movl	$988, %edi              # imm = 0x3DC
	movb	$0, -90(%rbp)
	movb	$0, -91(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movl	$291, %edi              # imm = 0x123
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	leaq	-88(%rbp), %rdx
	leaq	-89(%rbp), %rcx
	leaq	-91(%rbp), %r8
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	x_encode_text
	movq	%rax, -48(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB97_3
# BB#2:                                 # %cond.true
	movl	$31, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB97_4
.LBB97_3:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	432(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB97_4:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movl	$8, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB97_6
# BB#5:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB97_10
.LBB97_6:                               # %if.else
	leaq	-88(%rbp), %rdx
	leaq	-89(%rbp), %rcx
	leaq	-90(%rbp), %r8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	x_encode_text
	movq	%rax, -80(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB97_8
# BB#7:                                 # %cond.true.13
	movl	$31, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB97_9
.LBB97_8:                               # %cond.false.14
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	432(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB97_9:                               # %cond.end.19
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$988, %edi              # imm = 0x3DC
	movq	%rax, -72(%rbp)
	movl	$8, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -120(%rbp)
.LBB97_10:                              # %if.end
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_title
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB97_16
# BB#11:                                # %cond.true.39
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB97_14
# BB#12:                                # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB97_14
# BB#13:                                # %cond.true.49
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB97_15
.LBB97_14:                              # %cond.false.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB97_15
.LBB97_15:                              # %cond.end.56
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB97_17
.LBB97_16:                              # %cond.false.58
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB97_17:                              # %cond.end.62
	movq	-192(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSetWMIconName
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	je	.LBB97_23
# BB#18:                                # %cond.true.72
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB97_21
# BB#19:                                # %land.lhs.true.77
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB97_21
# BB#20:                                # %cond.true.83
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB97_22
.LBB97_21:                              # %cond.false.89
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB97_22
.LBB97_22:                              # %cond.end.90
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB97_24
.LBB97_23:                              # %cond.false.92
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB97_24:                              # %cond.end.96
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	976(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	440(%rcx), %rcx
	movq	-120(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-120(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$8, %r8d
	xorl	%r9d, %r9d
	movl	%eax, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	XChangeProperty
	testb	$1, -90(%rbp)
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB97_26
# BB#25:                                # %if.then.108
	movq	-80(%rbp), %rdi
	callq	xfree
.LBB97_26:                              # %if.end.110
	testb	$1, -91(%rbp)
	je	.LBB97_28
# BB#27:                                # %if.then.112
	movq	-48(%rbp), %rdi
	callq	xfree
.LBB97_28:                              # %if.end.114
	callq	unblock_input
.LBB97_29:                              # %if.end.115
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end97:
	.size	x_set_name_internal, .Lfunc_end97-x_set_name_internal
	.cfi_endproc

	.align	16, 0x90
	.type	x_encode_text,@function
x_encode_text:                          # @x_encode_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp310:
	.cfi_def_cfa_offset 16
.Ltmp311:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp312:
	.cfi_def_cfa_register %rbp
	subq	$736, %rsp              # imm = 0x2E0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	string_xstring_p
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB98_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-40(%rbp), %rax
	movb	$1, (%rax)
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -8(%rbp)
	jmp	.LBB98_5
.LBB98_2:                               # %if.end
	leaq	-672(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	setup_coding_system
	movl	-664(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	orl	$17, %eax
	movl	-664(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -664(%rbp)
	movl	-664(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-256, %eax
	movl	-664(%rbp), %ecx
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-16384, %ecx           # imm = 0xFFFFFFFFFFFFC000
	orl	%eax, %ecx
	movl	%ecx, -664(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	xnmalloc
	movq	%rax, -176(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	shlq	$1, %rax
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -680(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%edi, %edi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-672(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-680(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -704(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-704(%rbp), %rdx        # 8-byte Reload
	movq	-704(%rbp), %rcx        # 8-byte Reload
	movq	-688(%rbp), %r8         # 8-byte Reload
	movq	-696(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	movb	$1, %r10b
	movq	-288(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$1, -52(%rbp)
	movb	%r10b, -705(%rbp)       # 1-byte Spill
	je	.LBB98_4
# BB#3:                                 # %lor.rhs
	movl	$291, %edi              # imm = 0x123
	movq	-24(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -705(%rbp)         # 1-byte Spill
.LBB98_4:                               # %lor.end
	movb	-705(%rbp), %al         # 1-byte Reload
	movq	-40(%rbp), %rcx
	andb	$1, %al
	movb	%al, (%rcx)
	movq	-48(%rbp), %rcx
	movb	$1, (%rcx)
	movq	-176(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB98_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbp
	retq
.Lfunc_end98:
	.size	x_encode_text, .Lfunc_end98-x_encode_text
	.cfi_endproc

	.align	16, 0x90
	.type	unwind_create_frame,@function
unwind_create_frame:                    # @unwind_create_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp313:
	.cfi_def_cfa_offset 16
.Ltmp314:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp315:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	subq	$5, %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	cmpq	$0, 376(%rdi)
	jne	.LBB99_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB99_8
.LBB99_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	Vframe_list, %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB99_7
# BB#3:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 80(%rax)
	je	.LBB99_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	32(%rax), %rax
	cmpq	image_cache_refcount, %rax
	jne	.LBB99_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	32(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 32(%rax)
.LBB99_6:                               # %if.end.14
	movq	-24(%rbp), %rdi
	callq	x_free_frame_resources
	movq	-24(%rbp), %rdi
	callq	free_glyphs
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB99_8
.LBB99_7:                               # %if.end.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB99_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	unwind_create_frame, .Lfunc_end99-unwind_create_frame
	.cfi_endproc

	.align	16, 0x90
	.type	unwind_create_tip_frame,@function
unwind_create_tip_frame:                # @unwind_create_tip_frame
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp316:
	.cfi_def_cfa_offset 16
.Ltmp317:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp318:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	unwind_create_frame
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB100_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	$0, tip_window
	callq	builtin_lisp_symbol
	movq	%rax, tip_frame
.LBB100_2:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	unwind_create_tip_frame, .Lfunc_end100-unwind_create_tip_frame
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_border_pixel,@function
x_set_border_pixel:                     # @x_set_border_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
.Ltmp320:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp321:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	256(%rax), %rsi
	callq	unload_color
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	%rax, 256(%rsi)
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB101_5
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 328(%rax)
	jle	.LBB101_5
# BB#2:                                 # %if.then
	callq	block_input
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	384(%rax), %rax
	movq	56(%rax), %rsi
	movslq	-12(%rbp), %rdx
	callq	XSetWindowBorder
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	unblock_input
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$10, %rdx
	andq	$3, %rdx
	movl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB101_4
# BB#3:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	callq	redraw_frame
.LBB101_4:                              # %if.end
	jmp	.LBB101_5
.LBB101_5:                              # %if.end.16
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	x_set_border_pixel, .Lfunc_end101-x_set_border_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	x_set_mouse_color_handler,@function
x_set_mouse_color_handler:              # @x_set_mouse_color_handler
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
.Ltmp323:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp324:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movl	$-1, 4(%rcx)
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 152(%rdx)
	movl	$0, -44(%rbp)
.LBB102_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB102_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB102_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	cmpq	96(%rdx,%rcx,8), %rax
	jb	.LBB102_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB102_1 Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 4(%rcx)
.LBB102_4:                              # %if.end
                                        #   in Loop: Header=BB102_1 Depth=1
	jmp	.LBB102_5
.LBB102_5:                              # %for.inc
                                        #   in Loop: Header=BB102_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB102_1
.LBB102_6:                              # %for.end
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jl	.LBB102_8
# BB#7:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movslq	4(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	$0, 40(%rcx,%rax,8)
.LBB102_8:                              # %if.end.10
	popq	%rbp
	retq
.Lfunc_end102:
	.size	x_set_mouse_color_handler, .Lfunc_end102-x_set_mouse_color_handler
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"X windows are not in use or not initialized"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Terminal %d is not an X display"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fontSet"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"foreground"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"background"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"spotLocation"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"area"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"inputStyle"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"clientWindow"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"focusWindow"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"statusAttributes"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"preeditAttributes"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"areaNeeded"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Terminal is not live, can't create new frames on it"
	.size	.L.str.13, 52

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"name"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Name"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Invalid frame name--not a string or nil"
	.size	.L.str.16, 40

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"minibuffer"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Minibuffer"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"iconName"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Title"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"black"
	.size	.L.str.21, 6

	.type	image_cache_refcount,@object # @image_cache_refcount
	.local	image_cache_refcount
	.comm	image_cache_refcount,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"fontBackend"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FontBackend"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Invalid frame font"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"borderWidth"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"BorderWidth"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"internalBorder"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"internalBorderWidth"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"verticalScrollBars"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"ScrollBars"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"horizontalScrollBars"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Foreground"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"white"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Background"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"pointerColor"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"borderColor"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"BorderColor"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"screenGamma"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"ScreenGamma"
	.size	.L.str.39, 12

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"lineSpacing"
	.size	.L.str.40, 12

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"LineSpacing"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"leftFringe"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"LeftFringe"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"rightFringe"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"RightFringe"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"scrollBarForeground"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"ScrollBarForeground"
	.size	.L.str.47, 20

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"scrollBarBackground"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"ScrollBarBackground"
	.size	.L.str.49, 20

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"bufferPredicate"
	.size	.L.str.50, 16

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"BufferPredicate"
	.size	.L.str.51, 16

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"title"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"waitForWM"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"WaitForWM"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"bitmapIcon"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"BitmapIcon"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"autoRaise"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"AutoRaiseLower"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"autoLower"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"cursorType"
	.size	.L.str.60, 11

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"CursorType"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"scrollBarWidth"
	.size	.L.str.62, 15

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"ScrollBarWidth"
	.size	.L.str.63, 15

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"scrollBarHeight"
	.size	.L.str.64, 16

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"ScrollBarHeight"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"alpha"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Alpha"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"fullscreen"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Fullscreen"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.zero	1
	.size	.L.str.70, 1

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"always"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"when-mapped"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"not-useful"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Strange value for BackingStore parameter of screen"
	.size	.L.str.74, 51

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"static-gray"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gray-scale"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"static-color"
	.size	.L.str.77, 13

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"pseudo-color"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"true-color"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"direct-color"
	.size	.L.str.80, 13

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Display has an unknown visual class"
	.size	.L.str.81, 36

	.type	Fx_display_monitor_attributes_list.source,@object # @Fx_display_monitor_attributes_list.source
	.data
	.align	8
Fx_display_monitor_attributes_list.source:
	.quad	.L.str.82
	.size	Fx_display_monitor_attributes_list.source, 8

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"Gdk"
	.size	.L.str.82, 4

	.type	tip_frame,@object       # @tip_frame
	.comm	tip_frame,8,8
	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"visualClass"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"VisualClass"
	.size	.L.str.84, 12

	.type	visual_classes,@object  # @visual_classes
	.data
	.align	16
visual_classes:
	.quad	.L.str.150
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.151
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.152
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.153
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.154
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.155
	.long	5                       # 0x5
	.zero	4
	.zero	16
	.size	visual_classes, 112

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"Invalid visual specification '%s'"
	.size	.L.str.85, 34

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Can't get proper X visual info"
	.size	.L.str.86, 31

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Cannot connect to X server %s.\nCheck the DISPLAY environment variable or use `-d'.\nAlso use the `xauth' program to verify that you have the proper\nauthorization information needed to connect the X server.\nAn insecure way to solve the problem may be to use `xhost'.\n"
	.size	.L.str.87, 266

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Cannot connect to X server %s"
	.size	.L.str.88, 30

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Display still has frames on it"
	.size	.L.str.89, 31

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"FORMAT must be one of 8, 16 or 32"
	.size	.L.str.90, 34

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Bad data in VALUE, must be number, string or cons"
	.size	.L.str.91, 50

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"VALUE too long"
	.size	.L.str.92, 15

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"AnyPropertyType"
	.size	.L.str.93, 16

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	" "
	.size	.L.str.94, 2

	.type	last_show_tip_args,@object # @last_show_tip_args
	.local	last_show_tip_args
	.comm	last_show_tip_args,8,8
	.type	tip_timer,@object       # @tip_timer
	.local	tip_timer
	.comm	tip_timer,8,8
	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"tooltip"
	.size	.L.str.95, 8

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"lightyellow"
	.size	.L.str.96, 12

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"run-at-time"
	.size	.L.str.97, 12

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"x-hide-tip"
	.size	.L.str.98, 11

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Trying to use a menu from within a menu-entry"
	.size	.L.str.99, 46

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"DELE"
	.size	.L.str.100, 5

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"BKSP"
	.size	.L.str.101, 5

	.type	x_frame_parm_handlers,@object # @x_frame_parm_handlers
	.data
	.globl	x_frame_parm_handlers
	.align	16
x_frame_parm_handlers:
	.quad	x_set_autoraise
	.quad	x_set_autolower
	.quad	x_set_background_color
	.quad	x_set_border_color
	.quad	x_set_border_width
	.quad	x_set_cursor_color
	.quad	x_set_cursor_type
	.quad	x_set_font
	.quad	x_set_foreground_color
	.quad	x_set_icon_name
	.quad	x_set_icon_type
	.quad	x_set_internal_border_width
	.quad	x_set_right_divider_width
	.quad	x_set_bottom_divider_width
	.quad	x_set_menu_bar_lines
	.quad	x_set_mouse_color
	.quad	x_explicitly_set_name
	.quad	x_set_scroll_bar_width
	.quad	x_set_scroll_bar_height
	.quad	x_set_title
	.quad	x_set_unsplittable
	.quad	x_set_vertical_scroll_bars
	.quad	x_set_horizontal_scroll_bars
	.quad	x_set_visibility
	.quad	x_set_tool_bar_lines
	.quad	x_set_scroll_bar_foreground
	.quad	x_set_scroll_bar_background
	.quad	x_set_screen_gamma
	.quad	x_set_line_spacing
	.quad	x_set_left_fringe
	.quad	x_set_right_fringe
	.quad	x_set_wait_for_wm
	.quad	x_set_fullscreen
	.quad	x_set_font_backend
	.quad	x_set_alpha
	.quad	x_set_sticky
	.quad	x_set_tool_bar_position
	.size	x_frame_parm_handlers, 296

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"Undefined color"
	.size	.L.str.102, 16

	.type	syms_of_xfns.o_fwd,@object # @syms_of_xfns.o_fwd
	.local	syms_of_xfns.o_fwd
	.comm	syms_of_xfns.o_fwd,16,8
	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"x-pointer-shape"
	.size	.L.str.103, 16

	.type	syms_of_xfns.o_fwd.104,@object # @syms_of_xfns.o_fwd.104
	.local	syms_of_xfns.o_fwd.104
	.comm	syms_of_xfns.o_fwd.104,16,8
	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"x-hourglass-pointer-shape"
	.size	.L.str.105, 26

	.type	syms_of_xfns.o_fwd.106,@object # @syms_of_xfns.o_fwd.106
	.local	syms_of_xfns.o_fwd.106
	.comm	syms_of_xfns.o_fwd.106,16,8
	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"x-sensitive-text-pointer-shape"
	.size	.L.str.107, 31

	.type	syms_of_xfns.o_fwd.108,@object # @syms_of_xfns.o_fwd.108
	.local	syms_of_xfns.o_fwd.108
	.comm	syms_of_xfns.o_fwd.108,16,8
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"x-window-horizontal-drag-cursor"
	.size	.L.str.109, 32

	.type	syms_of_xfns.o_fwd.110,@object # @syms_of_xfns.o_fwd.110
	.local	syms_of_xfns.o_fwd.110
	.comm	syms_of_xfns.o_fwd.110,16,8
	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"x-window-vertical-drag-cursor"
	.size	.L.str.111, 30

	.type	syms_of_xfns.o_fwd.112,@object # @syms_of_xfns.o_fwd.112
	.local	syms_of_xfns.o_fwd.112
	.comm	syms_of_xfns.o_fwd.112,16,8
	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"x-cursor-fore-pixel"
	.size	.L.str.113, 20

	.type	syms_of_xfns.o_fwd.114,@object # @syms_of_xfns.o_fwd.114
	.local	syms_of_xfns.o_fwd.114
	.comm	syms_of_xfns.o_fwd.114,16,8
	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"x-max-tooltip-size"
	.size	.L.str.115, 19

	.type	syms_of_xfns.o_fwd.116,@object # @syms_of_xfns.o_fwd.116
	.local	syms_of_xfns.o_fwd.116
	.comm	syms_of_xfns.o_fwd.116,16,8
	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"x-no-window-manager"
	.size	.L.str.117, 20

	.type	syms_of_xfns.o_fwd.118,@object # @syms_of_xfns.o_fwd.118
	.local	syms_of_xfns.o_fwd.118
	.comm	syms_of_xfns.o_fwd.118,16,8
	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"x-pixel-size-width-font-regexp"
	.size	.L.str.119, 31

	.type	syms_of_xfns.b_fwd,@object # @syms_of_xfns.b_fwd
	.local	syms_of_xfns.b_fwd
	.comm	syms_of_xfns.b_fwd,16,8
	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"x-gtk-use-old-file-dialog"
	.size	.L.str.120, 26

	.type	syms_of_xfns.b_fwd.121,@object # @syms_of_xfns.b_fwd.121
	.local	syms_of_xfns.b_fwd.121
	.comm	syms_of_xfns.b_fwd.121,16,8
	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"x-gtk-show-hidden-files"
	.size	.L.str.122, 24

	.type	syms_of_xfns.b_fwd.123,@object # @syms_of_xfns.b_fwd.123
	.local	syms_of_xfns.b_fwd.123
	.comm	syms_of_xfns.b_fwd.123,16,8
	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"x-gtk-file-dialog-help-text"
	.size	.L.str.124, 28

	.type	syms_of_xfns.b_fwd.125,@object # @syms_of_xfns.b_fwd.125
	.local	syms_of_xfns.b_fwd.125
	.comm	syms_of_xfns.b_fwd.125,16,8
	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"x-gtk-use-system-tooltips"
	.size	.L.str.126, 26

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"x-toolkit"
	.size	.L.str.127, 10

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gtk"
	.size	.L.str.128, 4

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"move-toolbar"
	.size	.L.str.129, 13

	.type	syms_of_xfns.o_fwd.130,@object # @syms_of_xfns.o_fwd.130
	.local	syms_of_xfns.o_fwd.130
	.comm	syms_of_xfns.o_fwd.130,16,8
	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"gtk-version-string"
	.size	.L.str.131, 19

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"%d.%d.%d"
	.size	.L.str.132, 9

	.type	Sx_mouse_absolute_pixel_position,@object # @Sx_mouse_absolute_pixel_position
	.data
	.align	8
Sx_mouse_absolute_pixel_position:
	.quad	167772160               # 0xa000000
	.quad	Fx_mouse_absolute_pixel_position
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.190
	.quad	0
	.quad	0
	.size	Sx_mouse_absolute_pixel_position, 48

	.type	Sx_display_list,@object # @Sx_display_list
	.align	8
Sx_display_list:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.196
	.quad	0
	.quad	0
	.size	Sx_display_list, 48

	.type	Sx_hide_tip,@object     # @Sx_hide_tip
	.align	8
Sx_hide_tip:
	.quad	167772160               # 0xa000000
	.quad	Fx_hide_tip
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Sx_hide_tip, 48

	.type	Sx_uses_old_gtk_dialog,@object # @Sx_uses_old_gtk_dialog
	.align	8
Sx_uses_old_gtk_dialog:
	.quad	167772160               # 0xa000000
	.quad	Fx_uses_old_gtk_dialog
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.200
	.quad	0
	.quad	0
	.size	Sx_uses_old_gtk_dialog, 48

	.type	tip_window,@object      # @tip_window
	.comm	tip_window,8,8
	.type	supported_xim_styles,@object # @supported_xim_styles
	.section	.rodata,"a",@progbits
	.align	16
supported_xim_styles:
	.quad	260                     # 0x104
	.quad	1028                    # 0x404
	.quad	2052                    # 0x804
	.quad	264                     # 0x108
	.quad	1032                    # 0x408
	.quad	2056                    # 0x808
	.quad	272                     # 0x110
	.quad	1040                    # 0x410
	.quad	2064                    # 0x810
	.quad	0                       # 0x0
	.size	supported_xim_styles, 80

	.type	.L.str.133,@object      # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"-*-*-medium-r-normal--%d-*-*-*-*-*"
	.size	.L.str.133, 35

	.type	.Lxic_create_xfontset.sizes,@object # @xic_create_xfontset.sizes
	.section	.rodata,"a",@progbits
	.align	16
.Lxic_create_xfontset.sizes:
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	14                      # 0xe
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	20                      # 0x14
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	34                      # 0x22
	.long	0                       # 0x0
	.size	.Lxic_create_xfontset.sizes, 52

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"-*-*-*-r-normal--*-*-*-*-*-*"
	.size	.L.str.134, 29

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"font"
	.size	.L.str.135, 5

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Font"
	.size	.L.str.136, 5

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"monospace-10"
	.size	.L.str.137, 13

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1"
	.size	.L.str.138, 52

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"-misc-fixed-medium-r-normal-*-*-140-*-*-c-*-iso8859-1"
	.size	.L.str.139, 54

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"-*-*-medium-r-normal-*-*-140-*-*-c-*-iso8859-1"
	.size	.L.str.140, 47

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"-*-*-medium-r-*-*-*-*-*-*-c-*-iso8859-1"
	.size	.L.str.141, 40

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"-*-fixed-*-*-*-*-*-140-*-*-c-*-iso8859-1"
	.size	.L.str.142, 41

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"fixed"
	.size	.L.str.143, 6

	.type	.Lx_default_font_parameter.names,@object # @x_default_font_parameter.names
	.section	.rodata,"a",@progbits
	.align	16
.Lx_default_font_parameter.names:
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	0
	.size	.Lx_default_font_parameter.names, 64

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"No suitable font was found"
	.size	.L.str.144, 27

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"verticalScrollBar"
	.size	.L.str.145, 18

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Both left and top icon corners of icon must be specified"
	.size	.L.str.146, 57

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Unable to create window"
	.size	.L.str.147, 24

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"filterEvents"
	.size	.L.str.148, 13

	.type	gray_bits,@object       # @gray_bits
	.data
gray_bits:
	.ascii	"\001\002"
	.size	gray_bits, 2

	.type	.L.str.149,@object      # @.str.149
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.149:
	.asciz	"_NET_WM_PID"
	.size	.L.str.149, 12

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"StaticGray"
	.size	.L.str.150, 11

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"GrayScale"
	.size	.L.str.151, 10

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"StaticColor"
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"PseudoColor"
	.size	.L.str.153, 12

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"TrueColor"
	.size	.L.str.154, 10

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"DirectColor"
	.size	.L.str.155, 12

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	" *tip*"
	.size	.L.str.156, 7

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"cursorColor"
	.size	.L.str.157, 12

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"grayscale"
	.size	.L.str.158, 10

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"color"
	.size	.L.str.159, 6

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"No icon window available"
	.size	.L.str.160, 25

	.type	mouse_cursor_types,@object # @mouse_cursor_types
	.section	.rodata,"a",@progbits
	.align	16
mouse_cursor_types:
	.quad	.L.str.163
	.quad	globals+2840
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.164
	.quad	globals+2824
	.long	68                      # 0x44
	.zero	4
	.quad	.L.str.165
	.quad	globals+2760
	.long	150                     # 0x96
	.zero	4
	.quad	.L.str.166
	.quad	globals+2808
	.long	152                     # 0x98
	.zero	4
	.quad	0
	.quad	globals+2872
	.long	60                      # 0x3c
	.zero	4
	.quad	0
	.quad	globals+2920
	.long	108                     # 0x6c
	.zero	4
	.quad	0
	.quad	globals+2928
	.long	116                     # 0x74
	.zero	4
	.size	mouse_cursor_types, 168

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"bad %s pointer cursor: %s"
	.size	.L.str.161, 26

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"can't set cursor shape: %s"
	.size	.L.str.162, 27

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"text"
	.size	.L.str.163, 5

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"nontext"
	.size	.L.str.164, 8

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"hourglass"
	.size	.L.str.165, 10

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"modeline"
	.size	.L.str.166, 9

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"x-change-window-property"
	.size	.L.str.167, 25

	.type	Sx_change_window_property,@object # @Sx_change_window_property
	.data
	.align	8
Sx_change_window_property:
	.quad	167772160               # 0xa000000
	.quad	Fx_change_window_property
	.short	2                       # 0x2
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.167
	.quad	0
	.quad	0
	.size	Sx_change_window_property, 48

	.type	.L.str.168,@object      # @.str.168
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.168:
	.asciz	"x-delete-window-property"
	.size	.L.str.168, 25

	.type	Sx_delete_window_property,@object # @Sx_delete_window_property
	.data
	.align	8
Sx_delete_window_property:
	.quad	167772160               # 0xa000000
	.quad	Fx_delete_window_property
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.168
	.quad	0
	.quad	0
	.size	Sx_delete_window_property, 48

	.type	.L.str.169,@object      # @.str.169
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.169:
	.asciz	"x-window-property"
	.size	.L.str.169, 18

	.type	Sx_window_property,@object # @Sx_window_property
	.data
	.align	8
Sx_window_property:
	.quad	167772160               # 0xa000000
	.quad	Fx_window_property
	.short	1                       # 0x1
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.169
	.quad	0
	.quad	0
	.size	Sx_window_property, 48

	.type	.L.str.170,@object      # @.str.170
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.170:
	.asciz	"xw-display-color-p"
	.size	.L.str.170, 19

	.type	Sxw_display_color_p,@object # @Sxw_display_color_p
	.data
	.align	8
Sxw_display_color_p:
	.quad	167772160               # 0xa000000
	.quad	Fxw_display_color_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.170
	.quad	0
	.quad	0
	.size	Sxw_display_color_p, 48

	.type	.L.str.171,@object      # @.str.171
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.171:
	.asciz	"x-display-grayscale-p"
	.size	.L.str.171, 22

	.type	Sx_display_grayscale_p,@object # @Sx_display_grayscale_p
	.data
	.align	8
Sx_display_grayscale_p:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_grayscale_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.171
	.quad	0
	.quad	0
	.size	Sx_display_grayscale_p, 48

	.type	.L.str.172,@object      # @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"xw-color-defined-p"
	.size	.L.str.172, 19

	.type	Sxw_color_defined_p,@object # @Sxw_color_defined_p
	.data
	.align	8
Sxw_color_defined_p:
	.quad	167772160               # 0xa000000
	.quad	Fxw_color_defined_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.172
	.quad	0
	.quad	0
	.size	Sxw_color_defined_p, 48

	.type	.L.str.173,@object      # @.str.173
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.173:
	.asciz	"xw-color-values"
	.size	.L.str.173, 16

	.type	Sxw_color_values,@object # @Sxw_color_values
	.data
	.align	8
Sxw_color_values:
	.quad	167772160               # 0xa000000
	.quad	Fxw_color_values
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.173
	.quad	0
	.quad	0
	.size	Sxw_color_values, 48

	.type	.L.str.174,@object      # @.str.174
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.174:
	.asciz	"x-server-max-request-size"
	.size	.L.str.174, 26

	.type	Sx_server_max_request_size,@object # @Sx_server_max_request_size
	.data
	.align	8
Sx_server_max_request_size:
	.quad	167772160               # 0xa000000
	.quad	Fx_server_max_request_size
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.174
	.quad	0
	.quad	0
	.size	Sx_server_max_request_size, 48

	.type	.L.str.175,@object      # @.str.175
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.175:
	.asciz	"x-server-vendor"
	.size	.L.str.175, 16

	.type	Sx_server_vendor,@object # @Sx_server_vendor
	.data
	.align	8
Sx_server_vendor:
	.quad	167772160               # 0xa000000
	.quad	Fx_server_vendor
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.175
	.quad	0
	.quad	0
	.size	Sx_server_vendor, 48

	.type	.L.str.176,@object      # @.str.176
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.176:
	.asciz	"x-server-version"
	.size	.L.str.176, 17

	.type	Sx_server_version,@object # @Sx_server_version
	.data
	.align	8
Sx_server_version:
	.quad	167772160               # 0xa000000
	.quad	Fx_server_version
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.176
	.quad	0
	.quad	0
	.size	Sx_server_version, 48

	.type	.L.str.177,@object      # @.str.177
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.177:
	.asciz	"x-display-pixel-width"
	.size	.L.str.177, 22

	.type	Sx_display_pixel_width,@object # @Sx_display_pixel_width
	.data
	.align	8
Sx_display_pixel_width:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_pixel_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.177
	.quad	0
	.quad	0
	.size	Sx_display_pixel_width, 48

	.type	.L.str.178,@object      # @.str.178
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.178:
	.asciz	"x-display-pixel-height"
	.size	.L.str.178, 23

	.type	Sx_display_pixel_height,@object # @Sx_display_pixel_height
	.data
	.align	8
Sx_display_pixel_height:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_pixel_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.178
	.quad	0
	.quad	0
	.size	Sx_display_pixel_height, 48

	.type	.L.str.179,@object      # @.str.179
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.179:
	.asciz	"x-display-mm-width"
	.size	.L.str.179, 19

	.type	Sx_display_mm_width,@object # @Sx_display_mm_width
	.data
	.align	8
Sx_display_mm_width:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_mm_width
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.179
	.quad	0
	.quad	0
	.size	Sx_display_mm_width, 48

	.type	.L.str.180,@object      # @.str.180
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.180:
	.asciz	"x-display-mm-height"
	.size	.L.str.180, 20

	.type	Sx_display_mm_height,@object # @Sx_display_mm_height
	.data
	.align	8
Sx_display_mm_height:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_mm_height
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.180
	.quad	0
	.quad	0
	.size	Sx_display_mm_height, 48

	.type	.L.str.181,@object      # @.str.181
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.181:
	.asciz	"x-display-screens"
	.size	.L.str.181, 18

	.type	Sx_display_screens,@object # @Sx_display_screens
	.data
	.align	8
Sx_display_screens:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_screens
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.181
	.quad	0
	.quad	0
	.size	Sx_display_screens, 48

	.type	.L.str.182,@object      # @.str.182
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.182:
	.asciz	"x-display-planes"
	.size	.L.str.182, 17

	.type	Sx_display_planes,@object # @Sx_display_planes
	.data
	.align	8
Sx_display_planes:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_planes
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.182
	.quad	0
	.quad	0
	.size	Sx_display_planes, 48

	.type	.L.str.183,@object      # @.str.183
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.183:
	.asciz	"x-display-color-cells"
	.size	.L.str.183, 22

	.type	Sx_display_color_cells,@object # @Sx_display_color_cells
	.data
	.align	8
Sx_display_color_cells:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_color_cells
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.183
	.quad	0
	.quad	0
	.size	Sx_display_color_cells, 48

	.type	.L.str.184,@object      # @.str.184
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.184:
	.asciz	"x-display-visual-class"
	.size	.L.str.184, 23

	.type	Sx_display_visual_class,@object # @Sx_display_visual_class
	.data
	.align	8
Sx_display_visual_class:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_visual_class
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.184
	.quad	0
	.quad	0
	.size	Sx_display_visual_class, 48

	.type	.L.str.185,@object      # @.str.185
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.185:
	.asciz	"x-display-backing-store"
	.size	.L.str.185, 24

	.type	Sx_display_backing_store,@object # @Sx_display_backing_store
	.data
	.align	8
Sx_display_backing_store:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_backing_store
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.185
	.quad	0
	.quad	0
	.size	Sx_display_backing_store, 48

	.type	.L.str.186,@object      # @.str.186
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.186:
	.asciz	"x-display-save-under"
	.size	.L.str.186, 21

	.type	Sx_display_save_under,@object # @Sx_display_save_under
	.data
	.align	8
Sx_display_save_under:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_save_under
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.186
	.quad	0
	.quad	0
	.size	Sx_display_save_under, 48

	.type	.L.str.187,@object      # @.str.187
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.187:
	.asciz	"x-display-monitor-attributes-list"
	.size	.L.str.187, 34

	.type	Sx_display_monitor_attributes_list,@object # @Sx_display_monitor_attributes_list
	.data
	.align	8
Sx_display_monitor_attributes_list:
	.quad	167772160               # 0xa000000
	.quad	Fx_display_monitor_attributes_list
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.187
	.quad	0
	.quad	0
	.size	Sx_display_monitor_attributes_list, 48

	.type	.L.str.188,@object      # @.str.188
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.188:
	.asciz	"x-frame-geometry"
	.size	.L.str.188, 17

	.type	Sx_frame_geometry,@object # @Sx_frame_geometry
	.data
	.align	8
Sx_frame_geometry:
	.quad	167772160               # 0xa000000
	.quad	Fx_frame_geometry
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.188
	.quad	0
	.quad	0
	.size	Sx_frame_geometry, 48

	.type	.L.str.189,@object      # @.str.189
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.189:
	.asciz	"x-frame-edges"
	.size	.L.str.189, 14

	.type	Sx_frame_edges,@object  # @Sx_frame_edges
	.data
	.align	8
Sx_frame_edges:
	.quad	167772160               # 0xa000000
	.quad	Fx_frame_edges
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.189
	.quad	0
	.quad	0
	.size	Sx_frame_edges, 48

	.type	.L.str.190,@object      # @.str.190
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.190:
	.asciz	"x-mouse-absolute-pixel-position"
	.size	.L.str.190, 32

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"x-set-mouse-absolute-pixel-position"
	.size	.L.str.191, 36

	.type	Sx_set_mouse_absolute_pixel_position,@object # @Sx_set_mouse_absolute_pixel_position
	.data
	.align	8
Sx_set_mouse_absolute_pixel_position:
	.quad	167772160               # 0xa000000
	.quad	Fx_set_mouse_absolute_pixel_position
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.191
	.quad	0
	.quad	0
	.size	Sx_set_mouse_absolute_pixel_position, 48

	.type	.L.str.192,@object      # @.str.192
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.192:
	.asciz	"x-wm-set-size-hint"
	.size	.L.str.192, 19

	.type	Sx_wm_set_size_hint,@object # @Sx_wm_set_size_hint
	.data
	.align	8
Sx_wm_set_size_hint:
	.quad	167772160               # 0xa000000
	.quad	Fx_wm_set_size_hint
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.192
	.quad	0
	.quad	0
	.size	Sx_wm_set_size_hint, 48

	.type	.L.str.193,@object      # @.str.193
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.193:
	.asciz	"x-create-frame"
	.size	.L.str.193, 15

	.type	Sx_create_frame,@object # @Sx_create_frame
	.data
	.align	8
Sx_create_frame:
	.quad	167772160               # 0xa000000
	.quad	Fx_create_frame
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.193
	.quad	0
	.quad	0
	.size	Sx_create_frame, 48

	.type	.L.str.194,@object      # @.str.194
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.194:
	.asciz	"x-open-connection"
	.size	.L.str.194, 18

	.type	Sx_open_connection,@object # @Sx_open_connection
	.data
	.align	8
Sx_open_connection:
	.quad	167772160               # 0xa000000
	.quad	Fx_open_connection
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.194
	.quad	0
	.quad	0
	.size	Sx_open_connection, 48

	.type	.L.str.195,@object      # @.str.195
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.195:
	.asciz	"x-close-connection"
	.size	.L.str.195, 19

	.type	Sx_close_connection,@object # @Sx_close_connection
	.data
	.align	8
Sx_close_connection:
	.quad	167772160               # 0xa000000
	.quad	Fx_close_connection
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.195
	.quad	0
	.quad	0
	.size	Sx_close_connection, 48

	.type	.L.str.196,@object      # @.str.196
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.196:
	.asciz	"x-display-list"
	.size	.L.str.196, 15

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"x-synchronize"
	.size	.L.str.197, 14

	.type	Sx_synchronize,@object  # @Sx_synchronize
	.data
	.align	8
Sx_synchronize:
	.quad	167772160               # 0xa000000
	.quad	Fx_synchronize
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.197
	.quad	0
	.quad	0
	.size	Sx_synchronize, 48

	.type	.L.str.198,@object      # @.str.198
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.198:
	.asciz	"x-backspace-delete-keys-p"
	.size	.L.str.198, 26

	.type	Sx_backspace_delete_keys_p,@object # @Sx_backspace_delete_keys_p
	.data
	.align	8
Sx_backspace_delete_keys_p:
	.quad	167772160               # 0xa000000
	.quad	Fx_backspace_delete_keys_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.198
	.quad	0
	.quad	0
	.size	Sx_backspace_delete_keys_p, 48

	.type	.L.str.199,@object      # @.str.199
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.199:
	.asciz	"x-show-tip"
	.size	.L.str.199, 11

	.type	Sx_show_tip,@object     # @Sx_show_tip
	.data
	.align	8
Sx_show_tip:
	.quad	167772160               # 0xa000000
	.quad	Fx_show_tip
	.short	1                       # 0x1
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.199
	.quad	0
	.quad	0
	.size	Sx_show_tip, 48

	.type	.L.str.200,@object      # @.str.200
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.200:
	.asciz	"x-uses-old-gtk-dialog"
	.size	.L.str.200, 22

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"x-file-dialog"
	.size	.L.str.201, 14

	.type	Sx_file_dialog,@object  # @Sx_file_dialog
	.data
	.align	8
Sx_file_dialog:
	.quad	167772160               # 0xa000000
	.quad	Fx_file_dialog
	.short	2                       # 0x2
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.201
	.quad	0
	.quad	0
	.size	Sx_file_dialog, 48

	.type	.L.str.202,@object      # @.str.202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.202:
	.asciz	"x-select-font"
	.size	.L.str.202, 14

	.type	Sx_select_font,@object  # @Sx_select_font
	.data
	.align	8
Sx_select_font:
	.quad	167772160               # 0xa000000
	.quad	Fx_select_font
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.202
	.quad	0
	.quad	0
	.size	Sx_select_font, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
