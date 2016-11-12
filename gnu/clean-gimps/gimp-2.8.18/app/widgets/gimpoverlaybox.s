	.text
	.file	"gimpoverlaybox.bc"
	.globl	gimp_overlay_box_get_type
	.align	16, 0x90
	.type	gimp_overlay_box_get_type,@function
gimp_overlay_box_get_type:              # @gimp_overlay_box_get_type
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
	movq	gimp_overlay_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_overlay_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_container_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_overlay_box_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_overlay_box_init, %rcx
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
	movabsq	$gimp_overlay_box_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_overlay_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_overlay_box_get_type, .Lfunc_end0-gimp_overlay_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_class_intern_init,@function
gimp_overlay_box_class_intern_init:     # @gimp_overlay_box_class_intern_init
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
	movq	%rax, gimp_overlay_box_parent_class
	cmpl	$0, GimpOverlayBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpOverlayBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_overlay_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_overlay_box_class_intern_init, .Lfunc_end1-gimp_overlay_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_init,@function
gimp_overlay_box_init:                  # @gimp_overlay_box_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_overlay_box_init, .Lfunc_end2-gimp_overlay_box_init
	.cfi_endproc

	.globl	gimp_overlay_box_new
	.align	16, 0x90
	.type	gimp_overlay_box_new,@function
gimp_overlay_box_new:                   # @gimp_overlay_box_new
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
	callq	gimp_overlay_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_overlay_box_new, .Lfunc_end3-gimp_overlay_box_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.globl	gimp_overlay_box_add_child
	.align	16, 0x90
	.type	gimp_overlay_box_add_child,@function
gimp_overlay_box_add_child:             # @gimp_overlay_box_add_child
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
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_box_add_child, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB4_20
.LBB4_15:                               # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_19:                               # %if.end.31
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_22
# BB#21:                                # %if.then.35
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_box_add_child, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_25
.LBB4_23:                               # %if.end.37
	jmp	.LBB4_24
.LBB4_24:                               # %do.end.38
	movq	-16(%rbp), %rdi
	callq	unset_double_buffered
	xorps	%xmm2, %xmm2
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_overlay_child_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, 112(%rsi)
.LBB4_25:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_overlay_box_add_child, .Lfunc_end4-gimp_overlay_box_add_child
	.cfi_endproc

	.align	16, 0x90
	.type	unset_double_buffered,@function
unset_double_buffered:                  # @unset_double_buffered
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_double_buffered
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	gtk_container_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_7
.LBB5_2:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_5
# BB#4:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_6:                                # %if.end
	jmp	.LBB5_7
.LBB5_7:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_16
# BB#8:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_15
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	unset_double_buffered
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB5_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_14
.LBB5_13:                               # %cond.false
                                        #   in Loop: Header=BB5_9 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_14
.LBB5_14:                               # %cond.end
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB5_9
.LBB5_15:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB5_16:                               # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	unset_double_buffered, .Lfunc_end5-unset_double_buffered
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_overlay_box_set_child_alignment
	.align	16, 0x90
	.type	gimp_overlay_box_set_child_alignment,@function
gimp_overlay_box_set_child_alignment:   # @gimp_overlay_box_set_child_alignment
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_18
# BB#1:                                 # %if.then
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_3
# BB#2:                                 # %cond.true
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB6_7
.LBB6_3:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB6_5
# BB#4:                                 # %cond.true.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.3
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB6_6:                                # %cond.end
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB6_7:                                # %cond.end.4
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_9
# BB#8:                                 # %cond.true.7
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB6_13
.LBB6_9:                                # %cond.false.8
	xorps	%xmm0, %xmm0
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_11
# BB#10:                                # %cond.true.10
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false.11
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB6_12:                               # %cond.end.12
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB6_13:                               # %cond.end.14
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB6_16
# BB#14:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB6_16
	jp	.LBB6_16
# BB#15:                                # %lor.lhs.false.19
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB6_16
	jp	.LBB6_16
	jmp	.LBB6_17
