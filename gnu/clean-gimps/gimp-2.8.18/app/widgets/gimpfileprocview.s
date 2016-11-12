	.text
	.file	"gimpfileprocview.bc"
	.globl	gimp_file_proc_view_get_type
	.align	16, 0x90
	.type	gimp_file_proc_view_get_type,@function
gimp_file_proc_view_get_type:           # @gimp_file_proc_view_get_type
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
	movq	gimp_file_proc_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_file_proc_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1000, %edx             # imm = 0x3E8
	movabsq	$gimp_file_proc_view_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_file_proc_view_init, %rcx
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
	movabsq	$gimp_file_proc_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_file_proc_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_file_proc_view_get_type, .Lfunc_end0-gimp_file_proc_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_proc_view_class_intern_init,@function
gimp_file_proc_view_class_intern_init:  # @gimp_file_proc_view_class_intern_init
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
	movq	%rax, gimp_file_proc_view_parent_class
	cmpl	$0, GimpFileProcView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFileProcView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_file_proc_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_file_proc_view_class_intern_init, .Lfunc_end1-gimp_file_proc_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_proc_view_init,@function
gimp_file_proc_view_init:               # @gimp_file_proc_view_init
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
	.size	gimp_file_proc_view_init, .Lfunc_end2-gimp_file_proc_view_init
	.cfi_endproc

	.globl	gimp_file_proc_view_new
	.align	16, 0x90
	.type	gimp_file_proc_view_new,@function
