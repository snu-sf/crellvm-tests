	.text
	.file	"gimpconfig-dump.bc"
	.globl	gimp_config_dump
	.align	16, 0x90
	.type	gimp_config_dump,@function
gimp_config_dump:                       # @gimp_config_dump
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	callq	gimp_rc_get_type
	xorl	%edi, %edi
	movl	%edi, %esi
	movb	%dil, %cl
	movq	%rax, %rdi
	movb	%cl, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movl	$1, %edi
	callq	gimp_config_writer_new_fd
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rsi
	subq	$3, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	ja	.LBB0_5
# BB#6:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_1:                                # %sw.bb
	jmp	.LBB0_5
.LBB0_2:                                # %sw.bb.3
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_comment
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_config_serialize_properties
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_config_writer_linefeed
	jmp	.LBB0_5
.LBB0_3:                                # %sw.bb.5
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dump_gimprc_system
	jmp	.LBB0_5
.LBB0_4:                                # %sw.bb.6
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	dump_gimprc_manpage
.LBB0_5:                                # %sw.epilog
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_config_writer_finish
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_dump, .Lfunc_end0-gimp_config_dump
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_1
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4

	.text
	.align	16, 0x90
	.type	dump_gimprc_system,@function
dump_gimprc_system:                     # @dump_gimprc_system
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
	subq	$80, %rsp
	movabsq	$system_gimprc_header, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_config_writer_comment
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	leaq	-44(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_object_class_list_properties
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB1_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB1_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_6:                                # %if.end.5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	dump_describe_param
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_config_writer_comment
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB1_8:                                # %if.end.9
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_comment_mode
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_linefeed
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	gimp_config_serialize_property
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_config_writer_comment_mode
	movq	-16(%rbp), %rdi
	callq	gimp_config_writer_linefeed
.LBB1_9:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_1
.LBB1_10:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dump_gimprc_system, .Lfunc_end1-dump_gimprc_system
	.cfi_endproc

	.align	16, 0x90
	.type	dump_gimprc_manpage,@function
dump_gimprc_manpage:                    # @dump_gimprc_manpage
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
	subq	$160, %rsp
	movabsq	$man_page_header, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edi
	movl	$man_page_header, %edx
	movl	%edx, %esi
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	strlen
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	leaq	-44(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_object_class_list_properties
	movq	%rax, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB2_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB2_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_6:                                # %if.end.7
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.26, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %edi
	callq	write
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_config_serialize_property
	cmpl	$0, %eax
	je	.LBB2_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.27, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-20(%rbp), %edi
	callq	write
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	dump_describe_param
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %edi
	movq	-64(%rbp), %rsi
	callq	dump_with_linebreaks
	movabsq	$.L.str.27, %rsi
	movl	$1, %edi
	movl	%edi, %edx
	movl	-20(%rbp), %edi
	callq	write
	movq	-64(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_free
.LBB2_8:                                # %if.end.15
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB2_1
.LBB2_10:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-20(%rbp), %edi
	movq	man_page_path, %rsi
	movq	man_page_path, %rax
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	strlen
	movl	-116(%rbp), %edi        # 4-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movabsq	$man_page_footer, %rsi
	movl	-20(%rbp), %edi
	movl	$man_page_footer, %ecx
	movl	%ecx, %edx
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	strlen
	movl	-132(%rbp), %edi        # 4-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -160(%rbp)        # 8-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dump_gimprc_manpage, .Lfunc_end2-dump_gimprc_manpage
	.cfi_endproc

	.align	16, 0x90
	.type	dump_describe_param,@function
dump_describe_param:                    # @dump_describe_param
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -24(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_param_rgb_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.5
	movl	$0, -52(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.8
	movl	$1, -52(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.9
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_8:                                # %if.end.11
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.12
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_14
# BB#10:                                # %if.then.14
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_rgb_has_alpha
	cmpl	$0, %eax
	je	.LBB3_12
# BB#11:                                # %if.then.17
	movabsq	$.L.str.3, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else.18
	movabsq	$.L.str.4, %rax
	movq	%rax, -32(%rbp)
.LBB3_13:                               # %if.end.19
	jmp	.LBB3_72
.LBB3_14:                               # %if.else.20
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_param_memsize_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.29
	movl	$0, -76(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.30
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.33
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.37
	movl	$1, -76(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.38
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_20:                               # %if.end.40
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.41
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_23
# BB#22:                                # %if.then.44
	movabsq	$.L.str.5, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_71
.LBB3_23:                               # %if.else.45
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_param_config_path_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.54
	movl	$0, -100(%rbp)
	jmp	.LBB3_30
.LBB3_25:                               # %if.else.55
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_28
# BB#26:                                # %land.lhs.true.58
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_28
# BB#27:                                # %if.then.62
	movl	$1, -100(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.63
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_29:                               # %if.end.65
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.66
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_37
# BB#31:                                # %if.then.69
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_config_path_type
	movl	%eax, %ecx
	movl	%ecx, %edi
	subl	$3, %eax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movl	%eax, -172(%rbp)        # 4-byte Spill
	ja	.LBB3_36
# BB#87:                                # %if.then.69
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_32:                               # %sw.bb
	movabsq	$.L.str.6, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_36
.LBB3_33:                               # %sw.bb.71
	movabsq	$.L.str.7, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_36
.LBB3_34:                               # %sw.bb.72
	movabsq	$.L.str.8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %sw.bb.73
	movabsq	$.L.str.9, %rax
	movq	%rax, -32(%rbp)
.LBB3_36:                               # %sw.epilog
	jmp	.LBB3_70
.LBB3_37:                               # %if.else.74
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_param_unit_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_39
# BB#38:                                # %if.then.83
	movl	$0, -124(%rbp)
	jmp	.LBB3_44
.LBB3_39:                               # %if.else.84
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_42
# BB#40:                                # %land.lhs.true.87
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_42
# BB#41:                                # %if.then.91
	movl	$1, -124(%rbp)
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.92
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_43:                               # %if.end.94
	jmp	.LBB3_44
.LBB3_44:                               # %if.end.95
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_46
# BB#45:                                # %if.then.98
	movabsq	$.L.str.10, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_69
.LBB3_46:                               # %if.else.99
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB3_48
# BB#47:                                # %if.then.103
	movabsq	$.L.str.11, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_68
.LBB3_48:                               # %if.else.104
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_fundamental
	movq	%rax, %rdi
	subq	$20, %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	je	.LBB3_49
	jmp	.LBB3_78
.LBB3_78:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$24, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	je	.LBB3_50
	jmp	.LBB3_79
.LBB3_79:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$28, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	je	.LBB3_50
	jmp	.LBB3_80
.LBB3_80:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$32, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	je	.LBB3_50
	jmp	.LBB3_81
.LBB3_81:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$36, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB3_50
	jmp	.LBB3_82
.LBB3_82:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$48, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	je	.LBB3_57
	jmp	.LBB3_83
.LBB3_83:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$56, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	je	.LBB3_51
	jmp	.LBB3_84
.LBB3_84:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$60, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	je	.LBB3_51
	jmp	.LBB3_85
.LBB3_85:                               # %if.else.104
	movq	-192(%rbp), %rax        # 8-byte Reload
	subq	$64, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	je	.LBB3_52
	jmp	.LBB3_66
.LBB3_49:                               # %sw.bb.107
	movabsq	$.L.str.12, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_67
.LBB3_50:                               # %sw.bb.108
	movabsq	$.L.str.13, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_67
.LBB3_51:                               # %sw.bb.109
	movabsq	$.L.str.14, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_67
.LBB3_52:                               # %sw.bb.110
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_name
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_55
# BB#53:                                # %land.lhs.true.114
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_name
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_55
# BB#54:                                # %if.then.118
	movabsq	$.L.str.17, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_56
.LBB3_55:                               # %if.else.119
	movabsq	$display_format_description, %rax
	movq	%rax, -32(%rbp)
.LBB3_56:                               # %if.end.120
	jmp	.LBB3_67
.LBB3_57:                               # %sw.bb.121
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_string_new
	movabsq	$.L.str.18, %rsi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	g_string_append
	movl	$0, -156(%rbp)
	movq	-136(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -144(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB3_58:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-156(%rbp), %eax
	movq	-136(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	.LBB3_65
# BB#59:                                # %for.body
                                        #   in Loop: Header=BB3_58 Depth=1
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	16(%rax), %rsi
	callq	g_string_append
	movq	-136(%rbp), %rsi
	movl	16(%rsi), %ecx
	movl	-156(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	%edx, -288(%rbp)        # 4-byte Spill
	je	.LBB3_60
	jmp	.LBB3_86
.LBB3_86:                               # %for.body
                                        #   in Loop: Header=BB3_58 Depth=1
	movl	-284(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB3_61
	jmp	.LBB3_62
.LBB3_60:                               # %sw.bb.134
                                        #   in Loop: Header=BB3_58 Depth=1
	movl	$46, %esi
	movq	-152(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB3_63
.LBB3_61:                               # %sw.bb.136
                                        #   in Loop: Header=BB3_58 Depth=1
	movabsq	$.L.str.19, %rsi
	movq	-152(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB3_63
.LBB3_62:                               # %sw.default
                                        #   in Loop: Header=BB3_58 Depth=1
	movabsq	$.L.str.20, %rsi
	movq	-152(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB3_63:                               # %sw.epilog.139
                                        #   in Loop: Header=BB3_58 Depth=1
	jmp	.LBB3_64
.LBB3_64:                               # %for.inc
                                        #   in Loop: Header=BB3_58 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	movq	-144(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -144(%rbp)
	jmp	.LBB3_58
.LBB3_65:                               # %for.end
	xorl	%esi, %esi
	movq	-152(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -8(%rbp)
	jmp	.LBB3_77
.LBB3_66:                               # %sw.default.141
	jmp	.LBB3_67
.LBB3_67:                               # %sw.epilog.142
	jmp	.LBB3_68
.LBB3_68:                               # %if.end.143
	jmp	.LBB3_69
.LBB3_69:                               # %if.end.144
	jmp	.LBB3_70
.LBB3_70:                               # %if.end.145
	jmp	.LBB3_71
.LBB3_71:                               # %if.end.146
	jmp	.LBB3_72
.LBB3_72:                               # %if.end.147
	cmpq	$0, -32(%rbp)
	jne	.LBB3_74
# BB#73:                                # %if.then.149
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
.LBB3_74:                               # %if.end.152
	movq	-24(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_76
# BB#75:                                # %if.then.155
	movabsq	$.L.str.23, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB3_77
.LBB3_76:                               # %if.else.157
	movabsq	$.L.str.24, %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB3_77:                               # %return
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dump_describe_param, .Lfunc_end3-dump_describe_param
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_32
	.quad	.LBB3_33
	.quad	.LBB3_34
	.quad	.LBB3_35

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str.25, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB5_2
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
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB5_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_string_append_c_inline, .Lfunc_end5-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	dump_with_linebreaks,@function
dump_with_linebreaks:                   # @dump_with_linebreaks
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	cmpl	$0, -20(%rbp)
	jle	.LBB6_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.28, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	callq	write
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB6_5:                                # %for.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$10, %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB6_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_5 Depth=2
	cmpl	$78, -36(%rbp)
	jle	.LBB6_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_5 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -40(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jne	.LBB6_9
.LBB6_8:                                # %land.rhs
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	setl	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB6_9:                                # %land.end
                                        #   in Loop: Header=BB6_5 Depth=2
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_10
	jmp	.LBB6_14
.LBB6_10:                               # %for.body
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB6_12
# BB#11:                                # %if.then.18
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB6_12:                               # %if.end.19
                                        #   in Loop: Header=BB6_5 Depth=2
	jmp	.LBB6_13
.LBB6_13:                               # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB6_5
.LBB6_14:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$78, -36(%rbp)
	jle	.LBB6_18
# BB#15:                                # %land.lhs.true.22
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$10, %ecx
	je	.LBB6_18
# BB#17:                                # %if.then.27
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB6_18:                               # %if.end.28
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	write
	movabsq	$.L.str.27, %rsi
	movl	$1, %edi
	movl	%edi, %edx
	movl	-4(%rbp), %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	write
	movq	-32(%rbp), %rdx
	movsbl	(%rdx), %edi
	cmpl	$10, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB6_20
# BB#19:                                # %if.then.35
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.29, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	callq	write
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB6_20:                               # %if.end.37
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %esi
	subl	%eax, %esi
	movl	%esi, -20(%rbp)
	jmp	.LBB6_1
.LBB6_21:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dump_with_linebreaks, .Lfunc_end6-dump_with_linebreaks
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Dump of the GIMP default configuration"
	.size	.L.str, 39

	.type	system_gimprc_header,@object # @system_gimprc_header
	.section	.rodata,"a",@progbits
	.align	16
system_gimprc_header:
	.asciz	"This is the system-wide gimprc file.  Any change made in this file will affect all users of this system, provided that they are not overriding the default values in their personal gimprc file.\n\nLines that start with a '#' are comments. Blank lines are ignored.\n\nBy default everything in this file is commented out.  The file then documents the default values and shows what changes are possible.\n\nThe variable ${gimp_dir} is set to the value of the environment variable GIMP2_DIRECTORY or, if that is not set, the compiled-in default value is used.  If GIMP2_DIRECTORY is not an absolute path, it is interpreted relative to your home directory."
	.size	system_gimprc_header, 645

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"FIXME: Property '%s' has no blurb."
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The %s property has no description."
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The color is specified in the form (color-rgba red green blue alpha) with channel values as floats in the range of 0.0 to 1.0."
	.size	.L.str.3, 127

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The color is specified in the form (color-rgb red green blue) with channel values as floats in the range of 0.0 to 1.0."
	.size	.L.str.4, 120

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The integer size can contain a suffix of 'B', 'K', 'M' or 'G' which makes GIMP interpret the size as being specified in bytes, kilobytes, megabytes or gigabytes. If no suffix is specified the size defaults to being specified in kilobytes."
	.size	.L.str.5, 239

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"This is a single filename."
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"This is a colon-separated list of files."
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"This is a single folder."
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This is a colon-separated list of folders to search."
	.size	.L.str.9, 53

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The unit can be one inches, millimeters, points or picas plus those in your user units database."
	.size	.L.str.10, 97

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"This is a parameter list."
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Possible values are yes and no."
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"This is an integer value."
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This is a float value."
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"image-title-format"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"image-status-format"
	.size	.L.str.16, 20

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This is a string value."
	.size	.L.str.17, 24

	.type	display_format_description,@object # @display_format_description
	.section	.rodata,"a",@progbits
	.align	16
display_format_description:
	.asciz	"This is a format string; certain % character sequences are recognised and expanded as follows:\n\n%%  literal percent sign\n%f  bare filename, or \"Untitled\"\n%F  full path to file, or \"Untitled\"\n%p  PDB image id\n%i  view instance number\n%t  image type (RGB, grayscale, indexed)\n%z  zoom factor as a percentage\n%s  source scale factor\n%d  destination scale factor\n%Dx expands to x if the image is dirty, the empty string otherwise\n%Cx expands to x if the image is clean, the empty string otherwise\n%B  expands to (modified) if the image is dirty, the empty string otherwise\n%A  expands to (clean) if the image is clean, the empty string otherwise\n%l  the number of layers\n%L  the number of layers (long form)\n%m  memory used by the image\n%n  the name of the active layer/channel\n%P  the PDB id of the active layer/channel\n%w  image width in pixels\n%W  image width in real-world units\n%h  image height in pixels\n%H  image height in real-world units\n%M  the image size expressed in megapixels\n%u  unit symbol\n%U  unit abbreviation\n\n"
	.size	display_format_description, 1026

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"  Possible values are "
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" and "
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	", "
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FIXME: Can't tell anything about a %s."
	.size	.L.str.21, 39

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s"
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s  %s"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Gimp-Config"
	.size	.L.str.25, 12

	.type	man_page_header,@object # @man_page_header
	.section	.rodata,"a",@progbits
	.align	16
man_page_header:
	.asciz	".\\\" This man-page is auto-generated by gimp --dump-gimprc-manpage.\n\n.TH GIMPRC 5 \"Version @GIMP_VERSION@\" \"GIMP Manual Pages\"\n.SH NAME\ngimprc \\- gimp configuration file\n.SH DESCRIPTION\nThe\n.B gimprc\nfile is a configuration file read by GIMP when it starts up.  There\nare two of these: one system-wide one stored in\n@gimpsysconfdir@/gimprc and a per-user \\fB$HOME\\fP/@gimpdir@/gimprc\nwhich may override system settings.\n\nComments are introduced by a hash sign (#), and continue until the end\nof the line.  Blank lines are ignored.\n\nThe\n.B gimprc\nfile associates values with properties.  These properties may be set\nby lisp-like assignments of the form:\n.IP\n\\f3(\\f2property\\-name\\ value\\f3)\\f1\n.TP\nwhere:\n.TP 10\n.I property\\-name\nis one of the property names described below.\n.TP\n.I value\nis the value the property is to be set to.\n.PP\n\nEither spaces or tabs may be used to separate the name from the value.\n.PP\n.SH PROPERTIES\nValid properties and their default values are:\n\n"
	.size	man_page_header, 974

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	".TP\n"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\n"
	.size	.L.str.27, 2

	.type	man_page_path,@object   # @man_page_path
	.data
	.align	8
man_page_path:
	.quad	.L.str.30
	.size	man_page_path, 8

	.type	man_page_footer,@object # @man_page_footer
	.section	.rodata,"a",@progbits
	.align	16
man_page_footer:
	.asciz	".SH FILES\n.TP\n.I @gimpsysconfdir@/gimprc\nSystem-wide configuration file\n.TP\n.I \\fB$HOME\\fP/@gimpdir@/gimprc\nPer-user configuration file\n\n.SH \"SEE ALSO\"\n.BR gimp (1)\n"
	.size	man_page_footer, 166

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"\\&"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	".br\n"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	".PP\n.SH PATH EXPANSION\nStrings of type PATH are expanded in a manner similar to\n.BR bash (1).\nSpecifically: tilde (~) is expanded to the user's home directory. Note that\nthe bash feature of being able to refer to other user's home directories\nby writing ~userid/ is not valid in this file.\n\n${variable} is expanded to the current value of an environment variable.\nThere are a few variables that are pre-defined:\n.TP\n.I gimp_dir\nThe personal gimp directory which is set to the value of the environment\nvariable GIMP2_DIRECTORY or to ~/@gimpdir@.\n.TP\n.I gimp_data_dir\nBase for paths to shareable data, which is set to the value of the\nenvironment variable GIMP2_DATADIR or to the compiled-in default value\n@gimpdatadir@.\n.TP\n.I gimp_plug_in_dir\nBase to paths for architecture-specific plugins and modules, which is set\nto the value of the environment variable GIMP2_PLUGINDIR or to the\ncompiled-in default value @gimpplugindir@.\n.TP\n.I gimp_sysconf_dir\nPath to configuration files, which is set to the value of the environment\nvariable GIMP2_SYSCONFDIR or to the compiled-in default value \n@gimpsysconfdir@.\n\n"
	.size	.L.str.30, 1108


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
