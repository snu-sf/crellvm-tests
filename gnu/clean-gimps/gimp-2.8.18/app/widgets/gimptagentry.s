	.text
	.file	"gimptagentry.bc"
	.globl	gimp_tag_entry_get_type
	.align	16, 0x90
	.type	gimp_tag_entry_get_type,@function
gimp_tag_entry_get_type:                # @gimp_tag_entry_get_type
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
	movq	gimp_tag_entry_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tag_entry_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_entry_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_tag_entry_class_intern_init, %rdi
	movl	$280, %r8d              # imm = 0x118
	movabsq	$gimp_tag_entry_init, %rcx
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
	movabsq	$gimp_tag_entry_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tag_entry_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tag_entry_get_type, .Lfunc_end0-gimp_tag_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_class_intern_init,@function
gimp_tag_entry_class_intern_init:       # @gimp_tag_entry_class_intern_init
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
	movq	%rax, gimp_tag_entry_parent_class
	cmpl	$0, GimpTagEntry_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTagEntry_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tag_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tag_entry_class_intern_init, .Lfunc_end1-gimp_tag_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_init,@function
gimp_tag_entry_init:                    # @gimp_tag_entry_init
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
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 224(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 232(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 248(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 268(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 272(%rdi)
	movq	%rax, %rdi
	callq	g_string_new
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_tag_entry_activate, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %r8
	movq	%rax, 216(%r8)
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_tag_entry_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	-32(%rbp), %r8          # 8-byte Reload
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_tag_entry_insert_text, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_tag_entry_delete_text, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_tag_entry_key_press, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_tag_entry_focus_in, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_tag_entry_focus_out, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_tag_entry_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -144(%rbp)        # 8-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tag_entry_init, .Lfunc_end2-gimp_tag_entry_init
	.cfi_endproc

	.globl	gimp_tag_entry_new
	.align	16, 0x90
	.type	gimp_tag_entry_new,@function
gimp_tag_entry_new:                     # @gimp_tag_entry_new
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tagged_container_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_entry_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_tag_entry_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tag_entry_new, .Lfunc_end3-gimp_tag_entry_new
	.cfi_endproc

	.globl	gimp_tag_entry_set_tag_string
	.align	16, 0x90
	.type	gimp_tag_entry_set_tag_string,@function
gimp_tag_entry_set_tag_string:          # @gimp_tag_entry_set_tag_string
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_entry_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_entry_set_tag_string, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_17
.LBB4_11:                               # %if.end.11
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
	movq	-8(%rbp), %rax
	cmpl	$1, 264(%rax)
	jne	.LBB4_14
# BB#13:                                # %if.then.21
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_assign_tags
	jmp	.LBB4_17
.LBB4_14:                               # %if.else.22
	movq	-8(%rbp), %rax
	cmpl	$0, 264(%rax)
	jne	.LBB4_16
# BB#15:                                # %if.then.25
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_query_tag
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB4_16:                               # %if.end.27
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.28
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tag_entry_set_tag_string, .Lfunc_end4-gimp_tag_entry_set_tag_string
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_commit_tags,@function
gimp_tag_entry_commit_tags:             # @gimp_tag_entry_commit_tags
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -16(%rbp)
.LBB5_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #     Child Loop BB5_5 Depth 2
	movl	$0, -12(%rbp)
	movl	$0, -44(%rbp)
.LBB5_2:                                # %for.cond
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB5_14
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$117, %edx
	jne	.LBB5_12
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$1, -12(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB5_5:                                # %for.cond.9
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB5_11
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB5_5 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$117, %edx
	jne	.LBB5_8
# BB#7:                                 # %if.then.23
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_11
.LBB5_9:                                # %if.end
                                        #   in Loop: Header=BB5_5 Depth=2
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_5
.LBB5_11:                               # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_14
.LBB5_12:                               # %if.end.26
                                        #   in Loop: Header=BB5_2 Depth=2
	jmp	.LBB5_13
.LBB5_13:                               # %for.inc.27
                                        #   in Loop: Header=BB5_2 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_2
.LBB5_14:                               # %for.end.29
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB5_28
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_get_chars
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_string_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rdi
	addq	%rdi, %rax
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rsi
	movq	%rax, %rdi
	callq	g_string_new_len
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_tag_entry_commit_region
	cmpl	$0, -20(%rbp)
	jle	.LBB5_20
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	je	.LBB5_20
# BB#17:                                # %land.lhs.true.52
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB5_20
# BB#18:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$119, %ecx
	je	.LBB5_20
# BB#19:                                # %if.then.62
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$32, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_prepend_c
	movl	$119, %esi
	movq	-72(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_string_prepend_c
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_20:                               # %if.end.65
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	ja	.LBB5_25
# BB#21:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB5_25
# BB#22:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB5_25
# BB#23:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB5_25
# BB#24:                                # %if.then.91
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$32, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_append_c_inline
	movl	$119, %esi
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB5_25:                               # %if.end.94
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB5_27
# BB#26:                                # %if.then.97
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	8(%rax), %rsi
	callq	g_utf8_strlen
	subq	-40(%rbp), %rax
	movslq	-16(%rbp), %rsi
	addq	%rax, %rsi
	movl	%esi, %ecx
	movl	%ecx, -16(%rbp)
.LBB5_27:                               # %if.end.105
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movl	256(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 256(%rax)
	movq	-8(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 260(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_delete_text
	movl	-20(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-64(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%edi, %edx
	movq	%rax, %rdi
	callq	gtk_editable_insert_text
	movq	-8(%rbp), %rax
	movl	260(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 260(%rax)
	movq	-8(%rbp), %rax
	movl	256(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 256(%rax)
	movq	-8(%rbp), %rax
	movl	252(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 252(%rax)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	movslq	-20(%rbp), %rsi
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	movslq	%edx, %rdx
	callq	g_string_erase
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rdi
	movslq	-20(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_string_insert_len
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_string_free
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_string_free
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB5_28:                               # %if.end.133
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_29
.LBB5_29:                               # %do.cond
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB5_1
# BB#30:                                # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_strip_extra_whitespace
	movl	%eax, -180(%rbp)        # 4-byte Spill
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tag_entry_commit_tags, .Lfunc_end5-gimp_tag_entry_commit_tags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_assign_tags,@function
gimp_tag_entry_assign_tags:             # @gimp_tag_entry_assign_tags
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
	movq	%rdi, -8(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_parse_tags
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strv_length
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_tag_new
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB6_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$gimp_tag_compare_func, %rdx
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find_custom
	cmpq	$0, %rax
	je	.LBB6_5
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -64(%rbp)
.LBB6_6:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -72(%rbp)
.LBB6_7:                                # %if.end.11
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_8
.LBB6_8:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_9:                                # %for.end
	movq	-16(%rbp), %rdi
	callq	g_strfreev
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	%rdi, -40(%rbp)
.LBB6_10:                               # %for.cond.13
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_18
# BB#11:                                # %for.body.15
                                        #   in Loop: Header=BB6_10 Depth=1
	movabsq	$gimp_tag_compare_func, %rdx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_find_custom
	cmpq	$0, %rax
	jne	.LBB6_13
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -56(%rbp)
.LBB6_13:                               # %if.end.22
                                        #   in Loop: Header=BB6_10 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               # %for.inc.23
                                        #   in Loop: Header=BB6_10 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false
                                        #   in Loop: Header=BB6_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %cond.end
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_10
.LBB6_18:                               # %for.end.25
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -32(%rbp)
.LBB6_19:                               # %for.cond.26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #     Child Loop BB6_28 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB6_39
# BB#20:                                # %for.body.28
                                        #   in Loop: Header=BB6_19 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_21:                               # %for.cond.32
                                        #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB6_27
# BB#22:                                # %for.body.34
                                        #   in Loop: Header=BB6_21 Depth=2
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_remove_tag
# BB#23:                                # %for.inc.36
                                        #   in Loop: Header=BB6_21 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB6_25
# BB#24:                                # %cond.true.38
                                        #   in Loop: Header=BB6_21 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.40
                                        #   in Loop: Header=BB6_21 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB6_26
.LBB6_26:                               # %cond.end.41
                                        #   in Loop: Header=BB6_21 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_21
.LBB6_27:                               # %for.end.43
                                        #   in Loop: Header=BB6_19 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_28:                               # %for.cond.44
                                        #   Parent Loop BB6_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB6_34
# BB#29:                                # %for.body.46
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-88(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_tagged_add_tag
# BB#30:                                # %for.inc.48
                                        #   in Loop: Header=BB6_28 Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB6_32
# BB#31:                                # %cond.true.50
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_32:                               # %cond.false.52
                                        #   in Loop: Header=BB6_28 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_33:                               # %cond.end.53
                                        #   in Loop: Header=BB6_28 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_28
.LBB6_34:                               # %for.end.55
                                        #   in Loop: Header=BB6_19 Depth=1
	jmp	.LBB6_35
.LBB6_35:                               # %for.inc.56
                                        #   in Loop: Header=BB6_19 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_37
# BB#36:                                # %cond.true.58
                                        #   in Loop: Header=BB6_19 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB6_38
.LBB6_37:                               # %cond.false.60
                                        #   in Loop: Header=BB6_19 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB6_38
.LBB6_38:                               # %cond.end.61
                                        #   in Loop: Header=BB6_19 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_19
.LBB6_39:                               # %for.end.63
	movabsq	$g_object_unref, %rsi
	movq	-64(%rbp), %rdi
	callq	g_list_free_full
	movabsq	$g_object_unref, %rsi
	movq	-56(%rbp), %rdi
	callq	g_list_free_full
	movabsq	$g_object_unref, %rsi
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	callq	g_list_free_full
	movq	-72(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 232(%rdi)
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tag_entry_assign_tags, .Lfunc_end6-gimp_tag_entry_assign_tags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_query_tag,@function
gimp_tag_entry_query_tag:               # @gimp_tag_entry_query_tag
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	$0, 276(%rdi)
	movq	-16(%rbp), %rdi
	cmpl	$0, 260(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_2:                                # %if.end
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tag_entry_parse_tags
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strv_length
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB7_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB7_8
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_tag_try_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$1, -44(%rbp)
.LBB7_7:                                # %if.end.11
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -40(%rbp)
.LBB7_8:                                # %if.end.13
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB7_3
.LBB7_10:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_strfreev
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tagged_container_set_filter
	movabsq	$gimp_tag_or_null_unref, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rax
	cmpl	272(%rax), %ecx
	je	.LBB7_12
# BB#11:                                # %if.then.18
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB7_12:                               # %if.end.22
	movl	$0, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tag_entry_query_tag, .Lfunc_end7-gimp_tag_entry_query_tag
	.cfi_endproc

	.globl	gimp_tag_entry_parse_tags
	.align	16, 0x90
	.type	gimp_tag_entry_parse_tags,@function
gimp_tag_entry_parse_tags:              # @gimp_tag_entry_parse_tags
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_tag_entry_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.4
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.5
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.7
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.9
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_entry_parse_tags, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB8_31
.LBB8_11:                               # %if.end.11
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movabsq	$.L.str.6, %rdi
	callq	g_string_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -48(%rbp)
.LBB8_13:                               # %do.body.16
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -48(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB8_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-68(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	je	.LBB8_20
.LBB8_15:                               # %if.then.21
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB8_19
# BB#16:                                # %if.then.24
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_tag_string_make_valid
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB8_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_list_append
	movq	%rax, -56(%rbp)
.LBB8_18:                               # %if.end.30
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	g_string_set_size
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB8_19:                               # %if.end.32
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.33
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	g_string_append_unichar
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB8_21:                               # %if.end.35
                                        #   in Loop: Header=BB8_13 Depth=1
	jmp	.LBB8_22
.LBB8_22:                               # %do.cond
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB8_13
# BB#23:                                # %do.end.37
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_string_free
	movq	-56(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_list_length
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	g_malloc
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -32(%rbp)
.LBB8_24:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_30
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpq	$0, -64(%rbp)
	je	.LBB8_27
# BB#26:                                # %cond.true
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_28
.LBB8_27:                               # %cond.false
                                        #   in Loop: Header=BB8_24 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB8_28
.LBB8_28:                               # %cond.end
                                        #   in Loop: Header=BB8_24 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB8_24 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_24
.LBB8_30:                               # %for.end
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tag_entry_parse_tags, .Lfunc_end8-gimp_tag_entry_parse_tags
	.cfi_endproc

	.globl	gimp_tag_entry_set_selected_items
	.align	16, 0x90
	.type	gimp_tag_entry_set_selected_items,@function
gimp_tag_entry_set_selected_items:      # @gimp_tag_entry_set_selected_items
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tag_entry_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tag_entry_set_selected_items, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_list_free
	movq	-8(%rbp), %rax
	movq	$0, 224(%rax)
.LBB9_14:                               # %if.end.15
	movq	-8(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB9_16
# BB#15:                                # %if.then.17
	movabsq	$g_object_unref, %rsi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_list_free_full
	movq	-8(%rbp), %rax
	movq	$0, 232(%rax)
.LBB9_16:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	g_list_copy
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
	movq	-8(%rbp), %rax
	cmpl	$1, 264(%rax)
	jne	.LBB9_18
# BB#17:                                # %if.then.24
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_load_selection
.LBB9_18:                               # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tag_entry_set_selected_items, .Lfunc_end9-gimp_tag_entry_set_selected_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_load_selection,@function
gimp_tag_entry_load_selection:          # @gimp_tag_entry_load_selection
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	252(%rdi), %esi
	addl	$1, %esi
	movl	%esi, 252(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_delete_text
	movq	-8(%rbp), %rax
	movl	252(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 252(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_toggle_desc
	jmp	.LBB10_24
.LBB10_2:                               # %if.end
	movabsq	$gimp_tag_get_hash, %rax
	movabsq	$gimp_tag_equals, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_hash_table_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB10_16
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_get_tags
	movq	%rax, -56(%rbp)
.LBB10_5:                               # %for.cond.9
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB10_11
# BB#6:                                 # %for.body.11
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_hash_table_lookup
	movl	%eax, %ecx
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	g_hash_table_insert
	movl	%eax, -100(%rbp)        # 4-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB10_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_9:                               # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_10
.LBB10_10:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB10_5
.LBB10_11:                              # %for.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_12
.LBB10_12:                              # %for.inc.18
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB10_14
# BB#13:                                # %cond.true.20
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %cond.false.22
                                        #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB10_15
.LBB10_15:                              # %cond.end.23
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_16:                              # %for.end.25
	movabsq	$gimp_tag_entry_find_common_tags, %rsi
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_foreach
	movq	-40(%rbp), %rdi
	callq	g_hash_table_destroy
	movabsq	$gimp_tag_compare_func, %rsi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_list_sort
	movq	-8(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	%rdx, -24(%rbp)
.LBB10_17:                              # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_23
# BB#18:                                # %for.body.34
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_tag_get_name
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_separator
	movabsq	$.L.str.30, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rcx
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movl	%r8d, %edx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	gtk_editable_insert_text
	movq	-8(%rbp), %rax
	movl	252(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 252(%rax)
	movq	-80(%rbp), %rdi
	callq	g_free
# BB#19:                                # %for.inc.48
                                        #   in Loop: Header=BB10_17 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_21
# BB#20:                                # %cond.true.50
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB10_22
.LBB10_21:                              # %cond.false.52
                                        #   in Loop: Header=BB10_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB10_22
.LBB10_22:                              # %cond.end.53
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB10_17
.LBB10_23:                              # %for.end.55
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
.LBB10_24:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tag_entry_load_selection, .Lfunc_end10-gimp_tag_entry_load_selection
	.cfi_endproc

	.globl	gimp_tag_entry_get_separator
	.align	16, 0x90
	.type	gimp_tag_entry_get_separator,@function
gimp_tag_entry_get_separator:           # @gimp_tag_entry_get_separator
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
	movabsq	$.L.str.8, %rdi
	callq	gettext
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tag_entry_get_separator, .Lfunc_end11-gimp_tag_entry_get_separator
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_class_init,@function
gimp_tag_entry_class_init:              # @gimp_tag_entry_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_tag_entry_button_release, %rsi
	movabsq	$gimp_tag_entry_set_property, %rdi
	movabsq	$gimp_tag_entry_get_property, %rcx
	movabsq	$gimp_tag_entry_dispose, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 352(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movl	$11, %r8d
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_mode_get_type
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%r8d, %r8d
	movl	$11, %r9d
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tag_entry_class_init, .Lfunc_end12-gimp_tag_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_dispose,@function
gimp_tag_entry_dispose:                 # @gimp_tag_entry_dispose
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 224(%rax)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.6
	movabsq	$g_object_unref, %rsi
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 232(%rax)
.LBB13_4:                               # %if.end.9
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.11
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
.LBB13_6:                               # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB13_8
# BB#7:                                 # %if.then.16
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tag_entry_container_changed, %rdx
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-16(%rbp), %rdi
	movq	$0, 208(%rdi)
.LBB13_8:                               # %if.end.21
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB13_10
# BB#9:                                 # %if.then.23
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdi
	callq	g_string_free
	movq	-16(%rbp), %rdi
	movq	$0, 216(%rdi)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB13_10:                              # %if.end.27
	movq	-16(%rbp), %rax
	cmpl	$0, 276(%rax)
	je	.LBB13_12
# BB#11:                                # %if.then.29
	movq	-16(%rbp), %rax
	movl	276(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 276(%rcx)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB13_12:                              # %if.end.33
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tag_entry_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tag_entry_dispose, .Lfunc_end13-gimp_tag_entry_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_get_property,@function
gimp_tag_entry_get_property:            # @gimp_tag_entry_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_3
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB14_6
.LBB14_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	264(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB14_6
.LBB14_3:                               # %sw.default
	jmp	.LBB14_4
.LBB14_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$314, %edx              # imm = 0x13A
	movabsq	$.L.str.15, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tag_entry_get_property, .Lfunc_end14-gimp_tag_entry_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_set_property,@function
gimp_tag_entry_set_property:            # @gimp_tag_entry_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_7
.LBB15_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_tag_entry_container_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_tag_entry_container_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB15_6
.LBB15_2:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movl	%eax, 264(%rdi)
	movq	-40(%rbp), %rdi
	callq	gimp_tag_entry_toggle_desc
	jmp	.LBB15_6
.LBB15_3:                               # %sw.default
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -132(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$290, %edx              # imm = 0x122
	movabsq	$.L.str.15, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tag_entry_set_property, .Lfunc_end15-gimp_tag_entry_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_button_release,@function
gimp_tag_entry_button_release:          # @gimp_tag_entry_button_release
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 52(%rsi)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$gimp_tag_entry_try_select_jellybean, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB16_2:                               # %if.end
	movq	gimp_tag_entry_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tag_entry_button_release, .Lfunc_end16-gimp_tag_entry_button_release
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_container_changed,@function
gimp_tag_entry_container_changed:       # @gimp_tag_entry_container_changed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_have
	cmpl	$0, %eax
	jne	.LBB17_11
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB17_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB17_5
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB17_5:                               # %if.end
                                        #   in Loop: Header=BB17_2 Depth=1
	jmp	.LBB17_6
.LBB17_6:                               # %for.inc
                                        #   in Loop: Header=BB17_2 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB17_9
.LBB17_8:                               # %cond.false
                                        #   in Loop: Header=BB17_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB17_9
.LBB17_9:                               # %cond.end
                                        #   in Loop: Header=BB17_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB17_2
.LBB17_10:                              # %for.end
	movq	-40(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_tag_entry_set_selected_items
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB17_11:                              # %if.end.11
	movq	-24(%rbp), %rax
	cmpl	$1, 264(%rax)
	jne	.LBB17_25
# BB#12:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB17_13:                              # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_22
# BB#14:                                # %for.body.17
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_tagged_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tagged_get_tags
	cmpq	$0, %rax
	je	.LBB17_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB17_17
# BB#16:                                # %if.then.31
	jmp	.LBB17_22
.LBB17_17:                              # %if.end.32
                                        #   in Loop: Header=BB17_13 Depth=1
	jmp	.LBB17_18
.LBB17_18:                              # %for.inc.33
                                        #   in Loop: Header=BB17_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB17_20
# BB#19:                                # %cond.true.35
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB17_21
.LBB17_20:                              # %cond.false.37
                                        #   in Loop: Header=BB17_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB17_21
.LBB17_21:                              # %cond.end.38
                                        #   in Loop: Header=BB17_13 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB17_13
.LBB17_22:                              # %for.end.40
	cmpq	$0, -32(%rbp)
	jne	.LBB17_24
# BB#23:                                # %if.then.42
	movq	-24(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_delete_text
	movq	-24(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 252(%rax)
.LBB17_24:                              # %if.end.46
	jmp	.LBB17_25
.LBB17_25:                              # %if.end.47
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tag_entry_container_changed, .Lfunc_end17-gimp_tag_entry_container_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_toggle_desc,@function
gimp_tag_entry_toggle_desc:             # @gimp_tag_entry_toggle_desc
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	xorl	268(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
	cmpl	$0, -12(%rbp)
	je	.LBB19_6
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	jbe	.LBB19_5
# BB#4:                                 # %if.then.11
	jmp	.LBB19_7
.LBB19_5:                               # %if.end.12
	movq	-8(%rbp), %rax
	movl	$1, 268(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB19_7
.LBB19_6:                               # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 268(%rax)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_queue_draw
.LBB19_7:                               # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tag_entry_toggle_desc, .Lfunc_end19-gimp_tag_entry_toggle_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_try_select_jellybean,@function
gimp_tag_entry_try_select_jellybean:    # @gimp_tag_entry_try_select_jellybean
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	$-1, %rsi
	movq	%rax, %rdi
	callq	g_utf8_strlen
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %ecx
	cmpl	-32(%rbp), %ecx
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_tag_entry_select_jellybean
	movl	$0, -4(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB20_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tag_entry_try_select_jellybean, .Lfunc_end20-gimp_tag_entry_try_select_jellybean
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_select_jellybean,@function
gimp_tag_entry_select_jellybean:        # @gimp_tag_entry_select_jellybean
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	216(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB21_76
.LBB21_2:                               # %if.end
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jb	.LBB21_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -24(%rbp)
.LBB21_4:                               # %if.end.9
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$117, %edx
	jne	.LBB21_6
# BB#5:                                 # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB21_76
.LBB21_6:                               # %if.end.15
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB21_7
	jmp	.LBB21_77
.LBB21_77:                              # %if.end.15
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB21_15
	jmp	.LBB21_78
.LBB21_78:                              # %if.end.15
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB21_32
	jmp	.LBB21_45
.LBB21_7:                               # %sw.bb
	cmpl	$0, -20(%rbp)
	jle	.LBB21_10
# BB#8:                                 # %land.lhs.true
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	jne	.LBB21_10
# BB#9:                                 # %if.then.25
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB21_10:                              # %if.end.26
	cmpl	$0, -20(%rbp)
	jle	.LBB21_14
# BB#11:                                # %land.lhs.true.29
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	jne	.LBB21_14
# BB#12:                                # %land.lhs.true.38
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$116, %edx
	jne	.LBB21_14
# BB#13:                                # %if.then.46
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB21_14:                              # %if.end.48
	jmp	.LBB21_45
.LBB21_15:                              # %sw.bb.49
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB21_31
# BB#16:                                # %if.then.52
	cmpl	$0, -20(%rbp)
	jle	.LBB21_20
# BB#17:                                # %land.lhs.true.55
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$116, %edx
	jne	.LBB21_20
# BB#18:                                # %land.lhs.true.63
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	jne	.LBB21_20
# BB#19:                                # %if.then.72
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
.LBB21_20:                              # %if.end.74
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB21_22
# BB#21:                                # %lor.lhs.false
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	jne	.LBB21_30
.LBB21_22:                              # %land.lhs.true.89
	cmpl	$0, -20(%rbp)
	jle	.LBB21_30
# BB#23:                                # %if.then.92
	jmp	.LBB21_24
.LBB21_24:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB21_26
# BB#25:                                # %lor.lhs.false.100
                                        #   in Loop: Header=BB21_24 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	(%rsi), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$115, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB21_27
.LBB21_26:                              # %land.rhs
                                        #   in Loop: Header=BB21_24 Depth=1
	cmpl	$0, -20(%rbp)
	setg	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB21_27:                              # %land.end
                                        #   in Loop: Header=BB21_24 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_28
	jmp	.LBB21_29
.LBB21_28:                              # %while.body
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_24
.LBB21_29:                              # %while.end
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB21_30:                              # %if.end.111
	jmp	.LBB21_31
.LBB21_31:                              # %if.end.112
	jmp	.LBB21_45
.LBB21_32:                              # %sw.bb.113
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB21_44
# BB#33:                                # %if.then.116
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB21_35
# BB#34:                                # %lor.lhs.false.124
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	jne	.LBB21_43
.LBB21_35:                              # %land.lhs.true.132
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	8(%rcx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	.LBB21_43
# BB#36:                                # %if.then.139
	jmp	.LBB21_37
.LBB21_37:                              # %while.cond.140
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	je	.LBB21_39
# BB#38:                                # %lor.lhs.false.148
                                        #   in Loop: Header=BB21_37 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	(%rsi), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$115, %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jne	.LBB21_40
.LBB21_39:                              # %land.rhs.156
                                        #   in Loop: Header=BB21_37 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	8(%rcx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	setb	%dl
	movb	%dl, -50(%rbp)          # 1-byte Spill
.LBB21_40:                              # %land.end.163
                                        #   in Loop: Header=BB21_37 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_41
	jmp	.LBB21_42
.LBB21_41:                              # %while.body.164
                                        #   in Loop: Header=BB21_37 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_37
.LBB21_42:                              # %while.end.165
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB21_43:                              # %if.end.167
	jmp	.LBB21_44
.LBB21_44:                              # %if.end.168
	jmp	.LBB21_45
.LBB21_45:                              # %sw.epilog
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB21_48
# BB#46:                                # %land.lhs.true.174
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB21_48
# BB#47:                                # %if.then.177
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.LBB21_48:                              # %if.end.179
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movslq	-20(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	(%rsi), %rsi
	movsbl	(%rsi,%rdx), %ecx
	cmpl	$116, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB21_55
# BB#49:                                # %if.then.189
	jmp	.LBB21_50
.LBB21_50:                              # %while.cond.190
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -20(%rbp)
	movb	%cl, -69(%rbp)          # 1-byte Spill
	jle	.LBB21_52
# BB#51:                                # %land.rhs.193
                                        #   in Loop: Header=BB21_50 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	sete	%sil
	movb	%sil, -69(%rbp)         # 1-byte Spill
.LBB21_52:                              # %land.end.202
                                        #   in Loop: Header=BB21_50 Depth=1
	movb	-69(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_53
	jmp	.LBB21_54
.LBB21_53:                              # %while.body.203
                                        #   in Loop: Header=BB21_50 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_50
.LBB21_54:                              # %while.end.205
	jmp	.LBB21_55
.LBB21_55:                              # %if.end.206
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB21_63
# BB#56:                                # %land.lhs.true.209
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	jne	.LBB21_63
# BB#57:                                # %if.then.218
	jmp	.LBB21_58
.LBB21_58:                              # %while.cond.219
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	216(%rsi), %rsi
	cmpq	8(%rsi), %rdx
	movb	%cl, -70(%rbp)          # 1-byte Spill
	ja	.LBB21_60
# BB#59:                                # %land.rhs.225
                                        #   in Loop: Header=BB21_58 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$116, %edx
	sete	%sil
	movb	%sil, -70(%rbp)         # 1-byte Spill
.LBB21_60:                              # %land.end.233
                                        #   in Loop: Header=BB21_58 Depth=1
	movb	-70(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB21_61
	jmp	.LBB21_62
.LBB21_61:                              # %while.body.234
                                        #   in Loop: Header=BB21_58 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB21_58
.LBB21_62:                              # %while.end.236
	jmp	.LBB21_63
.LBB21_63:                              # %if.end.237
	cmpl	$0, -28(%rbp)
	jne	.LBB21_67
# BB#64:                                # %land.lhs.true.240
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB21_67
# BB#65:                                # %land.lhs.true.244
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	jne	.LBB21_67
# BB#66:                                # %if.then.252
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-24(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	movl	$1, -4(%rbp)
	jmp	.LBB21_76
.LBB21_67:                              # %if.end.255
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB21_69
# BB#68:                                # %lor.lhs.false.258
	movl	-24(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB21_75
.LBB21_69:                              # %land.lhs.true.261
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$116, %edx
	jne	.LBB21_75
# BB#70:                                # %land.lhs.true.269
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB21_75
# BB#71:                                # %if.then.272
	cmpl	$1, -28(%rbp)
	jne	.LBB21_73
# BB#72:                                # %if.then.275
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-24(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
	jmp	.LBB21_74
.LBB21_73:                              # %if.else
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB21_74:                              # %if.end.280
	movl	$1, -4(%rbp)
	jmp	.LBB21_76
.LBB21_75:                              # %if.else.281
	movl	$0, -4(%rbp)
.LBB21_76:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_tag_entry_select_jellybean, .Lfunc_end21-gimp_tag_entry_select_jellybean
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_activate,@function
gimp_tag_entry_activate:                # @gimp_tag_entry_activate
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_tag_entry_toggle_desc
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	-20(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-24(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB22_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB22_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB22_3 Depth=1
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB22_6
# BB#5:                                 # %if.then.14
	jmp	.LBB22_11
.LBB22_6:                               # %if.end.15
                                        #   in Loop: Header=BB22_3 Depth=1
	jmp	.LBB22_7
.LBB22_7:                               # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB22_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB22_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB22_10
.LBB22_9:                               # %cond.false
                                        #   in Loop: Header=BB22_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB22_10
.LBB22_10:                              # %cond.end
                                        #   in Loop: Header=BB22_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB22_3
.LBB22_11:                              # %for.end
	movq	-16(%rbp), %rax
	cmpl	$1, 264(%rax)
	jne	.LBB22_14
# BB#12:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB22_14
# BB#13:                                # %if.then.19
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_assign_tags
.LBB22_14:                              # %if.end.22
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tag_entry_activate, .Lfunc_end22-gimp_tag_entry_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_changed,@function
gimp_tag_entry_changed:                 # @gimp_tag_entry_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB23_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_tag_entry_toggle_desc
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_tag_entry_toggle_desc
.LBB23_4:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	cmpl	$0, 264(%rdi)
	jne	.LBB23_8
# BB#5:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpl	$0, 260(%rax)
	jne	.LBB23_8
# BB#6:                                 # %land.lhs.true.14
	movq	-16(%rbp), %rax
	cmpl	$0, 276(%rax)
	jne	.LBB23_8
# BB#7:                                 # %if.then.16
	movabsq	$gimp_tag_entry_query_tag, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-16(%rbp), %rcx
	movl	%eax, 276(%rcx)
.LBB23_8:                               # %if.end.19
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_tag_entry_changed, .Lfunc_end23-gimp_tag_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_insert_text,@function
gimp_tag_entry_insert_text:             # @gimp_tag_entry_insert_text
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movl	%edx, -56(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	g_utf8_strlen
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 252(%rax)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 260(%rax)
.LBB24_2:                               # %if.end
	movl	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB24_6
# BB#3:                                 # %if.then.5
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	-40(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	(%rsi), %rsi
	movsbl	(%rsi,%rcx), %edx
	cmpl	$116, %edx
	movb	%al, -81(%rbp)          # 1-byte Spill
	je	.LBB24_5
# BB#4:                                 # %lor.rhs
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$115, %ecx
	sete	%sil
	movb	%sil, -81(%rbp)         # 1-byte Spill
.LBB24_5:                               # %lor.end
	movb	-81(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -48(%rbp)
.LBB24_6:                               # %if.end.19
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-40(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	$116, %esi
	movb	%al, -82(%rbp)          # 1-byte Spill
	je	.LBB24_8
# BB#7:                                 # %lor.rhs.27
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	sete	%sil
	movb	%sil, -82(%rbp)         # 1-byte Spill
.LBB24_8:                               # %lor.end.35
	movb	-82(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB24_11
# BB#9:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	je	.LBB24_11
# BB#10:                                # %if.then.42
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_signal_stop_emission_by_name
	jmp	.LBB24_36
.LBB24_11:                              # %if.else
	cmpq	$0, -64(%rbp)
	jle	.LBB24_35
# BB#12:                                # %if.then.45
	movq	-16(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -68(%rbp)
	movq	-40(%rbp), %rdi
	cmpl	$0, 252(%rdi)
	jne	.LBB24_19
# BB#13:                                # %land.lhs.true.49
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB24_19
# BB#14:                                # %land.lhs.true.52
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rax), %ecx
	cmpl	$115, %ecx
	jne	.LBB24_19
# BB#15:                                # %land.lhs.true.61
	movl	-68(%rbp), %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	jne	.LBB24_19
# BB#16:                                # %if.then.64
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	jne	.LBB24_18
# BB#17:                                # %if.then.66
	movl	$117, %edx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-32(%rbp), %rax
	movslq	(%rax), %rsi
	callq	g_string_insert_c
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB24_18:                              # %if.end.70
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tag_entry_insert_text, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movabsq	$.L.str.26, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gtk_editable_insert_text
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gtk_editable_insert_text
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tag_entry_insert_text, %rcx
	movq	-8(%rbp), %rdi
	movl	%eax, %edx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_signal_stop_emission_by_name
	jmp	.LBB24_28
.LBB24_19:                              # %if.else.73
	movq	-40(%rbp), %rax
	cmpl	$0, 252(%rax)
	jne	.LBB24_27
# BB#20:                                # %land.lhs.true.76
	cmpq	$1, -64(%rbp)
	jne	.LBB24_27
# BB#21:                                # %land.lhs.true.79
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB24_27
# BB#22:                                # %land.lhs.true.84
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$116, %edx
	jne	.LBB24_27
# BB#23:                                # %land.lhs.true.92
	movl	-68(%rbp), %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	jne	.LBB24_27
# BB#24:                                # %if.then.95
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	jne	.LBB24_26
# BB#25:                                # %if.then.98
	movl	$117, %edx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-32(%rbp), %rax
	movslq	(%rax), %rsi
	callq	g_string_insert_c
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB24_26:                              # %if.end.102
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tag_entry_insert_text, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gtk_editable_insert_text
	movabsq	$.L.str.26, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	gtk_editable_insert_text
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_tag_entry_insert_text, %rcx
	movq	-32(%rbp), %rdi
	movl	(%rdi), %edx
	addl	$-1, %edx
	movl	%edx, (%rdi)
	movq	-8(%rbp), %rdi
	movl	%eax, %edx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-160(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movabsq	$.L.str.20, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	g_signal_stop_emission_by_name
.LBB24_27:                              # %if.end.105
	jmp	.LBB24_28
.LBB24_28:                              # %if.end.106
	movq	-40(%rbp), %rax
	cmpl	$0, 256(%rax)
	jne	.LBB24_34
# BB#29:                                # %if.then.109
	movl	$0, -52(%rbp)
.LBB24_30:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jge	.LBB24_33
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB24_30 Depth=1
	movl	$117, %edx
	movq	-40(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-56(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movslq	%ecx, %rsi
	callq	g_string_insert_c
	movq	%rax, -176(%rbp)        # 8-byte Spill
# BB#32:                                # %for.inc
                                        #   in Loop: Header=BB24_30 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB24_30
.LBB24_33:                              # %for.end
	jmp	.LBB24_34
.LBB24_34:                              # %if.end.117
	jmp	.LBB24_35
.LBB24_35:                              # %if.end.118
	jmp	.LBB24_36
.LBB24_36:                              # %if.end.119
	movq	-40(%rbp), %rax
	cmpl	$0, 252(%rax)
	jne	.LBB24_38
# BB#37:                                # %if.then.122
	movabsq	$gimp_tag_entry_auto_complete, %rax
	movq	-40(%rbp), %rcx
	movl	$-1, 248(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB24_38:                              # %if.end.124
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_tag_entry_insert_text, .Lfunc_end24-gimp_tag_entry_insert_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_delete_text,@function
gimp_tag_entry_delete_text:             # @gimp_tag_entry_delete_text
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 252(%rax)
	jne	.LBB25_13
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tag_entry_delete_text, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	-16(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jle	.LBB25_10
# BB#2:                                 # %land.lhs.true
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	je	.LBB25_4
# BB#3:                                 # %lor.lhs.false
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$115, %eax
	jne	.LBB25_10
.LBB25_4:                               # %if.then.14
	jmp	.LBB25_5
.LBB25_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	216(%rsi), %rsi
	cmpq	8(%rsi), %rdx
	movb	%cl, -45(%rbp)          # 1-byte Spill
	ja	.LBB25_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB25_5 Depth=1
	movslq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	sete	%sil
	movb	%sil, -45(%rbp)         # 1-byte Spill
.LBB25_7:                               # %land.end
                                        #   in Loop: Header=BB25_5 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB25_8
	jmp	.LBB25_9
.LBB25_8:                               # %while.body
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB25_5
.LBB25_9:                               # %while.end
	jmp	.LBB25_10
.LBB25_10:                              # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gtk_editable_delete_text
	movq	-24(%rbp), %rdi
	cmpl	$0, 256(%rdi)
	jne	.LBB25_12
# BB#11:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movslq	-12(%rbp), %rsi
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	g_string_erase
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB25_12:                              # %if.end.33
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_tag_entry_delete_text, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movabsq	$.L.str.21, %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_stop_emission_by_name
	jmp	.LBB25_16
.LBB25_13:                              # %if.else
	movq	-24(%rbp), %rax
	cmpl	$0, 256(%rax)
	jne	.LBB25_15
# BB#14:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movslq	-12(%rbp), %rsi
	movl	-16(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	callq	g_string_erase
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB25_15:                              # %if.end.43
	jmp	.LBB25_16
.LBB25_16:                              # %if.end.44
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_tag_entry_delete_text, .Lfunc_end25-gimp_tag_entry_delete_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_key_press,@function
gimp_tag_entry_key_press:               # @gimp_tag_entry_key_press
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	movl	28(%rdi), %edi
	callq	gdk_keyval_to_unicode
	movb	%al, %cl
	movb	%cl, -37(%rbp)
	movzbl	-37(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	movabsq	$gimp_tag_entry_commit_source_func, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movl	$0, -4(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB26_26
.LBB26_2:                               # %if.end
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, %edx
	subl	$65056, %edx            # imm = 0xFE20
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	je	.LBB26_3
	jmp	.LBB26_27
.LBB26_27:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65288, %eax            # imm = 0xFF08
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB26_10
	jmp	.LBB26_28
.LBB26_28:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65289, %eax            # imm = 0xFF09
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB26_3
	jmp	.LBB26_29
.LBB26_29:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65293, %eax            # imm = 0xFF0D
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB26_7
	jmp	.LBB26_30
.LBB26_30:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65361, %eax            # imm = 0xFF51
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB26_8
	jmp	.LBB26_31
.LBB26_31:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65362, %eax            # imm = 0xFF52
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB26_18
	jmp	.LBB26_32
.LBB26_32:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65363, %eax            # imm = 0xFF53
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB26_9
	jmp	.LBB26_33
.LBB26_33:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65364, %eax            # imm = 0xFF54
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB26_18
	jmp	.LBB26_34
.LBB26_34:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65417, %eax            # imm = 0xFF89
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB26_3
	jmp	.LBB26_35
.LBB26_35:                              # %if.end
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB26_14
	jmp	.LBB26_24
.LBB26_3:                               # %sw.bb
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$4, %ecx
	cmpl	$0, %ecx
	jne	.LBB26_5
# BB#4:                                 # %if.then.10
	movabsq	$gimp_tag_entry_auto_complete, %rax
	movq	-32(%rbp), %rcx
	movl	248(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 248(%rcx)
	movq	-32(%rbp), %rcx
	movl	260(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 260(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
	movabsq	$.L.str.27, %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %r8d
	andl	$1, %r8d
	cmpl	$0, %r8d
	cmovnel	%ecx, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_signal_emit_by_name
.LBB26_6:                               # %if.end.16
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_7:                               # %sw.bb.17
	movq	-32(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
	jmp	.LBB26_25
.LBB26_8:                               # %sw.bb.18
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %esi
	andl	-36(%rbp), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	gimp_tag_entry_previous_tag
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_9:                               # %sw.bb.23
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	24(%rdx), %esi
	andl	-36(%rbp), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, %esi
	callq	gimp_tag_entry_next_tag
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_10:                              # %sw.bb.28
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	$1, %ecx
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_tag_entry_select_jellybean
	cmpl	$0, %eax
	je	.LBB26_12
# BB#11:                                # %if.then.34
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_12:                              # %if.else.35
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_tag_entry_select_for_deletion
	movabsq	$gimp_tag_entry_strip_extra_whitespace, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movl	%eax, -152(%rbp)        # 4-byte Spill
# BB#13:                                # %if.end.37
	jmp	.LBB26_25
.LBB26_14:                              # %sw.bb.38
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	$2, %ecx
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_tag_entry_select_jellybean
	cmpl	$0, %eax
	je	.LBB26_16
# BB#15:                                # %if.then.46
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_16:                              # %if.else.47
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_tag_entry_select_for_deletion
	movabsq	$gimp_tag_entry_strip_extra_whitespace, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_idle_add
	movl	%eax, -168(%rbp)        # 4-byte Spill
# BB#17:                                # %if.end.49
	jmp	.LBB26_25
.LBB26_18:                              # %sw.bb.50
	movq	-32(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB26_23
# BB#19:                                # %if.then.52
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movl	$1, %edx
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_tag_entry_add_to_recent
	movq	-72(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-24(%rbp), %rsi
	cmpl	$65362, 28(%rsi)        # imm = 0xFF52
	jne	.LBB26_21
# BB#20:                                # %if.then.61
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_first
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 240(%rsi)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_list_append
	movq	-32(%rbp), %rsi
	movq	%rax, 240(%rsi)
	jmp	.LBB26_22
.LBB26_21:                              # %if.else.70
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_last
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_list_remove
	movq	-32(%rbp), %rsi
	movq	%rax, 240(%rsi)
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB26_22:                              # %if.end.80
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_first
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	movq	-32(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 252(%rax)
.LBB26_23:                              # %if.end.90
	movl	$1, -4(%rbp)
	jmp	.LBB26_26
.LBB26_24:                              # %sw.default
	jmp	.LBB26_25
.LBB26_25:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB26_26:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_tag_entry_key_press, .Lfunc_end26-gimp_tag_entry_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_focus_in,@function
gimp_tag_entry_focus_in:                # @gimp_tag_entry_focus_in
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_tag_entry_toggle_desc
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_tag_entry_focus_in, .Lfunc_end27-gimp_tag_entry_focus_in
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_focus_out,@function
gimp_tag_entry_focus_out:               # @gimp_tag_entry_focus_out
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
	movq	-24(%rbp), %rax
	cmpl	$1, 264(%rax)
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_assign_tags
.LBB28_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movl	$1, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_tag_entry_add_to_recent
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_tag_entry_toggle_desc
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_tag_entry_focus_out, .Lfunc_end28-gimp_tag_entry_focus_out
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_expose,@function
gimp_tag_entry_expose:                  # @gimp_tag_entry_expose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$232, %rsp
.Ltmp90:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text_window
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB29_11
.LBB29_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 268(%rax)
	jne	.LBB29_4
# BB#3:                                 # %if.then.7
	movl	$0, -12(%rbp)
	jmp	.LBB29_11
.LBB29_4:                               # %if.end.8
	movq	-40(%rbp), %rax
	cmpl	$0, 264(%rax)
	jne	.LBB29_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, -96(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, -96(%rbp)
.LBB29_7:                               # %if.end.13
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_widget_create_pango_layout
	movq	%rax, -48(%rbp)
	callq	pango_attr_list_new
	movl	$2, %edi
	movq	%rax, -56(%rbp)
	callq	pango_attr_style_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-56(%rbp), %rdi
	callq	pango_attr_list_unref
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_window_get_width
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gdk_window_get_height
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movl	%eax, -80(%rbp)
	movq	-48(%rbp), %rdi
	callq	pango_layout_get_size
	movl	$2, %eax
	movl	-80(%rbp), %ecx
	movl	-72(%rbp), %r8d
	addl	$512, %r8d              # imm = 0x200
	sarl	$10, %r8d
	subl	%r8d, %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdi
	addq	$20, %rdi
	movq	-24(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%r9, -168(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB29_9
# BB#8:                                 # %cond.true
	movl	-76(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$512, %ecx              # imm = 0x200
	sarl	$10, %ecx
	subl	%ecx, %eax
	subl	-84(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB29_10
.LBB29_9:                               # %cond.false
	movl	-84(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB29_10:                              # %cond.end
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	$4, %edx
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	-84(%rbp), %esi
	movq	-48(%rbp), %r8
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	-188(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	callq	gtk_paint_layout
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movl	$0, -12(%rbp)
.LBB29_11:                              # %return
	movl	-12(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_tag_entry_expose, .Lfunc_end29-gimp_tag_entry_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_auto_complete,@function
gimp_tag_entry_auto_complete:           # @gimp_tag_entry_auto_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 260(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 264(%rax)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movabsq	$gimp_tag_entry_query_tag, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-16(%rbp), %rcx
	movl	%eax, 276(%rcx)
.LBB30_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 248(%rax)
	jl	.LBB30_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 252(%rax)
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 260(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_delete_selection
	movq	-16(%rbp), %rax
	movl	260(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 260(%rax)
	movq	-16(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 252(%rax)
.LBB30_4:                               # %if.end.14
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	-68(%rbp), %ecx
	cmpl	-72(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB30_6
# BB#5:                                 # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB30_17
.LBB30_6:                               # %if.end.20
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_get_completion_prefix
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_entry_parse_tags
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tag_entry_get_completion_candidates
	movabsq	$gimp_tag_compare_func, %rsi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_sort
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 248(%rax)
	jl	.LBB30_9
# BB#7:                                 # %land.lhs.true
	cmpq	$0, -40(%rbp)
	je	.LBB30_9
# BB#8:                                 # %if.then.33
	movq	-40(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	248(%rdi), %ecx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, 248(%rdi)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	248(%rsi), %esi
	callq	g_list_nth_data
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	$0, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -40(%rbp)
.LBB30_9:                               # %if.end.39
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tag_entry_get_completion_string
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB30_16
# BB#10:                                # %land.lhs.true.44
	movq	-64(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB30_16
# BB#11:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rsi
	movl	252(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 252(%rsi)
	movq	-24(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	gtk_editable_insert_text
	movq	-16(%rbp), %rax
	movl	252(%rax), %edx
	addl	$-1, %edx
	movl	%edx, 252(%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 248(%rax)
	jl	.LBB30_14
# BB#12:                                # %land.lhs.true.61
	cmpl	$1, -44(%rbp)
	jne	.LBB30_14
# BB#13:                                # %if.then.64
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	jmp	.LBB30_15
.LBB30_14:                              # %if.else
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB30_15:                              # %if.end.69
	jmp	.LBB30_16
.LBB30_16:                              # %if.end.70
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_strfreev
	movq	-40(%rbp), %rdi
	callq	g_list_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
.LBB30_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_tag_entry_auto_complete, .Lfunc_end30-gimp_tag_entry_auto_complete
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_get_completion_prefix,@function
gimp_tag_entry_get_completion_prefix:   # @gimp_tag_entry_get_completion_prefix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -52(%rbp)
	cmpl	$1, -52(%rbp)
	jl	.LBB31_2
# BB#1:                                 # %lor.lhs.false
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$117, %eax
	je	.LBB31_3
.LBB31_2:                               # %if.then
	movabsq	$.L.str.6, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB31_10
.LBB31_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -56(%rbp)
.LBB31_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB31_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -48(%rbp)
	movl	-60(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	je	.LBB31_7
# BB#6:                                 # %if.then.18
                                        #   in Loop: Header=BB31_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB31_7:                               # %if.end.19
                                        #   in Loop: Header=BB31_4 Depth=1
	jmp	.LBB31_8
.LBB31_8:                               # %for.inc
                                        #   in Loop: Header=BB31_4 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB31_4
.LBB31_9:                               # %for.end
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB31_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_tag_entry_get_completion_prefix, .Lfunc_end31-gimp_tag_entry_get_completion_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_get_completion_candidates,@function
gimp_tag_entry_get_completion_candidates: # @gimp_tag_entry_get_completion_candidates
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB32_2
# BB#1:                                 # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$1, %rax
	jae	.LBB32_3
.LBB32_2:                               # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB32_23
.LBB32_3:                               # %if.end
	movq	$-1, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	g_utf8_normalize
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB32_5
# BB#4:                                 # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB32_23
.LBB32_5:                               # %if.end.4
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	104(%rax), %rdi
	callq	g_hash_table_get_keys
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strv_length
	movl	%eax, -60(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -56(%rbp)
.LBB32_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_9 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB32_22
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_tag_has_prefix
	cmpl	$0, %eax
	je	.LBB32_17
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	$0, -84(%rbp)
.LBB32_9:                               # %for.cond.11
                                        #   Parent Loop BB32_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB32_14
# BB#10:                                # %for.body.13
                                        #   in Loop: Header=BB32_9 Depth=2
	movq	-80(%rbp), %rdi
	movslq	-84(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_tag_compare_with_string
	cmpl	$0, %eax
	jne	.LBB32_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_14
.LBB32_12:                              # %if.end.17
                                        #   in Loop: Header=BB32_9 Depth=2
	jmp	.LBB32_13
.LBB32_13:                              # %for.inc
                                        #   in Loop: Header=BB32_9 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB32_9
.LBB32_14:                              # %for.end
                                        #   in Loop: Header=BB32_6 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB32_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_append
	movq	%rax, -40(%rbp)
.LBB32_16:                              # %if.end.22
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_17
.LBB32_17:                              # %if.end.23
                                        #   in Loop: Header=BB32_6 Depth=1
	jmp	.LBB32_18
.LBB32_18:                              # %for.inc.24
                                        #   in Loop: Header=BB32_6 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB32_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB32_21
.LBB32_20:                              # %cond.false
                                        #   in Loop: Header=BB32_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB32_21
.LBB32_21:                              # %cond.end
                                        #   in Loop: Header=BB32_6 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB32_6
.LBB32_22:                              # %for.end.26
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB32_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_tag_entry_get_completion_candidates, .Lfunc_end32-gimp_tag_entry_get_completion_candidates
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_get_completion_string,@function
gimp_tag_entry_get_completion_string:   # @gimp_tag_entry_get_completion_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB33_25
.LBB33_2:                               # %if.end
	movq	$-1, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	callq	g_utf8_normalize
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB33_4
# BB#3:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB33_25
.LBB33_4:                               # %if.end.3
	movq	-112(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -68(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -44(%rbp)
	cmpl	$2, -44(%rbp)
	jae	.LBB33_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB33_25
.LBB33_6:                               # %if.end.12
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	g_malloc
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -48(%rbp)
.LBB33_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB33_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rsi
	addq	%rsi, %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
	cmpq	$0, -56(%rbp)
	je	.LBB33_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB33_11
.LBB33_10:                              # %cond.false
                                        #   in Loop: Header=BB33_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB33_11
.LBB33_11:                              # %cond.end
                                        #   in Loop: Header=BB33_7 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB33_7 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB33_7
.LBB33_13:                              # %for.end
	movl	$0, -76(%rbp)
.LBB33_14:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_17 Depth 2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_utf8_get_char
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB33_16
# BB#15:                                # %if.then.27
	jmp	.LBB33_24
.LBB33_16:                              # %if.end.28
                                        #   in Loop: Header=BB33_14 Depth=1
	movl	$1, -48(%rbp)
.LBB33_17:                              # %for.cond.29
                                        #   Parent Loop BB33_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB33_22
# BB#18:                                # %for.body.32
                                        #   in Loop: Header=BB33_17 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_utf8_get_char
	movl	%eax, -116(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-116(%rbp), %eax
	je	.LBB33_20
# BB#19:                                # %if.then.38
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rsi
	callq	g_utf8_offset_to_pointer
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-64(%rbp), %rsi
	subq	%rsi, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movslq	-100(%rbp), %rdx
	callq	memcpy
	movslq	-100(%rbp), %rax
	movq	-88(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB33_25
.LBB33_20:                              # %if.end.53
                                        #   in Loop: Header=BB33_17 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movzbl	(%rdx), %eax
	movl	%eax, %edx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rdx), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#21:                                # %for.inc.65
                                        #   in Loop: Header=BB33_17 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB33_17
.LBB33_22:                              # %for.end.67
                                        #   in Loop: Header=BB33_14 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	g_utf8_skip, %rsi
	movsbl	(%rsi,%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-76(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
# BB#23:                                # %do.cond
                                        #   in Loop: Header=BB33_14 Depth=1
	cmpl	$0, -72(%rbp)
	jne	.LBB33_14
.LBB33_24:                              # %do.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_tag_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_tag_get_name
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movslq	-68(%rbp), %rsi
	addq	%rsi, %rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB33_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_tag_entry_get_completion_string, .Lfunc_end33-gimp_tag_entry_get_completion_string
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_commit_source_func,@function
gimp_tag_entry_commit_source_func:      # @gimp_tag_entry_commit_source_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tag_entry_commit_tags
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_tag_entry_commit_source_func, .Lfunc_end34-gimp_tag_entry_commit_source_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_previous_tag,@function
gimp_tag_entry_previous_tag:            # @gimp_tag_entry_previous_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -16(%rbp)
	cmpl	$1, -16(%rbp)
	jl	.LBB35_3
# BB#1:                                 # %land.lhs.true
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB35_3:                               # %if.end
	cmpl	$1, -16(%rbp)
	jge	.LBB35_5
# BB#4:                                 # %if.then.8
	jmp	.LBB35_23
.LBB35_5:                               # %if.end.9
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$117, %eax
	je	.LBB35_14
# BB#6:                                 # %if.then.18
	jmp	.LBB35_7
.LBB35_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jle	.LBB35_9
# BB#8:                                 # %land.rhs
                                        #   in Loop: Header=BB35_7 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	setne	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB35_9:                               # %land.end
                                        #   in Loop: Header=BB35_7 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB35_10
	jmp	.LBB35_13
.LBB35_10:                              # %while.body
                                        #   in Loop: Header=BB35_7 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$117, %eax
	jne	.LBB35_12
# BB#11:                                # %if.then.37
	jmp	.LBB35_13
.LBB35_12:                              # %if.end.38
                                        #   in Loop: Header=BB35_7 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB35_7
.LBB35_13:                              # %while.end
	jmp	.LBB35_15
.LBB35_14:                              # %if.else
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB35_15:                              # %if.end.41
	cmpl	$0, -12(%rbp)
	je	.LBB35_22
# BB#16:                                # %if.then.42
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	-20(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB35_18
# BB#17:                                # %if.then.51
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
	jmp	.LBB35_21
.LBB35_18:                              # %if.else.54
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB35_20
# BB#19:                                # %if.then.57
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-24(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB35_20:                              # %if.end.60
	jmp	.LBB35_21
.LBB35_21:                              # %if.end.61
	jmp	.LBB35_23
.LBB35_22:                              # %if.else.62
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
.LBB35_23:                              # %if.end.65
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_tag_entry_previous_tag, .Lfunc_end35-gimp_tag_entry_previous_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_next_tag,@function
gimp_tag_entry_next_tag:                # @gimp_tag_entry_next_tag
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -16(%rbp)
	movslq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	(%rdi), %rdi
	movsbl	(%rdi,%rsi), %eax
	cmpl	$117, %eax
	je	.LBB36_9
# BB#1:                                 # %if.then
	jmp	.LBB36_2
.LBB36_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	cmpq	8(%rsi), %rdx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jae	.LBB36_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB36_2 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	setne	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB36_4:                               # %land.end
                                        #   in Loop: Header=BB36_2 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB36_5
	jmp	.LBB36_6
.LBB36_5:                               # %while.body
                                        #   in Loop: Header=BB36_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB36_2
.LBB36_6:                               # %while.end
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	jne	.LBB36_8
# BB#7:                                 # %if.then.23
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB36_8:                               # %if.end
	jmp	.LBB36_12
.LBB36_9:                               # %if.else
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB36_11
# BB#10:                                # %if.then.30
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB36_11:                              # %if.end.32
	jmp	.LBB36_12
.LBB36_12:                              # %if.end.33
	cmpl	$0, -12(%rbp)
	je	.LBB36_19
# BB#13:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	-20(%rbp), %ecx
	cmpl	-28(%rbp), %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB36_15
# BB#14:                                # %if.then.43
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-24(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
	jmp	.LBB36_18
.LBB36_15:                              # %if.else.46
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB36_17
# BB#16:                                # %if.then.49
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB36_17:                              # %if.end.52
	jmp	.LBB36_18
.LBB36_18:                              # %if.end.53
	jmp	.LBB36_20
.LBB36_19:                              # %if.else.54
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
.LBB36_20:                              # %if.end.57
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_tag_entry_next_tag, .Lfunc_end36-gimp_tag_entry_next_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_select_for_deletion,@function
gimp_tag_entry_select_for_deletion:     # @gimp_tag_entry_select_for_deletion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_editable_get_selection_bounds
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB37_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -16(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jle	.LBB37_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	sete	%sil
	movb	%sil, -37(%rbp)         # 1-byte Spill
.LBB37_3:                               # %land.end
                                        #   in Loop: Header=BB37_1 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_4
	jmp	.LBB37_5
.LBB37_4:                               # %while.body
                                        #   in Loop: Header=BB37_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB37_1
.LBB37_5:                               # %while.end
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB37_14
# BB#6:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	je	.LBB37_8
# BB#7:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$115, %eax
	jne	.LBB37_14
.LBB37_8:                               # %if.then
	jmp	.LBB37_9
.LBB37_9:                               # %while.cond.24
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	cmpq	8(%rsi), %rdx
	movb	%cl, -38(%rbp)          # 1-byte Spill
	ja	.LBB37_11
# BB#10:                                # %land.rhs.29
                                        #   in Loop: Header=BB37_9 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$115, %edx
	sete	%sil
	movb	%sil, -38(%rbp)         # 1-byte Spill
.LBB37_11:                              # %land.end.37
                                        #   in Loop: Header=BB37_9 Depth=1
	movb	-38(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_12
	jmp	.LBB37_13
.LBB37_12:                              # %while.body.38
                                        #   in Loop: Header=BB37_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB37_9
.LBB37_13:                              # %while.end.39
	jmp	.LBB37_14
.LBB37_14:                              # %if.end
	jmp	.LBB37_15
.LBB37_15:                              # %while.cond.40
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -39(%rbp)          # 1-byte Spill
	jge	.LBB37_17
# BB#16:                                # %land.rhs.43
                                        #   in Loop: Header=BB37_15 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	sete	%sil
	movb	%sil, -39(%rbp)         # 1-byte Spill
.LBB37_17:                              # %land.end.51
                                        #   in Loop: Header=BB37_15 Depth=1
	movb	-39(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_18
	jmp	.LBB37_19
.LBB37_18:                              # %while.body.52
                                        #   in Loop: Header=BB37_15 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB37_15
.LBB37_19:                              # %while.end.54
	jmp	.LBB37_20
.LBB37_20:                              # %while.cond.55
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	movb	%cl, -40(%rbp)          # 1-byte Spill
	jge	.LBB37_22
# BB#21:                                # %land.rhs.58
                                        #   in Loop: Header=BB37_20 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	sete	%sil
	movb	%sil, -40(%rbp)         # 1-byte Spill
.LBB37_22:                              # %land.end.67
                                        #   in Loop: Header=BB37_20 Depth=1
	movb	-40(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB37_23
	jmp	.LBB37_24
.LBB37_23:                              # %while.body.68
                                        #   in Loop: Header=BB37_20 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB37_20
.LBB37_24:                              # %while.end.70
	cmpl	$1, -12(%rbp)
	jne	.LBB37_26
# BB#25:                                # %if.then.73
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
	jmp	.LBB37_32
.LBB37_26:                              # %if.else
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB37_31
# BB#27:                                # %land.lhs.true.78
	cmpl	$2, -12(%rbp)
	jne	.LBB37_31
# BB#28:                                # %land.lhs.true.81
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$116, %eax
	je	.LBB37_30
# BB#29:                                # %lor.lhs.false.90
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$115, %eax
	jne	.LBB37_31
.LBB37_30:                              # %if.then.99
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_editable_select_region
.LBB37_31:                              # %if.end.102
	jmp	.LBB37_32
.LBB37_32:                              # %if.end.103
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_tag_entry_select_for_deletion, .Lfunc_end37-gimp_tag_entry_select_for_deletion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_strip_extra_whitespace,@function
gimp_tag_entry_strip_extra_whitespace:  # @gimp_tag_entry_strip_extra_whitespace
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_editable_get_position
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	252(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 252(%rsi)
	movq	-8(%rbp), %rsi
	movl	260(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 260(%rsi)
.LBB38_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	cmpq	$0, 8(%rdx)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jbe	.LBB38_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$119, %ecx
	sete	%dl
	movb	%dl, -25(%rbp)          # 1-byte Spill
.LBB38_3:                               # %land.end
                                        #   in Loop: Header=BB38_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_4
	jmp	.LBB38_5
.LBB38_4:                               # %while.body
                                        #   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_editable_delete_text
	jmp	.LBB38_1
.LBB38_5:                               # %while.end
	jmp	.LBB38_6
.LBB38_6:                               # %while.cond.10
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	cmpq	$1, 8(%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jbe	.LBB38_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB38_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	8(%rdx), %rdx
	subq	$1, %rdx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	(%rsi), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$119, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB38_9
# BB#8:                                 # %land.rhs.23
                                        #   in Loop: Header=BB38_6 Depth=1
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	8(%rax), %rax
	subq	$2, %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	sete	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB38_9:                               # %land.end.33
                                        #   in Loop: Header=BB38_6 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB38_10
	jmp	.LBB38_13
.LBB38_10:                              # %while.body.34
                                        #   in Loop: Header=BB38_6 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	8(%rsi), %rsi
	subq	$1, %rsi
	movl	%esi, %ecx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	8(%rsi), %rsi
	movl	%esi, %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_editable_delete_text
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	cmpq	8(%rdi), %rax
	jne	.LBB38_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB38_6 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB38_12:                              # %if.end
                                        #   in Loop: Header=BB38_6 Depth=1
	jmp	.LBB38_6
.LBB38_13:                              # %while.end.49
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
.LBB38_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB38_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB38_14 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	jne	.LBB38_20
# BB#16:                                # %land.lhs.true.62
                                        #   in Loop: Header=BB38_14 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	(%rdx), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$119, %eax
	jne	.LBB38_20
# BB#17:                                # %if.then.71
                                        #   in Loop: Header=BB38_14 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_editable_delete_text
	movl	-16(%rbp), %ecx
	cmpl	-12(%rbp), %ecx
	jl	.LBB38_19
# BB#18:                                # %if.then.76
                                        #   in Loop: Header=BB38_14 Depth=1
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
.LBB38_19:                              # %if.end.78
                                        #   in Loop: Header=BB38_14 Depth=1
	jmp	.LBB38_20
.LBB38_20:                              # %if.end.79
                                        #   in Loop: Header=BB38_14 Depth=1
	jmp	.LBB38_21
.LBB38_21:                              # %for.inc
                                        #   in Loop: Header=BB38_14 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB38_14
.LBB38_22:                              # %for.end
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	8(%rcx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB38_25
# BB#23:                                # %land.lhs.true.87
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	216(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$119, %edx
	jne	.LBB38_25
# BB#24:                                # %if.then.95
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB38_25:                              # %if.end.97
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_position
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	260(%rdi), %esi
	addl	$-1, %esi
	movl	%esi, 260(%rdi)
	movq	-8(%rbp), %rdi
	movl	252(%rdi), %esi
	addl	$-1, %esi
	movl	%esi, 252(%rdi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_tag_entry_strip_extra_whitespace, .Lfunc_end38-gimp_tag_entry_strip_extra_whitespace
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_add_to_recent,@function
gimp_tag_entry_add_to_recent:           # @gimp_tag_entry_add_to_recent
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$1, 264(%rsi)
	jne	.LBB39_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB39_21
.LBB39_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	cmpl	$0, -52(%rbp)
	jg	.LBB39_4
# BB#3:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB39_21
.LBB39_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_length
	cmpl	$20, %eax
	jb	.LBB39_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	g_list_last
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	g_list_remove
	movq	-16(%rbp), %rsi
	movq	%rax, 240(%rsi)
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB39_6:                               # %if.end.18
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB39_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB39_15
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB39_7 Depth=1
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB39_10
# BB#9:                                 # %if.then.23
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove
	movq	-16(%rbp), %rsi
	movq	%rax, 240(%rsi)
	jmp	.LBB39_15
.LBB39_10:                              # %if.end.28
                                        #   in Loop: Header=BB39_7 Depth=1
	jmp	.LBB39_11
.LBB39_11:                              # %for.inc
                                        #   in Loop: Header=BB39_7 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB39_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB39_7 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_14
.LBB39_13:                              # %cond.false
                                        #   in Loop: Header=BB39_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB39_14
.LBB39_14:                              # %cond.end
                                        #   in Loop: Header=BB39_7 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB39_7
.LBB39_15:                              # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB39_17
# BB#16:                                # %if.then.31
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
.LBB39_17:                              # %if.end.33
	cmpl	$0, -28(%rbp)
	je	.LBB39_19
# BB#18:                                # %if.then.35
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, 240(%rsi)
	jmp	.LBB39_20
.LBB39_19:                              # %if.else
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_append
	movq	-16(%rbp), %rsi
	movq	%rax, 240(%rsi)
.LBB39_20:                              # %if.end.42
	movl	$1, -4(%rbp)
.LBB39_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_tag_entry_add_to_recent, .Lfunc_end39-gimp_tag_entry_add_to_recent
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_find_common_tags,@function
gimp_tag_entry_find_common_tags:        # @gimp_tag_entry_find_common_tags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movq	224(%rax), %rdi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	g_list_length
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	232(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 232(%rsi)
.LBB40_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_tag_entry_find_common_tags, .Lfunc_end40-gimp_tag_entry_find_common_tags
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tag_entry_commit_region,@function
gimp_tag_entry_commit_region:           # @gimp_tag_entry_commit_region
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movabsq	$.L.str.6, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -28(%rbp)
	movq	%rax, %rdi
	callq	g_string_new
	movabsq	$.L.str.6, %rdi
	movq	%rax, -48(%rbp)
	callq	g_string_new
	movabsq	$.L.str.6, %rdi
	movq	%rax, -56(%rbp)
	callq	g_string_new
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB41_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_13 Depth 2
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	ja	.LBB41_31
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	g_utf8_get_char
	movl	%eax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB41_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-32(%rbp), %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	je	.LBB41_5
# BB#4:                                 # %if.then.9
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_string_append_unichar
	movl	$119, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB41_6
.LBB41_5:                               # %if.else
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB41_6:                               # %if.end
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_7
.LBB41_7:                               # %if.end.12
                                        #   in Loop: Header=BB41_1 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB41_22
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB41_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB41_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-32(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	jne	.LBB41_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-64(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_string_append_unichar
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB41_21
.LBB41_11:                              # %if.else.21
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_tag_string_make_valid
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB41_19
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	$-1, %rsi
	movq	-72(%rbp), %rdi
	callq	g_utf8_strlen
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_string_append
	movl	$0, -24(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB41_13:                              # %for.cond.28
                                        #   Parent Loop BB41_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-24(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jae	.LBB41_16
# BB#14:                                # %for.body.32
                                        #   in Loop: Header=BB41_13 Depth=2
	movl	$116, %esi
	movq	-56(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB41_13 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB41_13
.LBB41_16:                              # %for.end
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpl	$0, -32(%rbp)
	jne	.LBB41_18
# BB#17:                                # %if.then.36
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_separator
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movl	$115, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB41_18:                              # %if.end.40
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB41_20
.LBB41_19:                              # %if.else.42
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	$0, -28(%rbp)
.LBB41_20:                              # %if.end.43
                                        #   in Loop: Header=BB41_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_set_size
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB41_21:                              # %if.end.45
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_22
.LBB41_22:                              # %if.end.46
                                        #   in Loop: Header=BB41_1 Depth=1
	cmpl	$2, -28(%rbp)
	jne	.LBB41_29
# BB#23:                                # %if.then.49
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-32(%rbp), %edi
	callq	gimp_tag_is_tag_separator
	cmpl	$0, %eax
	je	.LBB41_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_string_append_unichar
	movl	$115, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB41_28
.LBB41_25:                              # %if.else.55
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-32(%rbp), %edi
	callq	g_unichar_isspace
	cmpl	$0, %eax
	je	.LBB41_27
# BB#26:                                # %if.then.58
                                        #   in Loop: Header=BB41_1 Depth=1
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	g_string_append_unichar
	movl	$119, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB41_27:                              # %if.end.61
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	$0, -28(%rbp)
.LBB41_28:                              # %if.end.62
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_29
.LBB41_29:                              # %if.end.63
                                        #   in Loop: Header=BB41_1 Depth=1
	jmp	.LBB41_30
.LBB41_30:                              # %for.inc.64
                                        #   in Loop: Header=BB41_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB41_1
.LBB41_31:                              # %for.end.66
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_string_assign
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_string_assign
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_string_free
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_string_free
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_string_free
	movq	%rax, -224(%rbp)        # 8-byte Spill
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_tag_entry_commit_region, .Lfunc_end41-gimp_tag_entry_commit_region
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB42_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB42_3
.LBB42_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB42_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	g_string_append_c_inline, .Lfunc_end42-g_string_append_c_inline
	.cfi_endproc

	.type	gimp_tag_entry_get_type.g_define_type_id__volatile,@object # @gimp_tag_entry_get_type.g_define_type_id__volatile
	.local	gimp_tag_entry_get_type.g_define_type_id__volatile
	.comm	gimp_tag_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTagEntry"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_tag_entry_new,@object # @__func__.gimp_tag_entry_new
.L__func__.gimp_tag_entry_new:
	.asciz	"gimp_tag_entry_new"
	.size	.L__func__.gimp_tag_entry_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TAGGED_CONTAINER (container)"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"container"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mode"
	.size	.L.str.4, 5

	.type	.L__func__.gimp_tag_entry_set_tag_string,@object # @__func__.gimp_tag_entry_set_tag_string
.L__func__.gimp_tag_entry_set_tag_string:
	.asciz	"gimp_tag_entry_set_tag_string"
	.size	.L__func__.gimp_tag_entry_set_tag_string, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_TAG_ENTRY (entry)"
	.size	.L.str.5, 26

	.type	.L__func__.gimp_tag_entry_parse_tags,@object # @__func__.gimp_tag_entry_parse_tags
.L__func__.gimp_tag_entry_parse_tags:
	.asciz	"gimp_tag_entry_parse_tags"
	.size	.L__func__.gimp_tag_entry_parse_tags, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L__func__.gimp_tag_entry_set_selected_items,@object # @__func__.gimp_tag_entry_set_selected_items
.L__func__.gimp_tag_entry_set_selected_items:
	.asciz	"gimp_tag_entry_set_selected_items"
	.size	.L__func__.gimp_tag_entry_set_selected_items, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_TAG_ENTRY (tag_entry)"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	","
	.size	.L.str.8, 2

	.type	gimp_tag_entry_parent_class,@object # @gimp_tag_entry_parent_class
	.local	gimp_tag_entry_parent_class
	.comm	gimp_tag_entry_parent_class,8,8
	.type	GimpTagEntry_private_offset,@object # @GimpTagEntry_private_offset
	.local	GimpTagEntry_private_offset
	.comm	GimpTagEntry_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Tagged container"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The Tagged container"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Working mode"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Mode in which to work."
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimptagentry.c"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"add"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"remove"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"activate"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"changed"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"insert-text"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"delete-text"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"key-press-event"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"focus-in-event"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"focus-out-event"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"expose-event"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	" "
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"move-focus"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"filter"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"enter tags"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s%s "
	.size	.L.str.30, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
