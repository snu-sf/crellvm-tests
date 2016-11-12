	.text
	.file	"window-commands.bc"
	.globl	window_close_cmd_callback
	.align	16, 0x90
	.type	window_close_cmd_callback,@function
window_close_cmd_callback:              # @window_close_cmd_callback
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
.LBB0_4:                                # %if.end.5
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	cmpq	$0, %rax
	je	.LBB0_7
# BB#6:                                 # %if.then.9
	xorl	%edi, %edi
	callq	gdk_event_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movb	$1, 16(%rax)
	movq	-32(%rbp), %rdi
	callq	gtk_main_do_event
	movq	-32(%rbp), %rdi
	callq	gdk_event_free
.LBB0_7:                                # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	window_close_cmd_callback, .Lfunc_end0-window_close_cmd_callback
	.cfi_endproc

	.globl	window_open_display_cmd_callback
	.align	16, 0x90
	.type	window_open_display_cmd_callback,@function
window_open_display_cmd_callback:       # @window_open_display_cmd_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$.L.str.2, %r8
	movl	$4294967290, %eax       # imm = 0xFFFFFFFA
	movabsq	$.L.str.3, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	-40(%rbp), %r11
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r11, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r11, %r9
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-48(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	264(%rax), %rdi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-48(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	264(%rax), %rdi
	movb	$0, %al
	callq	gimp_message_box_set_text
	callq	gtk_entry_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_grab_focus
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show_all
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	jne	.LBB1_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_get_chars
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	$.L.str.6, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_10
# BB#5:                                 # %if.then.26
                                        #   in Loop: Header=BB1_3 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movq	-64(%rbp), %rdi
	callq	gdk_display_open
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.29
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	264(%rax), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	gimp_message_box_set_text
.LBB1_7:                                # %if.end.33
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	cmpq	$0, -72(%rbp)
	je	.LBB1_9
# BB#8:                                 # %if.then.35
	jmp	.LBB1_11
.LBB1_9:                                # %if.end.36
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_10
.LBB1_10:                               # %if.end.37
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rbp), %rdi
	callq	gtk_widget_grab_focus
	jmp	.LBB1_3
.LBB1_11:                               # %while.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_12:                               # %return
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	window_open_display_cmd_callback, .Lfunc_end1-window_open_display_cmd_callback
	.cfi_endproc

	.globl	window_move_to_screen_cmd_callback
	.align	16, 0x90
	.type	window_move_to_screen_cmd_callback,@function
window_move_to_screen_cmd_callback:     # @window_move_to_screen_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_14
.LBB2_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_widget_is_toplevel
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)
.LBB2_4:                                # %if.end.5
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.10
	movl	$0, -60(%rbp)
	jmp	.LBB2_11
.LBB2_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_9
# BB#8:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.14
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_10:                               # %if.end.16
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.17
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_14
# BB#12:                                # %land.lhs.true.19
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB2_14
# BB#13:                                # %if.then.22
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
.LBB2_14:                               # %if.end.25
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	window_move_to_screen_cmd_callback, .Lfunc_end2-window_move_to_screen_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Open Display"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-wilber-eek"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-cancel"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-ok"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Experimental multi-display stuff!\nClick OK and have fun crashing GIMP..."
	.size	.L.str.4, 73

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Please enter the name of the new display:"
	.size	.L.str.5, 42

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Can't open display '%s'. Please try another one:"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"screen"
	.size	.L.str.8, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