.LBB6_16:                               # %if.then.22
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
	movq	-40(%rbp), %rsi
	movl	$0, 16(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	%xmm0, 24(%rsi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	%xmm0, 32(%rsi)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_resize
.LBB6_17:                               # %if.end
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.26
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_overlay_box_set_child_alignment, .Lfunc_end6-gimp_overlay_box_set_child_alignment
	.cfi_endproc

	.globl	gimp_overlay_box_set_child_position
	.align	16, 0x90
	.type	gimp_overlay_box_set_child_position,@function
gimp_overlay_box_set_child_position:    # @gimp_overlay_box_set_child_position
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_find
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB7_4
# BB#2:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB7_4
	jp	.LBB7_4
# BB#3:                                 # %lor.lhs.false.3
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB7_4
	jp	.LBB7_4
	jmp	.LBB7_5
.LBB7_4:                                # %if.then.6
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
	movq	-40(%rbp), %rsi
	movl	$1, 16(%rsi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	%xmm0, 40(%rsi)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi
	movsd	%xmm0, 48(%rsi)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_resize
.LBB7_5:                                # %if.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_overlay_box_set_child_position, .Lfunc_end7-gimp_overlay_box_set_child_position
	.cfi_endproc

	.globl	gimp_overlay_box_set_child_angle
	.align	16, 0x90
	.type	gimp_overlay_box_set_child_angle,@function
gimp_overlay_box_set_child_angle:       # @gimp_overlay_box_set_child_angle
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB8_2
	jp	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %if.then.2
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_overlay_box_set_child_angle, .Lfunc_end8-gimp_overlay_box_set_child_angle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_overlay_box_set_child_opacity
	.align	16, 0x90
	.type	gimp_overlay_box_set_child_opacity,@function
gimp_overlay_box_set_child_opacity:     # @gimp_overlay_box_set_child_opacity
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_10
# BB#1:                                 # %if.then
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB9_3
# BB#2:                                 # %cond.true
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jmp	.LBB9_7
.LBB9_3:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB9_5
# BB#4:                                 # %cond.true.2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false.3
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB9_6:                                # %cond.end
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
.LBB9_7:                                # %cond.end.4
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-32(%rbp), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB9_8
	jp	.LBB9_8
	jmp	.LBB9_9
.LBB9_8:                                # %if.then.8
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB9_9:                                # %if.end
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_overlay_box_set_child_opacity, .Lfunc_end9-gimp_overlay_box_set_child_opacity
	.cfi_endproc

	.globl	gimp_overlay_box_scroll
	.align	16, 0x90
	.type	gimp_overlay_box_scroll,@function
gimp_overlay_box_scroll:                # @gimp_overlay_box_scroll
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_overlay_box_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_overlay_box_scroll, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_27
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB10_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_19
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB10_13 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB10_18
.LBB10_17:                              # %cond.false
                                        #   in Loop: Header=BB10_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB10_18
.LBB10_18:                              # %cond.end
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB10_13
.LBB10_19:                              # %for.end
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gdk_window_scroll
	movq	-8(%rbp), %rdi
	movq	112(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB10_20:                              # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_26
# BB#21:                                # %for.body.20
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
# BB#22:                                # %for.inc.24
                                        #   in Loop: Header=BB10_20 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB10_24
# BB#23:                                # %cond.true.26
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false.28
                                        #   in Loop: Header=BB10_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB10_25
.LBB10_25:                              # %cond.end.29
                                        #   in Loop: Header=BB10_20 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB10_20
.LBB10_26:                              # %for.end.31
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gdk_window_process_updates
.LBB10_27:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_overlay_box_scroll, .Lfunc_end10-gimp_overlay_box_scroll
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_class_init,@function
gimp_overlay_box_class_init:            # @gimp_overlay_box_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_overlay_box_expose, %rsi
	movabsq	$gimp_overlay_box_size_allocate, %rdi
	movabsq	$gimp_overlay_box_size_request, %rcx
	movabsq	$gimp_overlay_box_unrealize, %rdx
	movabsq	$gimp_overlay_box_realize, %r8
	movabsq	$gimp_overlay_box_get_property, %r9
	movabsq	$gimp_overlay_box_set_property, %r10
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r8, 224(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 392(%rax)
	callq	gimp_overlay_box_get_type
	movabsq	$.L.str.4, %rdi
	movabsq	$gimp_overlay_box_damage, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_signal_override_class_handler
	movabsq	$gimp_overlay_box_child_type, %rax
	movabsq	$gimp_overlay_box_forall, %rcx
	movabsq	$gimp_overlay_box_remove, %rdx
	movabsq	$gimp_overlay_box_add, %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, 720(%rdi)
	movq	-32(%rbp), %rsi
	movq	%rdx, 728(%rsi)
	movq	-32(%rbp), %rdx
	movq	%rcx, 744(%rdx)
	movq	-32(%rbp), %rcx
	movq	%rax, 760(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_overlay_box_class_init, .Lfunc_end11-gimp_overlay_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_set_property,@function
gimp_overlay_box_set_property:          # @gimp_overlay_box_set_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$115, %edx
	movabsq	$.L.str.7, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB12_4
.LBB12_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_overlay_box_set_property, .Lfunc_end12-gimp_overlay_box_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_get_property,@function
gimp_overlay_box_get_property:          # @gimp_overlay_box_get_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB13_2
.LBB13_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.5, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$129, %edx
	movabsq	$.L.str.7, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB13_4
.LBB13_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_overlay_box_get_property, .Lfunc_end13-gimp_overlay_box_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_realize,@function
gimp_overlay_box_realize:               # @gimp_overlay_box_realize
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_set_realized
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	-32(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -96(%rbp)
	movl	$2, -72(%rbp)
	movl	$0, -92(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_visual
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_colormap
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_events
	movl	%eax, -112(%rbp)
	movl	$108, -124(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gtk_widget_get_parent_window
	leaq	-120(%rbp), %rsi
	movl	-124(%rbp), %edx
	movq	%rax, %rdi
	callq	gdk_window_new
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_set_window
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_user_data
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_overlay_box_pick_embedded_child, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_attach
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	-8(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_window
	xorl	%edx, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_style_set_background
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB14_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_overlay_child_realize
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB14_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB14_6
.LBB14_6:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB14_1
.LBB14_7:                               # %for.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_overlay_box_realize, .Lfunc_end14-gimp_overlay_box_realize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_unrealize,@function
gimp_overlay_box_unrealize:             # @gimp_overlay_box_unrealize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_overlay_child_unrealize
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_6:                               # %cond.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_7:                               # %for.end
	movq	gimp_overlay_box_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	232(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_overlay_box_unrealize, .Lfunc_end15-gimp_overlay_box_unrealize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_size_request,@function
gimp_overlay_box_size_request:          # @gimp_overlay_box_size_request
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, 4(%rsi)
	movq	-24(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_overlay_child_size_request
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB16_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false
                                        #   in Loop: Header=BB16_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_6
.LBB16_6:                               # %cond.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB16_1
.LBB16_7:                               # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_overlay_box_size_request, .Lfunc_end16-gimp_overlay_box_size_request
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_size_allocate,@function
gimp_overlay_box_size_allocate:         # @gimp_overlay_box_size_allocate
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_widget_set_allocation
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_realized
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rdi
	movl	(%rdi), %esi
	movq	-16(%rbp), %rdi
	movl	4(%rdi), %edx
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %ecx
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %r8d
	movq	%rax, %rdi
	callq	gdk_window_move_resize
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_overlay_child_size_allocate
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_8
.LBB17_7:                               # %cond.false
                                        #   in Loop: Header=BB17_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB17_8
.LBB17_8:                               # %cond.end
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB17_3
.LBB17_9:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_overlay_box_size_allocate, .Lfunc_end17-gimp_overlay_box_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_expose,@function
gimp_overlay_box_expose:                # @gimp_overlay_box_expose
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB18_11
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_overlay_child_expose
	cmpl	$0, %eax
	je	.LBB18_5
# BB#4:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB18_12
.LBB18_5:                               # %if.end
                                        #   in Loop: Header=BB18_2 Depth=1
	jmp	.LBB18_6
.LBB18_6:                               # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB18_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_9
.LBB18_8:                               # %cond.false
                                        #   in Loop: Header=BB18_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB18_9
.LBB18_9:                               # %cond.end
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB18_2
.LBB18_10:                              # %for.end
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.8
	movl	$0, -4(%rbp)
.LBB18_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_overlay_box_expose, .Lfunc_end18-gimp_overlay_box_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_damage,@function
gimp_overlay_box_damage:                # @gimp_overlay_box_damage
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_overlay_child_damage
	cmpl	$0, %eax
	je	.LBB19_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB19_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB19_8
.LBB19_8:                               # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB19_1
.LBB19_9:                               # %for.end
	movl	$0, -4(%rbp)
.LBB19_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_overlay_box_damage, .Lfunc_end19-gimp_overlay_box_damage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_overlay_box_add,@function
gimp_overlay_box_add:                   # @gimp_overlay_box_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_overlay_box_add_child
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_overlay_box_add, .Lfunc_end20-gimp_overlay_box_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_remove,@function
gimp_overlay_box_remove:                # @gimp_overlay_box_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_overlay_child_find
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_visible
	cmpl	$0, %eax
	je	.LBB21_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_overlay_child_invalidate
.LBB21_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-24(%rbp), %rsi
	movq	%rax, 112(%rsi)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_overlay_child_free
.LBB21_4:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_overlay_box_remove, .Lfunc_end21-gimp_overlay_box_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_forall,@function
gimp_overlay_box_forall:                # @gimp_overlay_box_forall
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_overlay_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB22_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB22_1
.LBB22_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_overlay_box_forall, .Lfunc_end22-gimp_overlay_box_forall
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_child_type,@function
gimp_overlay_box_child_type:            # @gimp_overlay_box_child_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_widget_get_type
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_overlay_box_child_type, .Lfunc_end23-gimp_overlay_box_child_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB24_2
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
.LBB24_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end24:
	.size	g_warning, .Lfunc_end24-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_overlay_box_pick_embedded_child,@function
gimp_overlay_box_pick_embedded_child:   # @gimp_overlay_box_pick_embedded_child
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rsi, -48(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB25_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_overlay_child_pick
	cmpl	$0, %eax
	je	.LBB25_4
# BB#3:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB25_10
.LBB25_4:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_5
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB25_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_7:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB25_8
.LBB25_8:                               # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB25_1
.LBB25_9:                               # %for.end
	movq	$0, -8(%rbp)
.LBB25_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_overlay_box_pick_embedded_child, .Lfunc_end25-gimp_overlay_box_pick_embedded_child
	.cfi_endproc

	.type	gimp_overlay_box_get_type.g_define_type_id__volatile,@object # @gimp_overlay_box_get_type.g_define_type_id__volatile
	.local	gimp_overlay_box_get_type.g_define_type_id__volatile
	.comm	gimp_overlay_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpOverlayBox"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_overlay_box_add_child,@object # @__func__.gimp_overlay_box_add_child
.L__func__.gimp_overlay_box_add_child:
	.asciz	"gimp_overlay_box_add_child"
	.size	.L__func__.gimp_overlay_box_add_child, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_OVERLAY_BOX (box)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.3, 23

	.type	.L__func__.gimp_overlay_box_scroll,@object # @__func__.gimp_overlay_box_scroll
.L__func__.gimp_overlay_box_scroll:
	.asciz	"gimp_overlay_box_scroll"
	.size	.L__func__.gimp_overlay_box_scroll, 24

	.type	gimp_overlay_box_parent_class,@object # @gimp_overlay_box_parent_class
	.local	gimp_overlay_box_parent_class
	.comm	gimp_overlay_box_parent_class,8,8
	.type	GimpOverlayBox_private_offset,@object # @GimpOverlayBox_private_offset
	.local	GimpOverlayBox_private_offset
	.comm	GimpOverlayBox_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"damage-event"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpoverlaybox.c"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"property"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"pick-embedded-child"
	.size	.L.str.8, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
