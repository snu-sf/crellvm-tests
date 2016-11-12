	.text
	.file	"gimpfileentry.bc"
	.globl	gimp_file_entry_get_type
	.align	16, 0x90
	.type	gimp_file_entry_get_type,@function
gimp_file_entry_get_type:               # @gimp_file_entry_get_type
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
	movq	gimp_file_entry_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_file_entry_get_type.g_define_type_id__volatile(%rip), %rax
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
	callq	gtk_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_file_entry_class_intern_init(%rip), %rdi
	movl	$176, %r8d
	leaq	gimp_file_entry_init(%rip), %rcx
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
	leaq	gimp_file_entry_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_file_entry_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_file_entry_get_type, .Lfunc_end0-gimp_file_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_class_intern_init,@function
gimp_file_entry_class_intern_init:      # @gimp_file_entry_class_intern_init
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
	movq	%rax, gimp_file_entry_parent_class(%rip)
	cmpl	$0, GimpFileEntry_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpFileEntry_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_file_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_file_entry_class_intern_init, .Lfunc_end1-gimp_file_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_init,@function
gimp_file_entry_init:                   # @gimp_file_entry_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 172(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous@PLT
	callq	gtk_button_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_file_entry_browse_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_end@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.11(%rip), %rsi
	leaq	gimp_file_entry_entry_activate(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.12(%rip), %rsi
	leaq	gimp_file_entry_entry_focus_out(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_file_entry_init, .Lfunc_end2-gimp_file_entry_init
	.cfi_endproc

	.globl	gimp_file_entry_new
	.align	16, 0x90
	.type	gimp_file_entry_new,@function
gimp_file_entry_new:                    # @gimp_file_entry_new
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	callq	gimp_file_entry_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, 160(%rsi)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 168(%rax)
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 172(%rax)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	cmpl	$0, -20(%rbp)
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	je	.LBB3_2
# BB#1:                                 # %cond.true
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB3_3:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	cmpl	$0, -24(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then
	leaq	.L.str.4(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_widget_show@PLT
.LBB3_5:                                # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_file_entry_set_filename@PLT
	movq	-32(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_file_entry_new, .Lfunc_end3-gimp_file_entry_new
	.cfi_endproc

	.globl	gimp_file_entry_set_filename
	.align	16, 0x90
	.type	gimp_file_entry_set_filename,@function
gimp_file_entry_set_filename:           # @gimp_file_entry_set_filename
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
	movq	%rax, -32(%rbp)
	callq	gimp_file_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.9
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_file_entry_set_filename(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_16
.LBB4_11:                               # %if.end.11
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.13
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               # %if.else.15
	leaq	.L.str.7(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
.LBB4_15:                               # %if.end.17
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_file_entry_entry_activate
.LBB4_16:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_file_entry_set_filename, .Lfunc_end4-gimp_file_entry_set_filename
	.cfi_endproc

	.globl	gimp_file_entry_get_filename
	.align	16, 0x90
	.type	gimp_file_entry_get_filename,@function
gimp_file_entry_get_filename:           # @gimp_file_entry_get_filename
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_file_entry_get_type@PLT
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
# BB#5:                                 # %if.then.4
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.5
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.7
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.9
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.10
	leaq	.L.str.5(%rip), %rdi
	leaq	.L__func__.gimp_file_entry_get_filename(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.11
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_get_chars@PLT
	movq	$-1, %rsi
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_file_entry_get_filename, .Lfunc_end5-gimp_file_entry_get_filename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_entry_activate,@function
gimp_file_entry_entry_activate:         # @gimp_file_entry_entry_activate
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_get_chars@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strchug@PLT
	movq	%rax, %rdi
	callq	g_strchomp@PLT
	movq	%rax, -24(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdi
	movb	%cl, -49(%rbp)          # 1-byte Spill
	callq	strlen@PLT
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	cmpl	$1, %edx
	movb	-49(%rbp), %cl          # 1-byte Reload
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jle	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$47, %eax
	sete	%sil
	movb	%sil, -50(%rbp)         # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8@PLT
	movl	$24, %esi
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	leaq	gimp_file_entry_entry_activate(%rip), %rcx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_file_entry_entry_activate(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-16(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB6_7
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename@PLT
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB6_7:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	callq	gimp_file_entry_check_filename
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position@PLT
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_file_entry_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_file_entry_entry_activate, .Lfunc_end6-gimp_file_entry_entry_activate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_class_init,@function
gimp_file_entry_class_init:             # @gimp_file_entry_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
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
	callq	g_signal_new@PLT
	leaq	gimp_file_entry_dispose(%rip), %rsi
	movl	%eax, gimp_file_entry_signals(%rip)
	movq	-16(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	$0, 824(%rsi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_file_entry_class_init, .Lfunc_end7-gimp_file_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_dispose,@function
gimp_file_entry_dispose:                # @gimp_file_entry_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_destroy@PLT
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
.LBB8_4:                                # %if.end.9
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_file_entry_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_file_entry_dispose, .Lfunc_end8-gimp_file_entry_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_browse_clicked,@function
gimp_file_entry_browse_clicked:         # @gimp_file_entry_browse_clicked
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_get_chars@PLT
	movq	$-1, %rsi
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB9_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_6
# BB#2:                                 # %if.then.8
	movq	-16(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.10
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -48(%rbp)
.LBB9_5:                                # %if.end
	jmp	.LBB9_6
.LBB9_6:                                # %if.end.13
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	.L.str.15(%rip), %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	leaq	.L.str.16(%rip), %r9
	movl	$4294967291, %eax       # imm = 0xFFFFFFFB
	xorl	%edx, %edx
	movl	$2, %edi
	movq	-48(%rbp), %r10
	movq	-16(%rbp), %r11
	cmpl	$0, 168(%r11)
	cmovnel	%edi, %edx
	movq	%r10, %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_file_chooser_dialog_new@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order@PLT
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_position@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.17(%rip), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_role@PLT
	leaq	.L.str.18(%rip), %rsi
	leaq	gimp_file_entry_chooser_response(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.19(%rip), %rsi
	movq	gtk_true@GOTPCREL(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.20(%rip), %rsi
	movq	gtk_widget_hide@GOTPCREL(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_8
.LBB9_7:                                # %if.else.31
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
.LBB9_8:                                # %if.end.35
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_file_chooser_set_filename@PLT
	movq	-40(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_free@PLT
	movq	-24(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_screen@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_screen@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_window_present@PLT
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_file_entry_browse_clicked, .Lfunc_end9-gimp_file_entry_browse_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_entry_focus_out,@function
gimp_file_entry_entry_focus_out:        # @gimp_file_entry_entry_focus_out
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_file_entry_entry_activate
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_file_entry_entry_focus_out, .Lfunc_end10-gimp_file_entry_entry_focus_out
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_chooser_response,@function
gimp_file_entry_chooser_response:       # @gimp_file_entry_chooser_response
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_file_entry_set_filename@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_hide@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_file_entry_chooser_response, .Lfunc_end11-gimp_file_entry_chooser_response
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_file_entry_check_filename,@function
gimp_file_entry_check_filename:         # @gimp_file_entry_check_filename
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 172(%rdi)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	jne	.LBB12_3
.LBB12_2:                               # %if.then
	jmp	.LBB12_7
.LBB12_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_get_chars@PLT
	movq	$-1, %rsi
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB12_5
# BB#4:                                 # %if.then.8
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	callq	g_file_test@PLT
	movl	%eax, -28(%rbp)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	g_file_test@PLT
	movl	%eax, -28(%rbp)
.LBB12_6:                               # %if.end.11
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_image_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4, %edx
	leaq	.L.str.4(%rip), %rsi
	leaq	.L.str.21(%rip), %rdi
	cmpl	$0, -28(%rbp)
	cmovneq	%rdi, %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock@PLT
.LBB12_7:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_file_entry_check_filename, .Lfunc_end12-gimp_file_entry_check_filename
	.cfi_endproc

	.type	gimp_file_entry_get_type.g_define_type_id__volatile,@object # @gimp_file_entry_get_type.g_define_type_id__volatile
	.local	gimp_file_entry_get_type.g_define_type_id__volatile
	.comm	gimp_file_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFileEntry"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp20-libgimp"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Open a file selector to browse your folders"
	.size	.L.str.2, 44

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Open a file selector to browse your files"
	.size	.L.str.3, 42

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-no"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LibGimpWidgets"
	.size	.L.str.5, 15

	.type	.L__func__.gimp_file_entry_get_filename,@object # @__func__.gimp_file_entry_get_filename
.L__func__.gimp_file_entry_get_filename:
	.asciz	"gimp_file_entry_get_filename"
	.size	.L__func__.gimp_file_entry_get_filename, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_FILE_ENTRY (entry)"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_file_entry_set_filename,@object # @__func__.gimp_file_entry_set_filename
.L__func__.gimp_file_entry_set_filename:
	.asciz	"gimp_file_entry_set_filename"
	.size	.L__func__.gimp_file_entry_set_filename, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	gimp_file_entry_parent_class,@object # @gimp_file_entry_parent_class
	.local	gimp_file_entry_parent_class
	.comm	gimp_file_entry_parent_class,8,8
	.type	GimpFileEntry_private_offset,@object # @GimpFileEntry_private_offset
	.local	GimpFileEntry_private_offset
	.comm	GimpFileEntry_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"filename-changed"
	.size	.L.str.8, 17

	.type	gimp_file_entry_signals,@object # @gimp_file_entry_signals
	.local	gimp_file_entry_signals
	.comm	gimp_file_entry_signals,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-open"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"clicked"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"activate"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"focus-out-event"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Select Folder"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Select File"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-cancel"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-ok"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-file-entry-file-dialog"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"response"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"delete-event"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"unmap"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-yes"
	.size	.L.str.21, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
