	.text
	.file	"gimpprogressbar.bc"
	.globl	gimp_progress_bar_get_type
	.align	16, 0x90
	.type	gimp_progress_bar_get_type,@function
gimp_progress_bar_get_type:             # @gimp_progress_bar_get_type
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
	movq	gimp_progress_bar_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_progress_bar_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_progress_bar_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$840, %edx              # imm = 0x348
	leaq	gimp_progress_bar_class_intern_init(%rip), %rdi
	movl	$200, %r8d
	leaq	gimp_progress_bar_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_progress_bar_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_progress_bar_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_progress_bar_get_type, .Lfunc_end0-gimp_progress_bar_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_class_intern_init,@function
gimp_progress_bar_class_intern_init:    # @gimp_progress_bar_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_progress_bar_parent_class(%rip)
	cmpl	$0, GimpProgressBar_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpProgressBar_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_progress_bar_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_progress_bar_class_intern_init, .Lfunc_end1-gimp_progress_bar_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_init,@function
gimp_progress_bar_init:                 # @gimp_progress_bar_init
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
	subq	$144, %rsp
	xorl	%esi, %esi
	movl	$112, %eax
	movl	%eax, %edx
	leaq	-120(%rbp), %rcx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	memset@PLT
	movq	-8(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_ellipsize@PLT
	leaq	-120(%rbp), %rdi
	leaq	gimp_progress_bar_get_window(%rip), %rax
	leaq	gimp_progress_bar_pulse(%rip), %rcx
	leaq	gimp_progress_bar_set_value(%rip), %rdx
	leaq	gimp_progress_bar_set_text(%rip), %r8
	leaq	gimp_progress_bar_end(%rip), %r9
	leaq	gimp_progress_bar_start(%rip), %r10
	movq	%r10, -120(%rbp)
	movq	%r9, -112(%rbp)
	movq	%r8, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_progress_install_vtable@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_progress_bar_init, .Lfunc_end2-gimp_progress_bar_init
	.cfi_endproc

	.globl	gimp_progress_bar_new
	.align	16, 0x90
	.type	gimp_progress_bar_new,@function
gimp_progress_bar_new:                  # @gimp_progress_bar_new
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
	callq	gimp_progress_bar_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_progress_bar_new, .Lfunc_end3-gimp_progress_bar_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_class_init,@function
gimp_progress_bar_class_init:           # @gimp_progress_bar_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_progress_bar_dispose(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_progress_bar_class_init, .Lfunc_end4-gimp_progress_bar_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_dispose,@function
gimp_progress_bar_dispose:              # @gimp_progress_bar_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gimp_progress_uninstall@PLT
	movq	-16(%rbp), %rdi
	movq	$0, 184(%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB5_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_progress_bar_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_progress_bar_dispose, .Lfunc_end5-gimp_progress_bar_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_start,@function
gimp_progress_bar_start:                # @gimp_progress_bar_start
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -8(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_progress_bar_set_text@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB6_8
# BB#4:                                 # %if.then
	jmp	.LBB6_5
.LBB6_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB6_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB6_5
.LBB6_7:                                # %while.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_progress_bar_start, .Lfunc_end6-gimp_progress_bar_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_end,@function
gimp_progress_bar_end:                  # @gimp_progress_bar_end
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.1(%rip), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB7_5
# BB#1:                                 # %if.then
	jmp	.LBB7_2
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB7_2
.LBB7_4:                                # %while.end
	jmp	.LBB7_5
.LBB7_5:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_progress_bar_end, .Lfunc_end7-gimp_progress_bar_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_set_text,@function
gimp_progress_bar_set_text:             # @gimp_progress_bar_set_text
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	cmpq	$0, -8(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB8_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	leaq	.L.str.1(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_3
.LBB8_3:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_progress_bar_set_text@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB8_8
# BB#4:                                 # %if.then
	jmp	.LBB8_5
.LBB8_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB8_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB8_5 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB8_5
.LBB8_7:                                # %while.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_progress_bar_set_text, .Lfunc_end8-gimp_progress_bar_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_set_value,@function
gimp_progress_bar_set_value:            # @gimp_progress_bar_set_value
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
	subq	$64, %rsp
	movsd	%xmm0, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_fraction@PLT
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_progress_bar_pulse@PLT
.LBB9_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB9_8
# BB#4:                                 # %if.then.9
	jmp	.LBB9_5
.LBB9_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB9_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB9_5 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB9_5
.LBB9_7:                                # %while.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.13
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_progress_bar_set_value, .Lfunc_end9-gimp_progress_bar_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_pulse,@function
gimp_progress_bar_pulse:                # @gimp_progress_bar_pulse
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_progress_bar_pulse@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB10_5
# BB#1:                                 # %if.then
	jmp	.LBB10_2
.LBB10_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending@PLT
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	callq	gtk_main_iteration@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB10_2
.LBB10_4:                               # %while.end
	jmp	.LBB10_5
.LBB10_5:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_progress_bar_pulse, .Lfunc_end10-gimp_progress_bar_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_progress_bar_get_window,@function
gimp_progress_bar_get_window:           # @gimp_progress_bar_get_window
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_progress_bar_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.8
	movl	$1, -52(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.9
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB11_9
# BB#8:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_window_get_native_id
	movl	%eax, -4(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.end.17
	movl	$0, -4(%rbp)
.LBB11_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_progress_bar_get_window, .Lfunc_end11-gimp_progress_bar_get_window
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_get_native_id,@function
gimp_window_get_native_id:              # @gimp_window_get_native_id
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_window_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_window_get_native_id(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB12_16
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB12_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_realized@PLT
	cmpl	$0, %eax
	je	.LBB12_15
# BB#14:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_get_window@PLT
	movq	%rax, %rdi
	callq	gdk_x11_drawable_get_xid@PLT
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB12_16
.LBB12_15:                              # %if.end.22
	movl	$0, -4(%rbp)
.LBB12_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_window_get_native_id, .Lfunc_end12-gimp_window_get_native_id
	.cfi_endproc

	.type	gimp_progress_bar_get_type.g_define_type_id__volatile,@object # @gimp_progress_bar_get_type.g_define_type_id__volatile
	.local	gimp_progress_bar_get_type.g_define_type_id__volatile
	.comm	gimp_progress_bar_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpProgressBar"
	.size	.L.str, 16

	.type	gimp_progress_bar_parent_class,@object # @gimp_progress_bar_parent_class
	.local	gimp_progress_bar_parent_class
	.comm	gimp_progress_bar_parent_class,8,8
	.type	GimpProgressBar_private_offset,@object # @GimpProgressBar_private_offset
	.local	GimpProgressBar_private_offset
	.comm	GimpProgressBar_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimp"
	.size	.L.str.2, 8

	.type	.L__func__.gimp_window_get_native_id,@object # @__func__.gimp_window_get_native_id
.L__func__.gimp_window_get_native_id:
	.asciz	"gimp_window_get_native_id"
	.size	.L__func__.gimp_window_get_native_id, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WINDOW (window)"
	.size	.L.str.3, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
