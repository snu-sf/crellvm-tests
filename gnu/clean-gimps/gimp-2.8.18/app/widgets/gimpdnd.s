	.text
	.file	"gimpdnd.bc"
	.globl	gimp_dnd_init
	.align	16, 0x90
	.type	gimp_dnd_init,@function
gimp_dnd_init:                          # @gimp_dnd_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, the_dnd_gimp
	jne	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_18
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, the_dnd_gimp
.LBB0_18:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dnd_init, .Lfunc_end0-gimp_dnd_init
	.cfi_endproc

	.globl	gimp_dnd_uri_list_source_add
	.align	16, 0x90
	.type	gimp_dnd_uri_list_source_add,@function
gimp_dnd_uri_list_source_add:           # @gimp_dnd_uri_list_source_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_uri_list_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
.LBB1_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dnd_uri_list_source_add, .Lfunc_end1-gimp_dnd_uri_list_source_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_source_add,@function
gimp_dnd_data_source_add:               # @gimp_dnd_data_source_add
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %r8d
	movabsq	$dnd_data_defs, %r9
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %r9
	movq	%r9, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$768, %esi              # imm = 0x300
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$6, %r8d
	movq	-16(%rbp), %rdi
	callq	gtk_drag_source_set
.LBB2_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_dnd_data_drag_begin, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_dnd_data_drag_end, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_dnd_data_drag_handle, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movl	$1, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB2_4:                                # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.16
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movl	-4(%rbp), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB2_6:                                # %if.end.19
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_11
# BB#7:                                 # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gtk_drag_source_get_target_list
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB2_9
# BB#8:                                 # %if.then.24
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dnd_target_list_add
	jmp	.LBB2_10
.LBB2_9:                                # %if.else
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_target_list_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_drag_source_set_target_list
	movq	-56(%rbp), %rdi
	callq	gtk_target_list_unref
.LBB2_10:                               # %if.end.28
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.29
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dnd_data_source_add, .Lfunc_end2-gimp_dnd_data_source_add
	.cfi_endproc

	.globl	gimp_dnd_uri_list_source_remove
	.align	16, 0x90
	.type	gimp_dnd_uri_list_source_remove,@function
gimp_dnd_uri_list_source_remove:        # @gimp_dnd_uri_list_source_remove
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_uri_list_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB3_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dnd_uri_list_source_remove, .Lfunc_end3-gimp_dnd_uri_list_source_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_source_remove,@function
gimp_dnd_data_source_remove:            # @gimp_dnd_data_source_remove
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
	movl	$80, %eax
	movl	%eax, %ecx
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_20
.LBB4_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movabsq	$dnd_data_defs, %rcx
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movl	-8(%rbp), %r8d
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	cmpl	%r8d, %r9d
	jne	.LBB4_4
