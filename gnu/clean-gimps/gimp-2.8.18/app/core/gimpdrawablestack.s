	.text
	.file	"gimpdrawablestack.bc"
	.globl	gimp_drawable_stack_get_type
	.align	16, 0x90
	.type	gimp_drawable_stack_get_type,@function
gimp_drawable_stack_get_type:           # @gimp_drawable_stack_get_type
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
	movq	gimp_drawable_stack_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_drawable_stack_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_stack_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$256, %edx              # imm = 0x100
	movabsq	$gimp_drawable_stack_class_intern_init, %rdi
	movl	$80, %r8d
	movabsq	$gimp_drawable_stack_init, %rcx
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
	movabsq	$gimp_drawable_stack_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_drawable_stack_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_stack_get_type, .Lfunc_end0-gimp_drawable_stack_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_class_intern_init,@function
gimp_drawable_stack_class_intern_init:  # @gimp_drawable_stack_class_intern_init
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
	movq	%rax, gimp_drawable_stack_parent_class
	cmpl	$0, GimpDrawableStack_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDrawableStack_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_drawable_stack_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_stack_class_intern_init, .Lfunc_end1-gimp_drawable_stack_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_init,@function
gimp_drawable_stack_init:               # @gimp_drawable_stack_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_stack_init, .Lfunc_end2-gimp_drawable_stack_init
	.cfi_endproc

	.globl	gimp_drawable_stack_new
	.align	16, 0x90
	.type	gimp_drawable_stack_new,@function
