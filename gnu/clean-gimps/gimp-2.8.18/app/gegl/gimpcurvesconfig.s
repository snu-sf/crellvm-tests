	.text
	.file	"gimpcurvesconfig.bc"
	.globl	gimp_curves_config_get_type
	.align	16, 0x90
	.type	gimp_curves_config_get_type,@function
gimp_curves_config_get_type:            # @gimp_curves_config_get_type
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
	movq	gimp_curves_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_curves_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_curves_config_class_intern_init, %rdi
	movl	$88, %r8d
	movabsq	$gimp_curves_config_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_curves_config_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_curves_config_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_curves_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_curves_config_get_type, .Lfunc_end0-gimp_curves_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_class_intern_init,@function
gimp_curves_config_class_intern_init:   # @gimp_curves_config_class_intern_init
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
	movq	%rax, gimp_curves_config_parent_class
	cmpl	$0, GimpCurvesConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCurvesConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_curves_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_curves_config_class_intern_init, .Lfunc_end1-gimp_curves_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_init,@function
gimp_curves_config_init:                # @gimp_curves_config_init
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	ja	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.21, %rdi
	callq	gimp_curve_new
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_curves_config_curve_dirty, %rdi
	xorl	%r8d, %r8d
	movl	-12(%rbp), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %r9
	movq	%rax, 48(%r9,%rdx,8)
	movl	-12(%rbp), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_curves_config_init, .Lfunc_end2-gimp_curves_config_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_iface_init,@function
gimp_curves_config_iface_init:          # @gimp_curves_config_iface_init
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
	movabsq	$gimp_curves_config_copy, %rax
	movabsq	$gimp_curves_config_reset, %rcx
	movabsq	$gimp_curves_config_equal, %rdx
	movabsq	$gimp_curves_config_deserialize, %rsi
	movabsq	$gimp_curves_config_serialize, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_curves_config_iface_init, .Lfunc_end3-gimp_curves_config_iface_init
	.cfi_endproc

	.globl	gimp_curves_config_reset_channel
	.align	16, 0x90
	.type	gimp_curves_config_reset_channel,@function
gimp_curves_config_reset_channel:       # @gimp_curves_config_reset_channel
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_curves_config_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_reset_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_config_reset
.LBB4_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_curves_config_reset_channel, .Lfunc_end4-gimp_curves_config_reset_channel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4643176031446892544     # double 255
.LCPI5_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_curves_config_load_cruft
	.align	16, 0x90
	.type	gimp_curves_config_load_cruft,@function
