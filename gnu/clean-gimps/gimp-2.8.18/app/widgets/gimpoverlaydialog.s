	.text
	.file	"gimpoverlaydialog.bc"
	.globl	gimp_overlay_dialog_get_type
	.align	16, 0x90
	.type	gimp_overlay_dialog_get_type,@function
gimp_overlay_dialog_get_type:           # @gimp_overlay_dialog_get_type
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
	movq	gimp_overlay_dialog_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_overlay_dialog_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_overlay_frame_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_overlay_dialog_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_overlay_dialog_init, %rcx
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
	movabsq	$gimp_overlay_dialog_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_overlay_dialog_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_overlay_dialog_get_type, .Lfunc_end0-gimp_overlay_dialog_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_class_intern_init,@function
gimp_overlay_dialog_class_intern_init:  # @gimp_overlay_dialog_class_intern_init
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
	movq	%rax, gimp_overlay_dialog_parent_class
	cmpl	$0, GimpOverlayDialog_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOverlayDialog_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_overlay_dialog_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_overlay_dialog_class_intern_init, .Lfunc_end1-gimp_overlay_dialog_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_init,@function
gimp_overlay_dialog_init:               # @gimp_overlay_dialog_init
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	gtk_button_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 120(%rcx)
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_button_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_button_box_set_layout
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_parent
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_show
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_overlay_dialog_init, .Lfunc_end2-gimp_overlay_dialog_init
	.cfi_endproc

	.globl	gimp_overlay_dialog_new
	.align	16, 0x90
	.type	gimp_overlay_dialog_new,@function
