	.text
	.file	"gimpdisplayshell-tool-events.bc"
	.globl	gimp_display_shell_events
	.align	16, 0x90
	.type	gimp_display_shell_events,@function
gimp_display_shell_events:              # @gimp_display_shell_events
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB0_44
.LBB0_3:                                # %if.end
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%edx, -72(%rbp)         # 4-byte Spill
	je	.LBB0_35
	jmp	.LBB0_45
.LBB0_45:                               # %if.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$-8, %eax
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB0_4
	jmp	.LBB0_46
.LBB0_46:                               # %if.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB0_36
	jmp	.LBB0_47
.LBB0_47:                               # %if.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$31, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB0_35
	jmp	.LBB0_40
.LBB0_4:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB0_6
# BB#5:                                 # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB0_44
.LBB0_6:                                # %if.end.7
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB0_28
# BB#7:                                 # %if.then.9
	movq	-56(%rbp), %rax
	cmpl	$65505, 28(%rax)        # imm = 0xFFE1
	je	.LBB0_15
# BB#8:                                 # %lor.lhs.false.10
	movq	-56(%rbp), %rax
	cmpl	$65506, 28(%rax)        # imm = 0xFFE2
	je	.LBB0_15
# BB#9:                                 # %lor.lhs.false.13
	movq	-56(%rbp), %rax
	cmpl	$65507, 28(%rax)        # imm = 0xFFE3
	je	.LBB0_15
# BB#10:                                # %lor.lhs.false.16
	movq	-56(%rbp), %rax
	cmpl	$65508, 28(%rax)        # imm = 0xFFE4
	je	.LBB0_15
# BB#11:                                # %lor.lhs.false.19
	movq	-56(%rbp), %rax
	cmpl	$65513, 28(%rax)        # imm = 0xFFE9
	je	.LBB0_15
# BB#12:                                # %lor.lhs.false.22
	movq	-56(%rbp), %rax
	cmpl	$65514, 28(%rax)        # imm = 0xFFEA
	je	.LBB0_15
# BB#13:                                # %lor.lhs.false.25
	movq	-56(%rbp), %rax
	cmpl	$65511, 28(%rax)        # imm = 0xFFE7
	je	.LBB0_15
# BB#14:                                # %lor.lhs.false.28
	movq	-56(%rbp), %rax
	cmpl	$65512, 28(%rax)        # imm = 0xFFE8
	jne	.LBB0_16
.LBB0_15:                               # %if.then.31
	jmp	.LBB0_41
.LBB0_16:                               # %if.end.32
	movq	-24(%rbp), %rax
	cmpl	$8, (%rax)
	jne	.LBB0_22
# BB#17:                                # %if.then.35
	movq	-56(%rbp), %rax
	cmpl	$32, 28(%rax)
	je	.LBB0_19
# BB#18:                                # %lor.lhs.false.38
	movq	-56(%rbp), %rax
	cmpl	$65408, 28(%rax)        # imm = 0xFF80
	jne	.LBB0_21
.LBB0_19:                               # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 728(%rax)
	je	.LBB0_21