gimp_curves_config_load_cruft:          # @gimp_curves_config_load_cruft
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
	subq	$912, %rsp              # imm = 0x390
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -824(%rbp)
	callq	gimp_curves_config_get_type
	movq	%rax, -832(%rbp)
	cmpq	$0, -824(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -836(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-824(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-824(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-832(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -836(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-824(%rbp), %rdi
	movq	-832(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -836(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-836(%rbp), %eax
	movl	%eax, -840(%rbp)
	cmpl	$0, -840(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_load_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_49
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_load_cruft, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_49
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB5_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB5_21
.LBB5_20:                               # %if.then.20
	jmp	.LBB5_22
.LBB5_21:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_load_cruft, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_49
.LBB5_22:                               # %if.end.22
	jmp	.LBB5_23
.LBB5_23:                               # %do.end.23
	movl	$50, %esi
	leaq	-112(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB5_25
# BB#24:                                # %lor.lhs.false.26
	leaq	-112(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB5_26
.LBB5_25:                               # %if.then.30
	movq	-32(%rbp), %rdi
	movq	%rdi, -856(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.6, %rdi
	movl	%eax, -860(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movl	-860(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_49
.LBB5_26:                               # %if.end.33
	movl	$0, -44(%rbp)
.LBB5_27:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
	cmpl	$5, -44(%rbp)
	jge	.LBB5_36
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	$0, -48(%rbp)
.LBB5_29:                               # %for.cond.35
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -48(%rbp)
	jge	.LBB5_34
# BB#30:                                # %for.body.37
                                        #   in Loop: Header=BB5_29 Depth=2
	movabsq	$.L.str.7, %rsi
	leaq	-816(%rbp), %rax
	leaq	-464(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movslq	-48(%rbp), %rdx
	movslq	-44(%rbp), %r8
	imulq	$68, %r8, %r8
	addq	%r8, %rcx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movslq	-48(%rbp), %rdx
	movslq	-44(%rbp), %r8
	imulq	$68, %r8, %r8
	addq	%r8, %rax
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	__isoc99_fscanf
	movl	%eax, -52(%rbp)
	cmpl	$2, -52(%rbp)
	je	.LBB5_32
# BB#31:                                # %if.then.46
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_printerr
	movq	-32(%rbp), %rdi
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -876(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$3, %edx
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movl	-876(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB5_49
.LBB5_32:                               # %if.end.49
                                        #   in Loop: Header=BB5_29 Depth=2
	jmp	.LBB5_33
.LBB5_33:                               # %for.inc
                                        #   in Loop: Header=BB5_29 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_29
.LBB5_34:                               # %for.end
                                        #   in Loop: Header=BB5_27 Depth=1
	jmp	.LBB5_35
.LBB5_35:                               # %for.inc.50
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_27
.LBB5_36:                               # %for.end.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movl	$0, -44(%rbp)
.LBB5_37:                               # %for.cond.54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_39 Depth 2
	cmpl	$5, -44(%rbp)
	jge	.LBB5_48
# BB#38:                                # %for.body.56
                                        #   in Loop: Header=BB5_37 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rax
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	xorl	%esi, %esi
	movq	-848(%rbp), %rdi
	callq	gimp_curve_set_curve_type
	xorl	%esi, %esi
	movq	-848(%rbp), %rdi
	callq	gimp_curve_reset
	movl	$0, -48(%rbp)
.LBB5_39:                               # %for.cond.63
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$17, -48(%rbp)
	jge	.LBB5_46
# BB#40:                                # %for.body.65
                                        #   in Loop: Header=BB5_39 Depth=2
	leaq	-464(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$68, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	$0, (%rax,%rcx,4)
	jl	.LBB5_42
# BB#41:                                # %lor.lhs.false.71
                                        #   in Loop: Header=BB5_39 Depth=2
	leaq	-816(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$68, %rdx, %rdx
	addq	%rdx, %rax
	cmpl	$0, (%rax,%rcx,4)
	jge	.LBB5_43
.LBB5_42:                               # %if.then.77
                                        #   in Loop: Header=BB5_39 Depth=2
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movq	-848(%rbp), %rdi
	movl	-48(%rbp), %esi
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	movsd	-896(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_curve_set_point
	jmp	.LBB5_44
.LBB5_43:                               # %if.else.78
                                        #   in Loop: Header=BB5_39 Depth=2
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-816(%rbp), %rax
	leaq	-464(%rbp), %rcx
	movq	-848(%rbp), %rdi
	movl	-48(%rbp), %esi
	movslq	-48(%rbp), %rdx
	movslq	-44(%rbp), %r8
	imulq	$68, %r8, %r8
	addq	%r8, %rcx
	cvtsi2sdl	(%rcx,%rdx,4), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-48(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$68, %rdx, %rdx
	addq	%rdx, %rax
	cvtsi2sdl	(%rax,%rcx,4), %xmm2
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_curve_set_point
.LBB5_44:                               # %if.end.89
                                        #   in Loop: Header=BB5_39 Depth=2
	jmp	.LBB5_45
.LBB5_45:                               # %for.inc.90
                                        #   in Loop: Header=BB5_39 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_39
.LBB5_46:                               # %for.end.92
                                        #   in Loop: Header=BB5_37 Depth=1
	movq	-848(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
# BB#47:                                # %for.inc.95
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_37
.LBB5_48:                               # %for.end.97
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movl	$1, -4(%rbp)
.LBB5_49:                               # %return
	movl	-4(%rbp), %eax
	addq	$912, %rsp              # imm = 0x390
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_curves_config_load_cruft, .Lfunc_end5-gimp_curves_config_load_cruft
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643211180634609287     # double 255.999
.LCPI6_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_curves_config_save_cruft
	.align	16, 0x90
	.type	gimp_curves_config_save_cruft,@function
gimp_curves_config_save_cruft:          # @gimp_curves_config_save_cruft
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_curves_config_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_save_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_52
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_save_cruft, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_52
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	jmp	.LBB6_18
.LBB6_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB6_20
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_21
.LBB6_20:                               # %if.then.20
	jmp	.LBB6_22
.LBB6_21:                               # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_save_cruft, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_52
.LBB6_22:                               # %if.end.22
	jmp	.LBB6_23
.LBB6_23:                               # %do.end.23
	movabsq	$.L.str.5, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	$0, -44(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_24:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #     Child Loop BB6_37 Depth 2
                                        #     Child Loop BB6_42 Depth 2
	cmpl	$5, -44(%rbp)
	jge	.LBB6_51
# BB#25:                                # %for.body
                                        #   in Loop: Header=BB6_24 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB6_41
# BB#26:                                # %if.then.30
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$0, -84(%rbp)
.LBB6_27:                               # %for.cond.32
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB6_30
# BB#28:                                # %for.body.35
                                        #   in Loop: Header=BB6_27 Depth=2
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, (%rax)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	%xmm0, 8(%rax)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_27
.LBB6_30:                               # %for.end
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$9, %eax
	movq	-80(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB6_32
# BB#31:                                # %cond.true
                                        #   in Loop: Header=BB6_24 Depth=1
	movq	-80(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB6_36
.LBB6_32:                               # %cond.false
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$9, %eax
	movl	$2, %ecx
	movq	-80(%rbp), %rdx
	movl	36(%rdx), %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB6_34
# BB#33:                                # %cond.true.46
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$2, %eax
	movq	-80(%rbp), %rcx
	movl	36(%rcx), %edx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-128(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB6_35
.LBB6_34:                               # %cond.false.49
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$9, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB6_35
.LBB6_35:                               # %cond.end
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB6_36:                               # %cond.end.50
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	$0, -84(%rbp)
.LBB6_37:                               # %for.cond.52
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB6_40
# BB#38:                                # %for.body.54
                                        #   in Loop: Header=BB6_37 Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	48(%rcx), %edx
	subl	$1, %edx
	imull	%edx, %eax
	movl	-88(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -136(%rbp)        # 4-byte Spill
	cltd
	movl	-136(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -92(%rbp)
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	36(%rcx), %edi
	subl	$1, %edi
	imull	%edi, %eax
	movl	-88(%rbp), %edi
	subl	$1, %edi
	cltd
	idivl	%edi
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-80(%rbp), %rcx
	movl	48(%rcx), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %r8
	shlq	$4, %rcx
	addq	40(%r8), %rcx
	movsd	%xmm0, (%rcx)
	movslq	-92(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	56(%r8), %r8
	movsd	(%r8,%rcx,8), %xmm0     # xmm0 = mem[0],zero
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %r8
	shlq	$4, %rcx
	addq	40(%r8), %rcx
	movsd	%xmm0, 8(%rcx)
# BB#39:                                # %for.inc.78
                                        #   in Loop: Header=BB6_37 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_37
.LBB6_40:                               # %for.end.80
                                        #   in Loop: Header=BB6_24 Depth=1
	jmp	.LBB6_41
.LBB6_41:                               # %if.end.81
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$0, -84(%rbp)
.LBB6_42:                               # %for.cond.82
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB6_49
# BB#43:                                # %for.body.86
                                        #   in Loop: Header=BB6_42 Depth=2
	xorps	%xmm0, %xmm0
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -104(%rbp)
	movslq	-84(%rbp), %rax
	movq	-80(%rbp), %rcx
	shlq	$4, %rax
	addq	40(%rcx), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	%xmm1, -112(%rbp)
	ucomisd	-104(%rbp), %xmm0
	ja	.LBB6_45
# BB#44:                                # %lor.lhs.false.101
                                        #   in Loop: Header=BB6_42 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-112(%rbp), %xmm0
	jbe	.LBB6_46
.LBB6_45:                               # %if.then.104
                                        #   in Loop: Header=BB6_42 Depth=2
	movabsq	$.L.str.7, %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB6_47
.LBB6_46:                               # %if.else.106
                                        #   in Loop: Header=BB6_42 Depth=2
	movabsq	$.L.str.7, %rsi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdi
	movaps	%xmm0, %xmm1
	mulsd	-104(%rbp), %xmm1
	cvttsd2si	%xmm1, %edx
	mulsd	-112(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB6_47:                               # %if.end.112
                                        #   in Loop: Header=BB6_42 Depth=2
	jmp	.LBB6_48
.LBB6_48:                               # %for.inc.113
                                        #   in Loop: Header=BB6_42 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB6_42
.LBB6_49:                               # %for.end.115
                                        #   in Loop: Header=BB6_24 Depth=1
	movabsq	$.L.str.10, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -148(%rbp)        # 4-byte Spill
# BB#50:                                # %for.inc.117
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_24
.LBB6_51:                               # %for.end.119
	movl	$1, -4(%rbp)
.LBB6_52:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_curves_config_save_cruft, .Lfunc_end6-gimp_curves_config_save_cruft
	.cfi_endproc

	.globl	gimp_curves_config_to_cruft
	.align	16, 0x90
	.type	gimp_curves_config_to_cruft,@function
gimp_curves_config_to_cruft:            # @gimp_curves_config_to_cruft
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
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_curves_config_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_to_cruft, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_curves_config_to_cruft, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_23
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movl	$0, -24(%rbp)
.LBB7_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -24(%rbp)
	ja	.LBB7_21
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	$256, %esi              # imm = 0x100
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rdi
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	shlq	$8, %rcx
	addq	%rcx, %rdx
	callq	gimp_curve_get_uchar
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB7_18 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB7_18
.LBB7_21:                               # %for.end
	cmpl	$0, -20(%rbp)
	jne	.LBB7_23
# BB#22:                                # %if.then.22
	movl	$256, %esi              # imm = 0x100
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$256, %rax              # imm = 0x100
	movq	%rax, %rdx
	callq	gimp_curve_get_uchar
.LBB7_23:                               # %if.end.28
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_curves_config_to_cruft, .Lfunc_end7-gimp_curves_config_to_cruft
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_class_init,@function
gimp_curves_config_class_init:          # @gimp_curves_config_class_init
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
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_curves_config_get_property, %rdi
	movabsq	$gimp_curves_config_set_property, %rcx
	movabsq	$gimp_curves_config_finalize, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 160(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_channel_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.14, %rdx
	xorl	%r8d, %r8d
	movl	$263, %r9d              # imm = 0x107
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.16, %rdx
	movl	$771, %r8d              # imm = 0x303
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_curves_config_class_init, .Lfunc_end8-gimp_curves_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_finalize,@function
gimp_curves_config_finalize:            # @gimp_curves_config_finalize
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
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	ja	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	$0, 48(%rdx,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_curves_config_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_curves_config_finalize, .Lfunc_end9-gimp_curves_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_set_property,@function
gimp_curves_config_set_property:        # @gimp_curves_config_set_property
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_10
.LBB10_10:                              # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_6
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movabsq	$.L.str.15, %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	g_object_notify
	jmp	.LBB10_9
.LBB10_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdi
	movq	48(%rdi,%rax,8), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB10_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB10_5:                               # %if.end
	jmp	.LBB10_9
.LBB10_6:                               # %sw.default
	jmp	.LBB10_7
.LBB10_7:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movq	%r9, -144(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$217, %edx
	movabsq	$.L.str.19, %rcx
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#8:                                 # %do.end
	jmp	.LBB10_9
.LBB10_9:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_curves_config_set_property, .Lfunc_end10-gimp_curves_config_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_get_property,@function
gimp_curves_config_get_property:        # @gimp_curves_config_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_7
.LBB11_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_3
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB11_6
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movq	48(%rdx,%rax,8), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_6
.LBB11_3:                               # %sw.default
	jmp	.LBB11_4
.LBB11_4:                               # %do.body
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
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$183, %edx
	movabsq	$.L.str.19, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB11_6
.LBB11_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_curves_config_get_property, .Lfunc_end11-gimp_curves_config_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_serialize,@function
gimp_curves_config_serialize:           # @gimp_curves_config_serialize
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, -40(%rbp)
	movl	$1, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_11
.LBB13_2:                               # %if.end
	movq	-40(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB13_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movabsq	$.L.str.13, %rsi
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	cmpl	$0, %eax
	movb	%r9b, -65(%rbp)         # 1-byte Spill
	je	.LBB13_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB13_3 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_config_serialize_property_by_name
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB13_6:                               # %land.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB13_8
# BB#7:                                 # %if.then.10
	jmp	.LBB13_10
.LBB13_8:                               # %if.end.11
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_9
.LBB13_9:                               # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_3
.LBB13_10:                              # %for.end
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_curves_config_serialize, .Lfunc_end13-gimp_curves_config_serialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_deserialize,@function
gimp_curves_config_deserialize:         # @gimp_curves_config_deserialize
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$1, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	gimp_config_deserialize_properties
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	movl	-48(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_curves_config_deserialize, .Lfunc_end14-gimp_curves_config_deserialize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_equal,@function
gimp_curves_config_equal:               # @gimp_curves_config_equal
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB15_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, -64(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB15_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB15_7
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_is_equal_to
	cmpl	$0, %eax
	jne	.LBB15_6
# BB#5:                                 # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB15_14
.LBB15_6:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_11
.LBB15_7:                               # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB15_9
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB15_10
.LBB15_9:                               # %if.then.17
	movl	$0, -4(%rbp)
	jmp	.LBB15_14
.LBB15_10:                              # %if.end.18
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.19
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_12
.LBB15_12:                              # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_1
.LBB15_13:                              # %for.end
	movl	$1, -4(%rbp)
.LBB15_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_curves_config_equal, .Lfunc_end15-gimp_curves_config_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_reset,@function
gimp_curves_config_reset:               # @gimp_curves_config_reset
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	ja	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rdi
	callq	gimp_curves_config_reset_channel
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	gimp_config_reset_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_curves_config_reset, .Lfunc_end16-gimp_curves_config_reset
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_copy,@function
gimp_curves_config_copy:                # @gimp_curves_config_copy
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_curves_config_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)
	ja	.LBB17_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-44(%rbp), %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdx
	movq	48(%rdx,%rcx,8), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB17_1
.LBB17_4:                               # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	40(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_curves_config_copy, .Lfunc_end17-gimp_curves_config_copy
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_curves_config_curve_dirty,@function
gimp_curves_config_curve_dirty:         # @gimp_curves_config_curve_dirty
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_curves_config_curve_dirty, .Lfunc_end18-gimp_curves_config_curve_dirty
	.cfi_endproc

	.type	gimp_curves_config_get_type.g_define_type_id__volatile,@object # @gimp_curves_config_get_type.g_define_type_id__volatile
	.local	gimp_curves_config_get_type.g_define_type_id__volatile
	.comm	gimp_curves_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCurvesConfig"
	.size	.L.str, 17

	.type	gimp_curves_config_get_type.g_implement_interface_info,@object # @gimp_curves_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_curves_config_get_type.g_implement_interface_info:
	.quad	gimp_curves_config_iface_init
	.quad	0
	.quad	0
	.size	gimp_curves_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_curves_config_reset_channel,@object # @__func__.gimp_curves_config_reset_channel
.L__func__.gimp_curves_config_reset_channel:
	.asciz	"gimp_curves_config_reset_channel"
	.size	.L__func__.gimp_curves_config_reset_channel, 33

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CURVES_CONFIG (config)"
	.size	.L.str.2, 31

	.type	.L__func__.gimp_curves_config_load_cruft,@object # @__func__.gimp_curves_config_load_cruft
.L__func__.gimp_curves_config_load_cruft:
	.asciz	"gimp_curves_config_load_cruft"
	.size	.L__func__.gimp_curves_config_load_cruft, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"file != NULL"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"# GIMP Curves File\n"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"not a GIMP Curves file"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d %d "
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"fields != 2"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"parse error"
	.size	.L.str.9, 12

	.type	.L__func__.gimp_curves_config_save_cruft,@object # @__func__.gimp_curves_config_save_cruft
.L__func__.gimp_curves_config_save_cruft:
	.asciz	"gimp_curves_config_save_cruft"
	.size	.L__func__.gimp_curves_config_save_cruft, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n"
	.size	.L.str.10, 2

	.type	.L__func__.gimp_curves_config_to_cruft,@object # @__func__.gimp_curves_config_to_cruft
.L__func__.gimp_curves_config_to_cruft:
	.asciz	"gimp_curves_config_to_cruft"
	.size	.L__func__.gimp_curves_config_to_cruft, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"cruft != NULL"
	.size	.L.str.11, 14

	.type	gimp_curves_config_parent_class,@object # @gimp_curves_config_parent_class
	.local	gimp_curves_config_parent_class
	.comm	gimp_curves_config_parent_class,8,8
	.type	GimpCurvesConfig_private_offset,@object # @GimpCurvesConfig_private_offset
	.local	GimpCurvesConfig_private_offset
	.comm	GimpCurvesConfig_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-tool-curves"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"channel"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The affected channel"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"curve"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Curve"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimpcurvesconfig.c"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"property"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"time"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"curves config"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"dirty"
	.size	.L.str.22, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