gimp_file_proc_view_new:                # @gimp_file_proc_view_new
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
	pushq	%r14
	pushq	%rbx
	subq	$352, %rsp              # imm = 0x160
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -148(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -148(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_proc_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_36
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_plug_in_procedure_get_type
	movl	$4, %edi
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -88(%rbp)
	callq	gimp_file_proc_view_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movl	$1, %r8d
	xorl	%edi, %edi
	movl	%edi, %r9d
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB3_13:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_18 Depth 2
	cmpq	$0, -96(%rbp)
	je	.LBB3_33
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	$0, 264(%rax)
	jne	.LBB3_28
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-160(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_help_id
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB3_17
# BB#16:                                # %if.then.25
                                        #   in Loop: Header=BB3_13 Depth=1
	leaq	-128(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-128(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %eax
	movl	$3, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rdi
	movq	-160(%rbp), %r10
	movq	-168(%rbp), %r11
	movq	-160(%rbp), %rbx
	movq	224(%rbx), %rbx
	movq	-176(%rbp), %r14
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	%r9d, -224(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movl	$2, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$-1, 32(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
.LBB3_17:                               # %if.end.26
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	%rdi, -184(%rbp)
.LBB3_18:                               # %for.cond.27
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -184(%rbp)
	je	.LBB3_27
# BB#19:                                # %for.body.29
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_file_proc_view_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$46, %esi
	movq	%rax, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	strchr
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	je	.LBB3_22
# BB#20:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-208(%rbp), %rax
	cmpq	-200(%rbp), %rax
	je	.LBB3_22
# BB#21:                                # %if.then.40
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-192(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	-192(%rbp), %rsi
	movq	%rax, 120(%rsi)
.LBB3_22:                               # %if.end.44
                                        #   in Loop: Header=BB3_18 Depth=2
	jmp	.LBB3_23
.LBB3_23:                               # %for.inc
                                        #   in Loop: Header=BB3_18 Depth=2
	cmpq	$0, -184(%rbp)
	je	.LBB3_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_25:                               # %cond.false
                                        #   in Loop: Header=BB3_18 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_26
.LBB3_26:                               # %cond.end
                                        #   in Loop: Header=BB3_18 Depth=2
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	jmp	.LBB3_18
.LBB3_27:                               # %for.end
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.46
                                        #   in Loop: Header=BB3_13 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %for.inc.47
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB3_31
# BB#30:                                # %cond.true.49
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false.51
                                        #   in Loop: Header=BB3_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB3_32
.LBB3_32:                               # %cond.end.52
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB3_13
.LBB3_33:                               # %for.end.54
	cmpq	$0, -48(%rbp)
	je	.LBB3_35
# BB#34:                                # %if.then.56
	leaq	-128(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	gtk_list_store_prepend
	leaq	-128(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$1, %r8d
	movl	$3, %eax
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	movl	%r9d, -268(%rbp)        # 4-byte Spill
	movq	%r10, %r9
	movl	$3, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$-1, 16(%rsp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
.LBB3_35:                               # %if.end.57
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.5, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_expand
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.6, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_tree_view_append_column
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.7, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.6, %rdx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_tree_view_append_column
	movq	-64(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_file_proc_view_selection_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB3_36:                               # %return
	movq	-24(%rbp), %rax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_file_proc_view_new, .Lfunc_end3-gimp_file_proc_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_proc_view_selection_changed,@function
gimp_file_proc_view_selection_changed:  # @gimp_file_proc_view_selection_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%edx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	view_signals, %eax
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_file_proc_view_selection_changed, .Lfunc_end4-gimp_file_proc_view_selection_changed
	.cfi_endproc

	.globl	gimp_file_proc_view_get_proc
	.align	16, 0x90
	.type	gimp_file_proc_view_get_proc,@function
gimp_file_proc_view_get_proc:           # @gimp_file_proc_view_get_proc
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_file_proc_view_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_proc_view_get_proc, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_22
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-32(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB5_19
# BB#13:                                # %if.then.16
	cmpq	$0, -24(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.19
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$1, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
	movl	$-1, (%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.20
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB5_16:                               # %if.end.21
	cmpq	$0, -104(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.23
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_18:                               # %if.end.24
	movq	-104(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_22
.LBB5_19:                               # %if.end.25
	cmpq	$0, -24(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
.LBB5_21:                               # %if.end.28
	movq	$0, -8(%rbp)
.LBB5_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_file_proc_view_get_proc, .Lfunc_end5-gimp_file_proc_view_get_proc
	.cfi_endproc

	.globl	gimp_file_proc_view_set_proc
	.align	16, 0x90
	.type	gimp_file_proc_view_set_proc,@function
gimp_file_proc_view_set_proc:           # @gimp_file_proc_view_set_proc
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
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_file_proc_view_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_proc_view_set_proc, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_23
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -68(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB6_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -104(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.18
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_16:                               # %if.end.19
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.21
	jmp	.LBB6_20
.LBB6_18:                               # %if.end.22
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -68(%rbp)
	jmp	.LBB6_13
.LBB6_20:                               # %for.end
	cmpl	$0, -68(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-64(%rbp), %rsi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB6_22:                               # %if.end.30
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_file_proc_view_set_proc, .Lfunc_end6-gimp_file_proc_view_set_proc
	.cfi_endproc

	.globl	gimp_file_proc_view_get_help_id
	.align	16, 0x90
	.type	gimp_file_proc_view_get_help_id,@function
gimp_file_proc_view_get_help_id:        # @gimp_file_proc_view_get_help_id
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_file_proc_view_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_file_proc_view_get_help_id, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_15
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	leaq	-24(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB7_14
# BB#13:                                # %if.then.16
	leaq	-64(%rbp), %rsi
	movl	$3, %edx
	leaq	-96(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-96(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB7_15
.LBB7_14:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB7_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_file_proc_view_get_help_id, .Lfunc_end7-gimp_file_proc_view_get_help_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_proc_view_class_init,@function
gimp_file_proc_view_class_init:         # @gimp_file_proc_view_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.8, %rdi
	movl	$2, %edx
	movl	$992, %ecx              # imm = 0x3E0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movabsq	$gimp_file_proc_view_finalize, %r11
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 992(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -48(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, view_signals
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_file_proc_view_class_init, .Lfunc_end8-gimp_file_proc_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_proc_view_finalize,@function
gimp_file_proc_view_finalize:           # @gimp_file_proc_view_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_proc_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$g_free, %rsi
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	g_list_free_full
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB9_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_file_proc_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_file_proc_view_finalize, .Lfunc_end9-gimp_file_proc_view_finalize
	.cfi_endproc

	.type	gimp_file_proc_view_get_type.g_define_type_id__volatile,@object # @gimp_file_proc_view_get_type.g_define_type_id__volatile
	.local	gimp_file_proc_view_get_type.g_define_type_id__volatile
	.comm	gimp_file_proc_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFileProcView"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_file_proc_view_new,@object # @__func__.gimp_file_proc_view_new
.L__func__.gimp_file_proc_view_new:
	.asciz	"gimp_file_proc_view_new"
	.size	.L__func__.gimp_file_proc_view_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"model"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rules-hint"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"File Type"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"text"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Extensions"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"changed"
	.size	.L.str.8, 8

	.type	.L__func__.gimp_file_proc_view_get_proc,@object # @__func__.gimp_file_proc_view_get_proc
.L__func__.gimp_file_proc_view_get_proc:
	.asciz	"gimp_file_proc_view_get_proc"
	.size	.L__func__.gimp_file_proc_view_get_proc, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_FILE_PROC_VIEW (view)"
	.size	.L.str.9, 30

	.type	.L__func__.gimp_file_proc_view_set_proc,@object # @__func__.gimp_file_proc_view_set_proc
.L__func__.gimp_file_proc_view_set_proc:
	.asciz	"gimp_file_proc_view_set_proc"
	.size	.L__func__.gimp_file_proc_view_set_proc, 29

	.type	.L__func__.gimp_file_proc_view_get_help_id,@object # @__func__.gimp_file_proc_view_get_help_id
.L__func__.gimp_file_proc_view_get_help_id:
	.asciz	"gimp_file_proc_view_get_help_id"
	.size	.L__func__.gimp_file_proc_view_get_help_id, 32

	.type	gimp_file_proc_view_parent_class,@object # @gimp_file_proc_view_parent_class
	.local	gimp_file_proc_view_parent_class
	.comm	gimp_file_proc_view_parent_class,8,8
	.type	GimpFileProcView_private_offset,@object # @GimpFileProcView_private_offset
	.local	GimpFileProcView_private_offset
	.comm	GimpFileProcView_private_offset,4,4
	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