gimp_overlay_dialog_new:                # @gimp_overlay_dialog_new
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
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB3_15
# BB#14:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB3_15:                               # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_dialog_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_overlay_dialog_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, 16(%rsi)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rsi)
	movl	$48, 4(%rsi)
	movl	$16, (%rsi)
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_overlay_dialog_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_overlay_dialog_add_buttons_valist
	leaq	-64(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_overlay_dialog_new, .Lfunc_end3-gimp_overlay_dialog_new
	.cfi_endproc

	.globl	gimp_overlay_dialog_add_buttons_valist
	.align	16, 0x90
	.type	gimp_overlay_dialog_add_buttons_valist,@function
gimp_overlay_dialog_add_buttons_valist: # @gimp_overlay_dialog_add_buttons_valist
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_overlay_dialog_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_dialog_add_buttons_valist, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_21
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB4_15
# BB#14:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB4_16
.LBB4_15:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
.LBB4_16:                               # %vaarg.end
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB4_21
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	ja	.LBB4_19
# BB#18:                                # %vaarg.in_reg.15
                                        #   in Loop: Header=BB4_13 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %vaarg.in_mem.17
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -104(%rbp)        # 8-byte Spill
.LBB4_20:                               # %vaarg.end.21
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_overlay_dialog_add_button
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_13
.LBB4_21:                               # %while.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_overlay_dialog_add_buttons_valist, .Lfunc_end4-gimp_overlay_dialog_add_buttons_valist
	.cfi_endproc

	.globl	gimp_overlay_dialog_response
	.align	16, 0x90
	.type	gimp_overlay_dialog_response,@function
gimp_overlay_dialog_response:           # @gimp_overlay_dialog_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_overlay_dialog_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_dialog_response, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	signals, %esi
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_overlay_dialog_response, .Lfunc_end5-gimp_overlay_dialog_response
	.cfi_endproc

	.globl	gimp_overlay_dialog_add_button
	.align	16, 0x90
	.type	gimp_overlay_dialog_add_button,@function
gimp_overlay_dialog_add_button:         # @gimp_overlay_dialog_add_button
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_overlay_dialog_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_dialog_add_button, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_dialog_add_button, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_20
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-24(%rbp), %rdi
	callq	gtk_button_new_from_stock
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_can_default
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	get_response_data
	movq	%rax, -48(%rbp)
	movl	-28(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%esi, (%rax)
	callq	gtk_button_get_type
	movabsq	$.L.str.5, %rdi
	movq	%rax, %rsi
	callq	g_signal_lookup
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$action_widget_activated, %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	g_cclosure_new_object
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %esi
	movq	-64(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	g_signal_connect_closure_by_id
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	cmpl	$-11, -28(%rbp)
	jne	.LBB6_19
# BB#18:                                # %if.then.28
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_button_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_button_box_set_child_secondary
.LBB6_19:                               # %if.end.32
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_overlay_dialog_add_button, .Lfunc_end6-gimp_overlay_dialog_add_button
	.cfi_endproc

	.align	16, 0x90
	.type	get_response_data,@function
get_response_data:                      # @get_response_data
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$response_data_free, %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data_full
.LBB7_3:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_response_data, .Lfunc_end7-get_response_data
	.cfi_endproc

	.align	16, 0x90
	.type	action_widget_activated,@function
action_widget_activated:                # @action_widget_activated
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	get_response_data
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_overlay_dialog_response
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	action_widget_activated, .Lfunc_end8-action_widget_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_class_init,@function
gimp_overlay_dialog_class_init:         # @gimp_overlay_dialog_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.6, %rdi
	movl	$2, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movabsq	$gimp_overlay_dialog_close, %r14
	movabsq	$gimp_overlay_dialog_forall, %r15
	movabsq	$gimp_overlay_dialog_size_allocate, %r12
	movabsq	$gimp_overlay_dialog_size_request, %r13
	movabsq	$gimp_overlay_dialog_dispose, %r11
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-64(%rbp), %rax
	movq	%r13, 240(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 248(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 744(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 832(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$24, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.7, %rdi
	movl	$34, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%esi, %esi
	movl	%esi, %r8d
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movl	%eax, signals
	movq	-48(%rbp), %r11
	movq	(%r11), %r11
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -160(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, signals+4
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movl	$65307, %esi            # imm = 0xFF1B
	xorl	%ecx, %ecx
	movabsq	$.L.str.7, %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_overlay_dialog_class_init, .Lfunc_end9-gimp_overlay_dialog_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_dispose,@function
gimp_overlay_dialog_dispose:            # @gimp_overlay_dialog_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_overlay_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_unparent
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB10_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_overlay_dialog_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_overlay_dialog_dispose, .Lfunc_end10-gimp_overlay_dialog_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_size_request,@function
gimp_overlay_dialog_size_request:       # @gimp_overlay_dialog_size_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_overlay_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-60(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	cmpq	$0, -40(%rbp)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_size_request
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB11_4:                               # %if.end
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	120(%rax), %rdi
	callq	gtk_widget_size_request
	movl	-48(%rbp), %ecx
	cmpl	-56(%rbp), %ecx
	jle	.LBB11_6
# BB#5:                                 # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false
	movl	-56(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB11_7:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	addl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_overlay_dialog_size_request, .Lfunc_end11-gimp_overlay_dialog_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_size_allocate,@function
gimp_overlay_dialog_size_allocate:      # @gimp_overlay_dialog_size_allocate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
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
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_overlay_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rdi
	movq	%rax, -40(%rbp)
	callq	memset
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	movq	-24(%rbp), %rdi
	callq	gtk_container_get_border_width
	leaq	-48(%rbp), %rsi
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdx
	movq	120(%rdx), %rdi
	callq	gtk_widget_size_request
	cmpq	$0, -40(%rbp)
	je	.LBB12_9
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB12_9
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cmpl	$0, %ecx
	jle	.LBB12_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB12_5
.LBB12_5:                               # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	imull	$3, -84(%rbp), %edx
	subl	%edx, %eax
	subl	-44(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB12_7
# BB#6:                                 # %cond.true.22
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	imull	$3, -84(%rbp), %edx
	subl	%edx, %ecx
	subl	-44(%rbp), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %cond.false.28
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB12_8
.LBB12_8:                               # %cond.end.29
	movl	-120(%rbp), %eax        # 4-byte Reload
	leaq	-64(%rbp), %rsi
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_size_allocate
.LBB12_9:                               # %if.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	-60(%rbp), %ecx
	addl	-52(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cmpl	$0, %ecx
	jle	.LBB12_11
# BB#10:                                # %cond.true.44
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_11:                              # %cond.false.48
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB12_12
.LBB12_12:                              # %cond.end.49
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	cmpl	$0, -44(%rbp)
	jle	.LBB12_14
# BB#13:                                # %cond.true.54
	movl	-44(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB12_15
.LBB12_14:                              # %cond.false.56
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB12_15
.LBB12_15:                              # %cond.end.57
	movl	-128(%rbp), %eax        # 4-byte Reload
	leaq	-80(%rbp), %rsi
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	gtk_widget_size_allocate
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_overlay_dialog_size_allocate, .Lfunc_end12-gimp_overlay_dialog_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_forall,@function
gimp_overlay_dialog_forall:             # @gimp_overlay_dialog_forall
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	gimp_overlay_dialog_parent_class, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	744(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	*%rax
	cmpl	$0, -12(%rbp)
	je	.LBB13_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_overlay_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB13_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	120(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
.LBB13_3:                               # %if.end
	jmp	.LBB13_4
.LBB13_4:                               # %if.end.7
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_overlay_dialog_forall, .Lfunc_end13-gimp_overlay_dialog_forall
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_dialog_close,@function
gimp_overlay_dialog_close:              # @gimp_overlay_dialog_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	120(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	get_response_data
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$-7, (%rax)
	je	.LBB14_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$-6, (%rax)
	jne	.LBB14_5
.LBB14_4:                               # %if.then
	jmp	.LBB14_10
.LBB14_5:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	$0, -32(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_9
.LBB14_8:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB14_9
.LBB14_9:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB14_1
.LBB14_10:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
	cmpq	$0, -32(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_overlay_dialog_response
.LBB14_12:                              # %if.end.10
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_overlay_dialog_close, .Lfunc_end14-gimp_overlay_dialog_close
	.cfi_endproc

	.align	16, 0x90
	.type	response_data_free,@function
response_data_free:                     # @response_data_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$4, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	response_data_free, .Lfunc_end15-response_data_free
	.cfi_endproc

	.type	gimp_overlay_dialog_get_type.g_define_type_id__volatile,@object # @gimp_overlay_dialog_get_type.g_define_type_id__volatile
	.local	gimp_overlay_dialog_get_type.g_define_type_id__volatile
	.comm	gimp_overlay_dialog_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOverlayDialog"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_overlay_dialog_new,@object # @__func__.gimp_overlay_dialog_new
.L__func__.gimp_overlay_dialog_new:
	.asciz	"gimp_overlay_dialog_new"
	.size	.L__func__.gimp_overlay_dialog_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL_INFO (tool_info)"
	.size	.L.str.2, 30

	.type	.L__func__.gimp_overlay_dialog_response,@object # @__func__.gimp_overlay_dialog_response
.L__func__.gimp_overlay_dialog_response:
	.asciz	"gimp_overlay_dialog_response"
	.size	.L__func__.gimp_overlay_dialog_response, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_OVERLAY_DIALOG (dialog)"
	.size	.L.str.3, 32

	.type	signals,@object         # @signals
	.local	signals
	.comm	signals,8,4
	.type	.L__func__.gimp_overlay_dialog_add_buttons_valist,@object # @__func__.gimp_overlay_dialog_add_buttons_valist
.L__func__.gimp_overlay_dialog_add_buttons_valist:
	.asciz	"gimp_overlay_dialog_add_buttons_valist"
	.size	.L__func__.gimp_overlay_dialog_add_buttons_valist, 39

	.type	.L__func__.gimp_overlay_dialog_add_button,@object # @__func__.gimp_overlay_dialog_add_button
.L__func__.gimp_overlay_dialog_add_button:
	.asciz	"gimp_overlay_dialog_add_button"
	.size	.L__func__.gimp_overlay_dialog_add_button, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"button_text != NULL"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"clicked"
	.size	.L.str.5, 8

	.type	gimp_overlay_dialog_parent_class,@object # @gimp_overlay_dialog_parent_class
	.local	gimp_overlay_dialog_parent_class
	.comm	gimp_overlay_dialog_parent_class,8,8
	.type	GimpOverlayDialog_private_offset,@object # @GimpOverlayDialog_private_offset
	.local	GimpOverlayDialog_private_offset
	.comm	GimpOverlayDialog_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"close"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-overlay-dialog-response-data"
	.size	.L.str.8, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
