	.text
	.file	"gimptaggedcontainer.bc"
	.globl	gimp_tagged_container_get_type
	.align	16, 0x90
	.type	gimp_tagged_container_get_type,@function
gimp_tagged_container_get_type:         # @gimp_tagged_container_get_type
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
	movq	gimp_tagged_container_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tagged_container_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_filtered_container_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$288, %edx              # imm = 0x120
	movabsq	$gimp_tagged_container_class_intern_init, %rdi
	movl	$120, %r8d
	movabsq	$gimp_tagged_container_init, %rcx
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
	movabsq	$gimp_tagged_container_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tagged_container_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tagged_container_get_type, .Lfunc_end0-gimp_tagged_container_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_class_intern_init,@function
gimp_tagged_container_class_intern_init: # @gimp_tagged_container_class_intern_init
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
	movq	%rax, gimp_tagged_container_parent_class
	cmpl	$0, GimpTaggedContainer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTaggedContainer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tagged_container_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tagged_container_class_intern_init, .Lfunc_end1-gimp_tagged_container_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_init,@function
gimp_tagged_container_init:             # @gimp_tagged_container_init
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
	movabsq	$gimp_tag_get_hash, %rax
	movabsq	$gimp_tag_equals, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_hash_table_new
	movq	-8(%rbp), %rcx
	movq	%rax, 104(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tagged_container_init, .Lfunc_end2-gimp_tagged_container_init
	.cfi_endproc

	.globl	gimp_tagged_container_new
	.align	16, 0x90
	.type	gimp_tagged_container_new,@function
gimp_tagged_container_new:              # @gimp_tagged_container_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_container_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-48(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_tagged_container_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r9
	movl	$1, %edx
	movabsq	$.L.str.6, %rdi
	xorl	%r8d, %r8d
	movabsq	$.L.str.7, %r10
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-72(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	-48(%rbp), %r12
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movl	$1, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%rbx, -128(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB3_13:                               # %return
	movq	-40(%rbp), %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tagged_container_new, .Lfunc_end3-gimp_tagged_container_new
	.cfi_endproc

	.globl	gimp_tagged_container_set_filter
	.align	16, 0x90
	.type	gimp_tagged_container_set_filter,@function
gimp_tagged_container_set_filter:       # @gimp_tagged_container_set_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tagged_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_container_set_filter, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_38
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_34
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB4_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_33
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %do.body.15
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_25
# BB#17:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_tag_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.26
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	$0, -76(%rbp)
	jmp	.LBB4_24
.LBB4_19:                               # %if.else.27
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_22
# BB#20:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_22
# BB#21:                                # %if.then.34
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	$1, -76(%rbp)
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.35
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_23:                               # %if.end.37
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.38
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_26
.LBB4_25:                               # %if.then.41
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_27
.LBB4_26:                               # %if.else.42
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_container_set_filter, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_38
.LBB4_27:                               # %if.end.43
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_28
.LBB4_28:                               # %do.end.44
                                        #   in Loop: Header=BB4_14 Depth=1
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB4_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %cond.false
                                        #   in Loop: Header=BB4_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB4_32
.LBB4_32:                               # %cond.end
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB4_14
.LBB4_33:                               # %for.end
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.46
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#35:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_container_src_freeze
.LBB4_36:                               # %if.end.54
	movq	-16(%rbp), %rdi
	callq	g_list_copy
	movabsq	$gimp_tag_or_null_ref, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	g_list_foreach
	movabsq	$gimp_tag_or_null_unref, %rax
	movq	-8(%rbp), %rdx
	movq	96(%rdx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rdi
	callq	gimp_container_frozen
	cmpl	$0, %eax
	jne	.LBB4_38
# BB#37:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_container_src_thaw
.LBB4_38:                               # %if.end.65
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tagged_container_set_filter, .Lfunc_end4-gimp_tagged_container_set_filter
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_src_freeze,@function
gimp_tagged_container_src_freeze:       # @gimp_tagged_container_src_freeze
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_clear
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tagged_container_src_freeze, .Lfunc_end5-gimp_tagged_container_src_freeze
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_src_thaw,@function
gimp_tagged_container_src_thaw:         # @gimp_tagged_container_src_thaw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_container_src_add
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB6_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB6_6
.LBB6_6:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tagged_container_src_thaw, .Lfunc_end6-gimp_tagged_container_src_thaw
	.cfi_endproc

	.globl	gimp_tagged_container_get_filter
	.align	16, 0x90
	.type	gimp_tagged_container_get_filter,@function
gimp_tagged_container_get_filter:       # @gimp_tagged_container_get_filter
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_container_get_filter, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tagged_container_get_filter, .Lfunc_end7-gimp_tagged_container_get_filter
	.cfi_endproc

	.globl	gimp_tagged_container_get_tag_count
	.align	16, 0x90
	.type	gimp_tagged_container_get_tag_count,@function
gimp_tagged_container_get_tag_count:    # @gimp_tagged_container_get_tag_count
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tagged_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tagged_container_get_tag_count, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tagged_container_get_tag_count, .Lfunc_end8-gimp_tagged_container_get_tag_count
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_class_init,@function
gimp_tagged_container_class_init:       # @gimp_tagged_container_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_tagged_container_tag_count_changed, %rsi
	movabsq	$gimp_tagged_container_src_thaw, %rdi
	movabsq	$gimp_tagged_container_src_freeze, %rcx
	movabsq	$gimp_tagged_container_src_remove, %rdx
	movabsq	$gimp_tagged_container_src_add, %r8
	movabsq	$gimp_tagged_container_clear, %r9
	movabsq	$gimp_tagged_container_get_memsize, %r10
	movabsq	$gimp_tagged_container_dispose, %r11
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%r11, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 152(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 200(%rax)
	movq	-56(%rbp), %rax
	movq	%r8, 248(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 256(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 264(%rax)
	movq	-56(%rbp), %rax
	movq	%rdi, 272(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	callq	gimp_tagged_container_get_type
	movabsq	$.L.str.11, %rdi
	movl	$2, %edx
	movl	$280, %ecx              # imm = 0x118
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__INT, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	movl	$1, %ebx
	movl	$24, %r14d
	movl	%r14d, %r10d
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	$24, 24(%rsp)
	movb	$0, %al
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, gimp_tagged_container_signals
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tagged_container_class_init, .Lfunc_end9-gimp_tagged_container_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_dispose,@function
gimp_tagged_container_dispose:          # @gimp_tagged_container_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movabsq	$gimp_tag_or_null_unref, %rax
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_hash_table_unref
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB10_4:                               # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tagged_container_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tagged_container_dispose, .Lfunc_end10-gimp_tagged_container_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_get_memsize,@function
gimp_tagged_container_get_memsize:      # @gimp_tagged_container_get_memsize
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
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	gimp_tagged_container_parent_class, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-32(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tagged_container_get_memsize, .Lfunc_end11-gimp_tagged_container_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_clear,@function
gimp_tagged_container_clear:            # @gimp_tagged_container_clear
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_filtered_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_list_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tagged_container_tag_added, %rdx
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tagged_container_tag_removed, %rdi
	movq	-32(%rbp), %r9
	movq	(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -88(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_6:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_7:                               # %for.end
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB12_9
# BB#8:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_hash_table_remove_all
	movq	-24(%rbp), %rax
	movl	$0, 112(%rax)
.LBB12_9:                               # %if.end
	movq	gimp_tagged_container_parent_class, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	200(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tagged_container_clear, .Lfunc_end12-gimp_tagged_container_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_src_add,@function
gimp_tagged_container_src_add:          # @gimp_tagged_container_src_add
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -32(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_container_ref_tag
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_6:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %for.end
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_tagged_container_tag_added, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_tagged_container_tag_removed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_object_matches
	cmpl	$0, %eax
	je	.LBB13_9
# BB#8:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_add
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB13_9:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tagged_container_src_add, .Lfunc_end13-gimp_tagged_container_src_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_src_remove,@function
gimp_tagged_container_src_remove:       # @gimp_tagged_container_src_remove
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tagged_container_tag_added, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tagged_container_tag_removed, %rdi
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -32(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_container_unref_tag
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB14_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_6
.LBB14_5:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB14_6
.LBB14_6:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB14_1
.LBB14_7:                               # %for.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tagged_container_object_matches
	cmpl	$0, %eax
	je	.LBB14_9
# BB#8:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_remove
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB14_9:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tagged_container_src_remove, .Lfunc_end14-gimp_tagged_container_src_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_tag_count_changed,@function
gimp_tagged_container_tag_count_changed: # @gimp_tagged_container_tag_count_changed
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tagged_container_tag_count_changed, .Lfunc_end15-gimp_tagged_container_tag_count_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_tag_added,@function
gimp_tagged_container_tag_added:        # @gimp_tagged_container_tag_added
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tagged_container_ref_tag
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tagged_container_object_matches
	cmpl	$0, %eax
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB16_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tagged_container_tag_added, .Lfunc_end16-gimp_tagged_container_tag_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_tag_removed,@function
gimp_tagged_container_tag_removed:      # @gimp_tagged_container_tag_removed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_tagged_container_unref_tag
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tagged_container_object_matches
	cmpl	$0, %eax
	jne	.LBB17_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB17_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB17_3:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tagged_container_tag_removed, .Lfunc_end17-gimp_tagged_container_tag_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_ref_tag,@function
gimp_tagged_container_ref_tag:          # @gimp_tagged_container_ref_tag
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
	movq	104(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_hash_table_insert
	cmpl	$1, -20(%rbp)
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB18_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 112(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_tagged_container_signals, %esi
	movq	-8(%rbp), %rdi
	movl	112(%rdi), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_tagged_container_ref_tag, .Lfunc_end18-gimp_tagged_container_ref_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_object_matches,@function
gimp_tagged_container_object_matches:   # @gimp_tagged_container_object_matches
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	96(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB19_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_12
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_tagged_has_tag
	cmpl	$0, %eax
	jne	.LBB19_6
# BB#5:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB19_12
.LBB19_6:                               # %if.end.7
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_7
.LBB19_7:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB19_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB19_10
.LBB19_9:                               # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB19_10
.LBB19_10:                              # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB19_1
.LBB19_11:                              # %for.end
	movl	$1, -4(%rbp)
.LBB19_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tagged_container_object_matches, .Lfunc_end19-gimp_tagged_container_object_matches
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tagged_container_unref_tag,@function
gimp_tagged_container_unref_tag:        # @gimp_tagged_container_unref_tag
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	104(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_hash_table_insert
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB20_5
.LBB20_2:                               # %if.else
	movq	-8(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_hash_table_remove
	cmpl	$0, %eax
	je	.LBB20_4
# BB#3:                                 # %if.then.7
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 112(%rax)
	movq	-8(%rbp), %rax
	movl	gimp_tagged_container_signals, %esi
	movq	-8(%rbp), %rdi
	movl	112(%rdi), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tagged_container_unref_tag, .Lfunc_end20-gimp_tagged_container_unref_tag
	.cfi_endproc

	.type	gimp_tagged_container_get_type.g_define_type_id__volatile,@object # @gimp_tagged_container_get_type.g_define_type_id__volatile
	.local	gimp_tagged_container_get_type.g_define_type_id__volatile
	.comm	gimp_tagged_container_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTaggedContainer"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tagged_container_new,@object # @__func__.gimp_tagged_container_new
.L__func__.gimp_tagged_container_new:
	.asciz	"gimp_tagged_container_new"
	.size	.L__func__.gimp_tagged_container_new, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_LIST (src_container)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sort-func"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"children-type"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"policy"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"unique-names"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"src-container"
	.size	.L.str.7, 14

	.type	.L__func__.gimp_tagged_container_set_filter,@object # @__func__.gimp_tagged_container_set_filter
.L__func__.gimp_tagged_container_set_filter:
	.asciz	"gimp_tagged_container_set_filter"
	.size	.L__func__.gimp_tagged_container_set_filter, 33

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_TAGGED_CONTAINER (tagged_container)"
	.size	.L.str.8, 44

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"list->data == NULL || GIMP_IS_TAG (list->data)"
	.size	.L.str.9, 47

	.type	.L__func__.gimp_tagged_container_get_filter,@object # @__func__.gimp_tagged_container_get_filter
.L__func__.gimp_tagged_container_get_filter:
	.asciz	"gimp_tagged_container_get_filter"
	.size	.L__func__.gimp_tagged_container_get_filter, 33

	.type	.L__func__.gimp_tagged_container_get_tag_count,@object # @__func__.gimp_tagged_container_get_tag_count
.L__func__.gimp_tagged_container_get_tag_count:
	.asciz	"gimp_tagged_container_get_tag_count"
	.size	.L__func__.gimp_tagged_container_get_tag_count, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_TAGGED_CONTAINER (container)"
	.size	.L.str.10, 37

	.type	gimp_tagged_container_parent_class,@object # @gimp_tagged_container_parent_class
	.local	gimp_tagged_container_parent_class
	.comm	gimp_tagged_container_parent_class,8,8
	.type	GimpTaggedContainer_private_offset,@object # @GimpTaggedContainer_private_offset
	.local	GimpTaggedContainer_private_offset
	.comm	GimpTaggedContainer_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tag-count-changed"
	.size	.L.str.11, 18

	.type	gimp_tagged_container_signals,@object # @gimp_tagged_container_signals
	.local	gimp_tagged_container_signals
	.comm	gimp_tagged_container_signals,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tag-added"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tag-removed"
	.size	.L.str.13, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
