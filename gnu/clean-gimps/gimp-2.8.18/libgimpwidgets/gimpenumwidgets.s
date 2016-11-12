	.text
	.file	"gimpenumwidgets.bc"
	.globl	gimp_enum_radio_box_new
	.align	16, 0x90
	.type	gimp_enum_radio_box_new,@function
gimp_enum_radio_box_new:                # @gimp_enum_radio_box_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	movq	-48(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	gimp_enum_radio_box_new_with_range@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_enum_radio_box_new, .Lfunc_end0-gimp_enum_radio_box_new
	.cfi_endproc

	.globl	gimp_enum_radio_box_new_with_range
	.align	16, 0x90
	.type	gimp_enum_radio_box_new_with_range,@function
gimp_enum_radio_box_new_with_range:     # @gimp_enum_radio_box_new_with_range
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_box_new_with_range(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB1_20
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movl	$1, %ecx
	movq	%rax, -72(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	g_type_class_unref@GOTPCREL(%rip), %rsi
	movq	-72(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.4
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.LBB1_7:                                # %if.end.5
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB1_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB1_19
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jl	.LBB1_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB1_12
.LBB1_11:                               # %if.then.11
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_18
.LBB1_12:                               # %if.end.12
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_enum_value_get_desc@PLT
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_radio_button_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_15
# BB#14:                                # %if.then.17
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB1_15:                               # %if.end.18
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-80(%rbp), %rdi
	movslq	(%rdi), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	cmpq	$0, -32(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.27
                                        #   in Loop: Header=BB1_8 Depth=1
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_17:                               # %if.end.29
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB1_8
.LBB1_19:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_enum_radio_box_new_with_range, .Lfunc_end1-gimp_enum_radio_box_new_with_range
	.cfi_endproc

	.globl	gimp_enum_radio_frame_new
	.align	16, 0x90
	.type	gimp_enum_radio_frame_new,@function
gimp_enum_radio_frame_new:              # @gimp_enum_radio_frame_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_frame_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_21
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB2_15
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_9
# BB#8:                                 # %if.then.4
	movl	$0, -84(%rbp)
	jmp	.LBB2_14
.LBB2_9:                                # %if.else.5
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_12
# BB#10:                                # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_12
# BB#11:                                # %if.then.9
	movl	$1, -84(%rbp)
	jmp	.LBB2_13
.LBB2_12:                               # %if.else.10
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB2_13:                               # %if.end.12
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.13
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_16
.LBB2_15:                               # %if.then.15
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_frame_new(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB2_21
.LBB2_17:                               # %if.end.17
	jmp	.LBB2_18
.LBB2_18:                               # %do.end.18
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_frame_new@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.21
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB2_20:                               # %if.end.24
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	gimp_enum_radio_box_new@PLT
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_enum_radio_frame_new, .Lfunc_end2-gimp_enum_radio_frame_new
	.cfi_endproc

	.globl	gimp_enum_radio_frame_new_with_range
	.align	16, 0x90
	.type	gimp_enum_radio_frame_new_with_range,@function
gimp_enum_radio_frame_new_with_range:   # @gimp_enum_radio_frame_new_with_range
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
	subq	$112, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_frame_new_with_range(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_21
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB3_15
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gtk_widget_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_9
# BB#8:                                 # %if.then.4
	movl	$0, -92(%rbp)
	jmp	.LBB3_14
.LBB3_9:                                # %if.else.5
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_12
# BB#10:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB3_12
# BB#11:                                # %if.then.9
	movl	$1, -92(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.10
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB3_13:                               # %if.end.12
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.13
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB3_16
.LBB3_15:                               # %if.then.15
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.16
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_radio_frame_new_with_range(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_21
.LBB3_17:                               # %if.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.end.18
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_frame_new@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.21
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB3_20:                               # %if.end.24
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	callq	gimp_enum_radio_box_new_with_range@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_enum_radio_frame_new_with_range, .Lfunc_end3-gimp_enum_radio_frame_new_with_range
	.cfi_endproc

	.globl	gimp_enum_stock_box_new
	.align	16, 0x90
	.type	gimp_enum_stock_box_new,@function
gimp_enum_stock_box_new:                # @gimp_enum_stock_box_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_stock_box_new(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movq	-64(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %r10
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	gimp_enum_stock_box_new_with_range@PLT
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_enum_stock_box_new, .Lfunc_end4-gimp_enum_stock_box_new
	.cfi_endproc

	.globl	gimp_enum_stock_box_new_with_range
	.align	16, 0x90
	.type	gimp_enum_stock_box_new_with_range,@function
gimp_enum_stock_box_new_with_range:     # @gimp_enum_stock_box_new_with_range
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
	subq	$208, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	%r10, -56(%rbp)
	movq	%rax, -64(%rbp)
	movq	$0, -120(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_stock_box_new_with_range(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_stock_box_new_with_range(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_9:                                # %if.end.5
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	xorl	%ecx, %ecx
	movq	%rax, -96(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	g_type_class_unref@GOTPCREL(%rip), %rsi
	movq	-96(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	g_object_weak_ref@PLT
	cmpq	$0, -64(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.10
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
.LBB5_12:                               # %if.end.11
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB5_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_26
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jl	.LBB5_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jle	.LBB5_17
.LBB5_16:                               # %if.then.17
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_25
.LBB5_17:                               # %if.end.18
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-120(%rbp), %rdi
	callq	gtk_radio_button_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_mode@PLT
	cmpq	$0, -64(%rbp)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_20
# BB#19:                                # %if.then.26
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB5_20:                               # %if.end.27
                                        #   in Loop: Header=BB5_13 Depth=1
	leaq	.L.str.6(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	$0, %al
	callq	g_strconcat@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -88(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_free@PLT
	cmpq	$0, -88(%rbp)
	je	.LBB5_22
# BB#21:                                # %if.then.31
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show@PLT
.LBB5_22:                               # %if.end.34
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-80(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_enum_value_get_desc@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group@PLT
	movq	%rax, -120(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.2(%rip), %rsi
	movq	-104(%rbp), %rdi
	movslq	(%rdi), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data@PLT
	cmpq	$0, -48(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.44
                                        #   in Loop: Header=BB5_13 Depth=1
	leaq	.L.str.3(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB5_24:                               # %if.end.46
                                        #   in Loop: Header=BB5_13 Depth=1
	jmp	.LBB5_25
.LBB5_25:                               # %for.inc
                                        #   in Loop: Header=BB5_13 Depth=1
	movq	-104(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB5_13
.LBB5_26:                               # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_enum_stock_box_new_with_range, .Lfunc_end5-gimp_enum_stock_box_new_with_range
	.cfi_endproc

	.globl	gimp_enum_stock_box_set_child_padding
	.align	16, 0x90
	.type	gimp_enum_stock_box_set_child_padding,@function
gimp_enum_stock_box_set_child_padding:  # @gimp_enum_stock_box_set_child_padding
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gtk_container_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_stock_box_set_child_padding(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_35
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_container_get_children@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_34
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_bin_get_child@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_misc_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.27
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$0, -84(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.28
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$1, -84(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.36
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB6_20:                               # %if.end.38
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.39
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_29
# BB#22:                                # %if.then.42
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-100(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_misc_get_padding@PLT
	movq	-96(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	jge	.LBB6_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB6_25:                               # %cond.end
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	cmpl	$0, -16(%rbp)
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jge	.LBB6_27
# BB#26:                                # %cond.true.50
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false.51
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB6_28:                               # %cond.end.52
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movl	-144(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gtk_misc_set_padding@PLT
.LBB6_29:                               # %if.end.54
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_30
.LBB6_30:                               # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_32
# BB#31:                                # %cond.true.56
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_32:                               # %cond.false.57
                                        #   in Loop: Header=BB6_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_33:                               # %cond.end.58
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB6_13
.LBB6_34:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	g_list_free@PLT
.LBB6_35:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_enum_stock_box_set_child_padding, .Lfunc_end6-gimp_enum_stock_box_set_child_padding
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpWidgets"
	.size	.L.str, 15

	.type	.L__func__.gimp_enum_radio_box_new,@object # @__func__.gimp_enum_radio_box_new
.L__func__.gimp_enum_radio_box_new:
	.asciz	"gimp_enum_radio_box_new"
	.size	.L__func__.gimp_enum_radio_box_new, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_TYPE_IS_ENUM (enum_type)"
	.size	.L.str.1, 27

	.type	.L__func__.gimp_enum_radio_box_new_with_range,@object # @__func__.gimp_enum_radio_box_new_with_range
.L__func__.gimp_enum_radio_box_new_with_range:
	.asciz	"gimp_enum_radio_box_new_with_range"
	.size	.L__func__.gimp_enum_radio_box_new_with_range, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-item-data"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"toggled"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_enum_radio_frame_new,@object # @__func__.gimp_enum_radio_frame_new
.L__func__.gimp_enum_radio_frame_new:
	.asciz	"gimp_enum_radio_frame_new"
	.size	.L__func__.gimp_enum_radio_frame_new, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"label_widget == NULL || GTK_IS_WIDGET (label_widget)"
	.size	.L.str.4, 53

	.type	.L__func__.gimp_enum_radio_frame_new_with_range,@object # @__func__.gimp_enum_radio_frame_new_with_range
.L__func__.gimp_enum_radio_frame_new_with_range:
	.asciz	"gimp_enum_radio_frame_new_with_range"
	.size	.L__func__.gimp_enum_radio_frame_new_with_range, 37

	.type	.L__func__.gimp_enum_stock_box_new,@object # @__func__.gimp_enum_stock_box_new
.L__func__.gimp_enum_stock_box_new:
	.asciz	"gimp_enum_stock_box_new"
	.size	.L__func__.gimp_enum_stock_box_new, 24

	.type	.L__func__.gimp_enum_stock_box_new_with_range,@object # @__func__.gimp_enum_stock_box_new_with_range
.L__func__.gimp_enum_stock_box_new_with_range:
	.asciz	"gimp_enum_stock_box_new_with_range"
	.size	.L__func__.gimp_enum_stock_box_new_with_range, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stock_prefix != NULL"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-"
	.size	.L.str.6, 2

	.type	.L__func__.gimp_enum_stock_box_set_child_padding,@object # @__func__.gimp_enum_stock_box_set_child_padding
.L__func__.gimp_enum_stock_box_set_child_padding:
	.asciz	"gimp_enum_stock_box_set_child_padding"
	.size	.L__func__.gimp_enum_stock_box_set_child_padding, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GTK_IS_CONTAINER (stock_box)"
	.size	.L.str.7, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
