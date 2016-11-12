	.text
	.file	"gimpframe.bc"
	.globl	gimp_frame_get_type
	.align	16, 0x90
	.type	gimp_frame_get_type,@function
gimp_frame_get_type:                    # @gimp_frame_get_type
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
	movq	gimp_frame_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_frame_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_frame_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_frame_class_intern_init(%rip), %rdi
	movl	$160, %r8d
	leaq	gimp_frame_init(%rip), %rcx
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
	leaq	gimp_frame_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_frame_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_frame_get_type, .Lfunc_end0-gimp_frame_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_class_intern_init,@function
gimp_frame_class_intern_init:           # @gimp_frame_class_intern_init
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
	movq	%rax, gimp_frame_parent_class(%rip)
	cmpl	$0, GimpFrame_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpFrame_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_frame_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_frame_class_intern_init, .Lfunc_end1-gimp_frame_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_init,@function
gimp_frame_init:                        # @gimp_frame_init
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
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_frame_label_widget_notify(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_frame_init, .Lfunc_end2-gimp_frame_init
	.cfi_endproc

	.globl	gimp_frame_new
	.align	16, 0x90
	.type	gimp_frame_new,@function
gimp_frame_new:                         # @gimp_frame_new
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
	movl	$0, -20(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$1, -20(%rbp)
	movq	$0, -8(%rbp)
.LBB3_3:                                # %if.end
	callq	gimp_frame_get_type@PLT
	leaq	.L.str.2(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -16(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.4
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB3_5:                                # %if.end.6
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_frame_new, .Lfunc_end3-gimp_frame_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_class_init,@function
gimp_frame_class_init:                  # @gimp_frame_class_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	leaq	gimp_frame_expose_event(%rip), %rdx
	leaq	gimp_frame_style_set(%rip), %r8
	leaq	gimp_frame_size_allocate(%rip), %r9
	leaq	gimp_frame_size_request(%rip), %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 240(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 248(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 280(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %r8d         # 4-byte Reload
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$6, %r9d
	movl	$1, %r11d
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$1, (%rsp)
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	g_param_spec_int@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_class_install_style_property@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_frame_class_init, .Lfunc_end4-gimp_frame_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_size_request,@function
gimp_frame_size_request:                # @gimp_frame_size_request
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_size_request@PLT
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
.LBB5_4:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_frame_get_label_spacing
	movq	-16(%rbp), %rdi
	addl	4(%rdi), %eax
	movl	%eax, 4(%rdi)
	cmpq	$0, -40(%rbp)
	je	.LBB5_10
# BB#5:                                 # %land.lhs.true.11
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB5_10
# BB#6:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	callq	gimp_frame_get_indent
	leaq	-48(%rbp), %rsi
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_size_request@PLT
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	-48(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_8
# BB#7:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:                                # %cond.false
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB5_9:                                # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
.LBB5_10:                               # %if.end.26
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_border_width@PLT
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rsi
	addl	4(%rsi), %eax
	movl	%eax, 4(%rsi)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_frame_size_request, .Lfunc_end5-gimp_frame_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_size_allocate,@function
gimp_frame_size_allocate:               # @gimp_frame_size_allocate
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation@PLT
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_frame_child_allocate
	cmpq	$0, -40(%rbp)
	je	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_widget_size_allocate@PLT
.LBB6_3:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB6_9
# BB#4:                                 # %land.lhs.true.9
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB6_9
# BB#5:                                 # %if.then.12
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_border_width@PLT
	leaq	-80(%rbp), %rsi
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_child_requisition@PLT
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	addl	-84(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	movq	-16(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_7
# BB#6:                                 # %cond.true
	movl	-80(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB6_8
.LBB6_7:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	-84(%rbp), %edx
	shll	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB6_8:                                # %cond.end
	movl	-116(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rsi
	movl	%eax, -64(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_size_allocate@PLT
.LBB6_9:                                # %if.end.26
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_frame_size_allocate, .Lfunc_end6-gimp_frame_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_style_set,@function
gimp_frame_style_set:                   # @gimp_frame_style_set
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_frame_label_widget_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_frame_style_set, .Lfunc_end7-gimp_frame_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_expose_event,@function
gimp_frame_expose_event:                # @gimp_frame_expose_event
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable@PLT
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	gimp_frame_parent_class(%rip), %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	392(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB8_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_frame_expose_event, .Lfunc_end8-gimp_frame_expose_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_get_label_spacing,@function
gimp_frame_get_label_spacing:           # @gimp_frame_get_label_spacing
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	jne	.LBB9_3
.LBB9_2:                                # %lor.lhs.false
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	cmpq	$0, %rax
	je	.LBB9_4
.LBB9_3:                                # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	-20(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
.LBB9_4:                                # %if.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_frame_get_label_spacing, .Lfunc_end9-gimp_frame_get_label_spacing
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_get_indent,@function
gimp_frame_get_indent:                  # @gimp_frame_get_indent
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	leaq	.L.str.8(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_create_pango_layout@PLT
	leaq	-12(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	pango_layout_get_pixel_size@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.7(%rip), %rsi
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
.LBB10_2:                               # %if.end
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_frame_get_indent, .Lfunc_end10-gimp_frame_get_indent
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_child_allocate,@function
gimp_frame_child_allocate:              # @gimp_frame_child_allocate
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -32(%rbp)
	movl	$0, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_frame_get_indent
	leaq	-48(%rbp), %rsi
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation@PLT
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_border_width@PLT
	movl	%eax, -52(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_visible@PLT
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_child_requisition@PLT
	movl	-68(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_frame_get_label_spacing
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_direction@PLT
	cmpl	$1, %eax
	jne	.LBB11_5
# BB#4:                                 # %if.then.12
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_6:                               # %if.end.15
	movl	$1, %eax
	movl	-52(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movl	%ecx, 4(%rdx)
	movl	-40(%rbp), %ecx
	movl	-52(%rbp), %esi
	shll	$1, %esi
	subl	%esi, %ecx
	subl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB11_8
# BB#7:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB11_9
.LBB11_8:                               # %cond.false
	movl	-40(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	subl	-60(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB11_9:                               # %cond.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movq	-16(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdx
	subl	4(%rdx), %eax
	subl	-52(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB11_11
# BB#10:                                # %cond.true.29
	movl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.30
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	4(%rcx), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB11_12:                              # %cond.end.35
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_frame_child_allocate, .Lfunc_end11-gimp_frame_child_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_frame_label_widget_notify,@function
gimp_frame_label_widget_notify:         # @gimp_frame_label_widget_notify
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_frame_get_label_widget@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_32
# BB#1:                                 # %if.then
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then.3
	movl	$0, -44(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.6
	movl	$1, -44(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.7
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.9
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_frame_get_label_align@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	jmp	.LBB12_29
.LBB12_10:                              # %if.else.18
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_bin_get_type@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB12_12
# BB#11:                                # %if.then.27
	movl	$0, -76(%rbp)
	jmp	.LBB12_17
.LBB12_12:                              # %if.else.28
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_15
# BB#13:                                # %land.lhs.true.31
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB12_15
# BB#14:                                # %if.then.35
	movl	$1, -76(%rbp)
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.36
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -76(%rbp)
.LBB12_16:                              # %if.end.38
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.39
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB12_28
# BB#18:                                # %if.then.42
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_label_get_type@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB12_20
# BB#19:                                # %if.then.55
	movl	$0, -108(%rbp)
	jmp	.LBB12_25
.LBB12_20:                              # %if.else.56
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_23
# BB#21:                                # %land.lhs.true.59
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB12_23
# BB#22:                                # %if.then.63
	movl	$1, -108(%rbp)
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.64
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -108(%rbp)
.LBB12_24:                              # %if.end.66
	jmp	.LBB12_25
.LBB12_25:                              # %if.end.67
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB12_27
# BB#26:                                # %if.then.70
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
.LBB12_27:                              # %if.end.73
	jmp	.LBB12_28
.LBB12_28:                              # %if.end.74
	jmp	.LBB12_29
.LBB12_29:                              # %if.end.75
	cmpq	$0, -24(%rbp)
	je	.LBB12_31
# BB#30:                                # %if.then.77
	callq	pango_attr_list_new@PLT
	movq	%rax, -120(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.9(%rip), %rsi
	leaq	-132(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get@PLT
	movl	$400, %r8d              # imm = 0x190
	movl	$700, %r9d              # imm = 0x2BC
	cmpl	$0, -132(%rbp)
	cmovnel	%r9d, %r8d
	movl	%r8d, %edi
	callq	pango_attr_weight_new@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-128(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	pango_attr_list_insert@PLT
	movq	-24(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_label_set_attributes@PLT
	movq	-120(%rbp), %rdi
	callq	pango_attr_list_unref@PLT
.LBB12_31:                              # %if.end.86
	jmp	.LBB12_32
.LBB12_32:                              # %if.end.87
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_frame_label_widget_notify, .Lfunc_end12-gimp_frame_label_widget_notify
	.cfi_endproc

	.type	gimp_frame_get_type.g_define_type_id__volatile,@object # @gimp_frame_get_type.g_define_type_id__volatile
	.local	gimp_frame_get_type.g_define_type_id__volatile
	.comm	gimp_frame_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFrame"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<expander>"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"label"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-frame-in-expander"
	.size	.L.str.3, 23

	.type	gimp_frame_parent_class,@object # @gimp_frame_parent_class
	.local	gimp_frame_parent_class
	.comm	gimp_frame_parent_class,8,8
	.type	GimpFrame_private_offset,@object # @GimpFrame_private_offset
	.local	GimpFrame_private_offset
	.comm	GimpFrame_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label-bold"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"label-spacing"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"label_spacing"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-frame-indent"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"    "
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"label_bold"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"notify::label-widget"
	.size	.L.str.10, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
