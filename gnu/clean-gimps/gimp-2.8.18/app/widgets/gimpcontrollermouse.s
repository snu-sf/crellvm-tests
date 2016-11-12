	.text
	.file	"gimpcontrollermouse.bc"
	.globl	gimp_controller_mouse_get_type
	.align	16, 0x90
	.type	gimp_controller_mouse_get_type,@function
gimp_controller_mouse_get_type:         # @gimp_controller_mouse_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_controller_mouse_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_controller_mouse_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_controller_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$224, %edx
	movabsq	$gimp_controller_mouse_class_intern_init, %rdi
	movl	$40, %r8d
	movabsq	$gimp_controller_mouse_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_controller_mouse_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_controller_mouse_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controller_mouse_get_type, .Lfunc_end0-gimp_controller_mouse_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_class_intern_init,@function
gimp_controller_mouse_class_intern_init: # @gimp_controller_mouse_class_intern_init
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
	callq	g_type_class_peek_parent
	movq	%rax, gimp_controller_mouse_parent_class
	cmpl	$0, GimpControllerMouse_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpControllerMouse_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_controller_mouse_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_mouse_class_intern_init, .Lfunc_end1-gimp_controller_mouse_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_init,@function
gimp_controller_mouse_init:             # @gimp_controller_mouse_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, gimp_controller_mouse_init.event_names_initialized
	jne	.LBB2_8
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$40, %rax
	jae	.LBB2_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movabsq	$mouse_events, %rax
	movslq	-12(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB2_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	4(%rdi), %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_get_mod_string
	movabsq	$.L.str.11, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rdx)
.LBB2_5:                                # %if.end
                                        #   in Loop: Header=BB2_2 Depth=1
	jmp	.LBB2_6
.LBB2_6:                                # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_2
.LBB2_7:                                # %for.end
	movl	$1, gimp_controller_mouse_init.event_names_initialized
.LBB2_8:                                # %if.end.9
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_mouse_init, .Lfunc_end2-gimp_controller_mouse_init
	.cfi_endproc

	.globl	gimp_controller_mouse_button
	.align	16, 0x90
	.type	gimp_controller_mouse_button,@function
gimp_controller_mouse_button:           # @gimp_controller_mouse_button
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_controller_mouse_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_mouse_button, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_26
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_mouse_button, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_26
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movl	$0, -28(%rbp)
.LBB3_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$40, %rax
	jae	.LBB3_25
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB3_18 Depth=1
	movabsq	$mouse_events, %rax
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	cmpl	52(%rax), %edx
	jne	.LBB3_23
