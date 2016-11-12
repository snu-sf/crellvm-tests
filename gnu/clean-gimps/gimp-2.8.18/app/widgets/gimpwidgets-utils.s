	.text
	.file	"gimpwidgets-utils.bc"
	.globl	gimp_menu_position
	.align	16, 0x90
	.type	gimp_menu_position,@function
gimp_menu_position:                     # @gimp_menu_position
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_menu_position, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_35
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_menu_position, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_35
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.19
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_menu_position, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_35
.LBB0_21:                               # %if.end.21
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	callq	gdk_screen_get_monitor_at_point
	leaq	-64(%rbp), %rdx
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_menu_set_screen
	leaq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_size_request
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB0_26
# BB#23:                                # %if.then.29
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_25
# BB#24:                                # %if.then.32
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB0_25:                               # %if.end.34
	jmp	.LBB0_29
.LBB0_26:                               # %if.else.35
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	-48(%rbp), %ecx
	movl	-64(%rbp), %edx
	addl	-56(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB0_28
# BB#27:                                # %if.then.42
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
.LBB0_28:                               # %if.end.45
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.46
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-64(%rbp), %ecx
	jge	.LBB0_31
# BB#30:                                # %if.then.49
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_31:                               # %if.end.51
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	-60(%rbp), %edx
	addl	-52(%rbp), %edx
	cmpl	%edx, %ecx
	jle	.LBB0_33
# BB#32:                                # %if.then.57
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
.LBB0_33:                               # %if.end.60
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-60(%rbp), %ecx
	jge	.LBB0_35
# BB#34:                                # %if.then.63
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_35:                               # %if.end.65
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_menu_position, .Lfunc_end0-gimp_menu_position
	.cfi_endproc

	.globl	gimp_button_menu_position
	.align	16, 0x90
	.type	gimp_button_menu_position,@function
gimp_button_menu_position:              # @gimp_button_menu_position
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_59
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.14
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_59
.LBB1_16:                               # %if.end.16
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.17
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gtk_menu_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.27
	movl	$0, -140(%rbp)
	jmp	.LBB1_25
.LBB1_20:                               # %if.else.28
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.31
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB1_23
# BB#22:                                # %if.then.35
	movl	$1, -140(%rbp)
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.36
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB1_24:                               # %if.end.38
	jmp	.LBB1_25
.LBB1_25:                               # %if.end.39
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.42
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_59
.LBB1_28:                               # %if.end.44
	jmp	.LBB1_29
.LBB1_29:                               # %do.end.45
	jmp	.LBB1_30
.LBB1_30:                               # %do.body.46
	cmpq	$0, -32(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.48
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.49
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_59
.LBB1_33:                               # %if.end.50
	jmp	.LBB1_34
.LBB1_34:                               # %do.end.51
	jmp	.LBB1_35
.LBB1_35:                               # %do.body.52
	cmpq	$0, -40(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.54
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.55
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_59
.LBB1_38:                               # %if.end.56
	jmp	.LBB1_39
.LBB1_39:                               # %do.end.57
	leaq	-64(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB1_45
# BB#40:                                # %if.then.60
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB1_41
	jmp	.LBB1_60
.LBB1_60:                               # %if.then.60
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB1_42
	jmp	.LBB1_43
.LBB1_41:                               # %sw.bb
	movl	$1, -20(%rbp)
	jmp	.LBB1_44
.LBB1_42:                               # %sw.bb.61
	movl	$0, -20(%rbp)
	jmp	.LBB1_44
.LBB1_43:                               # %sw.default
	jmp	.LBB1_44
.LBB1_44:                               # %sw.epilog
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.62
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB1_47
# BB#46:                                # %if.then.65
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB1_47:                               # %if.end.69
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-32(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	gdk_window_get_root_coords
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	%rax, %rdi
	callq	gdk_screen_get_monitor_at_point
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rdi
	leaq	-88(%rbp), %rdx
	movl	%eax, %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_menu_set_screen
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB1_48
	jmp	.LBB1_61
.LBB1_61:                               # %if.end.69
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB1_51
	jmp	.LBB1_54
.LBB1_48:                               # %sw.bb.75
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB1_50
# BB#49:                                # %if.then.78
	movl	-72(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB1_50:                               # %if.end.83
	jmp	.LBB1_55
.LBB1_51:                               # %sw.bb.84
	movl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	addl	-72(%rbp), %eax
	movl	-88(%rbp), %edx
	addl	-80(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB1_53
# BB#52:                                # %if.then.93
	movl	-56(%rbp), %eax
	addl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
.LBB1_53:                               # %if.end.98
	jmp	.LBB1_55
.LBB1_54:                               # %sw.default.99
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_button_menu_position, %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	g_warning
.LBB1_55:                               # %sw.epilog.100
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movq	-40(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movq	-40(%rbp), %rsi
	movl	(%rsi), %eax
	addl	-68(%rbp), %eax
	movl	-84(%rbp), %edi
	addl	-76(%rbp), %edi
	cmpl	%edi, %eax
	jle	.LBB1_57
# BB#56:                                # %if.then.108
	movl	-68(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, (%rcx)
.LBB1_57:                               # %if.end.111
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-84(%rbp), %ecx
	jge	.LBB1_59
# BB#58:                                # %if.then.114
	movl	-84(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB1_59:                               # %if.end.116
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_button_menu_position, .Lfunc_end1-gimp_button_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
.LCPI3_1:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_table_attach_stock
	.align	16, 0x90
	.type	gimp_table_attach_stock,@function
gimp_table_attach_stock:                # @gimp_table_attach_stock
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_table_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_table_attach_stock, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_32
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_table_attach_stock, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_32
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_20
# BB#19:                                # %if.then.26
	movl	$0, -92(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %if.else.27
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_23
# BB#21:                                # %land.lhs.true.30
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_23
# BB#22:                                # %if.then.34
	movl	$1, -92(%rbp)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.35
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_24:                               # %if.end.37
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.38
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.41
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.42
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_table_attach_stock, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_32
.LBB3_28:                               # %if.end.43
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.44
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$4, %r8d
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %r9d
	movl	-12(%rbp), %r10d
	addl	$1, %r10d
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -40(%rbp)
	je	.LBB3_31
# BB#30:                                # %if.then.49
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB3_31:                               # %if.end.54
	movl	$1, %edx
	movl	$5, %eax
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %r8d
	addl	$1, %r8d
	movl	-12(%rbp), %r9d
	movl	-12(%rbp), %r10d
	addl	$1, %r10d
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_32:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_table_attach_stock, .Lfunc_end3-gimp_table_attach_stock
	.cfi_endproc

	.globl	gimp_enum_radio_box_add
	.align	16, 0x90
	.type	gimp_enum_radio_box_add,@function
gimp_enum_radio_box_add:                # @gimp_enum_radio_box_add
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
	pushq	%r14
	pushq	%rbx
	subq	$368, %rsp              # imm = 0x170
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_radio_box_add, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_48
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_radio_box_add, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_48
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -60(%rbp)
.LBB4_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_47
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_radio_button_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.51
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB4_33
.LBB4_28:                               # %if.else.52
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_31
# BB#29:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB4_31
# BB#30:                                # %if.then.59
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	$1, -132(%rbp)
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.60
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB4_32:                               # %if.end.62
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.63
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB4_42
# BB#34:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB4_25 Depth=1
	movabsq	$.L.str.11, %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB4_42
# BB#35:                                # %if.then.71
	xorl	%eax, %eax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	cmpl	$0, -40(%rbp)
	je	.LBB4_37
# BB#36:                                # %if.then.81
	movabsq	$.L.str.12, %rsi
	leaq	-164(%rbp), %rdx
	movabsq	$.L.str.13, %rcx
	leaq	-168(%rbp), %r8
	movabsq	$.L.str.14, %r9
	leaq	-172(%rbp), %rax
	movabsq	$.L.str.15, %rdi
	leaq	-176(%rbp), %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-144(%rbp), %r14
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, (%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%rbx, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_get
	movq	-144(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	$1, %edi
	xorl	%esi, %esi
	movl	%eax, -180(%rbp)
	callq	gtk_box_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	movl	-164(%rbp), %esi
	imull	$3, -168(%rbp), %r11d
	addl	%r11d, %esi
	addl	-172(%rbp), %esi
	addl	-176(%rbp), %esi
	addl	-180(%rbp), %esi
	callq	gtk_widget_set_size_request
	movq	-152(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	jmp	.LBB4_41
.LBB4_37:                               # %if.else.97
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB4_39
# BB#38:                                # %if.then.102
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$80, %edi
	movl	%edi, %esi
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	-192(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-192(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.105
	movq	-192(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	gtk_size_group_add_widget
.LBB4_40:                               # %if.end.106
	movq	-152(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
	movq	-152(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_41:                               # %if.end.114
	movq	-152(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rcx
	movl	$2, %r8d
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-328(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movq	-152(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	jmp	.LBB4_47
.LBB4_42:                               # %if.end.118
                                        #   in Loop: Header=BB4_25 Depth=1
	jmp	.LBB4_43
.LBB4_43:                               # %for.inc
                                        #   in Loop: Header=BB4_25 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_45
# BB#44:                                # %cond.true
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_46
.LBB4_45:                               # %cond.false
                                        #   in Loop: Header=BB4_25 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_46
.LBB4_46:                               # %cond.end
                                        #   in Loop: Header=BB4_25 Depth=1
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB4_25
.LBB4_47:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB4_48:                               # %return
	addq	$368, %rsp              # imm = 0x170
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_enum_radio_box_add, .Lfunc_end4-gimp_enum_radio_box_add
	.cfi_endproc

	.globl	gimp_enum_radio_frame_add
	.align	16, 0x90
	.type	gimp_enum_radio_frame_add,@function
gimp_enum_radio_frame_add:              # @gimp_enum_radio_frame_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_frame_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_radio_frame_add, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB5_20
.LBB5_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_19:                               # %if.end.31
	jmp	.LBB5_20
.LBB5_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.35
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_radio_frame_add, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_23:                               # %if.end.37
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -32(%rbp)
# BB#25:                                # %do.body.42
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_27
# BB#26:                                # %if.then.51
	movl	$0, -100(%rbp)
	jmp	.LBB5_32
.LBB5_27:                               # %if.else.52
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_30
# BB#28:                                # %land.lhs.true.55
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_30
# BB#29:                                # %if.then.59
	movl	$1, -100(%rbp)
	jmp	.LBB5_31
.LBB5_30:                               # %if.else.60
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_31:                               # %if.end.62
	jmp	.LBB5_32
.LBB5_32:                               # %if.end.63
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_34
# BB#33:                                # %if.then.66
	jmp	.LBB5_35
.LBB5_34:                               # %if.else.67
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_enum_radio_frame_add, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_37
.LBB5_35:                               # %if.end.68
	jmp	.LBB5_36
.LBB5_36:                               # %do.end.69
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_enum_radio_box_add
.LBB5_37:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_enum_radio_frame_add, .Lfunc_end5-gimp_enum_radio_frame_add
	.cfi_endproc

	.globl	gimp_get_icon_size
	.align	16, 0x90
	.type	gimp_get_icon_size,@function
gimp_get_icon_size:                     # @gimp_get_icon_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1024, -68(%rbp)        # imm = 0x400
	movl	$1024, -72(%rbp)        # imm = 0x400
	movl	$1, -84(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_icon_size, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_45
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_icon_size, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_45
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpl	$0, -32(%rbp)
	jle	.LBB6_20
# BB#19:                                # %if.then.19
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_icon_size, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_45
.LBB6_21:                               # %if.end.21
	jmp	.LBB6_22
.LBB6_22:                               # %do.end.22
	jmp	.LBB6_23
.LBB6_23:                               # %do.body.23
	cmpl	$0, -36(%rbp)
	jle	.LBB6_25
# BB#24:                                # %if.then.25
	jmp	.LBB6_26
.LBB6_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_icon_size, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_45
.LBB6_26:                               # %if.end.27
	jmp	.LBB6_27
.LBB6_27:                               # %do.end.28
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_style_lookup_icon_set
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_29
# BB#28:                                # %if.then.32
	movl	$0, -4(%rbp)
	jmp	.LBB6_45
.LBB6_29:                               # %if.end.33
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_icon_size_lookup_for_settings
	cmpl	$0, %eax
	jne	.LBB6_31
# BB#30:                                # %if.then.37
	movl	$1024, -76(%rbp)        # imm = 0x400
	movl	$1024, -80(%rbp)        # imm = 0x400
.LBB6_31:                               # %if.end.38
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	gtk_icon_set_get_sizes
	movl	$0, -64(%rbp)
.LBB6_32:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_44
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB6_32 Depth=1
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rax,4), %esi
	callq	gtk_icon_size_lookup_for_settings
	cmpl	$0, %eax
	je	.LBB6_42
# BB#34:                                # %if.then.44
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-124(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB6_41
# BB#35:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB6_41
# BB#36:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-124(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	.LBB6_41
# BB#37:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-128(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jg	.LBB6_41
# BB#38:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-32(%rbp), %eax
	subl	-124(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB6_40
# BB#39:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-36(%rbp), %eax
	subl	-128(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB6_41
.LBB6_40:                               # %if.then.56
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-32(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-36(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	%eax, -72(%rbp)
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -84(%rbp)
.LBB6_41:                               # %if.end.61
                                        #   in Loop: Header=BB6_32 Depth=1
	jmp	.LBB6_42
.LBB6_42:                               # %if.end.62
                                        #   in Loop: Header=BB6_32 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %for.inc
                                        #   in Loop: Header=BB6_32 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_32
.LBB6_44:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-84(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_45:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_get_icon_size, .Lfunc_end6-gimp_get_icon_size
	.cfi_endproc

	.globl	gimp_preview_tab_style_to_icon
	.align	16, 0x90
	.type	gimp_preview_tab_style_to_icon,@function
gimp_preview_tab_style_to_icon:         # @gimp_preview_tab_style_to_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%edi, %eax
	subl	$1, %edi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%edi, -12(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_6
.LBB7_6:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-8(%rbp), %eax          # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.bb.1
	movl	$4, -4(%rbp)
	jmp	.LBB7_5
.LBB7_3:                                # %sw.bb.2
	movl	$5, -4(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_preview_tab_style_to_icon, .Lfunc_end7-gimp_preview_tab_style_to_icon
	.cfi_endproc

	.globl	gimp_get_mod_string
	.align	16, 0x90
	.type	gimp_get_mod_string,@function
gimp_get_mod_string:                    # @gimp_get_mod_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_12
.LBB8_2:                                # %if.end
	cmpq	$0, gimp_get_mod_string.mod_labels
	jne	.LBB8_4
# BB#3:                                 # %if.then.2
	movabsq	$g_int_hash, %rdi
	movabsq	$g_int_equal, %rsi
	callq	g_hash_table_new
	movq	%rax, gimp_get_mod_string.mod_labels
.LBB8_4:                                # %if.end.3
	movl	-12(%rbp), %edi
	callq	gimp_replace_virtual_modifiers
	leaq	-12(%rbp), %rcx
	movl	%eax, -12(%rbp)
	movq	gimp_get_mod_string.mod_labels, %rdi
	movq	%rcx, %rsi
	callq	g_hash_table_lookup
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_11
# BB#5:                                 # %if.then.7
	xorl	%edi, %edi
	movl	-12(%rbp), %esi
	callq	gtk_accelerator_get_label
	movq	%rax, -24(%rbp)
	callq	gtk_accel_label_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 816(%rax)
	je	.LBB8_10
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	816(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_10
# BB#7:                                 # %if.then.14
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	816(%rax), %rsi
	callq	g_strrstr
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-32(%rbp), %rsi
	movq	816(%rsi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rsi         # 8-byte Reload
	subq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rsi, %rax
	jne	.LBB8_9
# BB#8:                                 # %if.then.21
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBB8_9:                                # %if.end.22
	jmp	.LBB8_10
.LBB8_10:                               # %if.end.23
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref
	movl	$4, %esi
	leaq	-12(%rbp), %rax
	movq	gimp_get_mod_string.mod_labels, %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_memdup
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB8_11:                               # %if.end.26
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_get_mod_string, .Lfunc_end8-gimp_get_mod_string
	.cfi_endproc

	.globl	gimp_replace_virtual_modifiers
	.align	16, 0x90
	.type	gimp_replace_virtual_modifiers,@function
gimp_replace_virtual_modifiers:         # @gimp_replace_virtual_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	callq	gdk_display_get_default
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -24(%rbp)
	jge	.LBB9_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, %eax
	movl	-24(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	andl	-28(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB9_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_keymap_add_virtual_modifiers
	movl	-32(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB9_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.6
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_9:                                # %for.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_replace_virtual_modifiers, .Lfunc_end9-gimp_replace_virtual_modifiers
	.cfi_endproc

	.globl	gimp_suggest_modifiers
	.align	16, 0x90
	.type	gimp_suggest_modifiers,@function
gimp_suggest_modifiers:                 # @gimp_suggest_modifiers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$544, %rsp              # imm = 0x220
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -356(%rbp)
	movl	$0, -360(%rbp)
	movl	-20(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	je	.LBB10_6
# BB#1:                                 # %if.then
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_4
# BB#3:                                 # %if.then.3
	movl	$1, %edi
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movl	$1, %edi
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strlcpy
	movl	$1, -360(%rbp)
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB10_5:                               # %if.end
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
.LBB10_6:                               # %if.end.10
	movl	-20(%rbp), %eax
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-404(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB10_12
# BB#7:                                 # %if.then.14
	cmpq	$0, -40(%rbp)
	je	.LBB10_10
# BB#8:                                 # %land.lhs.true.16
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_10
# BB#9:                                 # %if.then.19
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -416(%rbp)        # 8-byte Spill
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, %edi
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %esi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -428(%rbp)        # 4-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.26
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, %edi
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strlcpy
	movl	$1, -360(%rbp)
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB10_11:                              # %if.end.33
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
.LBB10_12:                              # %if.end.35
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB10_18
# BB#13:                                # %if.then.38
	cmpq	$0, -48(%rbp)
	je	.LBB10_16
# BB#14:                                # %land.lhs.true.40
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_16
# BB#15:                                # %if.then.43
	movl	$8, %edi
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %esi
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	%eax, -468(%rbp)        # 4-byte Spill
	jmp	.LBB10_17
.LBB10_16:                              # %if.else.49
	movl	$8, %edi
	leaq	-352(%rbp), %rax
	movslq	-356(%rbp), %rcx
	imulq	$100, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movl	$100, %edi
	movl	%edi, %edx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strlcpy
	movl	$1, -360(%rbp)
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB10_17:                              # %if.end.55
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
.LBB10_18:                              # %if.end.57
	movl	-356(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -492(%rbp)        # 4-byte Spill
	movl	%ecx, -496(%rbp)        # 4-byte Spill
	je	.LBB10_19
	jmp	.LBB10_27
.LBB10_27:                              # %if.end.57
	movl	-492(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -500(%rbp)        # 4-byte Spill
	je	.LBB10_23
	jmp	.LBB10_28
.LBB10_28:                              # %if.end.57
	movl	-492(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	je	.LBB10_24
	jmp	.LBB10_25
.LBB10_19:                              # %sw.bb
	cmpl	$0, -360(%rbp)
	je	.LBB10_21
# BB#20:                                # %cond.true
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB10_22
.LBB10_21:                              # %cond.false
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB10_22:                              # %cond.end
	movq	-512(%rbp), %rax        # 8-byte Reload
	leaq	-352(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB10_26
.LBB10_23:                              # %sw.bb.64
	movabsq	$.L.str.24, %rdi
	callq	gettext
	leaq	-352(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, %rcx
	addq	$100, %rcx
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-520(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB10_26
.LBB10_24:                              # %sw.bb.71
	movabsq	$.L.str.25, %rdi
	callq	gettext
	leaq	-352(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, %rcx
	addq	$100, %rcx
	movq	%rdi, %rdx
	addq	$200, %rdx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-536(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB10_26
.LBB10_25:                              # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB10_26:                              # %return
	movq	-8(%rbp), %rax
	addq	$544, %rsp              # imm = 0x220
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_suggest_modifiers, .Lfunc_end10-gimp_suggest_modifiers
	.cfi_endproc

	.globl	gimp_get_toggle_behavior_mask
	.align	16, 0x90
	.type	gimp_get_toggle_behavior_mask,@function
gimp_get_toggle_behavior_mask:          # @gimp_get_toggle_behavior_mask
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
	subq	$16, %rsp
	callq	gdk_display_get_default
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_get_toggle_behavior_mask, .Lfunc_end11-gimp_get_toggle_behavior_mask
	.cfi_endproc

	.globl	gimp_modifiers_to_channel_op
	.align	16, 0x90
	.type	gimp_modifiers_to_channel_op,@function
gimp_modifiers_to_channel_op:           # @gimp_modifiers_to_channel_op
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	callq	gimp_get_extend_selection_mask
	movl	%eax, -12(%rbp)
	callq	gimp_get_modify_selection_mask
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	andl	-12(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_4
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	andl	-16(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_3
# BB#2:                                 # %if.then.4
	movl	$3, -4(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movl	$0, -4(%rbp)
	jmp	.LBB12_8
.LBB12_4:                               # %if.else.5
	movl	-8(%rbp), %eax
	andl	-16(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.8
	movl	$1, -4(%rbp)
	jmp	.LBB12_8
.LBB12_6:                               # %if.end
	jmp	.LBB12_7
.LBB12_7:                               # %if.end.9
	movl	$2, -4(%rbp)
.LBB12_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_modifiers_to_channel_op, .Lfunc_end12-gimp_modifiers_to_channel_op
	.cfi_endproc

	.globl	gimp_get_extend_selection_mask
	.align	16, 0x90
	.type	gimp_get_extend_selection_mask,@function
gimp_get_extend_selection_mask:         # @gimp_get_extend_selection_mask
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
	subq	$16, %rsp
	callq	gdk_display_get_default
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_get_extend_selection_mask, .Lfunc_end13-gimp_get_extend_selection_mask
	.cfi_endproc

	.globl	gimp_get_modify_selection_mask
	.align	16, 0x90
	.type	gimp_get_modify_selection_mask,@function
gimp_get_modify_selection_mask:         # @gimp_get_modify_selection_mask
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
	subq	$16, %rsp
	callq	gdk_display_get_default
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_get_modify_selection_mask, .Lfunc_end14-gimp_get_modify_selection_mask
	.cfi_endproc

	.globl	gimp_get_constrain_behavior_mask
	.align	16, 0x90
	.type	gimp_get_constrain_behavior_mask,@function
gimp_get_constrain_behavior_mask:       # @gimp_get_constrain_behavior_mask
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
	subq	$16, %rsp
	callq	gdk_display_get_default
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_get_constrain_behavior_mask, .Lfunc_end15-gimp_get_constrain_behavior_mask
	.cfi_endproc

	.globl	gimp_get_all_modifiers_mask
	.align	16, 0x90
	.type	gimp_get_all_modifiers_mask,@function
gimp_get_all_modifiers_mask:            # @gimp_get_all_modifiers_mask
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
	callq	gdk_display_get_default
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_keymap_get_for_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	orl	$13, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gdk_keymap_get_for_display
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	movl	-12(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movq	-8(%rbp), %rdi
	movl	%esi, -16(%rbp)         # 4-byte Spill
	callq	gdk_keymap_get_for_display
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gdk_keymap_get_modifier_mask
	movl	-16(%rbp), %esi         # 4-byte Reload
	orl	%eax, %esi
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_get_all_modifiers_mask, .Lfunc_end16-gimp_get_all_modifiers_mask
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4627842682090579558     # double 25.399999999999999
.LCPI17_1:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI17_2:
	.quad	4679240012837945344     # double 65536
.LCPI17_3:
	.quad	4636455816377925632     # double 96
.LCPI17_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_get_screen_resolution
	.align	16, 0x90
	.type	gimp_get_screen_resolution,@function
gimp_get_screen_resolution:             # @gimp_get_screen_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB17_10
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB17_9
.LBB17_4:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_7
# BB#5:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB17_7
# BB#6:                                 # %if.then.4
	movl	$1, -76(%rbp)
	jmp	.LBB17_8
.LBB17_7:                               # %if.else.5
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB17_8:                               # %if.end
	jmp	.LBB17_9
.LBB17_9:                               # %if.end.7
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB17_11
.LBB17_10:                              # %if.then.9
	jmp	.LBB17_12
.LBB17_11:                              # %if.else.10
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_screen_resolution, %rsi
	movabsq	$.L.str.26, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_34
.LBB17_12:                              # %if.end.11
	jmp	.LBB17_13
.LBB17_13:                              # %do.end
	jmp	.LBB17_14
.LBB17_14:                              # %do.body.12
	cmpq	$0, -16(%rbp)
	je	.LBB17_16
# BB#15:                                # %if.then.14
	jmp	.LBB17_17
.LBB17_16:                              # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_screen_resolution, %rsi
	movabsq	$.L.str.27, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_34
.LBB17_17:                              # %if.end.16
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.17
	jmp	.LBB17_19
.LBB17_19:                              # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB17_21
# BB#20:                                # %if.then.20
	jmp	.LBB17_22
.LBB17_21:                              # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_get_screen_resolution, %rsi
	movabsq	$.L.str.28, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_34
.LBB17_22:                              # %if.end.22
	jmp	.LBB17_23
.LBB17_23:                              # %do.end.23
	cmpq	$0, -8(%rbp)
	jne	.LBB17_25
# BB#24:                                # %if.then.25
	callq	gdk_screen_get_default
	movq	%rax, -8(%rbp)
.LBB17_25:                              # %if.end.27
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_width
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_height
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_width_mm
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_screen_get_height_mm
	movl	%eax, -40(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB17_28
# BB#26:                                # %land.lhs.true.33
	cmpl	$0, -40(%rbp)
	jle	.LBB17_28
# BB#27:                                # %if.then.35
	movsd	.LCPI17_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-36(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-40(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
.LBB17_28:                              # %if.end.41
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	ja	.LBB17_32
# BB#29:                                # %lor.lhs.false.44
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB17_32
# BB#30:                                # %lor.lhs.false.47
	movsd	.LCPI17_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	ja	.LBB17_32
# BB#31:                                # %lor.lhs.false.50
	movsd	.LCPI17_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_33
.LBB17_32:                              # %if.then.53
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	g_warning
	movsd	.LCPI17_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
.LBB17_33:                              # %if.end.54
	movsd	.LCPI17_4, %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	addsd	-56(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB17_34:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_get_screen_resolution, .Lfunc_end17-gimp_get_screen_resolution
	.cfi_endproc

	.globl	gimp_rgb_get_gdk_color
	.align	16, 0x90
	.type	gimp_rgb_get_gdk_color,@function
gimp_rgb_get_gdk_color:                 # @gimp_rgb_get_gdk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rgb_get_gdk_color, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_11
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	jmp	.LBB18_6
.LBB18_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB18_8
# BB#7:                                 # %if.then.3
	jmp	.LBB18_9
.LBB18_8:                               # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rgb_get_gdk_color, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_11
.LBB18_9:                               # %if.end.5
	jmp	.LBB18_10
.LBB18_10:                              # %do.end.6
	leaq	-17(%rbp), %rsi
	leaq	-18(%rbp), %rdx
	leaq	-19(%rbp), %rcx
	movq	-8(%rbp), %rdi
	callq	gimp_rgb_get_uchar
	movzbl	-17(%rbp), %eax
	shll	$8, %eax
	movzbl	-17(%rbp), %r8d
	orl	%r8d, %eax
	movw	%ax, %r9w
	movq	-16(%rbp), %rcx
	movw	%r9w, 4(%rcx)
	movzbl	-18(%rbp), %eax
	shll	$8, %eax
	movzbl	-18(%rbp), %r8d
	orl	%r8d, %eax
	movw	%ax, %r9w
	movq	-16(%rbp), %rcx
	movw	%r9w, 6(%rcx)
	movzbl	-19(%rbp), %eax
	shll	$8, %eax
	movzbl	-19(%rbp), %r8d
	orl	%r8d, %eax
	movw	%ax, %r9w
	movq	-16(%rbp), %rcx
	movw	%r9w, 8(%rcx)
.LBB18_11:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_rgb_get_gdk_color, .Lfunc_end18-gimp_rgb_get_gdk_color
	.cfi_endproc

	.globl	gimp_rgb_set_gdk_color
	.align	16, 0x90
	.type	gimp_rgb_set_gdk_color,@function
gimp_rgb_set_gdk_color:                 # @gimp_rgb_set_gdk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rgb_set_gdk_color, %rsi
	movabsq	$.L.str.30, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_11
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	jmp	.LBB19_6
.LBB19_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then.3
	jmp	.LBB19_9
.LBB19_8:                               # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_rgb_set_gdk_color, %rsi
	movabsq	$.L.str.31, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_11
.LBB19_9:                               # %if.end.5
	jmp	.LBB19_10
.LBB19_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -17(%rbp)
	movq	-16(%rbp), %rax
	movzwl	6(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -18(%rbp)
	movq	-16(%rbp), %rax
	movzwl	8(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	movb	%dl, -19(%rbp)
	movq	-8(%rbp), %rdi
	movb	-17(%rbp), %dl
	movb	-18(%rbp), %sil
	movzbl	%dl, %ecx
	movb	%sil, -20(%rbp)         # 1-byte Spill
	movl	%ecx, %esi
	movb	-20(%rbp), %dl          # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	-19(%rbp), %ecx
	callq	gimp_rgb_set_uchar
.LBB19_11:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_rgb_set_gdk_color, .Lfunc_end19-gimp_rgb_set_gdk_color
	.cfi_endproc

	.globl	gimp_window_set_hint
	.align	16, 0x90
	.type	gimp_window_set_hint,@function
gimp_window_set_hint:                   # @gimp_window_set_hint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_window_set_hint, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_16
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB20_13
	jmp	.LBB20_17
.LBB20_17:                              # %do.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB20_14
	jmp	.LBB20_18
.LBB20_18:                              # %do.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB20_15
	jmp	.LBB20_16
.LBB20_13:                              # %sw.bb
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_window_set_type_hint
	jmp	.LBB20_16
.LBB20_14:                              # %sw.bb.11
	movl	$5, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_window_set_type_hint
	jmp	.LBB20_16
.LBB20_15:                              # %sw.bb.12
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gtk_window_set_keep_above
.LBB20_16:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_window_set_hint, .Lfunc_end20-gimp_window_set_hint
	.cfi_endproc

	.globl	gimp_window_get_native_id
	.align	16, 0x90
	.type	gimp_window_get_native_id,@function
gimp_window_get_native_id:              # @gimp_window_get_native_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_window_get_native_id, %rsi
	movabsq	$.L.str.32, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB21_16
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB21_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB21_15
# BB#14:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB21_16
.LBB21_15:                              # %if.end.22
	movl	$0, -4(%rbp)
.LBB21_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_window_get_native_id, .Lfunc_end21-gimp_window_get_native_id
	.cfi_endproc

	.globl	gimp_window_set_transient_for
	.align	16, 0x90
	.type	gimp_window_set_transient_for,@function
gimp_window_set_transient_for:          # @gimp_window_set_transient_for
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_get_foreign_window
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_5
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB22_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_window
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_transient_for
.LBB22_4:                               # %if.end.9
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_window_transient_realized, %rax
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB22_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_window_set_transient_for, .Lfunc_end22-gimp_window_set_transient_for
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_get_foreign_window,@function
gimp_get_foreign_window:                # @gimp_get_foreign_window
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gdk_display_get_default
	movl	-4(%rbp), %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	gdk_x11_window_foreign_new_for_display
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_get_foreign_window, .Lfunc_end23-gimp_get_foreign_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_transient_realized,@function
gimp_window_transient_realized:         # @gimp_window_transient_realized
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_transient_for
.LBB24_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_window_transient_realized, .Lfunc_end24-gimp_window_transient_realized
	.cfi_endproc

	.globl	gimp_toggle_button_set_visible
	.align	16, 0x90
	.type	gimp_toggle_button_set_visible,@function
gimp_toggle_button_set_visible:         # @gimp_toggle_button_set_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_toggle_button_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toggle_button_set_visible, %rsi
	movabsq	$.L.str.34, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_25
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	jmp	.LBB25_13
.LBB25_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB25_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB25_20
.LBB25_15:                              # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB25_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB25_19
.LBB25_18:                              # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB25_19:                              # %if.end.31
	jmp	.LBB25_20
.LBB25_20:                              # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB25_22
# BB#21:                                # %if.then.35
	jmp	.LBB25_23
.LBB25_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_toggle_button_set_visible, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_25
.LBB25_23:                              # %if.end.37
	jmp	.LBB25_24
.LBB25_24:                              # %do.end.38
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_visible
.LBB25_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_toggle_button_set_visible, .Lfunc_end25-gimp_toggle_button_set_visible
	.cfi_endproc

	.globl	gimp_widget_set_accel_help
	.align	16, 0x90
	.type	gimp_widget_set_accel_help,@function
gimp_widget_set_accel_help:             # @gimp_widget_set_accel_help
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_action_get_accel_closure
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-24(%rbp), %rdi
	callq	gtk_accel_group_from_accel_closure
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_widget_accel_changed, %rcx
	xorl	%r8d, %r8d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%r8d, %esi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_widget_accel_changed
	jmp	.LBB26_3
.LBB26_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_help_set_help_data
.LBB26_3:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_widget_set_accel_help, .Lfunc_end26-gimp_widget_set_accel_help
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_widget_accel_changed,@function
gimp_widget_accel_changed:              # @gimp_widget_accel_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_7
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_action_get_tooltip
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_help_id_quark
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	g_object_get_qdata
	movabsq	$gimp_widget_accel_find_func, %rsi
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	callq	gtk_accel_group_find
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB27_5
# BB#2:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB27_5
# BB#3:                                 # %land.lhs.true.11
	movq	-56(%rbp), %rax
	movzwl	8(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB27_5
# BB#4:                                 # %if.then.13
	movq	$-1, %rsi
	movq	-64(%rbp), %rdi
	callq	g_markup_escape_text
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	movq	-56(%rbp), %rax
	movl	4(%rax), %esi
	callq	gtk_accelerator_get_label
	movabsq	$.L.str.69, %rdi
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_help_set_help_data_with_markup
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB27_6
.LBB27_5:                               # %if.else
	movq	-32(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	gimp_help_set_help_data
.LBB27_6:                               # %if.end
	jmp	.LBB27_7
.LBB27_7:                               # %if.end.18
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_widget_accel_changed, .Lfunc_end27-gimp_widget_accel_changed
	.cfi_endproc

	.globl	gimp_get_message_stock_id
	.align	16, 0x90
	.type	gimp_get_message_stock_id,@function
gimp_get_message_stock_id:              # @gimp_get_message_stock_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB28_1
	jmp	.LBB28_7
.LBB28_7:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB28_2
	jmp	.LBB28_8
.LBB28_8:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB28_3
	jmp	.LBB28_4
.LBB28_1:                               # %sw.bb
	movabsq	$.L.str.38, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_6
.LBB28_2:                               # %sw.bb.1
	movabsq	$.L.str.39, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_6
.LBB28_3:                               # %sw.bb.2
	movabsq	$.L.str.40, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_6
.LBB28_4:                               # %sw.epilog
	jmp	.LBB28_5
.LBB28_5:                               # %do.body
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.42, %rcx
	movl	$1062, %r8d             # imm = 0x426
	movabsq	$.L__func__.gimp_get_message_stock_id, %r9
	movb	$0, %al
	callq	g_log
	movabsq	$.L.str.39, %rcx
	movq	%rcx, -8(%rbp)
.LBB28_6:                               # %do.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_get_message_stock_id, .Lfunc_end28-gimp_get_message_stock_id
	.cfi_endproc

	.globl	gimp_pango_layout_set_scale
	.align	16, 0x90
	.type	gimp_pango_layout_set_scale,@function
gimp_pango_layout_set_scale:            # @gimp_pango_layout_set_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	pango_layout_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pango_layout_set_scale, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	callq	pango_attr_list_new
	movq	%rax, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	pango_attr_scale_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-24(%rbp), %rdi
	callq	pango_attr_list_unref
.LBB29_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_pango_layout_set_scale, .Lfunc_end29-gimp_pango_layout_set_scale
	.cfi_endproc

	.globl	gimp_pango_layout_set_weight
	.align	16, 0x90
	.type	gimp_pango_layout_set_weight,@function
gimp_pango_layout_set_weight:           # @gimp_pango_layout_set_weight
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	pango_layout_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_pango_layout_set_weight, %rsi
	movabsq	$.L.str.43, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB30_13
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	callq	pango_attr_list_new
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	pango_attr_weight_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-24(%rbp), %rdi
	callq	pango_attr_list_unref
.LBB30_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_pango_layout_set_weight, .Lfunc_end30-gimp_pango_layout_set_weight
	.cfi_endproc

	.globl	gimp_highlight_widget
	.align	16, 0x90
	.type	gimp_highlight_widget,@function
gimp_highlight_widget:                  # @gimp_highlight_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_highlight_widget, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_15
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	cmpl	$0, -12(%rbp)
	je	.LBB31_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rdi
	callq	gtk_drag_highlight
	jmp	.LBB31_15
.LBB31_14:                              # %if.else.13
	movq	-8(%rbp), %rdi
	callq	gtk_drag_unhighlight
.LBB31_15:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_highlight_widget, .Lfunc_end31-gimp_highlight_widget
	.cfi_endproc

	.globl	gimp_dock_with_window_new
	.align	16, 0x90
	.type	gimp_dock_with_window_new,@function
gimp_dock_with_window_new:              # @gimp_dock_with_window_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dock_with_window_new, %rsi
	movabsq	$.L.str.44, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_27
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gdk_screen_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB32_15
# BB#14:                                # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB32_20
.LBB32_15:                              # %if.else.21
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_18
# BB#16:                                # %land.lhs.true.24
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB32_18
# BB#17:                                # %if.then.28
	movl	$1, -108(%rbp)
	jmp	.LBB32_19
.LBB32_18:                              # %if.else.29
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB32_19:                              # %if.end.31
	jmp	.LBB32_20
.LBB32_20:                              # %if.end.32
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB32_22
# BB#21:                                # %if.then.35
	jmp	.LBB32_23
.LBB32_22:                              # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dock_with_window_new, %rsi
	movabsq	$.L.str.45, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB32_27
.LBB32_23:                              # %if.end.37
	jmp	.LBB32_24
.LBB32_24:                              # %do.end.38
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movabsq	$.L.str.47, %rcx
	movabsq	$.L.str.46, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r10
	cmpl	$0, -28(%rbp)
	cmovneq	%rsi, %rcx
	movq	%r10, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_dock_container_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_dock_container_get_ui_manager
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.48, %rdx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-64(%rbp), %rax
	cmpl	$0, -28(%rbp)
	cmovneq	%rdx, %rcx
	movq	%rax, %rdx
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB32_26
# BB#25:                                # %if.then.48
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dock_window_add_dock
.LBB32_26:                              # %if.end.53
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB32_27:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dock_with_window_new, .Lfunc_end32-gimp_dock_with_window_new
	.cfi_endproc

	.globl	gimp_tools_get_tool_options_gui
	.align	16, 0x90
	.type	gimp_tools_get_tool_options_gui,@function
gimp_tools_get_tool_options_gui:        # @gimp_tools_get_tool_options_gui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_tools_get_tool_options_gui, .Lfunc_end33-gimp_tools_get_tool_options_gui
	.cfi_endproc

	.globl	gimp_tools_set_tool_options_gui
	.align	16, 0x90
	.type	gimp_tools_set_tool_options_gui,@function
gimp_tools_set_tool_options_gui:        # @gimp_tools_set_tool_options_gui
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movabsq	$g_object_unref, %rdi
	movq	-16(%rbp), %r8
	cmpq	$0, -16(%rbp)
	cmovneq	%rdi, %rcx
	movq	%rax, %rdi
	movq	%r8, %rdx
	callq	g_object_set_data_full
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_tools_set_tool_options_gui, .Lfunc_end34-gimp_tools_set_tool_options_gui
	.cfi_endproc

	.globl	gimp_widget_flush_expose
	.align	16, 0x90
	.type	gimp_widget_flush_expose,@function
gimp_widget_flush_expose:               # @gimp_widget_flush_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_widget_flush_expose, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_15
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB35_14
# BB#13:                                # %if.then.13
	jmp	.LBB35_15
.LBB35_14:                              # %if.end.14
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_window_process_updates
	callq	gdk_flush
.LBB35_15:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_widget_flush_expose, .Lfunc_end35-gimp_widget_flush_expose
	.cfi_endproc

	.globl	gimp_print_event
	.align	16, 0x90
	.type	gimp_print_event,@function
gimp_print_event:                       # @gimp_print_event
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	(%rdi), %eax
	addl	$-3, %eax
	movl	%eax, %edi
	subl	$28, %eax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB36_23
# BB#25:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI36_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB36_1:                               # %sw.bb
	movabsq	$.L.str.51, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_2:                               # %sw.bb.1
	movabsq	$.L.str.52, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_3:                               # %sw.bb.3
	movabsq	$.L.str.53, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_4:                               # %sw.bb.5
	movabsq	$.L.str.54, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_5:                               # %sw.bb.7
	movq	-8(%rbp), %rax
	cmpw	$0, 18(%rax)
	je	.LBB36_7
# BB#6:                                 # %if.then
	movabsq	$.L.str.55, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
	jmp	.LBB36_8
.LBB36_7:                               # %if.else
	movabsq	$.L.str.56, %rdi
	callq	g_strdup
	movq	%rax, -16(%rbp)
.LBB36_8:                               # %if.end
	jmp	.LBB36_24
.LBB36_9:                               # %sw.bb.10
	movabsq	$.L.str.57, %rdi
	movq	-8(%rbp), %rax
	movl	52(%rax), %esi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_10:                              # %sw.bb.15
	movabsq	$.L.str.58, %rdi
	movq	-8(%rbp), %rax
	movl	52(%rax), %esi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_11:                              # %sw.bb.23
	movabsq	$.L.str.59, %rdi
	movq	-8(%rbp), %rax
	movl	52(%rax), %esi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_12:                              # %sw.bb.31
	movabsq	$.L.str.60, %rdi
	movq	-8(%rbp), %rax
	movl	52(%rax), %esi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_13:                              # %sw.bb.39
	movabsq	$.L.str.61, %rdi
	movq	-8(%rbp), %rax
	movl	44(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_14:                              # %sw.bb.41
	movabsq	$.L.str.62, %rdi
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_15:                              # %sw.bb.47
	movq	-8(%rbp), %rax
	movl	28(%rax), %esi
	movq	-8(%rbp), %rax
	movl	28(%rax), %edi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	callq	gdk_keyval_name
	cmpq	$0, %rax
	je	.LBB36_17
# BB#16:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	28(%rax), %edi
	callq	gdk_keyval_name
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB36_18
.LBB36_17:                              # %cond.false
	movabsq	$.L.str.64, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB36_18
.LBB36_18:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.63, %rdi
	movl	-32(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_19:                              # %sw.bb.56
	movq	-8(%rbp), %rax
	movl	28(%rax), %esi
	movq	-8(%rbp), %rax
	movl	28(%rax), %edi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	gdk_keyval_name
	cmpq	$0, %rax
	je	.LBB36_21
# BB#20:                                # %cond.true.63
	movq	-8(%rbp), %rax
	movl	28(%rax), %edi
	callq	gdk_keyval_name
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB36_22
.LBB36_21:                              # %cond.false.67
	movabsq	$.L.str.64, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB36_22
.LBB36_22:                              # %cond.end.68
	movq	-56(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.65, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	jmp	.LBB36_24
.LBB36_23:                              # %sw.default
	movabsq	$.L.str.66, %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
.LBB36_24:                              # %sw.epilog
	movabsq	$gimp_print_event_free, %rdi
	movq	-16(%rbp), %rsi
	callq	g_idle_add
	movq	-16(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rsi, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_print_event, .Lfunc_end36-gimp_print_event
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI36_0:
	.quad	.LBB36_14
	.quad	.LBB36_9
	.quad	.LBB36_10
	.quad	.LBB36_11
	.quad	.LBB36_12
	.quad	.LBB36_15
	.quad	.LBB36_19
	.quad	.LBB36_1
	.quad	.LBB36_2
	.quad	.LBB36_5
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_3
	.quad	.LBB36_4
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_23
	.quad	.LBB36_13

	.text
	.align	16, 0x90
	.type	gimp_print_event_free,@function
gimp_print_event_free:                  # @gimp_print_event_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_print_event_free, .Lfunc_end37-gimp_print_event_free
	.cfi_endproc

	.globl	gimp_session_write_position
	.align	16, 0x90
	.type	gimp_session_write_position,@function
gimp_session_write_position:            # @gimp_session_write_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	gimp_session_info_get_type
	movq	%rax, %rdi
	callq	g_type_class_ref
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_session_info_class_apply_position_accuracy
	movabsq	$.L.str.67, %rsi
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_open
	movabsq	$.L.str.68, %rsi
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %edx
	movb	$0, %al
	callq	gimp_config_writer_printf
	movq	-8(%rbp), %rdi
	callq	gimp_config_writer_close
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_type_class_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_session_write_position, .Lfunc_end38-gimp_session_write_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_widget_accel_find_func,@function
gimp_widget_accel_find_func:            # @gimp_widget_accel_find_func
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
	movq	-24(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_widget_accel_find_func, .Lfunc_end39-gimp_widget_accel_find_func
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_menu_position,@object # @__func__.gimp_menu_position
.L__func__.gimp_menu_position:
	.asciz	"gimp_menu_position"
	.size	.L__func__.gimp_menu_position, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GTK_IS_MENU (menu)"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"x != NULL"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"y != NULL"
	.size	.L.str.3, 10

	.type	.L__func__.gimp_button_menu_position,@object # @__func__.gimp_button_menu_position
.L__func__.gimp_button_menu_position:
	.asciz	"gimp_button_menu_position"
	.size	.L__func__.gimp_button_menu_position, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GTK_IS_WIDGET (button)"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk_widget_get_realized (button)"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s: unhandled position (%d)"
	.size	.L.str.6, 28

	.type	.L__func__.gimp_table_attach_stock,@object # @__func__.gimp_table_attach_stock
.L__func__.gimp_table_attach_stock:
	.asciz	"gimp_table_attach_stock"
	.size	.L__func__.gimp_table_attach_stock, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GTK_IS_TABLE (table)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"stock_id != NULL"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.9, 23

	.type	.L__func__.gimp_enum_radio_box_add,@object # @__func__.gimp_enum_radio_box_add
.L__func__.gimp_enum_radio_box_add:
	.asciz	"gimp_enum_radio_box_add"
	.size	.L__func__.gimp_enum_radio_box_add, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GTK_IS_BOX (box)"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-item-data"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"indicator-size"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"indicator-spacing"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"focus-line-width"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"focus-padding"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"size-group"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"active"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"sensitive"
	.size	.L.str.18, 10

	.type	.L__func__.gimp_enum_radio_frame_add,@object # @__func__.gimp_enum_radio_frame_add
.L__func__.gimp_enum_radio_frame_add:
	.asciz	"gimp_enum_radio_frame_add"
	.size	.L__func__.gimp_enum_radio_frame_add, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GTK_IS_FRAME (frame)"
	.size	.L.str.19, 21

	.type	.L__func__.gimp_get_icon_size,@object # @__func__.gimp_get_icon_size
.L__func__.gimp_get_icon_size:
	.asciz	"gimp_get_icon_size"
	.size	.L__func__.gimp_get_icon_size, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"width > 0"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"height > 0"
	.size	.L.str.21, 11

	.type	gimp_get_mod_string.mod_labels,@object # @gimp_get_mod_string.mod_labels
	.local	gimp_get_mod_string.mod_labels
	.comm	gimp_get_mod_string.mod_labels,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s (try %s)"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s (%s)"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s (try %s, %s)"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s (try %s, %s, %s)"
	.size	.L.str.25, 20

	.type	.L__func__.gimp_get_screen_resolution,@object # @__func__.gimp_get_screen_resolution
.L__func__.gimp_get_screen_resolution:
	.asciz	"gimp_get_screen_resolution"
	.size	.L__func__.gimp_get_screen_resolution, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"screen == NULL || GDK_IS_SCREEN (screen)"
	.size	.L.str.26, 41

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"xres != NULL"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"yres != NULL"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GDK returned bogus values for the screen resolution, using 96 dpi instead."
	.size	.L.str.29, 75

	.type	.L__func__.gimp_rgb_get_gdk_color,@object # @__func__.gimp_rgb_get_gdk_color
.L__func__.gimp_rgb_get_gdk_color:
	.asciz	"gimp_rgb_get_gdk_color"
	.size	.L__func__.gimp_rgb_get_gdk_color, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"rgb != NULL"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gdk_color != NULL"
	.size	.L.str.31, 18

	.type	.L__func__.gimp_rgb_set_gdk_color,@object # @__func__.gimp_rgb_set_gdk_color
.L__func__.gimp_rgb_set_gdk_color:
	.asciz	"gimp_rgb_set_gdk_color"
	.size	.L__func__.gimp_rgb_set_gdk_color, 23

	.type	.L__func__.gimp_window_set_hint,@object # @__func__.gimp_window_set_hint
.L__func__.gimp_window_set_hint:
	.asciz	"gimp_window_set_hint"
	.size	.L__func__.gimp_window_set_hint, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"GTK_IS_WINDOW (window)"
	.size	.L.str.32, 23

	.type	.L__func__.gimp_window_get_native_id,@object # @__func__.gimp_window_get_native_id
.L__func__.gimp_window_get_native_id:
	.asciz	"gimp_window_get_native_id"
	.size	.L__func__.gimp_window_get_native_id, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"realize"
	.size	.L.str.33, 8

	.type	.L__func__.gimp_toggle_button_set_visible,@object # @__func__.gimp_toggle_button_set_visible
.L__func__.gimp_toggle_button_set_visible:
	.asciz	"gimp_toggle_button_set_visible"
	.size	.L__func__.gimp_toggle_button_set_visible, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GTK_IS_TOGGLE_BUTTON (toggle)"
	.size	.L.str.34, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-accel-closure"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-accel-action"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"accel-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-info"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-warning"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-error"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.41, 45

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimpwidgets-utils.c"
	.size	.L.str.42, 20

	.type	.L__func__.gimp_get_message_stock_id,@object # @__func__.gimp_get_message_stock_id
.L__func__.gimp_get_message_stock_id:
	.asciz	"gimp_get_message_stock_id"
	.size	.L__func__.gimp_get_message_stock_id, 26

	.type	.L__func__.gimp_pango_layout_set_scale,@object # @__func__.gimp_pango_layout_set_scale
.L__func__.gimp_pango_layout_set_scale:
	.asciz	"gimp_pango_layout_set_scale"
	.size	.L__func__.gimp_pango_layout_set_scale, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"PANGO_IS_LAYOUT (layout)"
	.size	.L.str.43, 25

	.type	.L__func__.gimp_pango_layout_set_weight,@object # @__func__.gimp_pango_layout_set_weight
.L__func__.gimp_pango_layout_set_weight:
	.asciz	"gimp_pango_layout_set_weight"
	.size	.L__func__.gimp_pango_layout_set_weight, 29

	.type	.L__func__.gimp_highlight_widget,@object # @__func__.gimp_highlight_widget
.L__func__.gimp_highlight_widget:
	.asciz	"gimp_highlight_widget"
	.size	.L__func__.gimp_highlight_widget, 22

	.type	.L__func__.gimp_dock_with_window_new,@object # @__func__.gimp_dock_with_window_new
.L__func__.gimp_dock_with_window_new:
	.asciz	"gimp_dock_with_window_new"
	.size	.L__func__.gimp_dock_with_window_new, 26

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.44, 33

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"GDK_IS_SCREEN (screen)"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-toolbox-window"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-dock-window"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-toolbox"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-dock"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-tool-options-gui"
	.size	.L.str.50, 22

	.type	.L__func__.gimp_widget_flush_expose,@object # @__func__.gimp_widget_flush_expose
.L__func__.gimp_widget_flush_expose:
	.asciz	"gimp_widget_flush_expose"
	.size	.L__func__.gimp_widget_flush_expose, 25

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"ENTER_NOTIFY"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"LEAVE_NOTIFY"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"PROXIMITY_IN"
	.size	.L.str.53, 13

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"PROXIMITY_OUT"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"FOCUS_IN"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"FOCUS_OUT"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"BUTTON_PRESS (%d @ %0.0f:%0.0f)"
	.size	.L.str.57, 32

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"2BUTTON_PRESS (%d @ %0.0f:%0.0f)"
	.size	.L.str.58, 33

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"3BUTTON_PRESS (%d @ %0.0f:%0.0f)"
	.size	.L.str.59, 33

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"BUTTON_RELEASE (%d @ %0.0f:%0.0f)"
	.size	.L.str.60, 34

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"SCROLL (%d)"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"MOTION_NOTIFY (%0.0f:%0.0f %d)"
	.size	.L.str.62, 31

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"KEY_PRESS (%d, %s)"
	.size	.L.str.63, 19

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"<none>"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"KEY_RELEASE (%d, %s)"
	.size	.L.str.65, 21

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"UNHANDLED (type %d)"
	.size	.L.str.66, 20

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"position"
	.size	.L.str.67, 9

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%d"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%s  <b>%s</b>"
	.size	.L.str.69, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