# BB#20:                                # %if.then.42
	movq	-32(%rbp), %rax
	movl	$1, 724(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 728(%rax)
.LBB0_21:                               # %if.end.44
	jmp	.LBB0_27
.LBB0_22:                               # %if.else
	movq	-56(%rbp), %rax
	cmpl	$32, 28(%rax)
	je	.LBB0_24
# BB#23:                                # %lor.lhs.false.47
	movq	-56(%rbp), %rax
	cmpl	$65408, 28(%rax)        # imm = 0xFF80
	jne	.LBB0_26
.LBB0_24:                               # %land.lhs.true.50
	movq	-32(%rbp), %rax
	cmpl	$0, 724(%rax)
	je	.LBB0_26
# BB#25:                                # %if.then.53
	movq	-32(%rbp), %rax
	movl	$0, 724(%rax)
	movq	-32(%rbp), %rax
	movl	$1, 728(%rax)
.LBB0_26:                               # %if.end.56
	jmp	.LBB0_27
.LBB0_27:                               # %if.end.57
	movl	$1, -4(%rbp)
	jmp	.LBB0_44
.LBB0_28:                               # %if.end.58
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$32, %edx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_48
.LBB0_48:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65056, %eax            # imm = 0xFE20
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_49
.LBB0_49:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65076, %eax            # imm = 0xFE34
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_50
.LBB0_50:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-65288, %eax           # imm = 0xFFFFFFFFFFFF00F8
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB0_29
	jmp	.LBB0_51
.LBB0_51:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_53
.LBB0_53:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-65361, %eax           # imm = 0xFFFFFFFFFFFF00AF
	subl	$4, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jb	.LBB0_29
	jmp	.LBB0_54
.LBB0_54:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65408, %eax            # imm = 0xFF80
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_55
.LBB0_55:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_56
.LBB0_56:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-65505, %eax           # imm = 0xFFFFFFFFFFFF001F
	subl	$4, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jb	.LBB0_29
	jmp	.LBB0_57
.LBB0_57:                               # %if.end.58
	movl	-88(%rbp), %eax         # 4-byte Reload
	addl	$-65511, %eax           # imm = 0xFFFFFFFFFFFF0019
	subl	$3, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	ja	.LBB0_30
	jmp	.LBB0_29
.LBB0_29:                               # %sw.bb.60
	jmp	.LBB0_34
.LBB0_30:                               # %sw.default
	movq	-32(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB0_32
# BB#31:                                # %lor.lhs.false.63
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	je	.LBB0_33
.LBB0_32:                               # %if.then.65
	movl	$1, -4(%rbp)
	jmp	.LBB0_44
.LBB0_33:                               # %if.end.66
	jmp	.LBB0_34
.LBB0_34:                               # %sw.epilog
	movl	$1, -44(%rbp)
	jmp	.LBB0_41
.LBB0_35:                               # %sw.bb.67
	movl	$1, -44(%rbp)
	jmp	.LBB0_41
.LBB0_36:                               # %sw.bb.68
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movswl	18(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_39
# BB#37:                                # %land.lhs.true.70
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$0, 552(%rax)
	je	.LBB0_39
# BB#38:                                # %if.then.73
	movl	$1, -44(%rbp)
.LBB0_39:                               # %if.end.74
	jmp	.LBB0_41
.LBB0_40:                               # %sw.default.75
	jmp	.LBB0_41
.LBB0_41:                               # %sw.epilog.76
	cmpl	$0, -44(%rbp)
	je	.LBB0_43
# BB#42:                                # %if.then.78
	movq	-40(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-32(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	callq	gimp_context_set_display
.LBB0_43:                               # %if.end.81
	movl	$0, -4(%rbp)
.LBB0_44:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_events, .Lfunc_end0-gimp_display_shell_events
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_display_shell_canvas_tool_events
	.align	16, 0x90
	.type	gimp_display_shell_canvas_tool_events,@function
gimp_display_shell_canvas_tool_events:  # @gimp_display_shell_canvas_tool_events
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
	subq	$944, %rsp              # imm = 0x3B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_canvas_tool_events, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_276
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-32(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB1_7
# BB#6:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	jne	.LBB1_8
.LBB1_7:                                # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_8:                                # %if.end.7
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_display_shell_events
	cmpl	$0, %eax
	je	.LBB1_10
# BB#9:                                 # %if.then.10
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_10:                               # %if.end.11
	movq	-24(%rbp), %rdi
	callq	gtk_get_event_widget
	movq	-32(%rbp), %rdi
	movq	328(%rdi), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_is_ancestor
	cmpl	$0, %eax
	je	.LBB1_12
# BB#11:                                # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB1_276
.LBB1_12:                               # %if.end.17
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.22
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_display_shell_canvas_no_image_events
	movl	%eax, -4(%rbp)
	jmp	.LBB1_276
.LBB1_14:                               # %if.end.24
	jmp	.LBB1_15
.LBB1_15:                               # %do.body.25
	movl	gimp_log_flags, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_17
# BB#16:                                # %if.then.27
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %rdi
	movq	%r8, -576(%rbp)         # 8-byte Spill
	callq	gimp_print_event
	movl	$1, %edi
	movabsq	$.L__func__.gimp_display_shell_canvas_tool_events, %rsi
	movl	$321, %edx              # imm = 0x141
	movabsq	$.L.str.2, %rcx
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_log
.LBB1_17:                               # %if.end.29
	jmp	.LBB1_18
.LBB1_18:                               # %do.end.30
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB1_22
# BB#19:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 720(%rax)
	jne	.LBB1_22
# BB#20:                                # %land.lhs.true.33
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_devices_check_change
	cmpl	$0, %eax
	je	.LBB1_22
# BB#21:                                # %if.then.36
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_check_device_cursor
	movl	$1, -196(%rbp)
.LBB1_22:                               # %if.end.37
	leaq	-120(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_get_event_coords
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-204(%rbp), %rcx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_untransform_event_coords
	cmpl	$0, -196(%rbp)
	je	.LBB1_25
# BB#23:                                # %land.lhs.true.39
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB1_25
# BB#24:                                # %if.then.42
	movl	$1, %esi
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	callq	gimp_display_shell_update_focus
.LBB1_25:                               # %if.end.43
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-3, %ecx
	movl	%ecx, %eax
	subl	$28, %ecx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	ja	.LBB1_272
# BB#277:                               # %if.end.43
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_26:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 720(%rax)
	je	.LBB1_28
# BB#27:                                # %if.then.46
	movl	$1, %esi
	movq	-32(%rbp), %rax
	movl	$0, 720(%rax)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_set_extension_events
.LBB1_28:                               # %if.end.49
	movq	-216(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB1_30
# BB#29:                                # %if.then.50
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_30:                               # %if.end.51
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_32
# BB#31:                                # %if.then.53
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_32:                               # %if.end.54
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_proximity_in
	leaq	-184(%rbp), %rsi
	movl	$1, -204(%rbp)
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
	jmp	.LBB1_273
.LBB1_33:                               # %sw.bb.55
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpl	$2, 76(%rax)
	jne	.LBB1_35
# BB#34:                                # %if.then.58
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	$1, 720(%rax)
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_set_extension_events
.LBB1_35:                               # %if.end.61
	movq	-224(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB1_37
# BB#36:                                # %if.then.64
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_37:                               # %if.end.65
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_39
# BB#38:                                # %if.then.68
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_39:                               # %if.end.69
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_proximity_out
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
	jmp	.LBB1_273
.LBB1_40:                               # %sw.bb.71
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_proximity_in
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
	jmp	.LBB1_273
.LBB1_41:                               # %sw.bb.73
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_proximity_out
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
	jmp	.LBB1_273
.LBB1_42:                               # %sw.bb.75
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB1_48
# BB#43:                                # %if.then.77
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB1_45
# BB#44:                                # %if.then.80
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_display_shell_canvas_tool_events, %rsi
	movb	$0, %al
	callq	g_warning
.LBB1_45:                               # %if.end.81
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_47
# BB#46:                                # %if.then.84
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_47:                               # %if.end.85
	movl	$1, %esi
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	callq	gimp_display_shell_update_focus
	jmp	.LBB1_53
.LBB1_48:                               # %if.else.86
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB1_50
# BB#49:                                # %if.then.89
	movabsq	$.L.str.4, %rdi
	movabsq	$.L__func__.gimp_display_shell_canvas_tool_events, %rsi
	movb	$0, %al
	callq	g_warning
.LBB1_50:                               # %if.end.90
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_52
# BB#51:                                # %if.then.93
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_52:                               # %if.end.94
	xorl	%eax, %eax
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	gimp_display_shell_update_focus
.LBB1_53:                               # %if.end.95
	jmp	.LBB1_273
.LBB1_54:                               # %sw.bb.96
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	jne	.LBB1_57
# BB#55:                                # %lor.lhs.false.99
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	jne	.LBB1_57
# BB#56:                                # %lor.lhs.false.101
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_58
.LBB1_57:                               # %if.then.104
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_58:                               # %if.end.105
	movq	-240(%rbp), %rax
	movl	52(%rax), %edi
	callq	gimp_display_shell_button_to_state
	movl	%eax, -244(%rbp)
	movl	-244(%rbp), %eax
	orl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-188(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB1_60
# BB#59:                                # %land.lhs.true.109
	movl	-188(%rbp), %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$0, %eax
	jne	.LBB1_64
.LBB1_60:                               # %lor.lhs.false.112
	movl	-188(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB1_62
# BB#61:                                # %land.lhs.true.115
	movl	-188(%rbp), %eax
	andl	$1280, %eax             # imm = 0x500
	cmpl	$0, %eax
	jne	.LBB1_64
.LBB1_62:                               # %lor.lhs.false.118
	movl	-188(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB1_65
# BB#63:                                # %land.lhs.true.121
	movl	-188(%rbp), %eax
	andl	$768, %eax              # imm = 0x300
	cmpl	$0, %eax
	je	.LBB1_65
.LBB1_64:                               # %if.then.124
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_65:                               # %if.end.125
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB1_67
# BB#66:                                # %if.then.128
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
.LBB1_67:                               # %if.end.129
	movl	$1, %esi
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	callq	gimp_display_shell_update_focus
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	movl	-244(%rbp), %eax
	xorl	$-1, %eax
	andl	%eax, %ecx
	callq	gimp_display_shell_update_cursor
	movq	-24(%rbp), %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB1_72
# BB#68:                                # %if.then.133
	leaq	-184(%rbp), %rsi
	leaq	-264(%rbp), %r8
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	tool_manager_get_popup_active
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	je	.LBB1_70
# BB#69:                                # %if.then.136
	movq	-256(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rsi, -608(%rbp)        # 8-byte Spill
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	-608(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -624(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	%rax, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	-624(%rbp), %r8         # 8-byte Reload
	movq	-624(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
	jmp	.LBB1_71
.LBB1_70:                               # %if.else.139
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -632(%rbp)        # 8-byte Spill
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-632(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	movq	-648(%rbp), %r8         # 8-byte Reload
	movq	-648(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
.LBB1_71:                               # %if.end.142
	jmp	.LBB1_87
.LBB1_72:                               # %if.else.143
	movq	-240(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB1_83
# BB#73:                                # %if.then.146
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_pointer_grab
	cmpl	$0, %eax
	jne	.LBB1_75
# BB#74:                                # %if.then.149
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_75:                               # %if.end.150
	movq	-32(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB1_80
# BB#76:                                # %land.lhs.true.152
	movq	-32(%rbp), %rax
	cmpl	$0, 728(%rax)
	jne	.LBB1_80
# BB#77:                                # %if.then.154
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_keyboard_grab
	cmpl	$0, %eax
	jne	.LBB1_79
# BB#78:                                # %if.then.157
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_pointer_ungrab
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_79:                               # %if.end.158
	jmp	.LBB1_80
.LBB1_80:                               # %if.end.159
	leaq	-184(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %edx
	callq	gimp_display_shell_initialize_tool
	cmpl	$0, %eax
	je	.LBB1_82
# BB#81:                                # %if.then.162
	leaq	-328(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movl	-192(%rbp), %esi
	callq	gimp_motion_buffer_begin_stroke
	leaq	-184(%rbp), %rax
	xorl	%r8d, %r8d
	movl	$64, %esi
	movl	%esi, %edx
	leaq	-328(%rbp), %rdi
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -304(%rbp)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -288(%rbp)
	movq	%rax, %rcx
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movl	%r8d, -668(%rbp)        # 4-byte Spill
	callq	memcpy
	movq	-56(%rbp), %rdi
	movl	-192(%rbp), %edx
	movl	-188(%rbp), %ecx
	movq	-40(%rbp), %r9
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movl	-668(%rbp), %r8d        # 4-byte Reload
	callq	tool_manager_button_press_active
.LBB1_82:                               # %if.end.169
	jmp	.LBB1_86
.LBB1_83:                               # %if.else.170
	movq	-240(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB1_85
# BB#84:                                # %if.then.173
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-240(%rbp), %rcx
	cvttsd2si	24(%rcx), %edx
	movq	-240(%rbp), %rcx
	cvttsd2si	32(%rcx), %ecx
	callq	gimp_display_shell_start_scrolling
.LBB1_85:                               # %if.end.177
	jmp	.LBB1_86
.LBB1_86:                               # %if.end.178
	jmp	.LBB1_87
.LBB1_87:                               # %if.end.179
	movl	$1, -200(%rbp)
	jmp	.LBB1_273
.LBB1_88:                               # %sw.bb.180
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_90
# BB#89:                                # %if.then.184
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_90:                               # %if.end.185
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -344(%rbp)
	movq	-336(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB1_95
# BB#91:                                # %land.lhs.true.190
	cmpq	$0, -344(%rbp)
	je	.LBB1_95
# BB#92:                                # %land.lhs.true.192
	movq	-344(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_95
# BB#93:                                # %land.lhs.true.195
	movq	-344(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_wants_double_click
	cmpl	$0, %eax
	je	.LBB1_95
# BB#94:                                # %if.then.199
	leaq	-184(%rbp), %rsi
	movl	$1, %r8d
	movq	-56(%rbp), %rdi
	movl	-192(%rbp), %edx
	movl	-188(%rbp), %ecx
	movq	-40(%rbp), %r9
	callq	tool_manager_button_press_active
.LBB1_95:                               # %if.end.200
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_96:                               # %sw.bb.201
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_98
# BB#97:                                # %if.then.206
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_98:                               # %if.end.207
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -360(%rbp)
	movq	-352(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB1_103
# BB#99:                                # %land.lhs.true.212
	cmpq	$0, -360(%rbp)
	je	.LBB1_103
# BB#100:                               # %land.lhs.true.214
	movq	-360(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_103
# BB#101:                               # %land.lhs.true.218
	movq	-360(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_wants_triple_click
	cmpl	$0, %eax
	je	.LBB1_103
# BB#102:                               # %if.then.222
	leaq	-184(%rbp), %rsi
	movl	$2, %r8d
	movq	-56(%rbp), %rdi
	movl	-192(%rbp), %edx
	movl	-188(%rbp), %ecx
	movq	-40(%rbp), %r9
	callq	tool_manager_button_press_active
.LBB1_103:                              # %if.end.223
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_104:                              # %sw.bb.224
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_autoscroll_stop
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_106
# BB#105:                               # %if.then.229
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_106:                              # %if.end.230
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -376(%rbp)
	movq	-368(%rbp), %rax
	movl	52(%rax), %edi
	callq	gimp_display_shell_key_to_state
	xorl	$-1, %eax
	andl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-368(%rbp), %rcx
	cmpl	$1, 52(%rcx)
	jne	.LBB1_125
# BB#107:                               # %if.then.239
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	je	.LBB1_109
# BB#108:                               # %lor.lhs.false.242
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	je	.LBB1_110
.LBB1_109:                              # %if.then.245
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_110:                              # %if.end.246
	movq	-32(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB1_113
# BB#111:                               # %land.lhs.true.249
	movq	-32(%rbp), %rax
	cmpl	$0, 728(%rax)
	jne	.LBB1_113
# BB#112:                               # %if.then.252
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_keyboard_ungrab
.LBB1_113:                              # %if.end.253
	cmpq	$0, -376(%rbp)
	je	.LBB1_119
# BB#114:                               # %land.lhs.true.255
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB1_116
# BB#115:                               # %lor.lhs.false.258
	movq	-376(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	je	.LBB1_119
.LBB1_116:                              # %if.then.262
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	callq	gimp_motion_buffer_end_stroke
	movq	-376(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_118
# BB#117:                               # %if.then.267
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-192(%rbp), %edx
	movl	-188(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_button_release_active
.LBB1_118:                              # %if.end.268
	jmp	.LBB1_119
.LBB1_119:                              # %if.end.269
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB1_121
# BB#120:                               # %if.then.272
	movl	$1, %esi
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	callq	gimp_display_shell_update_focus
	jmp	.LBB1_122
.LBB1_121:                              # %if.else.273
	xorl	%eax, %eax
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	gimp_display_shell_update_focus
.LBB1_122:                              # %if.end.274
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_pointer_ungrab
	movq	-32(%rbp), %rsi
	cmpl	$0, 728(%rsi)
	je	.LBB1_124
# BB#123:                               # %if.then.277
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_space_released
.LBB1_124:                              # %if.end.278
	jmp	.LBB1_139
.LBB1_125:                              # %if.else.279
	movq	-368(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB1_129
# BB#126:                               # %if.then.283
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	je	.LBB1_128
# BB#127:                               # %if.then.286
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_stop_scrolling
.LBB1_128:                              # %if.end.287
	jmp	.LBB1_138
.LBB1_129:                              # %if.else.288
	movq	-368(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB1_131
# BB#130:                               # %if.then.292
	jmp	.LBB1_137
.LBB1_131:                              # %if.else.293
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_controllers_get_mouse
	movq	%rax, -392(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	jne	.LBB1_136
# BB#132:                               # %lor.lhs.false.298
	movq	-32(%rbp), %rax
	cmpl	$0, 704(%rax)
	jne	.LBB1_136
# BB#133:                               # %land.lhs.true.301
	cmpq	$0, -392(%rbp)
	je	.LBB1_136
# BB#134:                               # %land.lhs.true.303
	movq	-392(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gimp_controller_mouse_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-384(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_controller_mouse_button
	cmpl	$0, %eax
	je	.LBB1_136
# BB#135:                               # %if.then.308
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_136:                              # %if.end.309
	jmp	.LBB1_137
.LBB1_137:                              # %if.end.310
	jmp	.LBB1_138
.LBB1_138:                              # %if.end.311
	jmp	.LBB1_139
.LBB1_139:                              # %if.end.312
	movl	$1, -200(%rbp)
	jmp	.LBB1_273
.LBB1_140:                              # %sw.bb.313
	movq	-24(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_controllers_get_wheel
	movq	%rax, -408(%rbp)
	cmpq	$0, -408(%rbp)
	je	.LBB1_142
# BB#141:                               # %lor.lhs.false.317
	movq	-408(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gimp_controller_wheel_get_type
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_controller_wheel_scroll
	cmpl	$0, %eax
	jne	.LBB1_170
.LBB1_142:                              # %if.then.322
	movq	-400(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -412(%rbp)
	movl	-188(%rbp), %ecx
	movl	%ecx, -692(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-692(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB1_148
# BB#143:                               # %if.then.327
	movl	-412(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -696(%rbp)        # 4-byte Spill
	je	.LBB1_144
	jmp	.LBB1_296
.LBB1_296:                              # %if.then.327
	movl	-696(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -700(%rbp)        # 4-byte Spill
	je	.LBB1_145
	jmp	.LBB1_146
.LBB1_144:                              # %sw.bb.328
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_display_shell_scale
	jmp	.LBB1_147
.LBB1_145:                              # %sw.bb.329
	movl	$1, %esi
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_scale
	jmp	.LBB1_147
.LBB1_146:                              # %sw.default
	jmp	.LBB1_147
.LBB1_147:                              # %sw.epilog
	jmp	.LBB1_169
.LBB1_148:                              # %if.else.330
	movq	$0, -424(%rbp)
	movl	-188(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_155
# BB#149:                               # %if.then.333
	movl	-412(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	movq	%rdx, -720(%rbp)        # 8-byte Spill
	ja	.LBB1_154
# BB#294:                               # %if.then.333
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	.LJTI1_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_150:                              # %sw.bb.334
	movl	$2, -412(%rbp)
	jmp	.LBB1_154
.LBB1_151:                              # %sw.bb.335
	movl	$3, -412(%rbp)
	jmp	.LBB1_154
.LBB1_152:                              # %sw.bb.336
	movl	$0, -412(%rbp)
	jmp	.LBB1_154
.LBB1_153:                              # %sw.bb.337
	movl	$1, -412(%rbp)
.LBB1_154:                              # %sw.epilog.338
	jmp	.LBB1_155
.LBB1_155:                              # %if.end.339
	movl	-412(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -724(%rbp)        # 4-byte Spill
	movl	%ecx, -728(%rbp)        # 4-byte Spill
	jb	.LBB1_157
	jmp	.LBB1_295
.LBB1_295:                              # %if.end.339
	movl	-724(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	ja	.LBB1_158
	jmp	.LBB1_156
.LBB1_156:                              # %sw.bb.340
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, -424(%rbp)
	jmp	.LBB1_158
.LBB1_157:                              # %sw.bb.341
	movq	-32(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -424(%rbp)
.LBB1_158:                              # %sw.epilog.342
	movq	-424(%rbp), %rdi
	callq	gtk_adjustment_get_value
	cmpl	$0, -412(%rbp)
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	je	.LBB1_160
# BB#159:                               # %lor.lhs.false.346
	cmpl	$2, -412(%rbp)
	jne	.LBB1_161
.LBB1_160:                              # %cond.true
	movq	-424(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	movd	%xmm0, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	movd	%rdi, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	jmp	.LBB1_162
.LBB1_161:                              # %cond.false
	movq	-424(%rbp), %rdi
	callq	gtk_adjustment_get_page_increment
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
.LBB1_162:                              # %cond.end
	movsd	-752(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-744(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -432(%rbp)
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-424(%rbp), %rdi
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_upper
	movq	-424(%rbp), %rdi
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-768(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-760(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_164
# BB#163:                               # %cond.true.357
	movq	-424(%rbp), %rdi
	callq	gtk_adjustment_get_upper
	movq	-424(%rbp), %rdi
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_page_size
	movsd	-776(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -784(%rbp)       # 8-byte Spill
	jmp	.LBB1_168
.LBB1_164:                              # %cond.false.361
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-424(%rbp), %rdi
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_lower
	movsd	-792(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_166
# BB#165:                               # %cond.true.365
	movq	-424(%rbp), %rdi
	callq	gtk_adjustment_get_lower
	movsd	%xmm0, -800(%rbp)       # 8-byte Spill
	jmp	.LBB1_167
.LBB1_166:                              # %cond.false.367
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -800(%rbp)       # 8-byte Spill
.LBB1_167:                              # %cond.end.368
	movsd	-800(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
.LBB1_168:                              # %cond.end.370
	movsd	-784(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -432(%rbp)
	movq	-424(%rbp), %rdi
	movsd	-432(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB1_169:                              # %if.end.372
	jmp	.LBB1_170
.LBB1_170:                              # %if.end.373
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	leaq	-204(%rbp), %rcx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_untransform_event_coords
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	304(%rcx), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
	movl	$1, -200(%rbp)
	jmp	.LBB1_273
.LBB1_171:                              # %sw.bb.375
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	$0, -448(%rbp)
	movl	$0, -452(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_173
# BB#172:                               # %if.then.379
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_173:                              # %if.end.380
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -464(%rbp)
	cmpq	$0, -464(%rbp)
	je	.LBB1_175
# BB#174:                               # %if.then.383
	movq	-464(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_motion_mode
	movl	%eax, -452(%rbp)
.LBB1_175:                              # %if.end.386
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	jne	.LBB1_177
# BB#176:                               # %lor.lhs.false.389
	cmpl	$1, -452(%rbp)
	jne	.LBB1_181
.LBB1_177:                              # %if.then.392
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_compress_motion
	movq	%rax, -448(%rbp)
	cmpq	$0, -448(%rbp)
	je	.LBB1_180
# BB#178:                               # %land.lhs.true.395
	movq	-32(%rbp), %rax
	cmpl	$0, 744(%rax)
	jne	.LBB1_180
# BB#179:                               # %if.then.398
	leaq	-120(%rbp), %rdx
	leaq	-188(%rbp), %rcx
	leaq	-192(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-448(%rbp), %rsi
	callq	gimp_display_shell_get_event_coords
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_untransform_event_coords
.LBB1_180:                              # %if.end.399
	jmp	.LBB1_181
.LBB1_181:                              # %if.end.400
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_proximity_in
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rdi
	cmpl	$0, 744(%rdi)
	je	.LBB1_189
# BB#182:                               # %if.then.403
	cmpq	$0, -448(%rbp)
	je	.LBB1_184
# BB#183:                               # %cond.true.406
	movq	-448(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
	jmp	.LBB1_185
.LBB1_184:                              # %cond.false.408
	movq	-440(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
.LBB1_185:                              # %cond.end.410
	movsd	-808(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -468(%rbp)
	cmpq	$0, -448(%rbp)
	je	.LBB1_187
# BB#186:                               # %cond.true.415
	movq	-448(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
	jmp	.LBB1_188
.LBB1_187:                              # %cond.false.417
	movq	-440(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
.LBB1_188:                              # %cond.end.419
	movsd	-816(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -472(%rbp)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	748(%rcx), %eax
	subl	-468(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	188(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	752(%rcx), %edx
	subl	-472(%rbp), %edx
	movq	-32(%rbp), %rcx
	subl	192(%rcx), %edx
	movl	%eax, %esi
	callq	gimp_display_shell_scroll
	jmp	.LBB1_216
.LBB1_189:                              # %if.else.426
	movl	-188(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB1_215
# BB#190:                               # %if.then.429
	cmpq	$0, -464(%rbp)
	je	.LBB1_214
# BB#191:                               # %land.lhs.true.431
	movq	-464(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_214
# BB#192:                               # %land.lhs.true.435
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB1_194
# BB#193:                               # %lor.lhs.false.438
	movq	-464(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	je	.LBB1_214
.LBB1_194:                              # %if.then.442
	xorps	%xmm0, %xmm0
	movq	-440(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	ja	.LBB1_198
# BB#195:                               # %lor.lhs.false.446
	xorps	%xmm0, %xmm0
	movq	-440(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	ja	.LBB1_198
# BB#196:                               # %lor.lhs.false.450
	movq	-440(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	296(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB1_198
# BB#197:                               # %lor.lhs.false.455
	movq	-440(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	300(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_200
.LBB1_198:                              # %land.lhs.true.460
	movq	-464(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_scroll_lock
	cmpl	$0, %eax
	jne	.LBB1_200
# BB#199:                               # %if.then.464
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %esi
	movq	-440(%rbp), %rdx
	callq	gimp_display_shell_autoscroll_start
.LBB1_200:                              # %if.end.465
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	callq	gimp_motion_buffer_get_last_motion_time
	movl	%eax, -488(%rbp)
	cmpl	$0, -452(%rbp)
	jne	.LBB1_210
# BB#201:                               # %land.lhs.true.470
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$0, 564(%rax)
	je	.LBB1_210
# BB#202:                               # %land.lhs.true.473
	leaq	-480(%rbp), %r8
	leaq	-484(%rbp), %r9
	movq	-440(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-440(%rbp), %rax
	movq	8(%rax), %rsi
	movl	-488(%rbp), %ecx
	addl	$1, %ecx
	movq	-440(%rbp), %rax
	movl	20(%rax), %edx
	subl	$1, %edx
	movl	%edx, -820(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-820(%rbp), %ecx        # 4-byte Reload
	callq	gdk_device_get_history
	cmpl	$0, %eax
	je	.LBB1_210
# BB#203:                               # %if.then.479
	movq	-440(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_device_info_get_by_device
	movq	%rax, -496(%rbp)
	movl	$0, -500(%rbp)
.LBB1_204:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-500(%rbp), %eax
	cmpl	-484(%rbp), %eax
	jge	.LBB1_209
# BB#205:                               # %for.body
                                        #   in Loop: Header=BB1_204 Depth=1
	leaq	-120(%rbp), %rdx
	movq	-496(%rbp), %rdi
	movslq	-500(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_device_info_get_time_coords
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_untransform_event_coords
	leaq	-184(%rbp), %rsi
	movl	$1, %ecx
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movslq	-500(%rbp), %rax
	movq	-480(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	208(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_motion_buffer_motion_event
	cmpl	$0, %eax
	je	.LBB1_207
# BB#206:                               # %if.then.491
                                        #   in Loop: Header=BB1_204 Depth=1
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movl	-188(%rbp), %esi
	movslq	-500(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	(%rax), %edx
	callq	gimp_motion_buffer_request_stroke
.LBB1_207:                              # %if.end.496
                                        #   in Loop: Header=BB1_204 Depth=1
	jmp	.LBB1_208
.LBB1_208:                              # %for.inc
                                        #   in Loop: Header=BB1_204 Depth=1
	movl	-500(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -500(%rbp)
	jmp	.LBB1_204
.LBB1_209:                              # %for.end
	movq	-480(%rbp), %rdi
	movl	-484(%rbp), %esi
	callq	gdk_device_free_history
	jmp	.LBB1_213
.LBB1_210:                              # %if.else.497
	leaq	-184(%rbp), %rsi
	cmpl	$0, -452(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -504(%rbp)
	movq	-32(%rbp), %rdx
	movq	808(%rdx), %rdi
	movl	-192(%rbp), %edx
	movq	-32(%rbp), %r8
	movsd	200(%r8), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %r8
	movsd	208(%r8), %xmm1         # xmm1 = mem[0],zero
	movl	-504(%rbp), %ecx
	callq	gimp_motion_buffer_motion_event
	cmpl	$0, %eax
	je	.LBB1_212
# BB#211:                               # %if.then.505
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movl	-188(%rbp), %esi
	movl	-192(%rbp), %edx
	callq	gimp_motion_buffer_request_stroke
.LBB1_212:                              # %if.end.507
	jmp	.LBB1_213
.LBB1_213:                              # %if.end.508
	jmp	.LBB1_214
.LBB1_214:                              # %if.end.509
	jmp	.LBB1_215
.LBB1_215:                              # %if.end.510
	jmp	.LBB1_216
.LBB1_216:                              # %if.end.511
	movl	-188(%rbp), %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$0, %eax
	jne	.LBB1_220
# BB#217:                               # %if.then.514
	leaq	-184(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movl	-192(%rbp), %edx
	movq	-32(%rbp), %rax
	movsd	200(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	208(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_motion_buffer_motion_event
	cmpl	$0, %eax
	je	.LBB1_219
# BB#218:                               # %if.then.520
	movq	-32(%rbp), %rax
	movq	808(%rax), %rdi
	movl	-188(%rbp), %esi
	movq	-32(%rbp), %rax
	movl	304(%rax), %edx
	callq	gimp_motion_buffer_request_hover
.LBB1_219:                              # %if.end.523
	jmp	.LBB1_220
.LBB1_220:                              # %if.end.524
	cmpq	$0, -448(%rbp)
	je	.LBB1_222
# BB#221:                               # %if.then.526
	movq	-448(%rbp), %rdi
	callq	gdk_event_free
.LBB1_222:                              # %if.end.527
	movl	$1, -200(%rbp)
	jmp	.LBB1_273
.LBB1_223:                              # %sw.bb.528
	movq	-24(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -520(%rbp)
	movl	-188(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB1_231
# BB#224:                               # %if.then.533
	movq	-512(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	addl	$-65505, %edx           # imm = 0xFFFFFFFFFFFF001F
	subl	$4, %edx
	movl	%ecx, -824(%rbp)        # 4-byte Spill
	movl	%edx, -828(%rbp)        # 4-byte Spill
	jb	.LBB1_225
	jmp	.LBB1_293
.LBB1_293:                              # %if.then.533
	movl	-824(%rbp), %eax        # 4-byte Reload
	addl	$-65511, %eax           # imm = 0xFFFFFFFFFFFF0019
	subl	$3, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	ja	.LBB1_230
	jmp	.LBB1_225
.LBB1_225:                              # %sw.bb.534
	movq	-512(%rbp), %rax
	movl	28(%rax), %edi
	callq	gimp_display_shell_key_to_state
	movl	%eax, -524(%rbp)
	movl	-524(%rbp), %eax
	orl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	cmpq	$0, -520(%rbp)
	je	.LBB1_229
# BB#226:                               # %land.lhs.true.539
	movq	-520(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_229
# BB#227:                               # %land.lhs.true.543
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB1_229
# BB#228:                               # %if.then.546
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	tool_manager_active_modifier_state_active
.LBB1_229:                              # %if.end.547
	jmp	.LBB1_230
.LBB1_230:                              # %sw.epilog.548
	jmp	.LBB1_252
.LBB1_231:                              # %if.else.549
	movl	$0, -528(%rbp)
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	tool_manager_focus_display_active
	movq	-520(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	gimp_tool_control_get_wants_all_key_events
	cmpl	$0, %eax
	je	.LBB1_235
# BB#232:                               # %if.then.553
	movq	-56(%rbp), %rdi
	movq	-512(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	tool_manager_key_press_active
	cmpl	$0, %eax
	je	.LBB1_234
# BB#233:                               # %if.then.556
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_234:                              # %if.end.557
	jmp	.LBB1_235
.LBB1_235:                              # %if.end.558
	movq	-512(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$32, %edx
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	movl	%edx, -840(%rbp)        # 4-byte Spill
	je	.LBB1_246
	jmp	.LBB1_282
.LBB1_282:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65056, %eax            # imm = 0xFE20
	movl	%eax, -844(%rbp)        # 4-byte Spill
	je	.LBB1_247
	jmp	.LBB1_283
.LBB1_283:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65076, %eax            # imm = 0xFE34
	movl	%eax, -848(%rbp)        # 4-byte Spill
	je	.LBB1_237
	jmp	.LBB1_284
.LBB1_284:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -852(%rbp)        # 4-byte Spill
	je	.LBB1_237
	jmp	.LBB1_285
.LBB1_285:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65289, %eax            # imm = 0xFF09
	movl	%eax, -856(%rbp)        # 4-byte Spill
	je	.LBB1_247
	jmp	.LBB1_286
.LBB1_286:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -860(%rbp)        # 4-byte Spill
	je	.LBB1_237
	jmp	.LBB1_287
.LBB1_287:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65307, %eax            # imm = 0xFF1B
	movl	%eax, -864(%rbp)        # 4-byte Spill
	je	.LBB1_237
	jmp	.LBB1_288
.LBB1_288:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	addl	$-65361, %eax           # imm = 0xFFFFFFFFFFFF00AF
	subl	$4, %eax
	movl	%eax, -868(%rbp)        # 4-byte Spill
	jb	.LBB1_236
	jmp	.LBB1_289
.LBB1_289:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65408, %eax            # imm = 0xFF80
	movl	%eax, -872(%rbp)        # 4-byte Spill
	je	.LBB1_246
	jmp	.LBB1_290
.LBB1_290:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	subl	$65421, %eax            # imm = 0xFF8D
	movl	%eax, -876(%rbp)        # 4-byte Spill
	je	.LBB1_237
	jmp	.LBB1_291
.LBB1_291:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	addl	$-65505, %eax           # imm = 0xFFFFFFFFFFFF001F
	subl	$4, %eax
	movl	%eax, -880(%rbp)        # 4-byte Spill
	jb	.LBB1_248
	jmp	.LBB1_292
.LBB1_292:                              # %if.end.558
	movl	-836(%rbp), %eax        # 4-byte Reload
	addl	$-65511, %eax           # imm = 0xFFFFFFFFFFFF0019
	subl	$4, %eax
	movl	%eax, -884(%rbp)        # 4-byte Spill
	jb	.LBB1_248
	jmp	.LBB1_251
.LBB1_236:                              # %sw.bb.560
	movl	$1, -528(%rbp)
.LBB1_237:                              # %sw.bb.561
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB1_239
# BB#238:                               # %if.then.564
	movq	-56(%rbp), %rdi
	movq	-512(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	tool_manager_key_press_active
	movl	%eax, -200(%rbp)
.LBB1_239:                              # %if.end.566
	cmpl	$0, -200(%rbp)
	jne	.LBB1_243
# BB#240:                               # %if.then.568
	movq	-56(%rbp), %rdi
	callq	gimp_controllers_get_keyboard
	movq	%rax, -536(%rbp)
	cmpq	$0, -536(%rbp)
	je	.LBB1_242
# BB#241:                               # %if.then.571
	movq	-536(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gimp_controller_keyboard_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-512(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_controller_keyboard_key_press
	movl	%eax, -200(%rbp)
.LBB1_242:                              # %if.end.575
	jmp	.LBB1_243
.LBB1_243:                              # %if.end.576
	cmpl	$0, -200(%rbp)
	jne	.LBB1_245
# BB#244:                               # %if.then.578
	movl	-528(%rbp), %eax
	movl	%eax, -200(%rbp)
.LBB1_245:                              # %if.end.579
	jmp	.LBB1_251
.LBB1_246:                              # %sw.bb.580
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_space_pressed
	movl	$1, -200(%rbp)
	jmp	.LBB1_251
.LBB1_247:                              # %sw.bb.581
	movq	-32(%rbp), %rdi
	movq	-512(%rbp), %rsi
	callq	gimp_display_shell_tab_pressed
	movl	$1, -200(%rbp)
	movl	%eax, -900(%rbp)        # 4-byte Spill
	jmp	.LBB1_251
.LBB1_248:                              # %sw.bb.583
	movq	-512(%rbp), %rax
	movl	28(%rax), %edi
	callq	gimp_display_shell_key_to_state
	movl	%eax, -540(%rbp)
	movl	-540(%rbp), %eax
	orl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB1_250
# BB#249:                               # %if.then.590
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	tool_manager_modifier_state_active
.LBB1_250:                              # %if.end.591
	jmp	.LBB1_251
.LBB1_251:                              # %sw.epilog.592
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
.LBB1_252:                              # %if.end.594
	jmp	.LBB1_273
.LBB1_253:                              # %sw.bb.595
	movq	-24(%rbp), %rax
	movq	%rax, -552(%rbp)
	movq	-56(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -560(%rbp)
	movl	-188(%rbp), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB1_261
# BB#254:                               # %if.then.601
	movq	-552(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	addl	$-65505, %edx           # imm = 0xFFFFFFFFFFFF001F
	subl	$4, %edx
	movl	%ecx, -904(%rbp)        # 4-byte Spill
	movl	%edx, -908(%rbp)        # 4-byte Spill
	jb	.LBB1_255
	jmp	.LBB1_281
.LBB1_281:                              # %if.then.601
	movl	-904(%rbp), %eax        # 4-byte Reload
	addl	$-65511, %eax           # imm = 0xFFFFFFFFFFFF0019
	subl	$3, %eax
	movl	%eax, -912(%rbp)        # 4-byte Spill
	ja	.LBB1_260
	jmp	.LBB1_255
.LBB1_255:                              # %sw.bb.603
	movq	-552(%rbp), %rax
	movl	28(%rax), %edi
	callq	gimp_display_shell_key_to_state
	movl	%eax, -564(%rbp)
	movl	-564(%rbp), %eax
	xorl	$-1, %eax
	andl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	cmpq	$0, -560(%rbp)
	je	.LBB1_259
# BB#256:                               # %land.lhs.true.610
	movq	-560(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB1_259
# BB#257:                               # %land.lhs.true.614
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB1_259
# BB#258:                               # %if.then.617
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	tool_manager_active_modifier_state_active
.LBB1_259:                              # %if.end.618
	jmp	.LBB1_260
.LBB1_260:                              # %sw.epilog.619
	jmp	.LBB1_271
.LBB1_261:                              # %if.else.620
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	tool_manager_focus_display_active
	movq	-560(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	gimp_tool_control_get_wants_all_key_events
	cmpl	$0, %eax
	je	.LBB1_265
# BB#262:                               # %if.then.624
	movq	-56(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	tool_manager_key_release_active
	cmpl	$0, %eax
	je	.LBB1_264
# BB#263:                               # %if.then.627
	movl	$1, -4(%rbp)
	jmp	.LBB1_276
.LBB1_264:                              # %if.end.628
	jmp	.LBB1_265
.LBB1_265:                              # %if.end.629
	movq	-552(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$32, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	%edx, -920(%rbp)        # 4-byte Spill
	je	.LBB1_266
	jmp	.LBB1_278
.LBB1_278:                              # %if.end.629
	movl	-916(%rbp), %eax        # 4-byte Reload
	subl	$65408, %eax            # imm = 0xFF80
	movl	%eax, -924(%rbp)        # 4-byte Spill
	je	.LBB1_266
	jmp	.LBB1_279
.LBB1_279:                              # %if.end.629
	movl	-916(%rbp), %eax        # 4-byte Reload
	addl	$-65505, %eax           # imm = 0xFFFFFFFFFFFF001F
	subl	$4, %eax
	movl	%eax, -928(%rbp)        # 4-byte Spill
	jb	.LBB1_267
	jmp	.LBB1_280
.LBB1_280:                              # %if.end.629
	movl	-916(%rbp), %eax        # 4-byte Reload
	addl	$-65511, %eax           # imm = 0xFFFFFFFFFFFF0019
	subl	$4, %eax
	movl	%eax, -932(%rbp)        # 4-byte Spill
	jb	.LBB1_267
	jmp	.LBB1_270
.LBB1_266:                              # %sw.bb.631
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_shell_space_released
	movl	$1, -200(%rbp)
	jmp	.LBB1_270
.LBB1_267:                              # %sw.bb.632
	movq	-552(%rbp), %rax
	movl	28(%rax), %edi
	callq	gimp_display_shell_key_to_state
	movl	%eax, -568(%rbp)
	movl	-568(%rbp), %eax
	xorl	$-1, %eax
	andl	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB1_269
# BB#268:                               # %if.then.640
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	tool_manager_modifier_state_active
.LBB1_269:                              # %if.end.641
	jmp	.LBB1_270
.LBB1_270:                              # %sw.epilog.642
	leaq	-184(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	-188(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
.LBB1_271:                              # %if.end.644
	jmp	.LBB1_273
.LBB1_272:                              # %sw.default.645
	jmp	.LBB1_273
.LBB1_273:                              # %sw.epilog.646
	movq	-56(%rbp), %rax
	cmpl	$0, 308(%rax)
	je	.LBB1_275
# BB#274:                               # %if.then.649
	movl	-200(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_276
.LBB1_275:                              # %if.end.650
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-188(%rbp), %ecx
	movl	-204(%rbp), %r8d
	callq	gimp_display_shell_update_cursor
	movl	-200(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB1_276:                              # %return
	movl	-4(%rbp), %eax
	addq	$944, %rsp              # imm = 0x3B0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_canvas_tool_events, .Lfunc_end1-gimp_display_shell_canvas_tool_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_171
	.quad	.LBB1_54
	.quad	.LBB1_88
	.quad	.LBB1_96
	.quad	.LBB1_104
	.quad	.LBB1_223
	.quad	.LBB1_253
	.quad	.LBB1_26
	.quad	.LBB1_33
	.quad	.LBB1_42
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_40
	.quad	.LBB1_41
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_272
	.quad	.LBB1_140
.LJTI1_1:
	.quad	.LBB1_150
	.quad	.LBB1_151
	.quad	.LBB1_152
	.quad	.LBB1_153

	.text
	.align	16, 0x90
	.type	gimp_display_shell_canvas_no_image_events,@function
gimp_display_shell_canvas_no_image_events: # @gimp_display_shell_canvas_no_image_events
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$4, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_11
.LBB2_11:                               # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB2_4
	jmp	.LBB2_8
.LBB2_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
	movl	$1, -4(%rbp)
	jmp	.LBB2_10
.LBB2_3:                                # %if.end
	jmp	.LBB2_9
.LBB2_4:                                # %sw.bb.3
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$65289, 28(%rax)        # imm = 0xFF09
	je	.LBB2_6
# BB#5:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpl	$65056, 28(%rax)        # imm = 0xFE20
	jne	.LBB2_7
.LBB2_6:                                # %if.then.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_display_shell_tab_pressed
	movl	%eax, -4(%rbp)
	jmp	.LBB2_10
.LBB2_7:                                # %if.end.8
	jmp	.LBB2_9
.LBB2_8:                                # %sw.default
	jmp	.LBB2_9
.LBB2_9:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB2_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_canvas_no_image_events, .Lfunc_end2-gimp_display_shell_canvas_no_image_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_check_device_cursor,@function
gimp_display_shell_check_device_cursor: # @gimp_display_shell_check_device_cursor
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_device_info_has_cursor
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 600(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_check_device_cursor, .Lfunc_end3-gimp_display_shell_check_device_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_get_event_coords,@function
gimp_display_shell_get_event_coords:    # @gimp_display_shell_get_event_coords
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_device_info_get_event_coords
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_device_info_get_event_state
	movq	-16(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gdk_event_get_time
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_get_event_coords, .Lfunc_end4-gimp_display_shell_get_event_coords
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_untransform_event_coords,@function
gimp_display_shell_untransform_event_coords: # @gimp_display_shell_untransform_event_coords
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
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_display_shell_untransform_coords
	movq	-40(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_7
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_snap_to
	cmpl	$0, %eax
	je	.LBB5_7
# BB#2:                                 # %if.then
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_snap_offsets
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	callq	gimp_display_shell_snap_coords
	cmpl	$0, %eax
	je	.LBB5_6
# BB#3:                                 # %if.then.7
	cmpq	$0, -32(%rbp)
	je	.LBB5_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.10
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_untransform_event_coords, .Lfunc_end5-gimp_display_shell_untransform_event_coords
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_update_focus,@function
gimp_display_shell_update_focus:        # @gimp_display_shell_update_focus
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rsi
	callq	tool_manager_focus_display_active
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdx
	callq	tool_manager_modifier_state_active
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	tool_manager_focus_display_active
.LBB6_3:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB6_5
# BB#4:                                 # %if.then.4
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	304(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	128(%rax), %r8
	callq	tool_manager_oper_update_active
.LBB6_5:                                # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_update_focus, .Lfunc_end6-gimp_display_shell_update_focus
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_proximity_in,@function
gimp_display_shell_proximity_in:        # @gimp_display_shell_proximity_in
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
	movq	-8(%rbp), %rdi
	cmpl	$0, 304(%rdi)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$1, 304(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_check_device_cursor
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_proximity_in, .Lfunc_end7-gimp_display_shell_proximity_in
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_proximity_out,@function
gimp_display_shell_proximity_out:       # @gimp_display_shell_proximity_out
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
	cmpl	$0, 304(%rdi)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 304(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_clear_software_cursor
.LBB8_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_proximity_out, .Lfunc_end8-gimp_display_shell_proximity_out
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB9_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB9_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_button_to_state,@function
gimp_display_shell_button_to_state:     # @gimp_display_shell_button_to_state
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
	movl	%edi, -8(%rbp)
	cmpl	$1, -8(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB10_9
.LBB10_2:                               # %if.else
	cmpl	$2, -8(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.2
	movl	$512, -4(%rbp)          # imm = 0x200
	jmp	.LBB10_9
.LBB10_4:                               # %if.else.3
	cmpl	$3, -8(%rbp)
	jne	.LBB10_6
# BB#5:                                 # %if.then.5
	movl	$1024, -4(%rbp)         # imm = 0x400
	jmp	.LBB10_9
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.6
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.7
	movl	$0, -4(%rbp)
.LBB10_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_button_to_state, .Lfunc_end10-gimp_display_shell_button_to_state
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_update_cursor,@function
gimp_display_shell_update_cursor:       # @gimp_display_shell_update_cursor
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	cmpl	$0, 464(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_17
.LBB11_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_12
# BB#3:                                 # %if.then.6
	movq	-56(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB11_5
# BB#4:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	je	.LBB11_7
.LBB11_5:                               # %land.lhs.true
	movl	-28(%rbp), %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$0, %eax
	jne	.LBB11_7
# BB#6:                                 # %if.then.12
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	tool_manager_cursor_update_active
	jmp	.LBB11_11
.LBB11_7:                               # %if.else
	movq	-56(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB11_10
# BB#8:                                 # %land.lhs.true.15
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	jne	.LBB11_10
# BB#9:                                 # %if.then.19
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_tool_control_get_tool_cursor
	movl	$1025, %esi             # imm = 0x401
	movl	$1, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_display_shell_set_cursor
.LBB11_10:                              # %if.end.22
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.23
	jmp	.LBB11_13
.LBB11_12:                              # %if.else.24
	movl	$1025, %esi             # imm = 0x401
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_set_cursor
.LBB11_13:                              # %if.end.25
	cmpl	$0, -32(%rbp)
	je	.LBB11_17
# BB#14:                                # %if.then.27
	movl	$0, -68(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_16
# BB#15:                                # %if.then.29
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_precision
	movl	%eax, -68(%rbp)
.LBB11_16:                              # %if.end.32
	movq	-8(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-16(%rbp), %rax
	cvttsd2si	(%rax), %edx
	movq	-16(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	gimp_display_shell_update_software_cursor
.LBB11_17:                              # %if.end.36
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_update_cursor, .Lfunc_end11-gimp_display_shell_update_cursor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_initialize_tool,@function
gimp_display_shell_initialize_tool:     # @gimp_display_shell_initialize_tool
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB12_11
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	je	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_handle_empty_image
	cmpl	$0, %eax
	je	.LBB12_11
.LBB12_3:                               # %if.then
	movl	$1, -52(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	.LBB12_5
# BB#4:                                 # %if.then.9
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	tool_manager_initialize_active
	movl	%eax, -52(%rbp)
	jmp	.LBB12_10
.LBB12_5:                               # %if.else
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_get_active_drawable
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB12_9
# BB#6:                                 # %land.lhs.true.13
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_preserve
	cmpl	$0, %eax
	jne	.LBB12_9
# BB#7:                                 # %land.lhs.true.17
	movq	-64(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_get_dirty_mask
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB12_9
# BB#8:                                 # %if.then.21
	movq	-48(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_tool_changed
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	gimp_display_shell_update_focus
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	tool_manager_initialize_active
	movl	%eax, -52(%rbp)
.LBB12_9:                               # %if.end
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.24
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.25
	movl	-52(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_initialize_tool, .Lfunc_end12-gimp_display_shell_initialize_tool
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_start_scrolling,@function
gimp_display_shell_start_scrolling:     # @gimp_display_shell_start_scrolling
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$0, 744(%rax)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_start_scrolling, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_6
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movl	$4, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_pointer_grab
	movl	$52, %esi
	movq	-8(%rbp), %rdi
	movl	$1, 744(%rdi)
	movl	-20(%rbp), %edx
	movq	-8(%rbp), %rdi
	addl	188(%rdi), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, 748(%rdi)
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rdi
	addl	192(%rdi), %edx
	movq	-8(%rbp), %rdi
	movl	%edx, 752(%rdi)
	movq	-8(%rbp), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_set_override_cursor
.LBB13_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_start_scrolling, .Lfunc_end13-gimp_display_shell_start_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_key_to_state,@function
gimp_display_shell_key_to_state:        # @gimp_display_shell_key_to_state
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	addl	$-65505, %eax           # imm = 0xFFFFFFFFFFFF001F
	subl	$2, %eax
	movl	%edi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jb	.LBB14_2
	jmp	.LBB14_6
.LBB14_6:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-65507, %eax           # imm = 0xFFFFFFFFFFFF001D
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jb	.LBB14_3
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	addl	$-65513, %eax           # imm = 0xFFFFFFFFFFFF0017
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	ja	.LBB14_4
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	movl	$8, -4(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %sw.bb.1
	movl	$1, -4(%rbp)
	jmp	.LBB14_5
.LBB14_3:                               # %sw.bb.2
	movl	$4, -4(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %sw.default
	movl	$0, -4(%rbp)
.LBB14_5:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_key_to_state, .Lfunc_end14-gimp_display_shell_key_to_state
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_space_released,@function
gimp_display_shell_space_released:      # @gimp_display_shell_space_released
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 724(%rax)
	jne	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 728(%rax)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_13
.LBB15_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	556(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	je	.LBB15_4
	jmp	.LBB15_14
.LBB15_14:                              # %if.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB15_5
	jmp	.LBB15_15
.LBB15_15:                              # %if.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB15_6
	jmp	.LBB15_12
.LBB15_4:                               # %sw.bb
	jmp	.LBB15_12
.LBB15_5:                               # %sw.bb.3
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_stop_scrolling
	jmp	.LBB15_12
.LBB15_6:                               # %sw.bb.4
	movq	-8(%rbp), %rax
	cmpq	$0, 736(%rax)
	je	.LBB15_11
# BB#7:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	callq	gimp_get_user_context
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	736(%rcx), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_get_tool_info
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
	movq	-8(%rbp), %rax
	movq	$0, 736(%rax)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	je	.LBB15_9
# BB#8:                                 # %if.then.13
	leaq	-36(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gdk_event_get_state
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_display_shell_update_focus
	jmp	.LBB15_10
.LBB15_9:                               # %if.else
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	gimp_display_shell_update_focus
.LBB15_10:                              # %if.end.15
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.16
	jmp	.LBB15_12
.LBB15_12:                              # %sw.epilog
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_keyboard_ungrab
	movq	-8(%rbp), %rsi
	movl	$0, 724(%rsi)
	movq	-8(%rbp), %rsi
	movl	$0, 728(%rsi)
.LBB15_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_shell_space_released, .Lfunc_end15-gimp_display_shell_space_released
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_stop_scrolling,@function
gimp_display_shell_stop_scrolling:      # @gimp_display_shell_stop_scrolling
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$0, 744(%rax)
	je	.LBB16_3
# BB#2:                                 # %if.then
	jmp	.LBB16_4
.LBB16_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_stop_scrolling, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_6
.LBB16_4:                               # %if.end
	jmp	.LBB16_5
.LBB16_5:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_unset_override_cursor
	movq	-8(%rbp), %rdi
	movl	$0, 744(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 748(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 752(%rdi)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_pointer_ungrab
.LBB16_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_shell_stop_scrolling, .Lfunc_end16-gimp_display_shell_stop_scrolling
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_compress_motion,@function
gimp_display_shell_compress_motion:     # @gimp_display_shell_compress_motion
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gdk_events_pending
	cmpl	$0, %eax
	je	.LBB17_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	callq	gdk_event_get
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_20
.LBB17_4:                               # %if.else
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_get_event_widget
	movq	-8(%rbp), %rdi
	cmpq	328(%rdi), %rax
	jne	.LBB17_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$3, (%rax)
	jne	.LBB17_9
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB17_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	gdk_event_free
.LBB17_8:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_19
.LBB17_9:                               # %if.else.8
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	gtk_get_event_widget
	movq	-8(%rbp), %rdi
	cmpq	328(%rdi), %rax
	jne	.LBB17_17
# BB#10:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$7, (%rax)
	jne	.LBB17_17
# BB#11:                                # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
.LBB17_12:                              # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	callq	gdk_events_pending
	cmpl	$0, %eax
	je	.LBB17_16
# BB#13:                                # %while.body.21
                                        #   in Loop: Header=BB17_12 Depth=1
	callq	gdk_event_get
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB17_15
# BB#14:                                # %if.then.24
                                        #   in Loop: Header=BB17_12 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
.LBB17_15:                              # %if.end.26
                                        #   in Loop: Header=BB17_12 Depth=1
	jmp	.LBB17_12
.LBB17_16:                              # %while.end
	jmp	.LBB17_21
.LBB17_17:                              # %if.else.27
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
# BB#18:                                # %if.end.29
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %if.end.30
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.31
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_1
.LBB17_21:                              # %while.end.32
	movq	-16(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB17_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_28
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB17_22 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gdk_event_put
	movq	-48(%rbp), %rdi
	callq	gdk_event_free
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB17_22 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB17_22 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB17_27
.LBB17_26:                              # %cond.false
                                        #   in Loop: Header=BB17_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB17_27
.LBB17_27:                              # %cond.end
                                        #   in Loop: Header=BB17_22 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB17_22
.LBB17_28:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_shell_compress_motion, .Lfunc_end17-gimp_display_shell_compress_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_space_pressed,@function
gimp_display_shell_space_pressed:       # @gimp_display_shell_space_pressed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 724(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_19
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_shell_keyboard_grab
	cmpl	$0, %eax
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_19
.LBB18_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	40(%rax), %rax
	movl	556(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	je	.LBB18_5
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.4
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB18_6
	jmp	.LBB18_21
.LBB18_21:                              # %if.end.4
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB18_7
	jmp	.LBB18_18
.LBB18_5:                               # %sw.bb
	jmp	.LBB18_18
.LBB18_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_device_manager_get_current_device
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	leaq	-104(%rbp), %rdx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_device_info_get_device_coords
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	cvttsd2si	-104(%rbp), %edx
	cvttsd2si	-96(%rbp), %ecx
	callq	gimp_display_shell_start_scrolling
	jmp	.LBB18_18
.LBB18_7:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB18_16
# BB#8:                                 # %lor.lhs.false
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_move_tool_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB18_10
# BB#9:                                 # %if.then.16
	movl	$0, -132(%rbp)
	jmp	.LBB18_15
.LBB18_10:                              # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_13
# BB#11:                                # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB18_13
# BB#12:                                # %if.then.20
	movl	$1, -132(%rbp)
	jmp	.LBB18_14
.LBB18_13:                              # %if.else.21
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB18_14:                              # %if.end.23
	jmp	.LBB18_15
.LBB18_15:                              # %if.end.24
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	jne	.LBB18_17
.LBB18_16:                              # %if.then.26
	movq	-112(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-8(%rbp), %rdi
	movq	%rax, 736(%rdi)
	movq	-24(%rbp), %rdi
	callq	gimp_get_user_context
	movabsq	$.L.str.7, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_get_tool_info
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_tool
	leaq	-140(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gdk_event_get_state
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi
	movl	-140(%rbp), %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_display_shell_update_focus
.LBB18_17:                              # %if.end.32
	jmp	.LBB18_18
.LBB18_18:                              # %sw.epilog
	movq	-8(%rbp), %rax
	movl	$1, 724(%rax)
.LBB18_19:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_shell_space_pressed, .Lfunc_end18-gimp_display_shell_space_pressed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_tab_pressed,@function
gimp_display_shell_tab_pressed:         # @gimp_display_shell_tab_pressed
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	je	.LBB19_8
# BB#1:                                 # %if.then
	cmpq	$0, -48(%rbp)
	je	.LBB19_7
# BB#2:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gimp_image_is_empty
	cmpl	$0, %eax
	jne	.LBB19_7
# BB#3:                                 # %if.then.6
	movq	-24(%rbp), %rax
	cmpl	$65289, 28(%rax)        # imm = 0xFF09
	jne	.LBB19_5
# BB#4:                                 # %if.then.7
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	callq	gimp_display_shell_layer_select_init
	jmp	.LBB19_6
.LBB19_5:                               # %if.else
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	callq	gimp_display_shell_layer_select_init
.LBB19_6:                               # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB19_18
.LBB19_7:                               # %if.end.9
	jmp	.LBB19_17
.LBB19_8:                               # %if.else.10
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB19_15
# BB#9:                                 # %if.then.14
	cmpq	$0, -48(%rbp)
	je	.LBB19_14
# BB#10:                                # %if.then.16
	movq	-24(%rbp), %rax
	cmpl	$65289, 28(%rax)        # imm = 0xFF09
	jne	.LBB19_12
# BB#11:                                # %if.then.19
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB19_13
.LBB19_12:                              # %if.else.21
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.12, %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB19_13:                              # %if.end.23
	movl	$1, -4(%rbp)
	jmp	.LBB19_18
.LBB19_14:                              # %if.end.24
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.25
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.13, %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_ui_manager_activate_action
	movl	$1, -4(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB19_18
.LBB19_16:                              # %if.end.27
	jmp	.LBB19_17
.LBB19_17:                              # %if.end.28
	movl	$0, -4(%rbp)
.LBB19_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_shell_tab_pressed, .Lfunc_end19-gimp_display_shell_tab_pressed
	.cfi_endproc

	.globl	gimp_display_shell_buffer_stroke
	.align	16, 0x90
	.type	gimp_display_shell_buffer_stroke,@function
gimp_display_shell_buffer_stroke:       # @gimp_display_shell_buffer_stroke
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB20_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	je	.LBB20_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_motion_active
.LBB20_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_shell_buffer_stroke, .Lfunc_end20-gimp_display_shell_buffer_stroke
	.cfi_endproc

	.globl	gimp_display_shell_buffer_hover
	.align	16, 0x90
	.type	gimp_display_shell_buffer_hover,@function
gimp_display_shell_buffer_hover:        # @gimp_display_shell_buffer_hover
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_gimp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	tool_manager_get_active
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_tool_control_is_active
	cmpl	$0, %eax
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	tool_manager_oper_update_active
.LBB21_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_shell_buffer_hover, .Lfunc_end21-gimp_display_shell_buffer_hover
	.cfi_endproc

	.globl	gimp_display_shell_hruler_button_press
	.align	16, 0x90
	.type	gimp_display_shell_hruler_button_press,@function
gimp_display_shell_hruler_button_press: # @gimp_display_shell_hruler_button_press
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
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_display_shell_ruler_button_press
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_shell_hruler_button_press, .Lfunc_end22-gimp_display_shell_hruler_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_ruler_button_press,@function
gimp_display_shell_ruler_button_press:  # @gimp_display_shell_ruler_button_press
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	cmpl	$0, 308(%rdx)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB23_59
.LBB23_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB23_4
# BB#3:                                 # %if.then.3
	movl	$1, -4(%rbp)
	jmp	.LBB23_59
.LBB23_4:                               # %if.end.4
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB23_58
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB23_58
# BB#6:                                 # %if.then.6
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-172(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB23_32
# BB#7:                                 # %land.lhs.true.11
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_color_tool_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB23_9
# BB#8:                                 # %if.then.14
	movl	$0, -84(%rbp)
	jmp	.LBB23_14
.LBB23_9:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_12
# BB#10:                                # %land.lhs.true.16
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB23_12
# BB#11:                                # %if.then.19
	movl	$1, -84(%rbp)
	jmp	.LBB23_13
.LBB23_12:                              # %if.else.20
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB23_13:                              # %if.end.22
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.23
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB23_32
# BB#15:                                # %land.lhs.true.25
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_image_map_tool_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB23_17
# BB#16:                                # %if.then.34
	movl	$0, -108(%rbp)
	jmp	.LBB23_22
.LBB23_17:                              # %if.else.35
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_20
# BB#18:                                # %land.lhs.true.38
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB23_20
# BB#19:                                # %if.then.42
	movl	$1, -108(%rbp)
	jmp	.LBB23_21
.LBB23_20:                              # %if.else.43
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB23_21:                              # %if.end.45
	jmp	.LBB23_22
.LBB23_22:                              # %if.end.46
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.LBB23_32
# BB#23:                                # %land.lhs.true.49
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_paint_tool_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB23_25
# BB#24:                                # %if.then.58
	movl	$0, -132(%rbp)
	jmp	.LBB23_30
.LBB23_25:                              # %if.else.59
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_28
# BB#26:                                # %land.lhs.true.62
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB23_28
# BB#27:                                # %if.then.66
	movl	$1, -132(%rbp)
	jmp	.LBB23_29
.LBB23_28:                              # %if.else.67
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB23_29:                              # %if.end.69
	jmp	.LBB23_30
.LBB23_30:                              # %if.end.70
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB23_44
# BB#31:                                # %land.lhs.true.73
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_paint_tool_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 296(%rax)
	jne	.LBB23_44
.LBB23_32:                              # %lor.lhs.false
	cmpl	$0, -60(%rbp)
	jne	.LBB23_41
# BB#33:                                # %land.lhs.true.78
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_move_tool_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB23_35
# BB#34:                                # %if.then.87
	movl	$0, -156(%rbp)
	jmp	.LBB23_40
.LBB23_35:                              # %if.else.88
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_38
# BB#36:                                # %land.lhs.true.91
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB23_38
# BB#37:                                # %if.then.95
	movl	$1, -156(%rbp)
	jmp	.LBB23_39
.LBB23_38:                              # %if.else.96
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB23_39:                              # %if.end.98
	jmp	.LBB23_40
.LBB23_40:                              # %if.end.99
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	jne	.LBB23_44
.LBB23_41:                              # %if.then.102
	movabsq	$.L.str.7, %rax
	movabsq	$.L.str.6, %rcx
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdi
	cmpl	$0, -60(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_get_tool_info
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB23_43
# BB#42:                                # %if.then.108
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_user_context
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
.LBB23_43:                              # %if.end.111
	jmp	.LBB23_44
.LBB23_44:                              # %if.end.112
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB23_57
# BB#45:                                # %if.then.116
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %ecx
	callq	gimp_display_shell_update_focus
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_pointer_grab
	cmpl	$0, %eax
	je	.LBB23_56
# BB#46:                                # %if.then.120
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_display_shell_keyboard_grab
	cmpl	$0, %eax
	je	.LBB23_54
# BB#47:                                # %if.then.123
	cmpl	$0, -60(%rbp)
	je	.LBB23_49
# BB#48:                                # %if.then.125
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_color_tool_start_sample_point
	jmp	.LBB23_53
.LBB23_49:                              # %if.else.126
	cmpl	$0, -36(%rbp)
	je	.LBB23_51
# BB#50:                                # %if.then.128
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_move_tool_start_hguide
	jmp	.LBB23_52
.LBB23_51:                              # %if.else.129
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_move_tool_start_vguide
.LBB23_52:                              # %if.end.130
	jmp	.LBB23_53
.LBB23_53:                              # %if.end.131
	movl	$1, -4(%rbp)
	jmp	.LBB23_59
.LBB23_54:                              # %if.else.132
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_pointer_ungrab
# BB#55:                                # %if.end.133
	jmp	.LBB23_56
.LBB23_56:                              # %if.end.134
	jmp	.LBB23_57
.LBB23_57:                              # %if.end.135
	jmp	.LBB23_58
.LBB23_58:                              # %if.end.136
	movl	$0, -4(%rbp)
.LBB23_59:                              # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_shell_ruler_button_press, .Lfunc_end23-gimp_display_shell_ruler_button_press
	.cfi_endproc

	.globl	gimp_display_shell_vruler_button_press
	.align	16, 0x90
	.type	gimp_display_shell_vruler_button_press,@function
gimp_display_shell_vruler_button_press: # @gimp_display_shell_vruler_button_press
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
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_display_shell_ruler_button_press
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_display_shell_vruler_button_press, .Lfunc_end24-gimp_display_shell_vruler_button_press
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_canvas_tool_events,@object # @__func__.gimp_display_shell_canvas_tool_events
.L__func__.gimp_display_shell_canvas_tool_events:
	.asciz	"gimp_display_shell_canvas_tool_events"
	.size	.L__func__.gimp_display_shell_canvas_tool_events, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gtk_widget_get_realized (canvas)"
	.size	.L.str.1, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"event (display %p): %s"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: FOCUS_IN but canvas has no focus"
	.size	.L.str.3, 37

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s: FOCUS_OUT but canvas has focus"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/dummy-menubar/image-popup"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-color-picker-tool"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-move-tool"
	.size	.L.str.7, 15

	.type	.L__func__.gimp_display_shell_start_scrolling,@object # @__func__.gimp_display_shell_start_scrolling
.L__func__.gimp_display_shell_start_scrolling:
	.asciz	"gimp_display_shell_start_scrolling"
	.size	.L__func__.gimp_display_shell_start_scrolling, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"! shell->scrolling"
	.size	.L.str.8, 19

	.type	.L__func__.gimp_display_shell_stop_scrolling,@object # @__func__.gimp_display_shell_stop_scrolling
.L__func__.gimp_display_shell_stop_scrolling:
	.asciz	"gimp_display_shell_stop_scrolling"
	.size	.L__func__.gimp_display_shell_stop_scrolling, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"shell->scrolling"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"windows"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"windows-show-display-next"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"windows-show-display-previous"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"windows-hide-docks"
	.size	.L.str.13, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
