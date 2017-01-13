	.text
	.file	"gimpdisplayshell-callbacks.bc"
	.globl	gimp_display_shell_canvas_realize
	.align	16, 0x90
	.type	gimp_display_shell_canvas_realize,@function
gimp_display_shell_canvas_realize:      # @gimp_display_shell_canvas_realize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_grab_focus
	leaq	-20(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_get_padding
	leaq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_display_shell_set_padding
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	callq	gimp_display_shell_title_update
	movabsq	$.L.str, %rsi
	movabsq	$gimp_display_shell_hadjustment_changed, %rdx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 296(%rdi)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, 300(%rdi)
	movq	-16(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	-16(%rbp), %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str, %rsi
	movabsq	$gimp_display_shell_vadjustment_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	344(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_display_shell_hscrollbar_change_value, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	352(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_display_shell_vscrollbar_change_value, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r9d, %edx
	callq	gtk_widget_set_size_request
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_canvas_realize, .Lfunc_end0-gimp_display_shell_canvas_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_hadjustment_changed,@function
gimp_display_shell_hadjustment_changed: # @gimp_display_shell_hadjustment_changed
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 744(%rsi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gimp_display_shell_scroll
.LBB1_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_hadjustment_changed, .Lfunc_end1-gimp_display_shell_hadjustment_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vadjustment_changed,@function
gimp_display_shell_vadjustment_changed: # @gimp_display_shell_vadjustment_changed
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, 744(%rsi)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	gimp_display_shell_scroll
.LBB2_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_vadjustment_changed, .Lfunc_end2-gimp_display_shell_vadjustment_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_hscrollbar_change_value,@function
gimp_display_shell_hscrollbar_change_value: # @gimp_display_shell_hscrollbar_change_value
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	cmpl	$1, -20(%rbp)
	je	.LBB3_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	je	.LBB3_5
# BB#4:                                 # %lor.lhs.false.2
	cmpl	$5, -20(%rbp)
	jne	.LBB3_6
.LBB3_5:                                # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.end.5
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-40(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_scroll_setup_hscrollbar
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rax
	movq	336(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$0, -4(%rbp)
.LBB3_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_hscrollbar_change_value, .Lfunc_end3-gimp_display_shell_hscrollbar_change_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_vscrollbar_change_value,@function
gimp_display_shell_vscrollbar_change_value: # @gimp_display_shell_vscrollbar_change_value
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.end
	cmpl	$1, -20(%rbp)
	je	.LBB4_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$4, -20(%rbp)
	je	.LBB4_5
# BB#4:                                 # %lor.lhs.false.2
	cmpl	$5, -20(%rbp)
	jne	.LBB4_6
.LBB4_5:                                # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.end.5
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-40(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_display_shell_scroll_setup_vscrollbar
	movl	$80, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$0, -4(%rbp)
.LBB4_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_vscrollbar_change_value, .Lfunc_end4-gimp_display_shell_vscrollbar_change_value
	.cfi_endproc

	.globl	gimp_display_shell_canvas_size_allocate
	.align	16, 0x90
	.type	gimp_display_shell_canvas_size_allocate,@function
gimp_display_shell_canvas_size_allocate: # @gimp_display_shell_canvas_size_allocate
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	jne	.LBB5_3
.LBB5_2:                                # %if.then
	jmp	.LBB5_25
.LBB5_3:                                # %if.end
	movq	-24(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jne	.LBB5_5
# BB#4:                                 # %lor.lhs.false.3
	movq	-24(%rbp), %rax
	movl	300(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	12(%rax), %ecx
	je	.LBB5_25
.LBB5_5:                                # %if.then.5
	movq	-24(%rbp), %rax
	cmpl	$0, 696(%rax)
	je	.LBB5_11
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$64, 296(%rax)
	jle	.LBB5_11
# BB#7:                                 # %land.lhs.true.9
	movq	-24(%rbp), %rax
	cmpl	$64, 300(%rax)
	jle	.LBB5_11
# BB#8:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpl	$64, 8(%rax)
	jle	.LBB5_11
# BB#9:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	cmpl	$64, 12(%rax)
	jle	.LBB5_11
# BB#10:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gimp_zoom_model_get_factor
	movl	$6, %esi
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	8(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	imull	12(%rax), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	sqrt
	movq	-24(%rbp), %rax
	movl	296(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	296(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	300(%rax), %edx
	movq	-24(%rbp), %rax
	imull	300(%rax), %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	-32(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm0
	movq	-24(%rbp), %rax
	divsd	200(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm0
	movq	-24(%rbp), %rax
	divsd	200(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %esi         # 4-byte Reload
	callq	gimp_zoom_model_zoom
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 188(%rax)
	cvtsi2sdl	-40(%rbp), %xmm0
	movq	-24(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 192(%rax)
.LBB5_11:                               # %if.end.57
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 296(%rax)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 300(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 700(%rax)
	je	.LBB5_24
# BB#12:                                # %land.lhs.true.63
	movq	-24(%rbp), %rax
	cmpl	$0, 696(%rax)
	jne	.LBB5_24
# BB#13:                                # %if.then.66
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_draw_get_scaled_image_size
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	296(%rdx), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)
	movl	-64(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	300(%rdx), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gimp_display_shell_scroll_center_image
	movq	-24(%rbp), %rdi
	movl	188(%rdi), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	192(%rdi), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB5_18
# BB#14:                                # %if.then.76
	movq	-24(%rbp), %rax
	cmpl	$0, 188(%rax)
	jle	.LBB5_16
# BB#15:                                # %cond.true
	movq	-24(%rbp), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB5_17
.LBB5_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB5_17
.LBB5_17:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB5_18:                               # %if.end.81
	cmpl	$0, -48(%rbp)
	jne	.LBB5_23
# BB#19:                                # %if.then.83
	movq	-24(%rbp), %rax
	cmpl	$0, 192(%rax)
	jle	.LBB5_21
# BB#20:                                # %cond.true.87
	movq	-24(%rbp), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB5_22
.LBB5_21:                               # %cond.false.89
	xorl	%eax, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB5_22
.LBB5_22:                               # %cond.end.90
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
.LBB5_23:                               # %if.end.92
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	gimp_display_shell_scroll_set_offset
.LBB5_24:                               # %if.end.93
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scroll_clamp_and_update
	movq	-24(%rbp), %rdi
	callq	gimp_display_shell_scaled
	movq	-24(%rbp), %rdi
	movl	$0, 700(%rdi)
.LBB5_25:                               # %if.end.95
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_canvas_size_allocate, .Lfunc_end5-gimp_display_shell_canvas_size_allocate
	.cfi_endproc

	.globl	gimp_display_shell_canvas_expose
	.align	16, 0x90
	.type	gimp_display_shell_canvas_expose,@function
gimp_display_shell_canvas_expose:       # @gimp_display_shell_canvas_expose
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	jne	.LBB6_3
.LBB6_2:                                # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB6_12
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB6_8
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_is_double_buffered
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_window_begin_paint_region
.LBB6_7:                                # %if.end.13
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.14
	movq	-32(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-40(%rbp), %rdi
	callq	cairo_clip
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB6_10
# BB#9:                                 # %if.then.21
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_display_shell_canvas_expose_image
	jmp	.LBB6_11
.LBB6_10:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_display_shell_canvas_expose_drop_zone
.LBB6_11:                               # %if.end.22
	movq	-40(%rbp), %rdi
	callq	cairo_destroy
.LBB6_12:                               # %if.end.23
	movl	$0, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_canvas_expose, .Lfunc_end6-gimp_display_shell_canvas_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_is_double_buffered,@function
gimp_display_shell_is_double_buffered:  # @gimp_display_shell_is_double_buffered
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_is_double_buffered, .Lfunc_end7-gimp_display_shell_is_double_buffered
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_canvas_expose_image,@function
gimp_display_shell_canvas_expose_image: # @gimp_display_shell_canvas_expose_image
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdi
	callq	gdk_region_copy
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	%ecx, %r8d
	subl	188(%rax), %r8d
	movl	%r8d, -56(%rbp)
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, %rax
	addq	$8, %rax
	addq	$12, %rdx
	movq	%rax, %rsi
	callq	gimp_display_shell_draw_get_scaled_image_size
	leaq	-56(%rbp), %rdi
	callq	gdk_region_rectangle
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gdk_region_subtract
	movq	-40(%rbp), %rdi
	callq	gdk_region_destroy
	movq	-32(%rbp), %rdi
	callq	gdk_region_empty
	cmpl	$0, %eax
	jne	.LBB8_6
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gdk_region_get_rectangles
	movl	$0, -72(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB8_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movslq	-72(%rbp), %rdi
	shlq	$4, %rdi
	addq	-64(%rbp), %rdi
	movl	(%rdi), %esi
	movslq	-72(%rbp), %rdi
	shlq	$4, %rdi
	addq	-64(%rbp), %rdi
	movl	4(%rdi), %edx
	movslq	-72(%rbp), %rdi
	shlq	$4, %rdi
	addq	-64(%rbp), %rdi
	movl	8(%rdi), %ecx
	movslq	-72(%rbp), %rdi
	shlq	$4, %rdi
	addq	-64(%rbp), %rdi
	movl	12(%rdi), %r8d
	movq	%rax, %rdi
	callq	gdk_window_clear_area
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB8_2
.LBB8_5:                                # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB8_6:                                # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gdk_region_copy
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gdk_region_subtract
	movq	-32(%rbp), %rdi
	callq	gdk_region_destroy
	movq	-40(%rbp), %rdi
	callq	gdk_region_empty
	cmpl	$0, %eax
	jne	.LBB8_12
# BB#7:                                 # %if.then.19
	movq	-24(%rbp), %rdi
	callq	cairo_save
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-44(%rbp), %r9d
	callq	gimp_display_shell_draw_checkerboard
	movq	-24(%rbp), %rdi
	callq	cairo_restore
	movq	-24(%rbp), %rdi
	callq	cairo_save
	leaq	-64(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gdk_region_get_rectangles
	movl	$0, -72(%rbp)
.LBB8_8:                                # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB8_11
# BB#9:                                 # %for.body.26
                                        #   in Loop: Header=BB8_8 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-72(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movl	(%rax), %edx
	movslq	-72(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movl	4(%rax), %ecx
	movslq	-72(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movl	8(%rax), %r8d
	movslq	-72(%rbp), %rax
	shlq	$4, %rax
	addq	-64(%rbp), %rax
	movl	12(%rax), %r9d
	callq	gimp_display_shell_draw_image
# BB#10:                                # %for.inc.39
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB8_8
.LBB8_11:                               # %for.end.41
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	cairo_restore
.LBB8_12:                               # %if.end.42
	movq	-40(%rbp), %rdi
	callq	gdk_region_destroy
	movq	-8(%rbp), %rdi
	movq	448(%rdi), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_canvas_item_draw
	movq	-8(%rbp), %rdi
	callq	gimp_display_shell_selection_restart
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_shell_canvas_expose_image, .Lfunc_end8-gimp_display_shell_canvas_expose_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_shell_canvas_expose_drop_zone,@function
gimp_display_shell_canvas_expose_drop_zone: # @gimp_display_shell_canvas_expose_drop_zone
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
	subq	$48, %rsp
	leaq	-32(%rbp), %rax
	leaq	-36(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gdk_region_get_rectangles
	movl	$0, -40(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_window
	movslq	-40(%rbp), %rdi
	shlq	$4, %rdi
	addq	-32(%rbp), %rdi
	movl	(%rdi), %esi
	movslq	-40(%rbp), %rdi
	shlq	$4, %rdi
	addq	-32(%rbp), %rdi
	movl	4(%rdi), %edx
	movslq	-40(%rbp), %rdi
	shlq	$4, %rdi
	addq	-32(%rbp), %rdi
	movl	8(%rdi), %ecx
	movslq	-40(%rbp), %rdi
	shlq	$4, %rdi
	addq	-32(%rbp), %rdi
	movl	12(%rdi), %r8d
	movq	%rax, %rdi
	callq	gdk_window_clear_area
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	328(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_cairo_draw_drop_wilber
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_shell_canvas_expose_drop_zone, .Lfunc_end9-gimp_display_shell_canvas_expose_drop_zone
	.cfi_endproc

	.globl	gimp_display_shell_canvas_expose_after
	.align	16, 0x90
	.type	gimp_display_shell_canvas_expose_after,@function
gimp_display_shell_canvas_expose_after: # @gimp_display_shell_canvas_expose_after
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_shell
	cmpq	$0, %rax
	jne	.LBB10_3
.LBB10_2:                               # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB10_10
.LBB10_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_window
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB10_9
# BB#4:                                 # %if.then.4
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB10_8
# BB#5:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_is_double_buffered
	cmpl	$0, %eax
	je	.LBB10_7
# BB#6:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_window_end_paint
.LBB10_7:                               # %if.end.13
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.14
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.15
	movl	$0, -4(%rbp)
.LBB10_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_shell_canvas_expose_after, .Lfunc_end10-gimp_display_shell_canvas_expose_after
	.cfi_endproc

	.globl	gimp_display_shell_origin_button_press
	.align	16, 0x90
	.type	gimp_display_shell_origin_button_press,@function
gimp_display_shell_origin_button_press: # @gimp_display_shell_origin_button_press
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	32(%rdx), %rdx
	cmpl	$0, 308(%rdx)
	jne	.LBB11_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB11_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.2, %rsi
	leaq	-28(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit_by_name
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %if.end.3
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_shell_origin_button_press, .Lfunc_end11-gimp_display_shell_origin_button_press
	.cfi_endproc

	.globl	gimp_display_shell_quick_mask_button_press
	.align	16, 0x90
	.type	gimp_display_shell_quick_mask_button_press,@function
gimp_display_shell_quick_mask_button_press: # @gimp_display_shell_quick_mask_button_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB12_6
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	callq	gimp_image_window_get_ui_manager
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gimp_ui_manager_ui_popup
.LBB12_5:                               # %if.end.10
	movl	$1, -4(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.end.11
	movl	$0, -4(%rbp)
.LBB12_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_shell_quick_mask_button_press, .Lfunc_end12-gimp_display_shell_quick_mask_button_press
	.cfi_endproc

	.globl	gimp_display_shell_quick_mask_toggled
	.align	16, 0x90
	.type	gimp_display_shell_quick_mask_toggled,@function
gimp_display_shell_quick_mask_toggled:  # @gimp_display_shell_quick_mask_toggled
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_display_get_image
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_get_quick_mask_state
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_image_set_quick_mask_state
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB13_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_shell_quick_mask_toggled, .Lfunc_end13-gimp_display_shell_quick_mask_toggled
	.cfi_endproc

	.globl	gimp_display_shell_navigation_button_press
	.align	16, 0x90
	.type	gimp_display_shell_navigation_button_press,@function
gimp_display_shell_navigation_button_press: # @gimp_display_shell_navigation_button_press
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	128(%rdx), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB14_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB14_5
# BB#4:                                 # %if.then.2
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %edx
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	callq	gimp_navigation_editor_popup
.LBB14_5:                               # %if.end.4
	movl	$1, -4(%rbp)
.LBB14_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_shell_navigation_button_press, .Lfunc_end14-gimp_display_shell_navigation_button_press
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"value-changed"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"change-value"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"popup-menu"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/quick-mask-popup"
	.size	.L.str.3, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
