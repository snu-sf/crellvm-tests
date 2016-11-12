	.text
	.file	"gimpconfig-path.bc"
	.globl	gimp_config_path_get_type
	.align	16, 0x90
	.type	gimp_config_path_get_type,@function
gimp_config_path_get_type:              # @gimp_config_path_get_type
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
	cmpq	$0, gimp_config_path_get_type.path_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$64, %eax
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	leaq	gimp_config_path_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	callq	g_type_register_static@PLT
	movq	%rax, gimp_config_path_get_type.path_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_config_path_get_type.path_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_path_get_type, .Lfunc_end0-gimp_config_path_get_type
	.cfi_endproc

	.globl	gimp_param_config_path_get_type
	.align	16, 0x90
	.type	gimp_param_config_path_get_type,@function
gimp_param_config_path_get_type:        # @gimp_param_config_path_get_type
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
	cmpq	$0, gimp_param_config_path_get_type.spec_type(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.1(%rip), %rsi
	leaq	gimp_param_config_path_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	112(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_config_path_get_type.spec_type(%rip)
.LBB1_2:                                # %if.end
	movq	gimp_param_config_path_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_param_config_path_get_type, .Lfunc_end1-gimp_param_config_path_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_config_path_class_init,@function
gimp_param_config_path_class_init:      # @gimp_param_config_path_class_init
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
	callq	gimp_config_path_get_type@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_param_config_path_class_init, .Lfunc_end2-gimp_param_config_path_class_init
	.cfi_endproc

	.globl	gimp_param_spec_config_path
	.align	16, 0x90
	.type	gimp_param_spec_config_path,@function
gimp_param_spec_config_path:            # @gimp_param_spec_config_path
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	callq	gimp_param_config_path_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_strdup@PLT
	movq	-56(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rax
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$76, %r8d
	movl	%r8d, %esi
	movl	-60(%rbp), %r8d         # 4-byte Reload
	movl	%r8d, 104(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_param_spec_config_path, .Lfunc_end3-gimp_param_spec_config_path
	.cfi_endproc

	.globl	gimp_param_spec_config_path_type
	.align	16, 0x90
	.type	gimp_param_spec_config_path_type,@function
gimp_param_spec_config_path_type:       # @gimp_param_spec_config_path_type
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_param_config_path_get_type@PLT
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
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_param_spec_config_path_type(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_param_config_path_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	104(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_param_spec_config_path_type, .Lfunc_end4-gimp_param_spec_config_path_type
	.cfi_endproc

	.globl	gimp_config_build_data_path
	.align	16, 0x90
	.type	gimp_config_build_data_path,@function
gimp_config_build_data_path:            # @gimp_config_build_data_path
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	.L.str.5(%rip), %rcx
	leaq	.L.str.6(%rip), %rdx
	leaq	.L.str.7(%rip), %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%r11, %rcx
	movq	-40(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_strconcat@PLT
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_config_build_data_path, .Lfunc_end5-gimp_config_build_data_path
	.cfi_endproc

	.globl	gimp_config_build_plug_in_path
	.align	16, 0x90
	.type	gimp_config_build_plug_in_path,@function
gimp_config_build_plug_in_path:         # @gimp_config_build_plug_in_path
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp22:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	.L.str.5(%rip), %rcx
	leaq	.L.str.6(%rip), %rdx
	leaq	.L.str.8(%rip), %r8
	xorl	%esi, %esi
	movl	%esi, %r9d
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%r11, %rcx
	movq	-40(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_strconcat@PLT
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_build_plug_in_path, .Lfunc_end6-gimp_config_build_plug_in_path
	.cfi_endproc

	.globl	gimp_config_build_writable_path
	.align	16, 0x90
	.type	gimp_config_build_writable_path,@function
gimp_config_build_writable_path:        # @gimp_config_build_writable_path
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
	subq	$16, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	.L.str.5(%rip), %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strconcat@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_config_build_writable_path, .Lfunc_end7-gimp_config_build_writable_path
	.cfi_endproc

	.globl	gimp_config_path_expand
	.align	16, 0x90
	.type	gimp_config_path_expand,@function
gimp_config_path_expand:                # @gimp_config_path_expand
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_config_path_expand(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_16
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB8_8
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_9
.LBB8_8:                                # %if.then.4
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.5
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_config_path_expand(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_16
.LBB8_10:                               # %if.end.6
	jmp	.LBB8_11
.LBB8_11:                               # %do.end.7
	cmpl	$0, -20(%rbp)
	je	.LBB8_15
# BB#12:                                # %if.then.8
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_path_expand_only
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_14
# BB#13:                                # %if.then.11
	movq	$0, -8(%rbp)
	jmp	.LBB8_16
.LBB8_14:                               # %if.end.12
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	%rcx, %rdx
	callq	g_filename_from_utf8@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_16
.LBB8_15:                               # %if.end.14
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_config_path_expand_only
	movq	%rax, -8(%rbp)
.LBB8_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_config_path_expand, .Lfunc_end8-gimp_config_path_expand
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_path_expand_only,@function
gimp_config_path_expand_only:           # @gimp_config_path_expand_only
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	callq	g_get_home_dir@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8@PLT
	movq	%rax, -32(%rbp)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB9_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB9_42
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_7
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movslq	-96(%rbp), %rdi
	addq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -96(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_41
.LBB9_7:                                # %if.else
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-40(%rbp), %rdi
	callq	gimp_config_path_extract_token
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB9_39
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$0, -100(%rbp)
.LBB9_9:                                # %for.cond
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB9_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB9_9 Depth=2
	movl	-100(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_14
.LBB9_12:                               # %if.end.19
                                        #   in Loop: Header=BB9_9 Depth=2
	jmp	.LBB9_13
.LBB9_13:                               # %for.inc
                                        #   in Loop: Header=BB9_9 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB9_9
.LBB9_14:                               # %for.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB9_16
# BB#15:                                # %if.then.22
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-100(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB9_34
.LBB9_16:                               # %if.else.27
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	$0, -48(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	gimp_directory@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB9_31
.LBB9_18:                               # %if.else.33
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_20
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	gimp_data_directory@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB9_30
.LBB9_20:                               # %if.else.39
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB9_22
# BB#21:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str.14(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_23
.LBB9_22:                               # %if.then.46
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	gimp_plug_in_directory@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB9_29
.LBB9_23:                               # %if.else.48
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str.15(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	gimp_sysconf_directory@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB9_28
.LBB9_25:                               # %if.else.54
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	leaq	.L.str.16(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_27
# BB#26:                                # %if.then.58
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	gimp_installation_directory@PLT
	movq	%rax, -48(%rbp)
.LBB9_27:                               # %if.end.60
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_28
.LBB9_28:                               # %if.end.61
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_29
.LBB9_29:                               # %if.end.62
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_30
.LBB9_30:                               # %if.end.63
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.64
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_33
# BB#32:                                # %if.then.66
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_getenv@PLT
	movq	%rax, -48(%rbp)
.LBB9_33:                               # %if.end.68
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_34
.LBB9_34:                               # %if.end.69
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpq	$0, -48(%rbp)
	jne	.LBB9_36
# BB#35:                                # %if.then.71
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_config_error_quark@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	dgettext@PLT
	movl	$3, %edx
	movq	-64(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error@PLT
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB9_61
.LBB9_36:                               # %if.end.74
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-92(%rbp), %eax
	andl	$3, %eax
	cmpl	$0, %eax
	jne	.LBB9_38
# BB#37:                                # %if.then.77
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$8, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rcx
	movl	-92(%rbp), %eax
	addl	$4, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	%rcx, %rdi
	callq	g_realloc_n@PLT
	movq	%rax, -88(%rbp)
.LBB9_38:                               # %if.end.82
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-64(%rbp), %rax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movq	-48(%rbp), %rdi
	callq	gimp_filename_to_utf8@PLT
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rax,8), %rdi
	callq	strlen@PLT
	movslq	-96(%rbp), %rdx
	addq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, -96(%rbp)
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB9_40
.LBB9_39:                               # %if.else.100
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rsi
	movsbl	(%rsi,%rcx), %edx
	addl	-96(%rbp), %edx
	movl	%edx, -96(%rbp)
	movq	-40(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movzbl	(%rsi), %edx
	movl	%edx, %esi
	movq	(%rax), %rax
	movsbl	(%rax,%rsi), %edx
	movslq	%edx, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
.LBB9_40:                               # %if.end.109
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_41
.LBB9_41:                               # %if.end.110
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_42:                               # %while.end
	cmpl	$0, -92(%rbp)
	jne	.LBB9_44
# BB#43:                                # %if.then.113
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB9_66
.LBB9_44:                               # %if.end.115
	movl	$1, %eax
	movl	%eax, %esi
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB9_45:                               # %while.cond.119
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_51 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB9_60
# BB#46:                                # %while.body.121
                                        #   in Loop: Header=BB9_45 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB9_49
# BB#47:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB9_45 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB9_49
# BB#48:                                # %if.then.127
                                        #   in Loop: Header=BB9_45 Depth=1
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcat@PLT
	movq	-32(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	strlen@PLT
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_59
.LBB9_49:                               # %if.else.132
                                        #   in Loop: Header=BB9_45 Depth=1
	leaq	-40(%rbp), %rdi
	callq	gimp_config_path_extract_token
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB9_57
# BB#50:                                # %if.then.136
                                        #   in Loop: Header=BB9_45 Depth=1
	movl	$0, -100(%rbp)
.LBB9_51:                               # %for.cond.137
                                        #   Parent Loop BB9_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB9_56
# BB#52:                                # %for.body.140
                                        #   in Loop: Header=BB9_51 Depth=2
	movl	-100(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB9_54
# BB#53:                                # %if.then.147
                                        #   in Loop: Header=BB9_45 Depth=1
	movl	-100(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
	movq	-56(%rbp), %rcx
	movb	$0, (%rcx)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcat@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	strlen@PLT
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_56
.LBB9_54:                               # %if.end.155
                                        #   in Loop: Header=BB9_51 Depth=2
	jmp	.LBB9_55
.LBB9_55:                               # %for.inc.156
                                        #   in Loop: Header=BB9_51 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB9_51
.LBB9_56:                               # %for.end.158
                                        #   in Loop: Header=BB9_45 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB9_58
.LBB9_57:                               # %if.else.159
                                        #   in Loop: Header=BB9_45 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
.LBB9_58:                               # %if.end.161
                                        #   in Loop: Header=BB9_45 Depth=1
	jmp	.LBB9_59
.LBB9_59:                               # %if.end.162
                                        #   in Loop: Header=BB9_45 Depth=1
	jmp	.LBB9_45
.LBB9_60:                               # %while.end.163
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
.LBB9_61:                               # %cleanup
	movl	$0, -100(%rbp)
.LBB9_62:                               # %for.cond.164
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jae	.LBB9_65
# BB#63:                                # %for.body.167
                                        #   in Loop: Header=BB9_62 Depth=1
	movl	-100(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	g_free@PLT
# BB#64:                                # %for.inc.171
                                        #   in Loop: Header=BB9_62 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB9_62
.LBB9_65:                               # %for.end.173
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_66:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_config_path_expand_only, .Lfunc_end9-gimp_config_path_expand_only
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_path_extract_token,@function
gimp_config_path_extract_token:         # @gimp_config_path_extract_token
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
	subq	$48, %rsp
	leaq	.L.str.19(%rip), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_10
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB10_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$125, %ecx
	setne	%dl
	movb	%dl, -33(%rbp)          # 1-byte Spill
.LBB10_5:                               # %land.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_6
	jmp	.LBB10_7
.LBB10_6:                               # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB10_3
.LBB10_7:                               # %while.end
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB10_9
# BB#8:                                 # %if.then.7
	movq	$0, -8(%rbp)
	jmp	.LBB10_10
.LBB10_9:                               # %if.end.8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$2, %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_utf8_pointer_to_offset@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_config_path_extract_token, .Lfunc_end10-gimp_config_path_extract_token
	.cfi_endproc

	.type	gimp_config_path_get_type.path_type,@object # @gimp_config_path_get_type.path_type
	.local	gimp_config_path_get_type.path_type
	.comm	gimp_config_path_get_type.path_type,8,8
	.type	gimp_config_path_get_type.type_info,@object # @gimp_config_path_get_type.type_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_config_path_get_type.type_info:
	.zero	72
	.size	gimp_config_path_get_type.type_info, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpConfigPath"
	.size	.L.str, 15

	.type	gimp_param_config_path_get_type.spec_type,@object # @gimp_param_config_path_get_type.spec_type
	.local	gimp_param_config_path_get_type.spec_type
	.comm	gimp_param_config_path_get_type.spec_type,8,8
	.type	gimp_param_config_path_get_type.type_info,@object # @gimp_param_config_path_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_config_path_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_config_path_class_init
	.quad	0
	.quad	0
	.short	112                     # 0x70
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.size	gimp_param_config_path_get_type.type_info, 72

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"GimpParamConfigPath"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpConfig"
	.size	.L.str.2, 14

	.type	.L__func__.gimp_param_spec_config_path_type,@object # @__func__.gimp_param_spec_config_path_type
.L__func__.gimp_param_spec_config_path_type:
	.asciz	"gimp_param_spec_config_path_type"
	.size	.L__func__.gimp_param_spec_config_path_type, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PARAM_SPEC_CONFIG_PATH (pspec)"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"${gimp_dir}"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	":"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"${gimp_data_dir}"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"${gimp_plug_in_dir}"
	.size	.L.str.8, 20

	.type	.L__func__.gimp_config_path_expand,@object # @__func__.gimp_config_path_expand
.L__func__.gimp_config_path_expand:
	.asciz	"gimp_config_path_expand"
	.size	.L__func__.gimp_config_path_expand, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"path != NULL"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_dir"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp_data_dir"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp_plug_in_dir"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_plugin_dir"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp_sysconf_dir"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp_installation_dir"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-libgimp"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cannot expand ${%s}"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"${"
	.size	.L.str.19, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
