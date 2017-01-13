	.text
	.file	"gimp3migration.bc"
	.globl	gtk_box_new
	.align	16, 0x90
	.type	gtk_box_new,@function
gtk_box_new:                            # @gtk_box_new
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movl	-16(%rbp), %esi
	callq	gtk_hbox_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	xorl	%edi, %edi
	movl	-16(%rbp), %esi
	callq	gtk_vbox_new@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gtk_box_new, .Lfunc_end0-gtk_box_new
	.cfi_endproc

	.globl	gtk_button_box_new
	.align	16, 0x90
	.type	gtk_button_box_new,@function
gtk_button_box_new:                     # @gtk_button_box_new
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
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	callq	gtk_hbutton_box_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	callq	gtk_vbutton_box_new@PLT
	movq	%rax, -8(%rbp)
.LBB1_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gtk_button_box_new, .Lfunc_end1-gtk_button_box_new
	.cfi_endproc

	.globl	gtk_paned_new
	.align	16, 0x90
	.type	gtk_paned_new,@function
gtk_paned_new:                          # @gtk_paned_new
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
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	callq	gtk_hpaned_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	callq	gtk_vpaned_new@PLT
	movq	%rax, -8(%rbp)
.LBB2_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gtk_paned_new, .Lfunc_end2-gtk_paned_new
	.cfi_endproc

	.globl	gtk_scale_new
	.align	16, 0x90
	.type	gtk_scale_new,@function
gtk_scale_new:                          # @gtk_scale_new
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
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_hscale_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_vscale_new@PLT
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gtk_scale_new, .Lfunc_end3-gtk_scale_new
	.cfi_endproc

	.globl	gtk_scrollbar_new
	.align	16, 0x90
	.type	gtk_scrollbar_new,@function
gtk_scrollbar_new:                      # @gtk_scrollbar_new
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
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_hscrollbar_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_vscrollbar_new@PLT
	movq	%rax, -8(%rbp)
.LBB4_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gtk_scrollbar_new, .Lfunc_end4-gtk_scrollbar_new
	.cfi_endproc

	.globl	gtk_separator_new
	.align	16, 0x90
	.type	gtk_separator_new,@function
gtk_separator_new:                      # @gtk_separator_new
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	callq	gtk_hseparator_new@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	callq	gtk_vseparator_new@PLT
	movq	%rax, -8(%rbp)
.LBB5_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gtk_separator_new, .Lfunc_end5-gtk_separator_new
	.cfi_endproc

	.globl	gdk_event_triggers_context_menu
	.align	16, 0x90
	.type	gdk_event_triggers_context_menu,@function
gdk_event_triggers_context_menu:        # @gdk_event_triggers_context_menu
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gdk_event_triggers_context_menu(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB6_11
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB6_10
# BB#6:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 52(%rax)
	jne	.LBB6_9
# BB#7:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$768, %ecx              # imm = 0x300
	cmpl	$0, %ecx
	jne	.LBB6_9
# BB#8:                                 # %if.then.4
	movl	$1, -4(%rbp)
	jmp	.LBB6_11
.LBB6_9:                                # %if.end.5
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.6
	movl	$0, -4(%rbp)
.LBB6_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gdk_event_triggers_context_menu, .Lfunc_end6-gdk_event_triggers_context_menu
	.cfi_endproc

	.globl	gdk_keymap_get_modifier_mask
	.align	16, 0x90
	.type	gdk_keymap_get_modifier_mask,@function
gdk_keymap_get_modifier_mask:           # @gdk_keymap_get_modifier_mask
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gdk_keymap_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gdk_keymap_get_modifier_mask(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB7_18
# BB#21:                                # %do.end
	leaq	.LJTI7_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB7_13:                               # %sw.bb
	movl	$4, -4(%rbp)
	jmp	.LBB7_20
.LBB7_14:                               # %sw.bb.11
	movl	$0, -4(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %sw.bb.12
	movl	$1, -4(%rbp)
	jmp	.LBB7_20
.LBB7_16:                               # %sw.bb.13
	movl	$4, -4(%rbp)
	jmp	.LBB7_20
.LBB7_17:                               # %sw.bb.14
	movl	$12, -4(%rbp)
	jmp	.LBB7_20
.LBB7_18:                               # %sw.default
	jmp	.LBB7_19
.LBB7_19:                               # %do.body.15
	leaq	.L.str(%rip), %rdi
	movl	$8, %esi
	leaq	.L.str.3(%rip), %rdx
	leaq	.L.str.4(%rip), %rcx
	movl	$160, %r8d
	leaq	.L__func__.gdk_keymap_get_modifier_mask(%rip), %r9
	movb	$0, %al
	callq	g_log@PLT
	movl	$0, -4(%rbp)
.LBB7_20:                               # %sw.epilog
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gdk_keymap_get_modifier_mask, .Lfunc_end7-gdk_keymap_get_modifier_mask
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI7_0:
	.long	.LBB7_13-.LJTI7_0
	.long	.LBB7_14-.LJTI7_0
	.long	.LBB7_15-.LJTI7_0
	.long	.LBB7_16-.LJTI7_0
	.long	.LBB7_17-.LJTI7_0

	.text
	.globl	gtk_widget_get_modifier_mask
	.align	16, 0x90
	.type	gtk_widget_get_modifier_mask,@function
gtk_widget_get_modifier_mask:           # @gtk_widget_get_modifier_mask
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gtk_widget_get_modifier_mask(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gdk_keymap_get_for_display@PLT
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask@PLT
	movl	%eax, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gtk_widget_get_modifier_mask, .Lfunc_end8-gtk_widget_get_modifier_mask
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gdk_event_triggers_context_menu,@object # @__func__.gdk_event_triggers_context_menu
.L__func__.gdk_event_triggers_context_menu:
	.asciz	"gdk_event_triggers_context_menu"
	.size	.L__func__.gdk_event_triggers_context_menu, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"event != NULL"
	.size	.L.str.1, 14

	.type	.L__func__.gdk_keymap_get_modifier_mask,@object # @__func__.gdk_keymap_get_modifier_mask
.L__func__.gdk_keymap_get_modifier_mask:
	.asciz	"gdk_keymap_get_modifier_mask"
	.size	.L__func__.gdk_keymap_get_modifier_mask, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GDK_IS_KEYMAP (keymap)"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp3migration.c"
	.size	.L.str.4, 17

	.type	.L__func__.gtk_widget_get_modifier_mask,@object # @__func__.gtk_widget_get_modifier_mask
.L__func__.gtk_widget_get_modifier_mask:
	.asciz	"gtk_widget_get_modifier_mask"
	.size	.L__func__.gtk_widget_get_modifier_mask, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.5, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
