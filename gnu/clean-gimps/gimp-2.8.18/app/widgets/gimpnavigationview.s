	.text
	.file	"gimpnavigationview.bc"
	.globl	gimp_navigation_view_get_type
	.align	16, 0x90
	.type	gimp_navigation_view_get_type,@function
gimp_navigation_view_get_type:          # @gimp_navigation_view_get_type
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
	movq	gimp_navigation_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_navigation_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$776, %edx              # imm = 0x308
	movabsq	$gimp_navigation_view_class_intern_init, %rdi
	movl	$192, %r8d
	movabsq	$gimp_navigation_view_init, %rcx
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
	movabsq	$gimp_navigation_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_navigation_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_navigation_view_get_type, .Lfunc_end0-gimp_navigation_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_class_intern_init,@function
gimp_navigation_view_class_intern_init: # @gimp_navigation_view_class_intern_init
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
	movq	%rax, gimp_navigation_view_parent_class
	cmpl	$0, GimpNavigationView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpNavigationView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_navigation_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_navigation_view_class_intern_init, .Lfunc_end1-gimp_navigation_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_init,@function
gimp_navigation_view_init:              # @gimp_navigation_view_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1028, %esi             # imm = 0x404
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 128(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 136(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 144(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 152(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 160(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 164(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 168(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 172(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 176(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 180(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 184(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_navigation_view_init, .Lfunc_end2-gimp_navigation_view_init
	.cfi_endproc

	.globl	gimp_navigation_view_grab_pointer
	.align	16, 0x90
	.type	gimp_navigation_view_grab_pointer,@function
gimp_navigation_view_grab_pointer:      # @gimp_navigation_view_grab_pointer
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 184(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_grab_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$52, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$537, %edx              # imm = 0x219
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	-68(%rbp), %r9d         # 4-byte Reload
	callq	gdk_pointer_grab
	movq	-32(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gdk_cursor_unref
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_navigation_view_grab_pointer, .Lfunc_end3-gimp_navigation_view_grab_pointer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_navigation_view_set_marker
	.align	16, 0x90
	.type	gimp_navigation_view_set_marker,@function
gimp_navigation_view_set_marker:        # @gimp_navigation_view_set_marker
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_navigation_view_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_view_set_marker, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_24
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
# BB#13:                                # %do.body.13
	movq	-48(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.15
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_view_set_marker, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_24
.LBB4_16:                               # %if.end.17
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.18
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm1, 128(%rax)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm1, 136(%rax)
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB4_19
# BB#18:                                # %cond.true
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB4_20:                               # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 144(%rax)
	ucomisd	-40(%rbp), %xmm1
	jbe	.LBB4_22
# BB#21:                                # %cond.true.24
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB4_23
.LBB4_22:                               # %cond.false.25
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB4_23:                               # %cond.end.26
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 152(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_navigation_view_transform
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB4_24:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_navigation_view_set_marker, .Lfunc_end4-gimp_navigation_view_set_marker
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_transform,@function
gimp_navigation_view_transform:         # @gimp_navigation_view_transform
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
	leaq	-16(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_navigation_view_get_ratio
	movq	-8(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 160(%rdx)
	movq	-8(%rbp), %rdx
	movsd	136(%rdx), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 164(%rdx)
	movq	-8(%rbp), %rdx
	movsd	144(%rdx), %xmm0        # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 168(%rdx)
	movq	-8(%rbp), %rdx
	movsd	152(%rdx), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 172(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_navigation_view_transform, .Lfunc_end5-gimp_navigation_view_transform
	.cfi_endproc

	.globl	gimp_navigation_view_set_motion_offset
	.align	16, 0x90
	.type	gimp_navigation_view_set_motion_offset,@function
gimp_navigation_view_set_motion_offset: # @gimp_navigation_view_set_motion_offset
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
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_navigation_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_view_set_motion_offset, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 180(%rcx)
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_navigation_view_set_motion_offset, .Lfunc_end6-gimp_navigation_view_set_motion_offset
	.cfi_endproc

	.globl	gimp_navigation_view_get_local_marker
	.align	16, 0x90
	.type	gimp_navigation_view_get_local_marker,@function
gimp_navigation_view_get_local_marker:  # @gimp_navigation_view_get_local_marker
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_navigation_view_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_navigation_view_get_local_marker, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_20
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	160(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_14:                               # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.15
	movq	-8(%rbp), %rax
	movl	164(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_16:                               # %if.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB7_18
# BB#17:                                # %if.then.18
	movq	-8(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_18:                               # %if.end.19
	cmpq	$0, -40(%rbp)
	je	.LBB7_20
# BB#19:                                # %if.then.21
	movq	-8(%rbp), %rax
	movl	172(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_20:                               # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_navigation_view_get_local_marker, .Lfunc_end7-gimp_navigation_view_get_local_marker
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_class_init,@function
gimp_navigation_view_class_init:        # @gimp_navigation_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$752, %ecx              # imm = 0x2F0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__DOUBLE_DOUBLE_DOUBLE_DOUBLE, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$4, %r8d
	movl	$60, %r11d
	movl	%r11d, %ebx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movq	$60, 24(%rsp)
	movq	$60, 32(%rsp)
	movq	$60, 40(%rsp)
	movq	$60, 48(%rsp)
	movb	$0, %al
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_zoom_type_get_type
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movl	$760, %ecx              # imm = 0x2F8
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movl	%eax, view_signals+4
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gdk_scroll_direction_get_type
	movabsq	$.L.str.7, %rdi
	movl	$1, %edx
	movl	$768, %ecx              # imm = 0x300
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	g_signal_new
	movabsq	$gimp_navigation_view_key_press, %rsi
	movabsq	$gimp_navigation_view_motion_notify, %rdi
	movabsq	$gimp_navigation_view_scroll, %r8
	movabsq	$gimp_navigation_view_button_release, %r9
	movabsq	$gimp_navigation_view_button_press, %r10
	movabsq	$gimp_navigation_view_expose, %rbx
	movabsq	$gimp_navigation_view_size_allocate, %r14
	movl	%eax, view_signals+8
	movq	-40(%rbp), %r15
	movq	%r14, 248(%r15)
	movq	-40(%rbp), %r14
	movq	%rbx, 392(%r14)
	movq	-40(%rbp), %rbx
	movq	%r10, 344(%rbx)
	movq	-40(%rbp), %r10
	movq	%r9, 352(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 360(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 368(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 400(%rdi)
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_navigation_view_class_init, .Lfunc_end8-gimp_navigation_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_size_allocate,@function
gimp_navigation_view_size_allocate:     # @gimp_navigation_view_size_allocate
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_navigation_view_parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_navigation_view_transform
.LBB9_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_navigation_view_size_allocate, .Lfunc_end9-gimp_navigation_view_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_expose,@function
gimp_navigation_view_expose:            # @gimp_navigation_view_expose
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	gimp_navigation_view_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	392(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_navigation_view_draw_marker
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
.LBB10_2:                               # %if.end
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_navigation_view_expose, .Lfunc_end10-gimp_navigation_view_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_button_press,@function
gimp_navigation_view_button_press:      # @gimp_navigation_view_button_press
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB11_9
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB11_9
# BB#2:                                 # %if.then
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jle	.LBB11_6
# BB#3:                                 # %land.lhs.true.8
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	160(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	168(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB11_6
# BB#4:                                 # %land.lhs.true.12
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	164(%rcx), %eax
	jle	.LBB11_6
# BB#5:                                 # %land.lhs.true.15
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	164(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	172(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB11_7
.LBB11_6:                               # %if.then.20
	movl	$2, %eax
	movq	-24(%rbp), %rcx
	movl	168(%rcx), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-60(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-24(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movq	-24(%rbp), %rcx
	movl	172(%rcx), %eax
	cltd
	idivl	%esi
	movq	-24(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movq	-24(%rbp), %rcx
	movl	176(%rcx), %eax
	movl	-28(%rbp), %edi
	subl	%eax, %edi
	movl	%edi, -28(%rbp)
	movq	-24(%rbp), %rcx
	movl	180(%rcx), %eax
	movl	-32(%rbp), %edi
	subl	%eax, %edi
	movl	%edi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_navigation_view_move_to
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	movl	$52, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	96(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gdk_window_set_cursor
	movq	-48(%rbp), %rdi
	callq	gdk_cursor_unref
	jmp	.LBB11_8
.LBB11_7:                               # %if.else
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	160(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	subl	164(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 180(%rcx)
.LBB11_8:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_navigation_view_grab_pointer
.LBB11_9:                               # %if.end.37
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_navigation_view_button_press, .Lfunc_end11-gimp_navigation_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_button_release,@function
gimp_navigation_view_button_release:    # @gimp_navigation_view_button_release
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 184(%rax)
	je	.LBB12_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 184(%rax)
	movq	-8(%rbp), %rdi
	callq	gtk_grab_remove
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
.LBB12_3:                               # %if.end
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_navigation_view_button_release, .Lfunc_end12-gimp_navigation_view_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_scroll,@function
gimp_navigation_view_scroll:            # @gimp_navigation_view_scroll
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	40(%rsi), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-24(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB13_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_16
.LBB13_16:                              # %if.then
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_4
.LBB13_2:                               # %sw.bb
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	view_signals+4, %esi
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB13_5
.LBB13_3:                               # %sw.bb.1
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	view_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB13_5
.LBB13_4:                               # %sw.default
	jmp	.LBB13_5
.LBB13_5:                               # %sw.epilog
	jmp	.LBB13_14
.LBB13_6:                               # %if.else
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB13_13
# BB#7:                                 # %if.then.7
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	ja	.LBB13_12
# BB#15:                                # %if.then.7
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_8:                               # %sw.bb.8
	movl	$2, -20(%rbp)
	jmp	.LBB13_12
.LBB13_9:                               # %sw.bb.9
	movl	$3, -20(%rbp)
	jmp	.LBB13_12
.LBB13_10:                              # %sw.bb.10
	movl	$0, -20(%rbp)
	jmp	.LBB13_12
.LBB13_11:                              # %sw.bb.11
	movl	$1, -20(%rbp)
.LBB13_12:                              # %sw.epilog.12
	jmp	.LBB13_13
.LBB13_13:                              # %if.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	view_signals+8, %esi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB13_14:                              # %if.end.13
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_navigation_view_scroll, .Lfunc_end13-gimp_navigation_view_scroll
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_8
	.quad	.LBB13_9
	.quad	.LBB13_10
	.quad	.LBB13_11

	.text
	.align	16, 0x90
	.type	gimp_navigation_view_motion_notify,@function
gimp_navigation_view_motion_notify:     # @gimp_navigation_view_motion_notify
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 184(%rax)
	jne	.LBB14_14
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 160(%rax)
	jne	.LBB14_6
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpl	$0, 164(%rax)
	jne	.LBB14_6
# BB#3:                                 # %land.lhs.true.6
	movq	-32(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	cmpl	48(%rax), %ecx
	jne	.LBB14_6
# BB#4:                                 # %land.lhs.true.8
	movq	-32(%rbp), %rax
	movl	172(%rax), %ecx
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	cmpl	52(%rax), %ecx
	jne	.LBB14_6
# BB#5:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	96(%rcx), %rdi
	callq	gdk_window_set_cursor
	movl	$0, -4(%rbp)
	jmp	.LBB14_15
.LBB14_6:                               # %if.else
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	160(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB14_11
# BB#7:                                 # %land.lhs.true.15
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	164(%rax), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB14_11
# BB#8:                                 # %land.lhs.true.20
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	160(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	168(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_11
# BB#9:                                 # %land.lhs.true.27
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	164(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	172(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_11
# BB#10:                                # %if.then.35
	movl	$52, %esi
	movq	-48(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -56(%rbp)
	jmp	.LBB14_12
.LBB14_11:                              # %if.else.37
	movl	$60, %esi
	movq	-48(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -56(%rbp)
.LBB14_12:                              # %if.end
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.39
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gdk_window_set_cursor
	movq	-56(%rbp), %rdi
	callq	gdk_cursor_unref
	movl	$0, -4(%rbp)
	jmp	.LBB14_15
.LBB14_14:                              # %if.end.41
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	176(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	cvtsi2sdl	180(%rax), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	callq	gimp_navigation_view_move_to
	movq	-24(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, -4(%rbp)
.LBB14_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_navigation_view_motion_notify, .Lfunc_end14-gimp_navigation_view_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_key_press,@function
gimp_navigation_view_key_press:         # @gimp_navigation_view_key_press
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_navigation_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-65361, %ecx           # imm = 0xFFFFFFFFFFFF00AF
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	ja	.LBB15_5
# BB#11:                                # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_1:                               # %sw.bb
	movl	$-1, -40(%rbp)
	jmp	.LBB15_6
.LBB15_2:                               # %sw.bb.2
	movl	$-1, -36(%rbp)
	jmp	.LBB15_6
.LBB15_3:                               # %sw.bb.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_6
.LBB15_4:                               # %sw.bb.4
	movl	$1, -40(%rbp)
	jmp	.LBB15_6
.LBB15_5:                               # %sw.default
	jmp	.LBB15_6
.LBB15_6:                               # %sw.epilog
	cmpl	$0, -36(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, -40(%rbp)
	je	.LBB15_9
.LBB15_8:                               # %if.then
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	160(%rax), %ecx
	addl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	164(%rax), %edx
	addl	-40(%rbp), %edx
	movl	%ecx, %esi
	callq	gimp_navigation_view_move_to
	movl	$1, -4(%rbp)
	jmp	.LBB15_10
.LBB15_9:                               # %if.end
	movl	$0, -4(%rbp)
.LBB15_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_navigation_view_key_press, .Lfunc_end15-gimp_navigation_view_key_press
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_2
	.quad	.LBB15_1
	.quad	.LBB15_3
	.quad	.LBB15_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4611686018427387904     # double 2
.LCPI16_1:
	.quad	4607182418800017408     # double 1
.LCPI16_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_navigation_view_draw_marker,@function
gimp_navigation_view_draw_marker:       # @gimp_navigation_view_draw_marker
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_4
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	144(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_2
	jp	.LBB16_2
	jmp	.LBB16_4
.LBB16_2:                               # %land.lhs.true.3
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	152(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_3
	jp	.LBB16_3
	jmp	.LBB16_4
.LBB16_3:                               # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	callq	cairo_translate
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-40(%rbp), %xmm2
	cvtsi2sdl	-36(%rbp), %xmm3
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	160(%rax), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	164(%rax), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	168(%rax), %xmm2
	movq	-8(%rbp), %rax
	cvtsi2sdl	172(%rax), %xmm3
	callq	cairo_rectangle
	xorps	%xmm0, %xmm0
	movsd	.LCPI16_2, %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	cairo_set_fill_rule
	movq	-16(%rbp), %rdi
	callq	cairo_fill
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	160(%rax), %xmm0
	movq	-8(%rbp), %rax
	cvtsi2sdl	164(%rax), %xmm1
	movq	-8(%rbp), %rax
	cvtsi2sdl	168(%rax), %xmm2
	movq	-8(%rbp), %rax
	cvtsi2sdl	172(%rax), %xmm3
	callq	cairo_rectangle
	movsd	.LCPI16_1, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-16(%rbp), %rdi
	callq	cairo_stroke
.LBB16_4:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_navigation_view_draw_marker, .Lfunc_end16-gimp_navigation_view_draw_marker
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_move_to,@function
gimp_navigation_view_move_to:           # @gimp_navigation_view_move_to
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_navigation_view_get_ratio
	xorl	%edx, %edx
	cvtsi2sdl	-12(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-24(%rbp), %rsi
	movl	view_signals, %eax
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	144(%rdi), %xmm2        # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	152(%rdi), %xmm3        # xmm3 = mem[0],zero
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$4, %al
	callq	g_signal_emit
.LBB17_3:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_navigation_view_move_to, .Lfunc_end17-gimp_navigation_view_move_to
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_navigation_view_get_ratio,@function
gimp_navigation_view_get_ratio:         # @gimp_navigation_view_get_ratio
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	cvtsi2sdl	48(%rax), %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rdx
	movsd	%xmm1, (%rdx)
	movq	-32(%rbp), %rdx
	movq	112(%rdx), %rdx
	cvtsi2sdl	52(%rdx), %xmm0
	movq	-40(%rbp), %rdi
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	gimp_image_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	-24(%rbp), %rdx
	movsd	%xmm1, (%rdx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_navigation_view_get_ratio, .Lfunc_end18-gimp_navigation_view_get_ratio
	.cfi_endproc

	.type	gimp_navigation_view_get_type.g_define_type_id__volatile,@object # @gimp_navigation_view_get_type.g_define_type_id__volatile
	.local	gimp_navigation_view_get_type.g_define_type_id__volatile
	.comm	gimp_navigation_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpNavigationView"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_navigation_view_set_marker,@object # @__func__.gimp_navigation_view_set_marker
.L__func__.gimp_navigation_view_set_marker:
	.asciz	"gimp_navigation_view_set_marker"
	.size	.L__func__.gimp_navigation_view_set_marker, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_NAVIGATION_VIEW (nav_view)"
	.size	.L.str.2, 35

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"view->renderer->viewable"
	.size	.L.str.3, 25

	.type	.L__func__.gimp_navigation_view_set_motion_offset,@object # @__func__.gimp_navigation_view_set_motion_offset
.L__func__.gimp_navigation_view_set_motion_offset:
	.asciz	"gimp_navigation_view_set_motion_offset"
	.size	.L__func__.gimp_navigation_view_set_motion_offset, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_NAVIGATION_VIEW (view)"
	.size	.L.str.4, 31

	.type	.L__func__.gimp_navigation_view_get_local_marker,@object # @__func__.gimp_navigation_view_get_local_marker
.L__func__.gimp_navigation_view_get_local_marker:
	.asciz	"gimp_navigation_view_get_local_marker"
	.size	.L__func__.gimp_navigation_view_get_local_marker, 38

	.type	gimp_navigation_view_parent_class,@object # @gimp_navigation_view_parent_class
	.local	gimp_navigation_view_parent_class
	.comm	gimp_navigation_view_parent_class,8,8
	.type	GimpNavigationView_private_offset,@object # @GimpNavigationView_private_offset
	.local	GimpNavigationView_private_offset
	.comm	GimpNavigationView_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"marker-changed"
	.size	.L.str.5, 15

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,12,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"zoom"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"scroll"
	.size	.L.str.7, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