# BB#3:                                 # %if.then.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB4_4:                                # %if.end.10
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rdi
	callq	gtk_drag_source_get_target_list
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_18
# BB#6:                                 # %if.then.15
	leaq	-60(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gtk_target_table_new_from_list
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%esi, %esi
	movq	%rax, -56(%rbp)
	callq	gtk_target_list_new
	movq	%rax, -48(%rbp)
	movl	$0, -64(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB4_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movslq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-56(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	je	.LBB4_10
# BB#9:                                 # %if.then.22
                                        #   in Loop: Header=BB4_7 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	movslq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_atom_intern
	movslq	-64(%rbp), %rdi
	shlq	$4, %rdi
	addq	-56(%rbp), %rdi
	movl	8(%rdi), %edx
	movslq	-64(%rbp), %rdi
	shlq	$4, %rdi
	addq	-56(%rbp), %rdi
	movl	12(%rdi), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_target_list_add
.LBB4_10:                               # %if.end.32
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_7
.LBB4_12:                               # %for.end
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gtk_target_table_free
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_list_length
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_list_length
	movl	-84(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	je	.LBB4_17
# BB#13:                                # %if.then.38
	movl	$1, -32(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_15
# BB#14:                                # %if.then.41
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_drag_source_set_target_list
	jmp	.LBB4_16
.LBB4_15:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_drag_source_set_target_list
.LBB4_16:                               # %if.end.42
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.43
	movq	-48(%rbp), %rdi
	callq	gtk_target_list_unref
.LBB4_18:                               # %if.end.44
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.45
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dnd_data_source_remove, .Lfunc_end4-gimp_dnd_data_source_remove
	.cfi_endproc

	.globl	gimp_dnd_uri_list_dest_add
	.align	16, 0x90
	.type	gimp_dnd_uri_list_dest_add,@function
gimp_dnd_uri_list_dest_add:             # @gimp_dnd_uri_list_dest_add
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_uri_list_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	jne	.LBB5_14
# BB#13:                                # %if.then.14
	movl	$7, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$6, %r8d
	movq	-8(%rbp), %rdi
	callq	gtk_drag_dest_set
.LBB5_14:                               # %if.end.15
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
	movl	$2, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
	movl	$3, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
.LBB5_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dnd_uri_list_dest_add, .Lfunc_end5-gimp_dnd_uri_list_dest_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_dest_add,@function
gimp_dnd_data_dest_add:                 # @gimp_dnd_data_dest_add
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
	movl	$80, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	cmpq	$0, %rax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$7, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	-16(%rbp), %rdi
	callq	gtk_drag_dest_set
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -44(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_dnd_data_drop_handle, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movl	$1, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB6_5:                                # %if.end.9
	movabsq	$dnd_data_defs, %rax
	movl	-4(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB6_7:                                # %if.end.14
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_12
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.19
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_dnd_target_list_add
	jmp	.LBB6_11
.LBB6_10:                               # %if.else
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_target_list_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_drag_dest_set_target_list
	movq	-56(%rbp), %rdi
	callq	gtk_target_list_unref
.LBB6_11:                               # %if.end.23
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.24
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dnd_data_dest_add, .Lfunc_end6-gimp_dnd_data_dest_add
	.cfi_endproc

	.globl	gimp_dnd_uri_list_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_uri_list_dest_remove,@function
gimp_dnd_uri_list_dest_remove:          # @gimp_dnd_uri_list_dest_remove
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_uri_list_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
	movl	$2, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
	movl	$3, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
.LBB7_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dnd_uri_list_dest_remove, .Lfunc_end7-gimp_dnd_uri_list_dest_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_dest_remove,@function
gimp_dnd_data_dest_remove:              # @gimp_dnd_data_dest_remove
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movabsq	$dnd_data_defs, %rdx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	imulq	$72, %rsi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_5
# BB#2:                                 # %if.then.4
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gdk_atom_intern
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_target_list_remove
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %if.end.9
	jmp	.LBB8_6
.LBB8_6:                                # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dnd_data_dest_remove, .Lfunc_end8-gimp_dnd_data_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_xds_source_add
	.align	16, 0x90
	.type	gimp_dnd_xds_source_add,@function
gimp_dnd_xds_source_add:                # @gimp_dnd_xds_source_add
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	$4, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
	movl	$80, %edi
	movl	%edi, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	%r8d, %r8d
	movl	%r8d, %eax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_14
# BB#13:                                # %if.then.15
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_dnd_xds_drag_begin, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB9_14:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.24
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_dnd_xds_drag_end, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB9_16:                               # %if.end.27
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dnd_xds_source_add, .Lfunc_end9-gimp_dnd_xds_source_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_xds_drag_begin,@function
gimp_dnd_xds_drag_begin:                # @gimp_dnd_xds_drag_begin
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movabsq	$dnd_data_defs, %rdx
	addq	$288, %rdx              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_6
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	*%rax
	movq	%rax, -48(%rbp)
# BB#2:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB10_4
# BB#3:                                 # %if.then.6
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_xds_drag_begin, %rsi
	movl	$1236, %edx             # imm = 0x4D4
	movabsq	$.L.str.20, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_dnd_xds_source_set
.LBB10_6:                               # %if.end.7
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dnd_xds_drag_begin, .Lfunc_end10-gimp_dnd_xds_drag_begin
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_xds_drag_end,@function
gimp_dnd_xds_drag_end:                  # @gimp_dnd_xds_drag_end
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gimp_dnd_xds_source_set
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dnd_xds_drag_end, .Lfunc_end11-gimp_dnd_xds_drag_end
	.cfi_endproc

	.globl	gimp_dnd_xds_source_remove
	.align	16, 0x90
	.type	gimp_dnd_xds_source_remove,@function
gimp_dnd_xds_source_remove:             # @gimp_dnd_xds_source_remove
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_widget_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_xds_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_17
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_14
# BB#13:                                # %if.then.15
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB12_14:                              # %if.end.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_16
# BB#15:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_signal_handler_disconnect
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB12_16:                              # %if.end.25
	movl	$4, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dnd_xds_source_remove, .Lfunc_end12-gimp_dnd_xds_source_remove
	.cfi_endproc

	.globl	gimp_dnd_color_source_add
	.align	16, 0x90
	.type	gimp_dnd_color_source_add,@function
gimp_dnd_color_source_add:              # @gimp_dnd_color_source_add
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_color_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movl	$5, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_dnd_color_source_add, .Lfunc_end13-gimp_dnd_color_source_add
	.cfi_endproc

	.globl	gimp_dnd_color_source_remove
	.align	16, 0x90
	.type	gimp_dnd_color_source_remove,@function
gimp_dnd_color_source_remove:           # @gimp_dnd_color_source_remove
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_color_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movl	$5, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB14_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dnd_color_source_remove, .Lfunc_end14-gimp_dnd_color_source_remove
	.cfi_endproc

	.globl	gimp_dnd_color_dest_add
	.align	16, 0x90
	.type	gimp_dnd_color_dest_add,@function
gimp_dnd_color_dest_add:                # @gimp_dnd_color_dest_add
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_color_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movl	$5, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dnd_color_dest_add, .Lfunc_end15-gimp_dnd_color_dest_add
	.cfi_endproc

	.globl	gimp_dnd_color_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_color_dest_remove,@function
gimp_dnd_color_dest_remove:             # @gimp_dnd_color_dest_remove
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_color_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movl	$5, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
.LBB16_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_dnd_color_dest_remove, .Lfunc_end16-gimp_dnd_color_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_svg_source_add
	.align	16, 0x90
	.type	gimp_dnd_svg_source_add,@function
gimp_dnd_svg_source_add:                # @gimp_dnd_svg_source_add
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
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_svg_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	$6, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
	movl	$7, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
.LBB17_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_dnd_svg_source_add, .Lfunc_end17-gimp_dnd_svg_source_add
	.cfi_endproc

	.globl	gimp_dnd_svg_source_remove
	.align	16, 0x90
	.type	gimp_dnd_svg_source_remove,@function
gimp_dnd_svg_source_remove:             # @gimp_dnd_svg_source_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_svg_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movl	$6, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	$7, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_dnd_data_source_remove
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB18_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_dnd_svg_source_remove, .Lfunc_end18-gimp_dnd_svg_source_remove
	.cfi_endproc

	.globl	gimp_dnd_svg_dest_add
	.align	16, 0x90
	.type	gimp_dnd_svg_dest_add,@function
gimp_dnd_svg_dest_add:                  # @gimp_dnd_svg_dest_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_svg_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movl	$6, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
	movl	$7, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
.LBB19_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_dnd_svg_dest_add, .Lfunc_end19-gimp_dnd_svg_dest_add
	.cfi_endproc

	.globl	gimp_dnd_svg_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_svg_dest_remove,@function
gimp_dnd_svg_dest_remove:               # @gimp_dnd_svg_dest_remove
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_svg_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movl	$6, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
	movl	$7, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
.LBB20_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_dnd_svg_dest_remove, .Lfunc_end20-gimp_dnd_svg_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_pixbuf_source_add
	.align	16, 0x90
	.type	gimp_dnd_pixbuf_source_add,@function
gimp_dnd_pixbuf_source_add:             # @gimp_dnd_pixbuf_source_add
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_pixbuf_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_16
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movl	$8, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
	movq	-8(%rbp), %rdi
	callq	gtk_drag_source_get_target_list
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB21_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rdi
	callq	gtk_target_list_ref
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.15
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	gtk_target_list_new
	movq	%rax, -32(%rbp)
.LBB21_15:                              # %if.end.17
	movl	$8, %esi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_pixbuf_targets_add
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_drag_source_set_target_list
	movq	-32(%rbp), %rdi
	callq	gtk_target_list_unref
.LBB21_16:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_dnd_pixbuf_source_add, .Lfunc_end21-gimp_dnd_pixbuf_source_add
	.cfi_endproc

	.globl	gimp_dnd_pixbuf_source_remove
	.align	16, 0x90
	.type	gimp_dnd_pixbuf_source_remove,@function
gimp_dnd_pixbuf_source_remove:          # @gimp_dnd_pixbuf_source_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_pixbuf_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_14
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movl	$8, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_drag_source_get_target_list
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB22_14
# BB#13:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_pixbuf_targets_remove
.LBB22_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_dnd_pixbuf_source_remove, .Lfunc_end22-gimp_dnd_pixbuf_source_remove
	.cfi_endproc

	.globl	gimp_dnd_pixbuf_dest_add
	.align	16, 0x90
	.type	gimp_dnd_pixbuf_dest_add,@function
gimp_dnd_pixbuf_dest_add:               # @gimp_dnd_pixbuf_dest_add
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_pixbuf_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_16
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	movl	$8, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
	movq	-8(%rbp), %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_14
# BB#13:                                # %if.then.13
	movq	-32(%rbp), %rdi
	callq	gtk_target_list_ref
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB23_15
.LBB23_14:                              # %if.else.15
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	gtk_target_list_new
	movq	%rax, -32(%rbp)
.LBB23_15:                              # %if.end.17
	movl	$8, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_pixbuf_targets_add
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_drag_dest_set_target_list
	movq	-32(%rbp), %rdi
	callq	gtk_target_list_unref
.LBB23_16:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_dnd_pixbuf_dest_add, .Lfunc_end23-gimp_dnd_pixbuf_dest_add
	.cfi_endproc

	.globl	gimp_dnd_pixbuf_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_pixbuf_dest_remove,@function
gimp_dnd_pixbuf_dest_remove:            # @gimp_dnd_pixbuf_dest_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_pixbuf_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_14
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movl	$8, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
	movq	-8(%rbp), %rdi
	callq	gtk_drag_dest_get_target_list
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB24_14
# BB#13:                                # %if.then.13
	movq	-16(%rbp), %rdi
	callq	gimp_pixbuf_targets_remove
.LBB24_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_dnd_pixbuf_dest_remove, .Lfunc_end24-gimp_dnd_pixbuf_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_component_source_add
	.align	16, 0x90
	.type	gimp_dnd_component_source_add,@function
gimp_dnd_component_source_add:          # @gimp_dnd_component_source_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_component_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
.LBB25_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_dnd_component_source_add, .Lfunc_end25-gimp_dnd_component_source_add
	.cfi_endproc

	.globl	gimp_dnd_component_source_remove
	.align	16, 0x90
	.type	gimp_dnd_component_source_remove,@function
gimp_dnd_component_source_remove:       # @gimp_dnd_component_source_remove
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_component_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB26_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_dnd_component_source_remove, .Lfunc_end26-gimp_dnd_component_source_remove
	.cfi_endproc

	.globl	gimp_dnd_component_dest_add
	.align	16, 0x90
	.type	gimp_dnd_component_dest_add,@function
gimp_dnd_component_dest_add:            # @gimp_dnd_component_dest_add
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_component_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
.LBB27_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_dnd_component_dest_add, .Lfunc_end27-gimp_dnd_component_dest_add
	.cfi_endproc

	.globl	gimp_dnd_component_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_component_dest_remove,@function
gimp_dnd_component_dest_remove:         # @gimp_dnd_component_dest_remove
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_component_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movl	$10, %edi
	movq	-8(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
.LBB28_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_dnd_component_dest_remove, .Lfunc_end28-gimp_dnd_component_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_drag_source_set_by_type
	.align	16, 0x90
	.type	gimp_dnd_drag_source_set_by_type,@function
gimp_dnd_drag_source_set_by_type:       # @gimp_dnd_drag_source_set_by_type
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_drag_source_set_by_type, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB29_15
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	movq	-32(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB29_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB29_15
.LBB29_14:                              # %if.end.14
	movl	$1, %ecx
	movabsq	$dnd_data_defs, %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	%edx, %r8d
	imulq	$72, %r8, %r8
	addq	%r8, %rax
	movl	-36(%rbp), %r8d
	movq	%rax, %rdx
	callq	gtk_drag_source_set
	movl	$1, -4(%rbp)
.LBB29_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_dnd_drag_source_set_by_type, .Lfunc_end29-gimp_dnd_drag_source_set_by_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_type_get_by_g_type,@function
gimp_dnd_data_type_get_by_g_type:       # @gimp_dnd_data_type_get_by_g_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_2
# BB#1:                                 # %if.then
	movl	$9, -12(%rbp)
	jmp	.LBB30_41
.LBB30_2:                               # %if.else
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_4
# BB#3:                                 # %if.then.5
	movl	$11, -12(%rbp)
	jmp	.LBB30_40
.LBB30_4:                               # %if.else.6
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_6
# BB#5:                                 # %if.then.10
	movl	$13, -12(%rbp)
	jmp	.LBB30_39
.LBB30_6:                               # %if.else.11
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_8
# BB#7:                                 # %if.then.15
	movl	$12, -12(%rbp)
	jmp	.LBB30_38
.LBB30_8:                               # %if.else.16
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_10
# BB#9:                                 # %if.then.20
	movl	$14, -12(%rbp)
	jmp	.LBB30_37
.LBB30_10:                              # %if.else.21
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_12
# BB#11:                                # %if.then.25
	movl	$15, -12(%rbp)
	jmp	.LBB30_36
.LBB30_12:                              # %if.else.26
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pattern_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_14
# BB#13:                                # %if.then.30
	movl	$16, -12(%rbp)
	jmp	.LBB30_35
.LBB30_14:                              # %if.else.31
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_gradient_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_16
# BB#15:                                # %if.then.35
	movl	$17, -12(%rbp)
	jmp	.LBB30_34
.LBB30_16:                              # %if.else.36
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_18
# BB#17:                                # %if.then.40
	movl	$18, -12(%rbp)
	jmp	.LBB30_33
.LBB30_18:                              # %if.else.41
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_font_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_20
# BB#19:                                # %if.then.45
	movl	$19, -12(%rbp)
	jmp	.LBB30_32
.LBB30_20:                              # %if.else.46
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_buffer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_22
# BB#21:                                # %if.then.50
	movl	$20, -12(%rbp)
	jmp	.LBB30_31
.LBB30_22:                              # %if.else.51
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_24
# BB#23:                                # %if.then.55
	movl	$21, -12(%rbp)
	jmp	.LBB30_30
.LBB30_24:                              # %if.else.56
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_26
# BB#25:                                # %if.then.60
	movl	$22, -12(%rbp)
	jmp	.LBB30_29
.LBB30_26:                              # %if.else.61
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB30_28
# BB#27:                                # %if.then.65
	movl	$23, -12(%rbp)
.LBB30_28:                              # %if.end
	jmp	.LBB30_29
.LBB30_29:                              # %if.end.66
	jmp	.LBB30_30
.LBB30_30:                              # %if.end.67
	jmp	.LBB30_31
.LBB30_31:                              # %if.end.68
	jmp	.LBB30_32
.LBB30_32:                              # %if.end.69
	jmp	.LBB30_33
.LBB30_33:                              # %if.end.70
	jmp	.LBB30_34
.LBB30_34:                              # %if.end.71
	jmp	.LBB30_35
.LBB30_35:                              # %if.end.72
	jmp	.LBB30_36
.LBB30_36:                              # %if.end.73
	jmp	.LBB30_37
.LBB30_37:                              # %if.end.74
	jmp	.LBB30_38
.LBB30_38:                              # %if.end.75
	jmp	.LBB30_39
.LBB30_39:                              # %if.end.76
	jmp	.LBB30_40
.LBB30_40:                              # %if.end.77
	jmp	.LBB30_41
.LBB30_41:                              # %if.end.78
	movl	-12(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_dnd_data_type_get_by_g_type, .Lfunc_end30-gimp_dnd_data_type_get_by_g_type
	.cfi_endproc

	.globl	gimp_dnd_drag_dest_set_by_type
	.align	16, 0x90
	.type	gimp_dnd_drag_dest_set_by_type,@function
gimp_dnd_drag_dest_set_by_type:         # @gimp_dnd_drag_dest_set_by_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_drag_dest_set_by_type, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB31_15
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movq	-32(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB31_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB31_15
.LBB31_14:                              # %if.end.14
	movl	$1, %ecx
	movabsq	$dnd_data_defs, %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	%edx, %r8d
	imulq	$72, %r8, %r8
	addq	%r8, %rax
	movl	-36(%rbp), %r8d
	movq	%rax, %rdx
	callq	gtk_drag_dest_set
	movl	$1, -4(%rbp)
.LBB31_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_dnd_drag_dest_set_by_type, .Lfunc_end31-gimp_dnd_drag_dest_set_by_type
	.cfi_endproc

	.globl	gimp_dnd_viewable_source_add
	.align	16, 0x90
	.type	gimp_dnd_viewable_source_add,@function
gimp_dnd_viewable_source_add:           # @gimp_dnd_viewable_source_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_viewable_source_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_20
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	jmp	.LBB32_13
.LBB32_13:                              # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB32_15
# BB#14:                                # %if.then.13
	jmp	.LBB32_16
.LBB32_15:                              # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_viewable_source_add, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB32_20
.LBB32_16:                              # %if.end.15
	jmp	.LBB32_17
.LBB32_17:                              # %do.end.16
	movq	-24(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB32_19
# BB#18:                                # %if.then.19
	movl	$0, -4(%rbp)
	jmp	.LBB32_20
.LBB32_19:                              # %if.end.20
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_source_add
	movl	$1, -4(%rbp)
.LBB32_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_dnd_viewable_source_add, .Lfunc_end32-gimp_dnd_viewable_source_add
	.cfi_endproc

	.globl	gimp_dnd_viewable_source_remove
	.align	16, 0x90
	.type	gimp_dnd_viewable_source_remove,@function
gimp_dnd_viewable_source_remove:        # @gimp_dnd_viewable_source_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_viewable_source_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB33_15
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB33_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB33_15
.LBB33_14:                              # %if.end.14
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_dnd_data_source_remove
	movl	%eax, -4(%rbp)
.LBB33_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_dnd_viewable_source_remove, .Lfunc_end33-gimp_dnd_viewable_source_remove
	.cfi_endproc

	.globl	gimp_dnd_viewable_dest_add
	.align	16, 0x90
	.type	gimp_dnd_viewable_dest_add,@function
gimp_dnd_viewable_dest_add:             # @gimp_dnd_viewable_dest_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_viewable_dest_add, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_15
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB34_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB34_15
.LBB34_14:                              # %if.end.14
	movl	-44(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_dnd_data_dest_add
	movl	$1, -4(%rbp)
.LBB34_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_dnd_viewable_dest_add, .Lfunc_end34-gimp_dnd_viewable_dest_add
	.cfi_endproc

	.globl	gimp_dnd_viewable_dest_remove
	.align	16, 0x90
	.type	gimp_dnd_viewable_dest_remove,@function
gimp_dnd_viewable_dest_remove:          # @gimp_dnd_viewable_dest_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_viewable_dest_remove, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB35_15
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_dnd_data_type_get_by_g_type
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB35_14
# BB#13:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB35_15
.LBB35_14:                              # %if.end.14
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_dnd_data_dest_remove
	movl	$1, -4(%rbp)
.LBB35_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_dnd_viewable_dest_remove, .Lfunc_end35-gimp_dnd_viewable_dest_remove
	.cfi_endproc

	.globl	gimp_dnd_get_drag_data
	.align	16, 0x90
	.type	gimp_dnd_get_drag_data,@function
gimp_dnd_get_drag_data:                 # @gimp_dnd_get_drag_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_dnd_get_drag_data, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB36_21
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB36_14
# BB#13:                                # %if.then.14
	movq	$0, -8(%rbp)
	jmp	.LBB36_21
.LBB36_14:                              # %if.end.15
	movabsq	$dnd_data_defs, %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB36_16
# BB#15:                                # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
.LBB36_16:                              # %if.end.21
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB36_18
# BB#17:                                # %if.then.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
.LBB36_18:                              # %if.end.27
	cmpq	$0, -40(%rbp)
	jne	.LBB36_20
# BB#19:                                # %if.then.29
	movq	$0, -8(%rbp)
	jmp	.LBB36_21
.LBB36_20:                              # %if.end.30
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rdx
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB36_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_dnd_get_drag_data, .Lfunc_end36-gimp_dnd_get_drag_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_drag_begin,@function
gimp_dnd_data_drag_begin:               # @gimp_dnd_data_drag_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r8d
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB37_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drag_begin, %rsi
	movl	$664, %edx              # imm = 0x298
	movabsq	$.L.str.14, %rcx
	movl	-36(%rbp), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB37_3:                               # %if.end
	jmp	.LBB37_4
.LBB37_4:                               # %do.end
	cmpl	$0, -36(%rbp)
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	jmp	.LBB37_14
.LBB37_6:                               # %if.end.4
	movabsq	$dnd_data_defs, %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB37_8
# BB#7:                                 # %if.then.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
.LBB37_8:                               # %if.end.10
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB37_10
# BB#9:                                 # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB37_10:                              # %if.end.16
	cmpq	$0, -48(%rbp)
	jne	.LBB37_12
# BB#11:                                # %if.then.18
	jmp	.LBB37_14
.LBB37_12:                              # %if.end.19
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	*%rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB37_14
# BB#13:                                # %if.then.22
	movl	$1, %edi
	callq	gtk_window_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$13, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_type_hint
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen
	movq	-80(%rbp), %rdi
	callq	gtk_widget_realize
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-80(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movq	-80(%rbp), %rdx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_object_set_data_full
	movl	$4294967288, %r8d       # imm = 0xFFFFFFF8
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_drag_set_icon_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
.LBB37_14:                              # %if.end.38
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_dnd_data_drag_begin, .Lfunc_end37-gimp_dnd_data_drag_begin
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_drag_end,@function
gimp_dnd_data_drag_end:                 # @gimp_dnd_data_drag_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB38_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drag_end, %rsi
	movl	$728, %edx              # imm = 0x2D8
	movabsq	$.L.str.14, %rcx
	movl	-20(%rbp), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB38_3:                               # %if.end
	jmp	.LBB38_4
.LBB38_4:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB38_8
# BB#5:                                 # %if.then.5
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB38_7
# BB#6:                                 # %if.then.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB38_7:                               # %if.end.11
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_dnd_data_drag_end, .Lfunc_end38-gimp_dnd_data_drag_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_drag_handle,@function
gimp_dnd_data_drag_handle:              # @gimp_dnd_data_drag_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB39_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drag_handle, %rsi
	movl	$758, %edx              # imm = 0x2F6
	movabsq	$.L.str.14, %rcx
	movl	-28(%rbp), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB39_3:                               # %if.end
	jmp	.LBB39_4
.LBB39_4:                               # %do.end
	movl	$1, -60(%rbp)
.LBB39_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -60(%rbp)
	ja	.LBB39_20
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB39_5 Depth=1
	movabsq	$dnd_data_defs, %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB39_18
# BB#7:                                 # %if.then.3
	jmp	.LBB39_8
.LBB39_8:                               # %do.body.4
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB39_10
# BB#9:                                 # %if.then.7
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drag_handle, %rsi
	movl	$768, %edx              # imm = 0x300
	movabsq	$.L.str.17, %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %r8
	movb	$0, %al
	callq	gimp_log
.LBB39_10:                              # %if.end.9
	jmp	.LBB39_11
.LBB39_11:                              # %do.end.10
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB39_13
# BB#12:                                # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
.LBB39_13:                              # %if.end.15
	movq	-72(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB39_15
# BB#14:                                # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
.LBB39_15:                              # %if.end.21
	cmpq	$0, -48(%rbp)
	jne	.LBB39_17
# BB#16:                                # %if.then.23
	jmp	.LBB39_20
.LBB39_17:                              # %if.end.24
	movq	-72(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %r8
	callq	*%rax
	jmp	.LBB39_20
.LBB39_18:                              # %if.end.26
                                        #   in Loop: Header=BB39_5 Depth=1
	jmp	.LBB39_19
.LBB39_19:                              # %for.inc
                                        #   in Loop: Header=BB39_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB39_5
.LBB39_20:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_dnd_data_drag_handle, .Lfunc_end39-gimp_dnd_data_drag_handle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_target_list_add,@function
gimp_dnd_target_list_add:               # @gimp_dnd_target_list_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movl	%eax, %esi
	callq	gdk_atom_intern
	leaq	-28(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_target_list_find
	cmpl	$0, %eax
	je	.LBB40_2
# BB#1:                                 # %lor.lhs.false
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB40_3
.LBB40_2:                               # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	8(%rax), %edx
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	callq	gtk_target_list_add
.LBB40_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_dnd_target_list_add, .Lfunc_end40-gimp_dnd_target_list_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_data_drop_handle,@function
gimp_dnd_data_drop_handle:              # @gimp_dnd_data_drop_handle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB41_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drop_handle, %rsi
	movl	$804, %edx              # imm = 0x324
	movabsq	$.L.str.14, %rcx
	movl	-36(%rbp), %r8d
	movb	$0, %al
	callq	gimp_log
.LBB41_3:                               # %if.end
	jmp	.LBB41_4
.LBB41_4:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$0, %eax
	jg	.LBB41_6
# BB#5:                                 # %if.then.1
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_drag_finish
	jmp	.LBB41_23
.LBB41_6:                               # %if.end.2
	movl	$1, -52(%rbp)
.LBB41_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -52(%rbp)
	ja	.LBB41_23
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB41_7 Depth=1
	movabsq	$dnd_data_defs, %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-36(%rbp), %ecx
	jne	.LBB41_21
# BB#9:                                 # %if.then.6
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
# BB#10:                                # %do.body.7
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB41_12
# BB#11:                                # %if.then.10
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_data_drop_handle, %rsi
	movl	$823, %edx              # imm = 0x337
	movabsq	$.L.str.17, %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %r8
	movb	$0, %al
	callq	gimp_log
.LBB41_12:                              # %if.end.12
	jmp	.LBB41_13
.LBB41_13:                              # %do.end.13
	movq	-64(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB41_15
# BB#14:                                # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
.LBB41_15:                              # %if.end.19
	movq	-64(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB41_17
# BB#16:                                # %if.then.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -80(%rbp)
.LBB41_17:                              # %if.end.25
	cmpq	$0, -72(%rbp)
	je	.LBB41_20
# BB#18:                                # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB41_20
# BB#19:                                # %if.then.30
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %ecx
	callq	gtk_drag_finish
	jmp	.LBB41_23
.LBB41_20:                              # %if.end.31
	xorl	%eax, %eax
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %ecx
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_drag_finish
	jmp	.LBB41_23
.LBB41_21:                              # %if.end.32
                                        #   in Loop: Header=BB41_7 Depth=1
	jmp	.LBB41_22
.LBB41_22:                              # %for.inc
                                        #   in Loop: Header=BB41_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB41_7
.LBB41_23:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_dnd_data_drop_handle, .Lfunc_end41-gimp_dnd_data_drop_handle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_uri_list_data,@function
gimp_dnd_get_uri_list_data:             # @gimp_dnd_get_uri_list_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rcx
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB42_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_uri_list_data, %rsi
	movl	$1096, %edx             # imm = 0x448
	movabsq	$.L.str.126, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB42_3:                               # %if.end
	jmp	.LBB42_4
.LBB42_4:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB42_6
# BB#5:                                 # %if.then.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_selection_data_set_uri_list
	movabsq	$g_free, %rsi
	movq	-48(%rbp), %rdi
	callq	g_list_free_full
.LBB42_6:                               # %if.end.3
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_dnd_get_uri_list_data, .Lfunc_end42-gimp_dnd_get_uri_list_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_uri_list_data,@function
gimp_dnd_set_uri_list_data:             # @gimp_dnd_set_uri_list_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_selection_data_get_uri_list
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB43_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_uri_list_data, %rsi
	movl	$1116, %edx             # imm = 0x45C
	movabsq	$.L.str.126, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB43_3:                               # %if.end
	jmp	.LBB43_4
.LBB43_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB43_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	*%rax
	movabsq	$g_free, %rsi
	movq	-56(%rbp), %rdi
	callq	g_list_free_full
	movl	$1, -4(%rbp)
.LBB43_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_dnd_set_uri_list_data, .Lfunc_end43-gimp_dnd_set_uri_list_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI44_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_dnd_get_viewable_icon,@function
gimp_dnd_get_viewable_icon:             # @gimp_dnd_get_viewable_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
.Ltmp135:
	.cfi_offset %rbx, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
	leaq	-80(%rbp), %rax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	callq	*%rcx
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB44_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_viewable_icon, %rsi
	movl	$1818, %edx             # imm = 0x71A
	movabsq	$.L.str.127, %rcx
	movq	-72(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB44_3:                               # %if.end
	jmp	.LBB44_4
.LBB44_4:                               # %do.end
	cmpq	$0, -72(%rbp)
	jne	.LBB44_6
# BB#5:                                 # %if.then.2
	movq	$0, -32(%rbp)
	jmp	.LBB44_9
.LBB44_6:                               # %if.end.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_object_ref
	movabsq	$.L.str.128, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movl	$48, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_view_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB44_8
# BB#7:                                 # %if.then.9
	xorl	%edi, %edi
	movl	$3, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_label_get_type
	movabsq	$.L.str.129, %rsi
	movabsq	$.L.str.130, %rcx
	movl	$3, %r8d
	movabsq	$.L.str.131, %r9
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.132, %rdi
	movsd	.LCPI44_0, %xmm1        # xmm1 = mem[0],zero
	movabsq	$.L.str.133, %r10
	movl	$30, %edx
	movabsq	$.L.str.134, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-96(%rbp), %r15
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$30, 16(%rsp)
	movq	%r11, 24(%rsp)
	movl	$3, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$2, %al
	movq	%r14, -168(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -112(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%ebx, %ebx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%ebx, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB44_9
.LBB44_8:                               # %if.end.19
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB44_9:                               # %return
	movq	-32(%rbp), %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_dnd_get_viewable_icon, .Lfunc_end44-gimp_dnd_get_viewable_icon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_xds_data,@function
gimp_dnd_get_xds_data:                  # @gimp_dnd_get_xds_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB45_2:                               # %if.end
	jmp	.LBB45_3
.LBB45_3:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB45_5
# BB#4:                                 # %if.then.4
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_xds_data, %rsi
	movl	$1208, %edx             # imm = 0x4B8
	movabsq	$.L.str.20, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB45_5:                               # %if.end.5
	jmp	.LBB45_6
.LBB45_6:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB45_8
# BB#7:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_dnd_xds_save_image
.LBB45_8:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_dnd_get_xds_data, .Lfunc_end45-gimp_dnd_get_xds_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_color_icon,@function
gimp_dnd_get_color_icon:                # @gimp_dnd_get_color_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-72(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	*%rcx
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB46_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_color_icon, %rsi
	movl	$1329, %edx             # imm = 0x531
	movabsq	$.L.str.135, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB46_3:                               # %if.end
	jmp	.LBB46_4
.LBB46_4:                               # %do.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$32, %esi
	leaq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_memdup
	movabsq	$.L.str.136, %rsi
	movabsq	$g_free, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	leaq	-72(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	gimp_color_area_new
	movl	$48, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	%edx, %esi
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_dnd_get_color_icon, .Lfunc_end46-gimp_dnd_get_color_icon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_color_data,@function
gimp_dnd_get_color_data:                # @gimp_dnd_get_color_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.136, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -80(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB47_3
.LBB47_2:                               # %if.else
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	*%rax
.LBB47_3:                               # %if.end
	jmp	.LBB47_4
.LBB47_4:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_color_data, %rsi
	movl	$1359, %edx             # imm = 0x54F
	movabsq	$.L.str.135, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB47_6:                               # %if.end.4
	jmp	.LBB47_7
.LBB47_7:                               # %do.end
	leaq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_selection_data_set_color
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_dnd_get_color_data, .Lfunc_end47-gimp_dnd_get_color_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_color_data,@function
gimp_dnd_set_color_data:                # @gimp_dnd_set_color_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB48_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_color_data, %rsi
	movl	$1374, %edx             # imm = 0x55E
	movabsq	$.L.str.135, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB48_3:                               # %if.end
	jmp	.LBB48_4
.LBB48_4:                               # %do.end
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	gimp_selection_data_get_color
	cmpl	$0, %eax
	jne	.LBB48_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.end.3
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %r8
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB48_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_dnd_set_color_data, .Lfunc_end48-gimp_dnd_set_color_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_stream_data,@function
gimp_dnd_get_stream_data:               # @gimp_dnd_get_stream_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	%rax, %rsi
	callq	*%rcx
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB49_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_stream_data, %rsi
	movl	$1443, %edx             # imm = 0x5A3
	movabsq	$.L.str.137, %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB49_3:                               # %if.end
	jmp	.LBB49_4
.LBB49_4:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB49_6
# BB#5:                                 # %if.then.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_selection_data_set_stream
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB49_6:                               # %if.end.3
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_dnd_get_stream_data, .Lfunc_end49-gimp_dnd_get_stream_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_stream_data,@function
gimp_dnd_set_stream_data:               # @gimp_dnd_set_stream_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_selection_data_get_stream
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB50_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_stream_data, %rsi
	movl	$1465, %edx             # imm = 0x5B9
	movabsq	$.L.str.137, %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movb	$0, %al
	callq	gimp_log
.LBB50_3:                               # %if.end
	jmp	.LBB50_4
.LBB50_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB50_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB50_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_dnd_set_stream_data, .Lfunc_end50-gimp_dnd_set_stream_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_pixbuf_data,@function
gimp_dnd_get_pixbuf_data:               # @gimp_dnd_get_pixbuf_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rcx
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB51_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_pixbuf_data, %rsi
	movl	$1542, %edx             # imm = 0x606
	movabsq	$.L.str.138, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB51_3:                               # %if.end
	jmp	.LBB51_4
.LBB51_4:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB51_6
# BB#5:                                 # %if.then.2
	movq	the_dnd_gimp, %rdi
	callq	gimp_set_busy
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_selection_data_set_pixbuf
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	the_dnd_gimp, %rdi
	callq	gimp_unset_busy
.LBB51_6:                               # %if.end.4
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_dnd_get_pixbuf_data, .Lfunc_end51-gimp_dnd_get_pixbuf_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_pixbuf_data,@function
gimp_dnd_set_pixbuf_data:               # @gimp_dnd_set_pixbuf_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	the_dnd_gimp, %rdi
	callq	gimp_set_busy
	movq	-48(%rbp), %rdi
	callq	gtk_selection_data_get_pixbuf
	movq	%rax, -56(%rbp)
	movq	the_dnd_gimp, %rdi
	callq	gimp_unset_busy
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB52_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_pixbuf_data, %rsi
	movl	$1571, %edx             # imm = 0x623
	movabsq	$.L.str.138, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB52_3:                               # %if.end
	jmp	.LBB52_4
.LBB52_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB52_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB52_7
.LBB52_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	*%rax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
.LBB52_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_dnd_set_pixbuf_data, .Lfunc_end52-gimp_dnd_set_pixbuf_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_image_data,@function
gimp_dnd_get_image_data:                # @gimp_dnd_get_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB53_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB53_2:                               # %if.end
	jmp	.LBB53_3
.LBB53_3:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB53_5
# BB#4:                                 # %if.then.4
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_image_data, %rsi
	movl	$2105, %edx             # imm = 0x839
	movabsq	$.L.str.20, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB53_5:                               # %if.end.5
	jmp	.LBB53_6
.LBB53_6:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB53_8
# BB#7:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_selection_data_set_image
.LBB53_8:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_dnd_get_image_data, .Lfunc_end53-gimp_dnd_get_image_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_image_data,@function
gimp_dnd_set_image_data:                # @gimp_dnd_set_image_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_image
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB54_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_image_data, %rsi
	movl	$2121, %edx             # imm = 0x849
	movabsq	$.L.str.20, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB54_3:                               # %if.end
	jmp	.LBB54_4
.LBB54_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB54_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB54_7
.LBB54_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB54_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_dnd_set_image_data, .Lfunc_end54-gimp_dnd_set_image_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_component_icon,@function
gimp_dnd_get_component_icon:            # @gimp_dnd_get_component_icon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-64(%rbp), %rax
	leaq	-68(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB55_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_component_icon, %rsi
	movl	$1687, %edx             # imm = 0x697
	movabsq	$.L.str.139, %rcx
	movq	-56(%rbp), %r8
	movl	-68(%rbp), %r9d
	movb	$0, %al
	callq	gimp_log
.LBB55_3:                               # %if.end
	jmp	.LBB55_4
.LBB55_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB55_6
# BB#5:                                 # %if.then.2
	movq	$0, -8(%rbp)
	jmp	.LBB55_7
.LBB55_6:                               # %if.end.3
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_object_ref
	movabsq	$.L.str.128, %rsi
	movabsq	$g_object_unref, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.140, %rsi
	movl	-68(%rbp), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$48, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_new
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_image_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 152(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB55_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_dnd_get_component_icon, .Lfunc_end55-gimp_dnd_get_component_icon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_component_data,@function
gimp_dnd_get_component_data:            # @gimp_dnd_get_component_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.140, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %r10d
	movl	%r10d, -60(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB56_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	leaq	-60(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB56_2:                               # %if.end
	jmp	.LBB56_3
.LBB56_3:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB56_5
# BB#4:                                 # %if.then.6
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_component_data, %rsi
	movl	$1726, %edx             # imm = 0x6BE
	movabsq	$.L.str.139, %rcx
	movq	-48(%rbp), %r8
	movl	-60(%rbp), %r9d
	movb	$0, %al
	callq	gimp_log
.LBB56_5:                               # %if.end.7
	jmp	.LBB56_6
.LBB56_6:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB56_8
# BB#7:                                 # %if.then.9
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-60(%rbp), %edx
	callq	gimp_selection_data_set_component
.LBB56_8:                               # %if.end.10
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_dnd_get_component_data, .Lfunc_end56-gimp_dnd_get_component_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_component_data,@function
gimp_dnd_set_component_data:            # @gimp_dnd_set_component_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	-60(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	movq	%rax, %rdx
	callq	gimp_selection_data_get_component
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB57_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_component_data, %rsi
	movl	$1746, %edx             # imm = 0x6D2
	movabsq	$.L.str.139, %rcx
	movq	-56(%rbp), %r8
	movl	-60(%rbp), %r9d
	movb	$0, %al
	callq	gimp_log
.LBB57_3:                               # %if.end
	jmp	.LBB57_4
.LBB57_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB57_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB57_7
.LBB57_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movl	-60(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB57_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_dnd_set_component_data, .Lfunc_end57-gimp_dnd_set_component_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_item_data,@function
gimp_dnd_get_item_data:                 # @gimp_dnd_get_item_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB58_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB58_2:                               # %if.end
	jmp	.LBB58_3
.LBB58_3:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB58_5
# BB#4:                                 # %if.then.4
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_item_data, %rsi
	movl	$2155, %edx             # imm = 0x86B
	movabsq	$.L.str.141, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB58_5:                               # %if.end.5
	jmp	.LBB58_6
.LBB58_6:                               # %do.end
	cmpq	$0, -48(%rbp)
	je	.LBB58_8
# BB#7:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_selection_data_set_item
.LBB58_8:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_dnd_get_item_data, .Lfunc_end58-gimp_dnd_get_item_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_item_data,@function
gimp_dnd_set_item_data:                 # @gimp_dnd_set_item_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_item
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB59_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_item_data, %rsi
	movl	$2171, %edx             # imm = 0x87B
	movabsq	$.L.str.141, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB59_3:                               # %if.end
	jmp	.LBB59_4
.LBB59_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB59_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB59_7
.LBB59_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB59_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_dnd_set_item_data, .Lfunc_end59-gimp_dnd_set_item_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_get_object_data,@function
gimp_dnd_get_object_data:               # @gimp_dnd_get_object_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.128, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB60_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movq	%rax, -48(%rbp)
.LBB60_2:                               # %if.end
	jmp	.LBB60_3
.LBB60_3:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB60_5
# BB#4:                                 # %if.then.4
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_get_object_data, %rsi
	movl	$2205, %edx             # imm = 0x89D
	movabsq	$.L.str.142, %rcx
	movq	-48(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB60_5:                               # %if.end.5
	jmp	.LBB60_6
.LBB60_6:                               # %do.end
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_object_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB60_8
# BB#7:                                 # %if.then.8
	movl	$0, -76(%rbp)
	jmp	.LBB60_13
.LBB60_8:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB60_11
# BB#9:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB60_11
# BB#10:                                # %if.then.11
	movl	$1, -76(%rbp)
	jmp	.LBB60_12
.LBB60_11:                              # %if.else.12
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB60_12:                              # %if.end.14
	jmp	.LBB60_13
.LBB60_13:                              # %if.end.15
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB60_15
# BB#14:                                # %if.then.17
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_selection_data_set_object
.LBB60_15:                              # %if.end.18
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_dnd_get_object_data, .Lfunc_end60-gimp_dnd_get_object_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_brush_data,@function
gimp_dnd_set_brush_data:                # @gimp_dnd_set_brush_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_brush
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB61_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_brush_data, %rsi
	movl	$2226, %edx             # imm = 0x8B2
	movabsq	$.L.str.143, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB61_3:                               # %if.end
	jmp	.LBB61_4
.LBB61_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB61_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB61_7
.LBB61_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB61_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_dnd_set_brush_data, .Lfunc_end61-gimp_dnd_set_brush_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_pattern_data,@function
gimp_dnd_set_pattern_data:              # @gimp_dnd_set_pattern_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_pattern
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB62_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_pattern_data, %rsi
	movl	$2254, %edx             # imm = 0x8CE
	movabsq	$.L.str.144, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB62_3:                               # %if.end
	jmp	.LBB62_4
.LBB62_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB62_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB62_7
.LBB62_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB62_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_dnd_set_pattern_data, .Lfunc_end62-gimp_dnd_set_pattern_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_gradient_data,@function
gimp_dnd_set_gradient_data:             # @gimp_dnd_set_gradient_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_gradient
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB63_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_gradient_data, %rsi
	movl	$2282, %edx             # imm = 0x8EA
	movabsq	$.L.str.145, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB63_3:                               # %if.end
	jmp	.LBB63_4
.LBB63_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB63_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB63_7
.LBB63_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB63_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_dnd_set_gradient_data, .Lfunc_end63-gimp_dnd_set_gradient_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_palette_data,@function
gimp_dnd_set_palette_data:              # @gimp_dnd_set_palette_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_palette
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB64_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_palette_data, %rsi
	movl	$2310, %edx             # imm = 0x906
	movabsq	$.L.str.146, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB64_3:                               # %if.end
	jmp	.LBB64_4
.LBB64_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB64_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB64_7
.LBB64_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB64_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_dnd_set_palette_data, .Lfunc_end64-gimp_dnd_set_palette_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_font_data,@function
gimp_dnd_set_font_data:                 # @gimp_dnd_set_font_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_font
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB65_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_font_data, %rsi
	movl	$2337, %edx             # imm = 0x921
	movabsq	$.L.str.147, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB65_3:                               # %if.end
	jmp	.LBB65_4
.LBB65_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB65_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB65_7
.LBB65_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB65_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_dnd_set_font_data, .Lfunc_end65-gimp_dnd_set_font_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_buffer_data,@function
gimp_dnd_set_buffer_data:               # @gimp_dnd_set_buffer_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_buffer
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB66_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_buffer_data, %rsi
	movl	$2364, %edx             # imm = 0x93C
	movabsq	$.L.str.148, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB66_3:                               # %if.end
	jmp	.LBB66_4
.LBB66_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB66_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB66_7
.LBB66_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB66_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_dnd_set_buffer_data, .Lfunc_end66-gimp_dnd_set_buffer_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_imagefile_data,@function
gimp_dnd_set_imagefile_data:            # @gimp_dnd_set_imagefile_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_imagefile
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB67_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_imagefile_data, %rsi
	movl	$2392, %edx             # imm = 0x958
	movabsq	$.L.str.149, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB67_3:                               # %if.end
	jmp	.LBB67_4
.LBB67_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB67_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB67_7
.LBB67_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB67_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_dnd_set_imagefile_data, .Lfunc_end67-gimp_dnd_set_imagefile_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_template_data,@function
gimp_dnd_set_template_data:             # @gimp_dnd_set_template_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_template
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB68_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_template_data, %rsi
	movl	$2420, %edx             # imm = 0x974
	movabsq	$.L.str.150, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB68_3:                               # %if.end
	jmp	.LBB68_4
.LBB68_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB68_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB68_7
.LBB68_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB68_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_dnd_set_template_data, .Lfunc_end68-gimp_dnd_set_template_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dnd_set_tool_info_data,@function
gimp_dnd_set_tool_info_data:            # @gimp_dnd_set_tool_info_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	the_dnd_gimp, %rsi
	callq	gimp_selection_data_get_tool_info
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movl	gimp_log_flags, %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB69_3
# BB#2:                                 # %if.then
	movl	$4, %edi
	movabsq	$.L__func__.gimp_dnd_set_tool_info_data, %rsi
	movl	$2448, %edx             # imm = 0x990
	movabsq	$.L.str.151, %rcx
	movq	-56(%rbp), %r8
	movb	$0, %al
	callq	gimp_log
.LBB69_3:                               # %if.end
	jmp	.LBB69_4
.LBB69_4:                               # %do.end
	cmpq	$0, -56(%rbp)
	jne	.LBB69_6
# BB#5:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB69_7
.LBB69_6:                               # %if.end.3
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movl	$1, -4(%rbp)
.LBB69_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	gimp_dnd_set_tool_info_data, .Lfunc_end69-gimp_dnd_set_tool_info_data
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_dnd_init,@object # @__func__.gimp_dnd_init
.L__func__.gimp_dnd_init:
	.asciz	"gimp_dnd_init"
	.size	.L__func__.gimp_dnd_init, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	the_dnd_gimp,@object    # @the_dnd_gimp
	.local	the_dnd_gimp
	.comm	the_dnd_gimp,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"the_dnd_gimp == NULL"
	.size	.L.str.2, 21

	.type	.L__func__.gimp_dnd_uri_list_source_add,@object # @__func__.gimp_dnd_uri_list_source_add
.L__func__.gimp_dnd_uri_list_source_add:
	.asciz	"gimp_dnd_uri_list_source_add"
	.size	.L__func__.gimp_dnd_uri_list_source_add, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.3, 23

	.type	.L__func__.gimp_dnd_uri_list_source_remove,@object # @__func__.gimp_dnd_uri_list_source_remove
.L__func__.gimp_dnd_uri_list_source_remove:
	.asciz	"gimp_dnd_uri_list_source_remove"
	.size	.L__func__.gimp_dnd_uri_list_source_remove, 32

	.type	.L__func__.gimp_dnd_uri_list_dest_add,@object # @__func__.gimp_dnd_uri_list_dest_add
.L__func__.gimp_dnd_uri_list_dest_add:
	.asciz	"gimp_dnd_uri_list_dest_add"
	.size	.L__func__.gimp_dnd_uri_list_dest_add, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-drag-dest"
	.size	.L.str.4, 14

	.type	.L__func__.gimp_dnd_uri_list_dest_remove,@object # @__func__.gimp_dnd_uri_list_dest_remove
.L__func__.gimp_dnd_uri_list_dest_remove:
	.asciz	"gimp_dnd_uri_list_dest_remove"
	.size	.L__func__.gimp_dnd_uri_list_dest_remove, 30

	.type	.L__func__.gimp_dnd_xds_source_add,@object # @__func__.gimp_dnd_xds_source_add
.L__func__.gimp_dnd_xds_source_add:
	.asciz	"gimp_dnd_xds_source_add"
	.size	.L__func__.gimp_dnd_xds_source_add, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-dnd-xds-drag-begin"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"drag-begin"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-dnd-xds-drag-end"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drag-end"
	.size	.L.str.8, 9

	.type	.L__func__.gimp_dnd_xds_source_remove,@object # @__func__.gimp_dnd_xds_source_remove
.L__func__.gimp_dnd_xds_source_remove:
	.asciz	"gimp_dnd_xds_source_remove"
	.size	.L__func__.gimp_dnd_xds_source_remove, 27

	.type	.L__func__.gimp_dnd_color_source_add,@object # @__func__.gimp_dnd_color_source_add
.L__func__.gimp_dnd_color_source_add:
	.asciz	"gimp_dnd_color_source_add"
	.size	.L__func__.gimp_dnd_color_source_add, 26

	.type	.L__func__.gimp_dnd_color_source_remove,@object # @__func__.gimp_dnd_color_source_remove
.L__func__.gimp_dnd_color_source_remove:
	.asciz	"gimp_dnd_color_source_remove"
	.size	.L__func__.gimp_dnd_color_source_remove, 29

	.type	.L__func__.gimp_dnd_color_dest_add,@object # @__func__.gimp_dnd_color_dest_add
.L__func__.gimp_dnd_color_dest_add:
	.asciz	"gimp_dnd_color_dest_add"
	.size	.L__func__.gimp_dnd_color_dest_add, 24

	.type	.L__func__.gimp_dnd_color_dest_remove,@object # @__func__.gimp_dnd_color_dest_remove
.L__func__.gimp_dnd_color_dest_remove:
	.asciz	"gimp_dnd_color_dest_remove"
	.size	.L__func__.gimp_dnd_color_dest_remove, 27

	.type	.L__func__.gimp_dnd_svg_source_add,@object # @__func__.gimp_dnd_svg_source_add
.L__func__.gimp_dnd_svg_source_add:
	.asciz	"gimp_dnd_svg_source_add"
	.size	.L__func__.gimp_dnd_svg_source_add, 24

	.type	.L__func__.gimp_dnd_svg_source_remove,@object # @__func__.gimp_dnd_svg_source_remove
.L__func__.gimp_dnd_svg_source_remove:
	.asciz	"gimp_dnd_svg_source_remove"
	.size	.L__func__.gimp_dnd_svg_source_remove, 27

	.type	.L__func__.gimp_dnd_svg_dest_add,@object # @__func__.gimp_dnd_svg_dest_add
.L__func__.gimp_dnd_svg_dest_add:
	.asciz	"gimp_dnd_svg_dest_add"
	.size	.L__func__.gimp_dnd_svg_dest_add, 22

	.type	.L__func__.gimp_dnd_svg_dest_remove,@object # @__func__.gimp_dnd_svg_dest_remove
.L__func__.gimp_dnd_svg_dest_remove:
	.asciz	"gimp_dnd_svg_dest_remove"
	.size	.L__func__.gimp_dnd_svg_dest_remove, 25

	.type	.L__func__.gimp_dnd_pixbuf_source_add,@object # @__func__.gimp_dnd_pixbuf_source_add
.L__func__.gimp_dnd_pixbuf_source_add:
	.asciz	"gimp_dnd_pixbuf_source_add"
	.size	.L__func__.gimp_dnd_pixbuf_source_add, 27

	.type	.L__func__.gimp_dnd_pixbuf_source_remove,@object # @__func__.gimp_dnd_pixbuf_source_remove
.L__func__.gimp_dnd_pixbuf_source_remove:
	.asciz	"gimp_dnd_pixbuf_source_remove"
	.size	.L__func__.gimp_dnd_pixbuf_source_remove, 30

	.type	.L__func__.gimp_dnd_pixbuf_dest_add,@object # @__func__.gimp_dnd_pixbuf_dest_add
.L__func__.gimp_dnd_pixbuf_dest_add:
	.asciz	"gimp_dnd_pixbuf_dest_add"
	.size	.L__func__.gimp_dnd_pixbuf_dest_add, 25

	.type	.L__func__.gimp_dnd_pixbuf_dest_remove,@object # @__func__.gimp_dnd_pixbuf_dest_remove
.L__func__.gimp_dnd_pixbuf_dest_remove:
	.asciz	"gimp_dnd_pixbuf_dest_remove"
	.size	.L__func__.gimp_dnd_pixbuf_dest_remove, 28

	.type	.L__func__.gimp_dnd_component_source_add,@object # @__func__.gimp_dnd_component_source_add
.L__func__.gimp_dnd_component_source_add:
	.asciz	"gimp_dnd_component_source_add"
	.size	.L__func__.gimp_dnd_component_source_add, 30

	.type	.L__func__.gimp_dnd_component_source_remove,@object # @__func__.gimp_dnd_component_source_remove
.L__func__.gimp_dnd_component_source_remove:
	.asciz	"gimp_dnd_component_source_remove"
	.size	.L__func__.gimp_dnd_component_source_remove, 33

	.type	.L__func__.gimp_dnd_component_dest_add,@object # @__func__.gimp_dnd_component_dest_add
.L__func__.gimp_dnd_component_dest_add:
	.asciz	"gimp_dnd_component_dest_add"
	.size	.L__func__.gimp_dnd_component_dest_add, 28

	.type	.L__func__.gimp_dnd_component_dest_remove,@object # @__func__.gimp_dnd_component_dest_remove
.L__func__.gimp_dnd_component_dest_remove:
	.asciz	"gimp_dnd_component_dest_remove"
	.size	.L__func__.gimp_dnd_component_dest_remove, 31

	.type	.L__func__.gimp_dnd_drag_source_set_by_type,@object # @__func__.gimp_dnd_drag_source_set_by_type
.L__func__.gimp_dnd_drag_source_set_by_type:
	.asciz	"gimp_dnd_drag_source_set_by_type"
	.size	.L__func__.gimp_dnd_drag_source_set_by_type, 33

	.type	dnd_data_defs,@object   # @dnd_data_defs
	.section	.rodata,"a",@progbits
	.align	16
dnd_data_defs:
	.quad	0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.21
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.quad	gimp_dnd_get_uri_list_data
	.quad	gimp_dnd_set_uri_list_data
	.quad	.L.str.26
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	gimp_dnd_set_uri_list_data
	.quad	.L.str.27
	.long	0                       # 0x0
	.long	3                       # 0x3
	.quad	0
	.quad	0
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	gimp_dnd_set_uri_list_data
	.quad	.L.str.28
	.long	0                       # 0x0
	.long	4                       # 0x4
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.quad	0
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_xds_data
	.quad	0
	.quad	.L.str.31
	.long	0                       # 0x0
	.long	5                       # 0x5
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	gimp_dnd_get_color_icon
	.quad	gimp_dnd_get_color_data
	.quad	gimp_dnd_set_color_data
	.quad	.L.str.36
	.long	0                       # 0x0
	.long	6                       # 0x6
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_stream_data
	.quad	gimp_dnd_set_stream_data
	.quad	.L.str.41
	.long	0                       # 0x0
	.long	7                       # 0x7
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_stream_data
	.quad	gimp_dnd_set_stream_data
	.quad	0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_pixbuf_data
	.quad	gimp_dnd_set_pixbuf_data
	.quad	.L.str.50
	.long	1                       # 0x1
	.long	9                       # 0x9
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_image_data
	.quad	gimp_dnd_set_image_data
	.quad	.L.str.55
	.long	1                       # 0x1
	.long	10                      # 0xa
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	gimp_dnd_get_component_icon
	.quad	gimp_dnd_get_component_data
	.quad	gimp_dnd_set_component_data
	.quad	.L.str.60
	.long	1                       # 0x1
	.long	11                      # 0xb
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_item_data
	.quad	gimp_dnd_set_item_data
	.quad	.L.str.65
	.long	1                       # 0x1
	.long	12                      # 0xc
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_item_data
	.quad	gimp_dnd_set_item_data
	.quad	.L.str.70
	.long	1                       # 0x1
	.long	13                      # 0xd
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_item_data
	.quad	gimp_dnd_set_item_data
	.quad	.L.str.75
	.long	1                       # 0x1
	.long	14                      # 0xe
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_item_data
	.quad	gimp_dnd_set_item_data
	.quad	.L.str.80
	.long	0                       # 0x0
	.long	15                      # 0xf
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_brush_data
	.quad	.L.str.85
	.long	0                       # 0x0
	.long	16                      # 0x10
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_pattern_data
	.quad	.L.str.90
	.long	0                       # 0x0
	.long	17                      # 0x11
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_gradient_data
	.quad	.L.str.95
	.long	0                       # 0x0
	.long	18                      # 0x12
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_palette_data
	.quad	.L.str.100
	.long	0                       # 0x0
	.long	19                      # 0x13
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_font_data
	.quad	.L.str.105
	.long	1                       # 0x1
	.long	20                      # 0x14
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_buffer_data
	.quad	.L.str.110
	.long	1                       # 0x1
	.long	21                      # 0x15
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_imagefile_data
	.quad	.L.str.115
	.long	1                       # 0x1
	.long	22                      # 0x16
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_template_data
	.quad	.L.str.120
	.long	1                       # 0x1
	.long	23                      # 0x17
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	gimp_dnd_get_viewable_icon
	.quad	gimp_dnd_get_object_data
	.quad	gimp_dnd_set_tool_info_data
	.quad	.L.str.125
	.long	1                       # 0x1
	.long	24                      # 0x18
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	dnd_data_defs, 1800

	.type	.L__func__.gimp_dnd_drag_dest_set_by_type,@object # @__func__.gimp_dnd_drag_dest_set_by_type
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.gimp_dnd_drag_dest_set_by_type:
	.asciz	"gimp_dnd_drag_dest_set_by_type"
	.size	.L__func__.gimp_dnd_drag_dest_set_by_type, 31

	.type	.L__func__.gimp_dnd_viewable_source_add,@object # @__func__.gimp_dnd_viewable_source_add
.L__func__.gimp_dnd_viewable_source_add:
	.asciz	"gimp_dnd_viewable_source_add"
	.size	.L__func__.gimp_dnd_viewable_source_add, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"get_viewable_func != NULL"
	.size	.L.str.9, 26

	.type	.L__func__.gimp_dnd_viewable_source_remove,@object # @__func__.gimp_dnd_viewable_source_remove
.L__func__.gimp_dnd_viewable_source_remove:
	.asciz	"gimp_dnd_viewable_source_remove"
	.size	.L__func__.gimp_dnd_viewable_source_remove, 32

	.type	.L__func__.gimp_dnd_viewable_dest_add,@object # @__func__.gimp_dnd_viewable_dest_add
.L__func__.gimp_dnd_viewable_dest_add:
	.asciz	"gimp_dnd_viewable_dest_add"
	.size	.L__func__.gimp_dnd_viewable_dest_add, 27

	.type	.L__func__.gimp_dnd_viewable_dest_remove,@object # @__func__.gimp_dnd_viewable_dest_remove
.L__func__.gimp_dnd_viewable_dest_remove:
	.asciz	"gimp_dnd_viewable_dest_remove"
	.size	.L__func__.gimp_dnd_viewable_dest_remove, 30

	.type	.L__func__.gimp_dnd_get_drag_data,@object # @__func__.gimp_dnd_get_drag_data
.L__func__.gimp_dnd_get_drag_data:
	.asciz	"gimp_dnd_get_drag_data"
	.size	.L__func__.gimp_dnd_get_drag_data, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-dnd-get-data-type"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-site-data"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-dnd-drag-connected"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"drag-data-get"
	.size	.L.str.13, 14

	.type	.L__func__.gimp_dnd_data_drag_begin,@object # @__func__.gimp_dnd_data_drag_begin
.L__func__.gimp_dnd_data_drag_begin:
	.asciz	"gimp_dnd_data_drag_begin"
	.size	.L__func__.gimp_dnd_data_drag_begin, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"data type %d"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-dnd-data-widget"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-gdk-drag-context"
	.size	.L.str.16, 22

	.type	.L__func__.gimp_dnd_data_drag_end,@object # @__func__.gimp_dnd_data_drag_end
.L__func__.gimp_dnd_data_drag_end:
	.asciz	"gimp_dnd_data_drag_end"
	.size	.L__func__.gimp_dnd_data_drag_end, 23

	.type	.L__func__.gimp_dnd_data_drag_handle,@object # @__func__.gimp_dnd_data_drag_handle
.L__func__.gimp_dnd_data_drag_handle:
	.asciz	"gimp_dnd_data_drag_handle"
	.size	.L__func__.gimp_dnd_data_drag_handle, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"target %s"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-dnd-drop-connected"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"drag-data-received"
	.size	.L.str.19, 19

	.type	.L__func__.gimp_dnd_data_drop_handle,@object # @__func__.gimp_dnd_data_drop_handle
.L__func__.gimp_dnd_data_drop_handle:
	.asciz	"gimp_dnd_data_drop_handle"
	.size	.L__func__.gimp_dnd_data_drop_handle, 26

	.type	.L__func__.gimp_dnd_xds_drag_begin,@object # @__func__.gimp_dnd_xds_drag_begin
.L__func__.gimp_dnd_xds_drag_begin:
	.asciz	"gimp_dnd_xds_drag_begin"
	.size	.L__func__.gimp_dnd_xds_drag_begin, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image %p"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"text/uri-list"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-dnd-get-uri-list-func"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-dnd-get-uri-list-data"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-dnd-set-uri-list-func"
	.size	.L.str.24, 27

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-dnd-set-uri-list-data"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"text/plain"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_NETSCAPE_URL"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"XdndDirectSave0"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-dnd-get-xds-func"
	.size	.L.str.29, 22

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-dnd-get-xds-data"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"application/x-color"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-dnd-get-color-func"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-dnd-get-color-data"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-dnd-set-color-func"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-dnd-set-color-data"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"image/svg"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-dnd-get-svg-func"
	.size	.L.str.37, 22

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-dnd-get-svg-data"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-dnd-set-svg-func"
	.size	.L.str.39, 22

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-dnd-set-svg-data"
	.size	.L.str.40, 22

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"image/svg+xml"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-dnd-get-svg-xml-func"
	.size	.L.str.42, 26

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-dnd-get-svg-xml-data"
	.size	.L.str.43, 26

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-dnd-set-svg-xml-func"
	.size	.L.str.44, 26

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-dnd-set-svg-xml-data"
	.size	.L.str.45, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-dnd-get-pixbuf-func"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-dnd-get-pixbuf-data"
	.size	.L.str.47, 25

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-dnd-set-pixbuf-func"
	.size	.L.str.48, 25

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-dnd-set-pixbuf-data"
	.size	.L.str.49, 25

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"application/x-gimp-image-id"
	.size	.L.str.50, 28

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-dnd-get-image-func"
	.size	.L.str.51, 24

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-dnd-get-image-data"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-dnd-set-image-func"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-dnd-set-image-data"
	.size	.L.str.54, 24

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"application/x-gimp-component"
	.size	.L.str.55, 29

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-dnd-get-component-func"
	.size	.L.str.56, 28

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-dnd-get-component-data"
	.size	.L.str.57, 28

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-dnd-set-component-func"
	.size	.L.str.58, 28

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-dnd-set-component-data"
	.size	.L.str.59, 28

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"application/x-gimp-layer-id"
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-dnd-get-layer-func"
	.size	.L.str.61, 24

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-dnd-get-layer-data"
	.size	.L.str.62, 24

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-dnd-set-layer-func"
	.size	.L.str.63, 24

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-dnd-set-layer-data"
	.size	.L.str.64, 24

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"application/x-gimp-channel-id"
	.size	.L.str.65, 30

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-dnd-get-channel-func"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-dnd-get-channel-data"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-dnd-set-channel-func"
	.size	.L.str.68, 26

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-dnd-set-channel-data"
	.size	.L.str.69, 26

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"application/x-gimp-layer-mask-id"
	.size	.L.str.70, 33

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-dnd-get-layer-mask-func"
	.size	.L.str.71, 29

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-dnd-get-layer-mask-data"
	.size	.L.str.72, 29

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-dnd-set-layer-mask-func"
	.size	.L.str.73, 29

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-dnd-set-layer-mask-data"
	.size	.L.str.74, 29

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"application/x-gimp-vectors-id"
	.size	.L.str.75, 30

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp-dnd-get-vectors-func"
	.size	.L.str.76, 26

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-dnd-get-vectors-data"
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-dnd-set-vectors-func"
	.size	.L.str.78, 26

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-dnd-set-vectors-data"
	.size	.L.str.79, 26

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"application/x-gimp-brush-name"
	.size	.L.str.80, 30

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-dnd-get-brush-func"
	.size	.L.str.81, 24

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-dnd-get-brush-data"
	.size	.L.str.82, 24

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"gimp-dnd-set-brush-func"
	.size	.L.str.83, 24

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp-dnd-set-brush-data"
	.size	.L.str.84, 24

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"application/x-gimp-pattern-name"
	.size	.L.str.85, 32

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"gimp-dnd-get-pattern-func"
	.size	.L.str.86, 26

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"gimp-dnd-get-pattern-data"
	.size	.L.str.87, 26

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gimp-dnd-set-pattern-func"
	.size	.L.str.88, 26

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"gimp-dnd-set-pattern-data"
	.size	.L.str.89, 26

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"application/x-gimp-gradient-name"
	.size	.L.str.90, 33

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gimp-dnd-get-gradient-func"
	.size	.L.str.91, 27

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gimp-dnd-get-gradient-data"
	.size	.L.str.92, 27

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"gimp-dnd-set-gradient-func"
	.size	.L.str.93, 27

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-dnd-set-gradient-data"
	.size	.L.str.94, 27

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"application/x-gimp-palette-name"
	.size	.L.str.95, 32

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gimp-dnd-get-palette-func"
	.size	.L.str.96, 26

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"gimp-dnd-get-palette-data"
	.size	.L.str.97, 26

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"gimp-dnd-set-palette-func"
	.size	.L.str.98, 26

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"gimp-dnd-set-palette-data"
	.size	.L.str.99, 26

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"application/x-gimp-font-name"
	.size	.L.str.100, 29

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"gimp-dnd-get-font-func"
	.size	.L.str.101, 23

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"gimp-dnd-get-font-data"
	.size	.L.str.102, 23

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"gimp-dnd-set-font-func"
	.size	.L.str.103, 23

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gimp-dnd-set-font-data"
	.size	.L.str.104, 23

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"application/x-gimp-buffer-name"
	.size	.L.str.105, 31

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"gimp-dnd-get-buffer-func"
	.size	.L.str.106, 25

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"gimp-dnd-get-buffer-data"
	.size	.L.str.107, 25

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gimp-dnd-set-buffer-func"
	.size	.L.str.108, 25

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"gimp-dnd-set-buffer-data"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"application/x-gimp-imagefile-name"
	.size	.L.str.110, 34

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gimp-dnd-get-imagefile-func"
	.size	.L.str.111, 28

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gimp-dnd-get-imagefile-data"
	.size	.L.str.112, 28

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"gimp-dnd-set-imagefile-func"
	.size	.L.str.113, 28

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"gimp-dnd-set-imagefile-data"
	.size	.L.str.114, 28

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"application/x-gimp-template-name"
	.size	.L.str.115, 33

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gimp-dnd-get-template-func"
	.size	.L.str.116, 27

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"gimp-dnd-get-template-data"
	.size	.L.str.117, 27

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"gimp-dnd-set-template-func"
	.size	.L.str.118, 27

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"gimp-dnd-set-template-data"
	.size	.L.str.119, 27

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"application/x-gimp-tool-info-name"
	.size	.L.str.120, 34

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"gimp-dnd-get-tool-info-func"
	.size	.L.str.121, 28

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"gimp-dnd-get-tool-info-data"
	.size	.L.str.122, 28

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"gimp-dnd-set-tool-info-func"
	.size	.L.str.123, 28

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gimp-dnd-set-tool-info-data"
	.size	.L.str.124, 28

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"application/x-gimp-dialog"
	.size	.L.str.125, 26

	.type	.L__func__.gimp_dnd_get_uri_list_data,@object # @__func__.gimp_dnd_get_uri_list_data
.L__func__.gimp_dnd_get_uri_list_data:
	.asciz	"gimp_dnd_get_uri_list_data"
	.size	.L__func__.gimp_dnd_get_uri_list_data, 27

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"uri_list %p"
	.size	.L.str.126, 12

	.type	.L__func__.gimp_dnd_set_uri_list_data,@object # @__func__.gimp_dnd_set_uri_list_data
.L__func__.gimp_dnd_set_uri_list_data:
	.asciz	"gimp_dnd_set_uri_list_data"
	.size	.L__func__.gimp_dnd_set_uri_list_data, 27

	.type	.L__func__.gimp_dnd_get_viewable_icon,@object # @__func__.gimp_dnd_get_viewable_icon
.L__func__.gimp_dnd_get_viewable_icon:
	.asciz	"gimp_dnd_get_viewable_icon"
	.size	.L__func__.gimp_dnd_get_viewable_icon, 27

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"viewable %p"
	.size	.L.str.127, 12

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gimp-dnd-viewable"
	.size	.L.str.128, 18

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"label"
	.size	.L.str.129, 6

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"xpad"
	.size	.L.str.130, 5

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"xalign"
	.size	.L.str.131, 7

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"yalign"
	.size	.L.str.132, 7

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"max-width-chars"
	.size	.L.str.133, 16

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"ellipsize"
	.size	.L.str.134, 10

	.type	.L__func__.gimp_dnd_get_xds_data,@object # @__func__.gimp_dnd_get_xds_data
.L__func__.gimp_dnd_get_xds_data:
	.asciz	"gimp_dnd_get_xds_data"
	.size	.L__func__.gimp_dnd_get_xds_data, 22

	.type	.L__func__.gimp_dnd_get_color_icon,@object # @__func__.gimp_dnd_get_color_icon
.L__func__.gimp_dnd_get_color_icon:
	.asciz	"gimp_dnd_get_color_icon"
	.size	.L__func__.gimp_dnd_get_color_icon, 24

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"called"
	.size	.L.str.135, 7

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gimp-dnd-color"
	.size	.L.str.136, 15

	.type	.L__func__.gimp_dnd_get_color_data,@object # @__func__.gimp_dnd_get_color_data
.L__func__.gimp_dnd_get_color_data:
	.asciz	"gimp_dnd_get_color_data"
	.size	.L__func__.gimp_dnd_get_color_data, 24

	.type	.L__func__.gimp_dnd_set_color_data,@object # @__func__.gimp_dnd_set_color_data
.L__func__.gimp_dnd_set_color_data:
	.asciz	"gimp_dnd_set_color_data"
	.size	.L__func__.gimp_dnd_set_color_data, 24

	.type	.L__func__.gimp_dnd_get_stream_data,@object # @__func__.gimp_dnd_get_stream_data
.L__func__.gimp_dnd_get_stream_data:
	.asciz	"gimp_dnd_get_stream_data"
	.size	.L__func__.gimp_dnd_get_stream_data, 25

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"stream %p, length %d"
	.size	.L.str.137, 21

	.type	.L__func__.gimp_dnd_set_stream_data,@object # @__func__.gimp_dnd_set_stream_data
.L__func__.gimp_dnd_set_stream_data:
	.asciz	"gimp_dnd_set_stream_data"
	.size	.L__func__.gimp_dnd_set_stream_data, 25

	.type	.L__func__.gimp_dnd_get_pixbuf_data,@object # @__func__.gimp_dnd_get_pixbuf_data
.L__func__.gimp_dnd_get_pixbuf_data:
	.asciz	"gimp_dnd_get_pixbuf_data"
	.size	.L__func__.gimp_dnd_get_pixbuf_data, 25

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"pixbuf %p"
	.size	.L.str.138, 10

	.type	.L__func__.gimp_dnd_set_pixbuf_data,@object # @__func__.gimp_dnd_set_pixbuf_data
.L__func__.gimp_dnd_set_pixbuf_data:
	.asciz	"gimp_dnd_set_pixbuf_data"
	.size	.L__func__.gimp_dnd_set_pixbuf_data, 25

	.type	.L__func__.gimp_dnd_get_image_data,@object # @__func__.gimp_dnd_get_image_data
.L__func__.gimp_dnd_get_image_data:
	.asciz	"gimp_dnd_get_image_data"
	.size	.L__func__.gimp_dnd_get_image_data, 24

	.type	.L__func__.gimp_dnd_set_image_data,@object # @__func__.gimp_dnd_set_image_data
.L__func__.gimp_dnd_set_image_data:
	.asciz	"gimp_dnd_set_image_data"
	.size	.L__func__.gimp_dnd_set_image_data, 24

	.type	.L__func__.gimp_dnd_get_component_icon,@object # @__func__.gimp_dnd_get_component_icon
.L__func__.gimp_dnd_get_component_icon:
	.asciz	"gimp_dnd_get_component_icon"
	.size	.L__func__.gimp_dnd_get_component_icon, 28

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"image %p, component %d"
	.size	.L.str.139, 23

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gimp-dnd-component"
	.size	.L.str.140, 19

	.type	.L__func__.gimp_dnd_get_component_data,@object # @__func__.gimp_dnd_get_component_data
.L__func__.gimp_dnd_get_component_data:
	.asciz	"gimp_dnd_get_component_data"
	.size	.L__func__.gimp_dnd_get_component_data, 28

	.type	.L__func__.gimp_dnd_set_component_data,@object # @__func__.gimp_dnd_set_component_data
.L__func__.gimp_dnd_set_component_data:
	.asciz	"gimp_dnd_set_component_data"
	.size	.L__func__.gimp_dnd_set_component_data, 28

	.type	.L__func__.gimp_dnd_get_item_data,@object # @__func__.gimp_dnd_get_item_data
.L__func__.gimp_dnd_get_item_data:
	.asciz	"gimp_dnd_get_item_data"
	.size	.L__func__.gimp_dnd_get_item_data, 23

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"item %p"
	.size	.L.str.141, 8

	.type	.L__func__.gimp_dnd_set_item_data,@object # @__func__.gimp_dnd_set_item_data
.L__func__.gimp_dnd_set_item_data:
	.asciz	"gimp_dnd_set_item_data"
	.size	.L__func__.gimp_dnd_set_item_data, 23

	.type	.L__func__.gimp_dnd_get_object_data,@object # @__func__.gimp_dnd_get_object_data
.L__func__.gimp_dnd_get_object_data:
	.asciz	"gimp_dnd_get_object_data"
	.size	.L__func__.gimp_dnd_get_object_data, 25

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"object %p"
	.size	.L.str.142, 10

	.type	.L__func__.gimp_dnd_set_brush_data,@object # @__func__.gimp_dnd_set_brush_data
.L__func__.gimp_dnd_set_brush_data:
	.asciz	"gimp_dnd_set_brush_data"
	.size	.L__func__.gimp_dnd_set_brush_data, 24

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"brush %p"
	.size	.L.str.143, 9

	.type	.L__func__.gimp_dnd_set_pattern_data,@object # @__func__.gimp_dnd_set_pattern_data
.L__func__.gimp_dnd_set_pattern_data:
	.asciz	"gimp_dnd_set_pattern_data"
	.size	.L__func__.gimp_dnd_set_pattern_data, 26

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"pattern %p"
	.size	.L.str.144, 11

	.type	.L__func__.gimp_dnd_set_gradient_data,@object # @__func__.gimp_dnd_set_gradient_data
.L__func__.gimp_dnd_set_gradient_data:
	.asciz	"gimp_dnd_set_gradient_data"
	.size	.L__func__.gimp_dnd_set_gradient_data, 27

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"gradient %p"
	.size	.L.str.145, 12

	.type	.L__func__.gimp_dnd_set_palette_data,@object # @__func__.gimp_dnd_set_palette_data
.L__func__.gimp_dnd_set_palette_data:
	.asciz	"gimp_dnd_set_palette_data"
	.size	.L__func__.gimp_dnd_set_palette_data, 26

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"palette %p"
	.size	.L.str.146, 11

	.type	.L__func__.gimp_dnd_set_font_data,@object # @__func__.gimp_dnd_set_font_data
.L__func__.gimp_dnd_set_font_data:
	.asciz	"gimp_dnd_set_font_data"
	.size	.L__func__.gimp_dnd_set_font_data, 23

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"font %p"
	.size	.L.str.147, 8

	.type	.L__func__.gimp_dnd_set_buffer_data,@object # @__func__.gimp_dnd_set_buffer_data
.L__func__.gimp_dnd_set_buffer_data:
	.asciz	"gimp_dnd_set_buffer_data"
	.size	.L__func__.gimp_dnd_set_buffer_data, 25

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"buffer %p"
	.size	.L.str.148, 10

	.type	.L__func__.gimp_dnd_set_imagefile_data,@object # @__func__.gimp_dnd_set_imagefile_data
.L__func__.gimp_dnd_set_imagefile_data:
	.asciz	"gimp_dnd_set_imagefile_data"
	.size	.L__func__.gimp_dnd_set_imagefile_data, 28

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"imagefile %p"
	.size	.L.str.149, 13

	.type	.L__func__.gimp_dnd_set_template_data,@object # @__func__.gimp_dnd_set_template_data
.L__func__.gimp_dnd_set_template_data:
	.asciz	"gimp_dnd_set_template_data"
	.size	.L__func__.gimp_dnd_set_template_data, 27

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"template %p"
	.size	.L.str.150, 12

	.type	.L__func__.gimp_dnd_set_tool_info_data,@object # @__func__.gimp_dnd_set_tool_info_data
.L__func__.gimp_dnd_set_tool_info_data:
	.asciz	"gimp_dnd_set_tool_info_data"
	.size	.L__func__.gimp_dnd_set_tool_info_data, 28

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"tool_info %p"
	.size	.L.str.151, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