gimp_drawable_stack_new:                # @gimp_drawable_stack_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_drawable_stack_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_drawable_stack_get_type
	movq	-16(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_stack_new, .Lfunc_end3-gimp_drawable_stack_new
	.cfi_endproc

	.globl	gimp_drawable_stack_get_graph
	.align	16, 0x90
	.type	gimp_drawable_stack_get_graph,@function
gimp_drawable_stack_get_graph:          # @gimp_drawable_stack_get_graph
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_drawable_stack_get_type
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
	movabsq	$.L__func__.gimp_drawable_stack_get_graph, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_33
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_33
.LBB4_14:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB4_15 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
                                        #   in Loop: Header=BB4_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_20:                               # %cond.end
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB4_15
.LBB4_21:                               # %for.end
	callq	gegl_node_new
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB4_22:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_30
# BB#23:                                # %for.body.26
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	gegl_node_add_child
	cmpq	$0, -40(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB4_25
# BB#24:                                # %if.then.37
                                        #   in Loop: Header=BB4_22 Depth=1
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB4_25:                               # %if.end.39
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#26:                                # %for.inc.40
                                        #   in Loop: Header=BB4_22 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_28
# BB#27:                                # %cond.true.42
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_29
.LBB4_28:                               # %cond.false.44
                                        #   in Loop: Header=BB4_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_29
.LBB4_29:                               # %cond.end.45
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB4_22
.LBB4_30:                               # %for.end.47
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movabsq	$.L.str.7, %rsi
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_32
# BB#31:                                # %if.then.51
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB4_32:                               # %if.end.53
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_stack_get_graph, .Lfunc_end4-gimp_drawable_stack_get_graph
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_class_init,@function
gimp_drawable_stack_class_init:         # @gimp_drawable_stack_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.9, %rdi
	movl	$1, %edx
	movl	$248, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__INT_INT_INT_INT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$4, %r8d
	movl	$24, %r11d
	movl	%r11d, %ebx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
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
	movq	$24, 24(%rsp)
	movq	$24, 32(%rsp)
	movq	$24, 40(%rsp)
	movq	$24, 48(%rsp)
	movb	$0, %al
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_drawable_stack_reorder, %rsi
	movabsq	$gimp_drawable_stack_remove, %rdi
	movabsq	$gimp_drawable_stack_add, %r8
	movabsq	$gimp_drawable_stack_finalize, %r9
	movabsq	$gimp_drawable_stack_constructed, %r10
	movl	%eax, stack_signals
	movq	-32(%rbp), %rbx
	movq	%r10, 72(%rbx)
	movq	-32(%rbp), %r10
	movq	%r9, 48(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 160(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 168(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 176(%rdi)
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_stack_class_init, .Lfunc_end5-gimp_drawable_stack_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_constructed,@function
gimp_drawable_stack_constructed:        # @gimp_drawable_stack_constructed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_drawable_stack_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_stack_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	movq	-16(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB6_5
# BB#4:                                 # %if.then.9
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$120, %edx
	movabsq	$.L__func__.gimp_drawable_stack_constructed, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB6_6:                                # %if.end.10
	jmp	.LBB6_7
.LBB6_7:                                # %do.end
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_drawable_stack_drawable_update, %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_container_add_handler
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_drawable_stack_drawable_visible, %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_container_add_handler
	movl	%eax, -48(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_stack_constructed, .Lfunc_end6-gimp_drawable_stack_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_finalize,@function
gimp_drawable_stack_finalize:           # @gimp_drawable_stack_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB7_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_drawable_stack_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_stack_finalize, .Lfunc_end7-gimp_drawable_stack_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_add,@function
gimp_drawable_stack_add:                # @gimp_drawable_stack_add
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_drawable_stack_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gegl_node_add_child
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stack_add_node
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_stack_drawable_visible
.LBB8_4:                                # %if.end.18
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_stack_add, .Lfunc_end8-gimp_drawable_stack_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_remove,@function
gimp_drawable_stack_remove:             # @gimp_drawable_stack_remove
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stack_remove_node
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gegl_node_remove_child
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_2:                                # %if.end
	movq	gimp_drawable_stack_parent_class, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	168(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB9_4
# BB#3:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_stack_drawable_visible
.LBB9_4:                                # %if.end.18
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_stack_remove, .Lfunc_end9-gimp_drawable_stack_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_reorder,@function
gimp_drawable_stack_reorder:            # @gimp_drawable_stack_reorder
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stack_remove_node
.LBB10_2:                               # %if.end
	movq	gimp_drawable_stack_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	176(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	*%rax
	movq	-32(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_stack_add_node
.LBB10_4:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB10_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_stack_drawable_visible
.LBB10_6:                               # %if.end.19
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_stack_reorder, .Lfunc_end10-gimp_drawable_stack_reorder
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_drawable_update,@function
gimp_drawable_stack_drawable_update:    # @gimp_drawable_stack_drawable_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%eax, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gimp_drawable_stack_update
.LBB11_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_stack_drawable_update, .Lfunc_end11-gimp_drawable_stack_drawable_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_drawable_visible,@function
gimp_drawable_stack_drawable_visible:   # @gimp_drawable_stack_drawable_visible
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
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%esi, -40(%rbp)         # 4-byte Spill
	callq	gimp_item_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-40(%rbp), %esi         # 4-byte Reload
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_stack_update
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_stack_drawable_visible, .Lfunc_end12-gimp_drawable_stack_drawable_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_update,@function
gimp_drawable_stack_update:             # @gimp_drawable_stack_update
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	stack_signals, %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %edx
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movb	$0, %al
	callq	g_signal_emit
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_stack_update, .Lfunc_end13-gimp_drawable_stack_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_add_node,@function
gimp_drawable_stack_add_node:           # @gimp_drawable_stack_add_node
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -32(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -32(%rbp)
.LBB14_3:                               # %if.end
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-8(%rbp), %rcx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %r8d
	addl	$1, %r8d
	movq	%rax, %rdi
	movl	%r8d, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_5
# BB#4:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB14_5:                               # %if.end.24
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_stack_add_node, .Lfunc_end14-gimp_drawable_stack_add_node
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_stack_remove_node,@function
gimp_drawable_stack_remove_node:        # @gimp_drawable_stack_remove_node
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	gegl_node_get_output_proxy
	movq	%rax, -32(%rbp)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movq	%rax, -32(%rbp)
.LBB15_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_node
	movabsq	$.L.str.8, %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rdi
	callq	gegl_node_disconnect
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gegl_node_connect_to
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %if.else.24
	movabsq	$.L.str.8, %rsi
	movq	-32(%rbp), %rdi
	callq	gegl_node_disconnect
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB15_6:                               # %if.end.26
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_stack_remove_node, .Lfunc_end15-gimp_drawable_stack_remove_node
	.cfi_endproc

	.type	gimp_drawable_stack_get_type.g_define_type_id__volatile,@object # @gimp_drawable_stack_get_type.g_define_type_id__volatile
	.local	gimp_drawable_stack_get_type.g_define_type_id__volatile
	.comm	gimp_drawable_stack_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDrawableStack"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_drawable_stack_new,@object # @__func__.gimp_drawable_stack_new
.L__func__.gimp_drawable_stack_new:
	.asciz	"gimp_drawable_stack_new"
	.size	.L__func__.gimp_drawable_stack_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"g_type_is_a (drawable_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"children-type"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"policy"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_drawable_stack_get_graph,@object # @__func__.gimp_drawable_stack_get_graph
.L__func__.gimp_drawable_stack_get_graph:
	.asciz	"gimp_drawable_stack_get_graph"
	.size	.L__func__.gimp_drawable_stack_get_graph, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_DRAWABLE_STACK (stack)"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"output"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"input"
	.size	.L.str.8, 6

	.type	gimp_drawable_stack_parent_class,@object # @gimp_drawable_stack_parent_class
	.local	gimp_drawable_stack_parent_class
	.comm	gimp_drawable_stack_parent_class,8,8
	.type	GimpDrawableStack_private_offset,@object # @GimpDrawableStack_private_offset
	.local	GimpDrawableStack_private_offset
	.comm	GimpDrawableStack_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"update"
	.size	.L.str.9, 7

	.type	stack_signals,@object   # @stack_signals
	.local	stack_signals
	.comm	stack_signals,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpdrawablestack.c"
	.size	.L.str.10, 20

	.type	.L__func__.gimp_drawable_stack_constructed,@object # @__func__.gimp_drawable_stack_constructed
.L__func__.gimp_drawable_stack_constructed:
	.asciz	"gimp_drawable_stack_constructed"
	.size	.L__func__.gimp_drawable_stack_constructed, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"g_type_is_a (gimp_container_get_children_type (container), GIMP_TYPE_DRAWABLE)"
	.size	.L.str.11, 79

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"visibility-changed"
	.size	.L.str.12, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