# BB#20:                                # %if.then.22
                                        #   in Loop: Header=BB3_18 Depth=1
	movabsq	$mouse_events, %rax
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edx
	andl	$13, %edx
	movslq	-28(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	4(%rax), %edx
	jne	.LBB3_22
# BB#21:                                # %if.then.27
	leaq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_controller_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movl	-28(%rbp), %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_controller_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_controller_event
	movl	%eax, -4(%rbp)
	jmp	.LBB3_26
.LBB3_22:                               # %if.end.35
                                        #   in Loop: Header=BB3_18 Depth=1
	jmp	.LBB3_23
.LBB3_23:                               # %if.end.36
                                        #   in Loop: Header=BB3_18 Depth=1
	jmp	.LBB3_24
.LBB3_24:                               # %for.inc
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_18
.LBB3_25:                               # %for.end
	movl	$0, -4(%rbp)
.LBB3_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controller_mouse_button, .Lfunc_end3-gimp_controller_mouse_button
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_class_init,@function
gimp_controller_mouse_class_init:       # @gimp_controller_mouse_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_controller_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.4, %rdi
	movabsq	$gimp_controller_mouse_constructed, %rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 72(%rax)
	callq	gettext
	movabsq	$gimp_controller_mouse_get_event_blurb, %rsi
	movabsq	$gimp_controller_mouse_get_event_name, %rdi
	movabsq	$gimp_controller_mouse_get_n_events, %rcx
	movabsq	$.L.str.6, %rdx
	movabsq	$.L.str.5, %r8
	movq	-24(%rbp), %r9
	movq	%rax, 136(%r9)
	movq	-24(%rbp), %rax
	movq	%r8, 152(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 192(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 160(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 168(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 176(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controller_mouse_class_init, .Lfunc_end4-gimp_controller_mouse_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_constructed,@function
gimp_controller_mouse_constructed:      # @gimp_controller_mouse_constructed
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_controller_mouse_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_mouse_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movabsq	$.L.str.8, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.9, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controller_mouse_constructed, .Lfunc_end5-gimp_controller_mouse_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_get_n_events,@function
gimp_controller_mouse_get_n_events:     # @gimp_controller_mouse_get_n_events
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
	movl	$40, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controller_mouse_get_n_events, .Lfunc_end6-gimp_controller_mouse_get_n_events
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_get_event_name,@function
gimp_controller_mouse_get_event_name:   # @gimp_controller_mouse_get_event_name
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movslq	-20(%rbp), %rax
	cmpq	$40, %rax
	jb	.LBB7_3
.LBB7_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_4
.LBB7_3:                                # %if.end
	movabsq	$mouse_events, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_4:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controller_mouse_get_event_name, .Lfunc_end7-gimp_controller_mouse_get_event_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_mouse_get_event_blurb,@function
gimp_controller_mouse_get_event_blurb:  # @gimp_controller_mouse_get_event_blurb
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	movslq	-20(%rbp), %rax
	cmpq	$40, %rax
	jb	.LBB8_3
.LBB8_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.end
	movabsq	$mouse_events, %rax
	movslq	-20(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_4:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controller_mouse_get_event_blurb, .Lfunc_end8-gimp_controller_mouse_get_event_blurb
	.cfi_endproc

	.type	gimp_controller_mouse_get_type.g_define_type_id__volatile,@object # @gimp_controller_mouse_get_type.g_define_type_id__volatile
	.local	gimp_controller_mouse_get_type.g_define_type_id__volatile
	.comm	gimp_controller_mouse_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpControllerMouse"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_controller_mouse_button,@object # @__func__.gimp_controller_mouse_button
.L__func__.gimp_controller_mouse_button:
	.asciz	"gimp_controller_mouse_button"
	.size	.L__func__.gimp_controller_mouse_button, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTROLLER_MOUSE (mouse)"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bevent != NULL"
	.size	.L.str.3, 15

	.type	mouse_events,@object    # @mouse_events
	.data
	.align	16
mouse_events:
	.long	8                       # 0x8
	.long	0                       # 0x0
	.quad	.L.str.12
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	1                       # 0x1
	.quad	.L.str.14
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	4                       # 0x4
	.quad	.L.str.15
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	8                       # 0x8
	.quad	.L.str.16
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	5                       # 0x5
	.quad	.L.str.17
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	9                       # 0x9
	.quad	.L.str.18
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	12                      # 0xc
	.quad	.L.str.19
	.quad	.L.str.13
	.long	8                       # 0x8
	.long	13                      # 0xd
	.quad	.L.str.20
	.quad	.L.str.13
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.21
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	1                       # 0x1
	.quad	.L.str.23
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	4                       # 0x4
	.quad	.L.str.24
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	8                       # 0x8
	.quad	.L.str.25
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	5                       # 0x5
	.quad	.L.str.26
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	9                       # 0x9
	.quad	.L.str.27
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	12                      # 0xc
	.quad	.L.str.28
	.quad	.L.str.22
	.long	9                       # 0x9
	.long	13                      # 0xd
	.quad	.L.str.29
	.quad	.L.str.22
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.30
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	1                       # 0x1
	.quad	.L.str.32
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	4                       # 0x4
	.quad	.L.str.33
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	8                       # 0x8
	.quad	.L.str.34
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	5                       # 0x5
	.quad	.L.str.35
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	9                       # 0x9
	.quad	.L.str.36
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	12                      # 0xc
	.quad	.L.str.37
	.quad	.L.str.31
	.long	10                      # 0xa
	.long	13                      # 0xd
	.quad	.L.str.38
	.quad	.L.str.31
	.long	11                      # 0xb
	.long	0                       # 0x0
	.quad	.L.str.39
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	1                       # 0x1
	.quad	.L.str.41
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	4                       # 0x4
	.quad	.L.str.42
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	8                       # 0x8
	.quad	.L.str.43
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	5                       # 0x5
	.quad	.L.str.44
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	9                       # 0x9
	.quad	.L.str.45
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	12                      # 0xc
	.quad	.L.str.46
	.quad	.L.str.40
	.long	11                      # 0xb
	.long	13                      # 0xd
	.quad	.L.str.47
	.quad	.L.str.40
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.48
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	1                       # 0x1
	.quad	.L.str.50
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	4                       # 0x4
	.quad	.L.str.51
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	8                       # 0x8
	.quad	.L.str.52
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	5                       # 0x5
	.quad	.L.str.53
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	9                       # 0x9
	.quad	.L.str.54
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	12                      # 0xc
	.quad	.L.str.55
	.quad	.L.str.49
	.long	12                      # 0xc
	.long	13                      # 0xd
	.quad	.L.str.56
	.quad	.L.str.49
	.size	mouse_events, 960

	.type	gimp_controller_mouse_parent_class,@object # @gimp_controller_mouse_parent_class
	.local	gimp_controller_mouse_parent_class
	.comm	gimp_controller_mouse_parent_class,8,8
	.type	GimpControllerMouse_private_offset,@object # @GimpControllerMouse_private_offset
	.local	GimpControllerMouse_private_offset
	.comm	GimpControllerMouse_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Mouse Buttons"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-controller-mouse"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-cursor"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Mouse Button Events"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"state"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Ready"
	.size	.L.str.10, 6

	.type	gimp_controller_mouse_init.event_names_initialized,@object # @gimp_controller_mouse_init.event_names_initialized
	.local	gimp_controller_mouse_init.event_names_initialized
	.comm	gimp_controller_mouse_init.event_names_initialized,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s (%s)"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"8"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Button 8"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"8-shift"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"8-control"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"8-alt"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"8-shift-control"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"8-shift-alt"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"8-control-alt"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"8-shift-control-alt"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"9"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Button 9"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"9-shift"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"9-control"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"9-alt"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"9-shift-control"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"9-shift-alt"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"9-control-alt"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"9-shift-control-alt"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"10"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Button 10"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"10-shift"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"10-control"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"10-alt"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"10-shift-control"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"10-shift-alt"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"10-control-alt"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"10-shift-control-alt"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"11"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Button 11"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"11-shift"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"11-control"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"11-alt"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"11-shift-control"
	.size	.L.str.44, 17

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"11-shift-alt"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"11-control-alt"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"11-shift-control-alt"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"12"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Button 12"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"12-shift"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"12-control"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"12-alt"
	.size	.L.str.52, 7

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"12-shift-control"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"12-shift-alt"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"12-control-alt"
	.size	.L.str.55, 15

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"12-shift-control-alt"
	.size	.L.str.56, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
