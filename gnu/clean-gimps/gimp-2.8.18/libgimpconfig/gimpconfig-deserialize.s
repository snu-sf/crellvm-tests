	.text
	.file	"gimpconfig-deserialize.bc"
	.globl	gimp_config_deserialize_properties
	.align	16, 0x90
	.type	gimp_config_deserialize_properties,@function
gimp_config_deserialize_properties:     # @gimp_config_deserialize_properties
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_config_interface_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_properties(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	leaq	-52(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_object_class_list_properties@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.14
	movl	$1, -4(%rbp)
	jmp	.LBB0_35
.LBB0_14:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_qname@PLT
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	movl	%eax, -64(%rbp)
	movl	$0, -56(%rbp)
.LBB0_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jae	.LBB0_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movl	16(%rcx), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.23
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	callq	g_scanner_scope_add_symbol@PLT
.LBB0_18:                               # %if.end.24
                                        #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %for.inc
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_15
.LBB0_20:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_freeze_notify@PLT
	movl	$40, -68(%rbp)
.LBB0_21:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB0_25
# BB#22:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB0_21 Depth=1
	cmpl	$265, -68(%rbp)         # imm = 0x109
	jne	.LBB0_24
# BB#23:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB0_21 Depth=1
	cmpl	$266, -72(%rbp)         # imm = 0x10A
	je	.LBB0_25
.LBB0_24:                               # %if.then.32
	jmp	.LBB0_32
.LBB0_25:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-24(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -68(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB0_26
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB0_29
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB0_28
	jmp	.LBB0_38
.LBB0_38:                               # %if.end.33
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB0_27
	jmp	.LBB0_30
.LBB0_26:                               # %sw.bb
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$265, -68(%rbp)         # imm = 0x109
	jmp	.LBB0_31
.LBB0_27:                               # %sw.bb.35
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_config_skip_unknown_property
	movl	%eax, -68(%rbp)
	jmp	.LBB0_31
.LBB0_28:                               # %sw.bb.37
                                        #   in Loop: Header=BB0_21 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	gimp_config_deserialize_property@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB0_31
.LBB0_29:                               # %sw.bb.39
                                        #   in Loop: Header=BB0_21 Depth=1
	movl	$40, -68(%rbp)
	jmp	.LBB0_31
.LBB0_30:                               # %sw.default
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_31
.LBB0_31:                               # %sw.epilog
                                        #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_21
.LBB0_32:                               # %while.end
	movq	-24(%rbp), %rdi
	movl	-64(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	g_object_thaw_notify@PLT
	cmpl	$256, -68(%rbp)         # imm = 0x100
	jne	.LBB0_34
# BB#33:                                # %if.then.43
	movl	$0, -4(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.end.44
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_config_deserialize_return@PLT
	movl	%eax, -4(%rbp)
.LBB0_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_deserialize_properties, .Lfunc_end0-gimp_config_deserialize_properties
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_skip_unknown_property,@function
gimp_config_skip_unknown_property:      # @gimp_config_skip_unknown_property
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -24(%rbp)
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_10
.LBB1_10:                               # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$40, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_11
.LBB1_11:                               # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_7
.LBB1_2:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_3:                                # %sw.bb.2
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_9
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB1_8
.LBB1_6:                                # %sw.bb.4
	movl	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_9
.LBB1_7:                                # %sw.default
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB1_8:                                # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_1
.LBB1_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_skip_unknown_property, .Lfunc_end1-gimp_config_skip_unknown_property
	.cfi_endproc

	.globl	gimp_config_deserialize_property
	.align	16, 0x90
	.type	gimp_config_deserialize_property,@function
gimp_config_deserialize_property:       # @gimp_config_deserialize_property
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %r8d
	leaq	-80(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$41, -52(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	memset@PLT
	movq	-16(%rbp), %rdi
	movl	-156(%rbp), %esi        # 4-byte Reload
	callq	g_scanner_set_scope@PLT
	movl	$76, %ecx
	movl	%ecx, %esi
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_type_fundamental@PLT
	cmpq	$80, %rax
	jne	.LBB2_4
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.9
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_peek_parent@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -40(%rbp)
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %if.end.13
	cmpq	$0, -32(%rbp)
	je	.LBB2_9
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB2_9
# BB#6:                                 # %land.lhs.true.16
	movq	-32(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true.18
	leaq	-80(%rbp), %rdx
	leaq	-52(%rbp), %r9
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	68(%rcx), %esi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %r8
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB2_9
# BB#8:                                 # %if.then.22
	jmp	.LBB2_19
.LBB2_9:                                # %if.else
	leaq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$80, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB2_11
# BB#10:                                # %if.then.24
	movl	$0, -124(%rbp)
	jmp	.LBB2_15
.LBB2_11:                               # %if.else.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB2_13
# BB#12:                                # %if.then.27
	movl	$1, -124(%rbp)
	jmp	.LBB2_14
.LBB2_13:                               # %if.else.28
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -124(%rbp)
.LBB2_14:                               # %if.end.30
	jmp	.LBB2_15
.LBB2_15:                               # %if.end.31
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB2_17
# BB#16:                                # %if.then.33
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	callq	gimp_config_deserialize_object
	movl	%eax, -52(%rbp)
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.35
	leaq	-80(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	gimp_config_deserialize_value
	movl	%eax, -52(%rbp)
.LBB2_18:                               # %if.end.37
	jmp	.LBB2_19
.LBB2_19:                               # %if.end.38
	cmpl	$41, -52(%rbp)
	jne	.LBB2_31
# BB#20:                                # %land.lhs.true.40
	movq	-16(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-52(%rbp), %eax
	jne	.LBB2_31
# BB#21:                                # %if.then.43
	leaq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$80, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB2_23
# BB#22:                                # %if.then.51
	movl	$0, -148(%rbp)
	jmp	.LBB2_27
.LBB2_23:                               # %if.else.52
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB2_25
# BB#24:                                # %if.then.55
	movl	$1, -148(%rbp)
	jmp	.LBB2_26
.LBB2_25:                               # %if.else.56
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_value_holds@PLT
	movl	%eax, -148(%rbp)
.LBB2_26:                               # %if.end.58
	jmp	.LBB2_27
.LBB2_27:                               # %if.end.59
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB2_29
# BB#28:                                # %land.lhs.true.62
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	jne	.LBB2_30
.LBB2_29:                               # %if.then.64
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	g_object_set_property@PLT
.LBB2_30:                               # %if.end.66
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.67
	leaq	-80(%rbp), %rdi
	callq	g_value_unset@PLT
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	g_scanner_set_scope@PLT
	movl	-52(%rbp), %esi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_config_deserialize_property, .Lfunc_end2-gimp_config_deserialize_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_object,@function
gimp_config_deserialize_object:         # @gimp_config_deserialize_object
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%r9, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_get_property@PLT
	movq	-16(%rbp), %rdi
	callq	g_value_get_object@PLT
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_9
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	jne	.LBB3_7
# BB#2:                                 # %if.then.3
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_scanner_parse_string@PLT
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.6
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_14
.LBB3_4:                                # %if.end
	movq	-72(%rbp), %rdi
	callq	g_type_from_name@PLT
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rsi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	jne	.LBB3_6
# BB#5:                                 # %if.then.10
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB3_14
.LBB3_6:                                # %if.end.11
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_object@PLT
	jmp	.LBB3_8
.LBB3_7:                                # %if.else
	movl	$41, -4(%rbp)
	jmp	.LBB3_14
.LBB3_8:                                # %if.end.13
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.14
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_any
	movl	%eax, -4(%rbp)
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.20
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	cmpl	$0, %eax
	jne	.LBB3_13
# BB#12:                                # %if.then.23
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB3_14
.LBB3_13:                               # %if.end.24
	movl	$41, -4(%rbp)
.LBB3_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_config_deserialize_object, .Lfunc_end3-gimp_config_deserialize_object
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_value,@function
gimp_config_deserialize_value:          # @gimp_config_deserialize_value
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
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_enum
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$1020, 24(%rax)         # imm = 0x3FC
	ja	.LBB4_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_fundamental
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_4:                                # %if.else.6
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_memsize_get_type@PLT
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_memsize
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_6:                                # %if.else.12
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_config_path_get_type@PLT
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_8
# BB#7:                                 # %if.then.16
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_path
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_8:                                # %if.else.18
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_rgb_get_type@PLT
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_10
# BB#9:                                 # %if.then.22
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_rgb
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_10:                               # %if.else.24
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_matrix2_get_type@PLT
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_12
# BB#11:                                # %if.then.28
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_matrix2
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_12:                               # %if.else.30
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_value_array_get_type@PLT
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_14
# BB#13:                                # %if.then.34
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	gimp_config_deserialize_value_array
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_14:                               # %if.else.36
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_unit_get_type@PLT
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_16
# BB#15:                                # %if.then.40
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_unit
	movl	%eax, -4(%rbp)
	jmp	.LBB4_24
.LBB4_16:                               # %if.end
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.42
	jmp	.LBB4_18
.LBB4_18:                               # %if.end.43
	jmp	.LBB4_19
.LBB4_19:                               # %if.end.44
	jmp	.LBB4_20
.LBB4_20:                               # %if.end.45
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.46
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.47
	jmp	.LBB4_23
.LBB4_23:                               # %if.end.48
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_config_deserialize_any
	movl	%eax, -4(%rbp)
.LBB4_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_config_deserialize_value, .Lfunc_end4-gimp_config_deserialize_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_enum,@function
gimp_config_deserialize_enum:           # @gimp_config_deserialize_enum
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, %ecx
	subl	$261, %eax              # imm = 0x105
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_12
.LBB5_12:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$266, %eax              # imm = 0x10A
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB5_9
	jmp	.LBB5_1
.LBB5_1:                                # %sw.bb
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	g_enum_get_value_by_nick@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_enum_get_value_by_name@PLT
	movq	%rax, -48(%rbp)
.LBB5_3:                                # %if.end
	cmpq	$0, -48(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB5_11
.LBB5_5:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_6:                                # %sw.bb.14
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rcx
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_enum_get_value@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.19
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rdx
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB5_11
.LBB5_8:                                # %if.end.24
	jmp	.LBB5_10
.LBB5_9:                                # %sw.default
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB5_11
.LBB5_10:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum@PLT
	movl	$41, -4(%rbp)
.LBB5_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_config_deserialize_enum, .Lfunc_end5-gimp_config_deserialize_enum
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_fundamental,@function
gimp_config_deserialize_fundamental:    # @gimp_config_deserialize_fundamental
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdi
	callq	g_type_fundamental@PLT
	movq	%rax, -48(%rbp)
	movq	%rax, %rdx
	subq	$20, %rax
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB6_2
	jmp	.LBB6_55
.LBB6_55:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$24, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB6_3
	jmp	.LBB6_56
.LBB6_56:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$28, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB6_6
	jmp	.LBB6_57
.LBB6_57:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$32, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	je	.LBB6_3
	jmp	.LBB6_58
.LBB6_58:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$36, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	je	.LBB6_6
	jmp	.LBB6_59
.LBB6_59:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$40, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB6_3
	jmp	.LBB6_60
.LBB6_60:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$44, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB6_6
	jmp	.LBB6_61
.LBB6_61:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$56, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	je	.LBB6_7
	jmp	.LBB6_62
.LBB6_62:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$60, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB6_7
	jmp	.LBB6_63
.LBB6_63:                               # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	subq	$64, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jne	.LBB6_10
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	movl	$264, -36(%rbp)         # imm = 0x108
	jmp	.LBB6_12
.LBB6_2:                                # %sw.bb.2
	movl	$266, -36(%rbp)         # imm = 0x10A
	jmp	.LBB6_12
.LBB6_3:                                # %sw.bb.3
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$45, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then
	movl	$1, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %sw.bb.6
	movl	$261, -36(%rbp)         # imm = 0x105
	jmp	.LBB6_12
.LBB6_7:                                # %sw.bb.7
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$45, %eax
	jne	.LBB6_9
# BB#8:                                 # %if.then.10
	movl	$1, -52(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB6_9:                                # %if.end.12
	movl	$263, -36(%rbp)         # imm = 0x107
	jmp	.LBB6_12
.LBB6_10:                               # %sw.default
	jmp	.LBB6_11
.LBB6_11:                               # %do.body
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$419, %edx              # imm = 0x1A3
	leaq	.L__func__.gimp_config_deserialize_fundamental(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr@PLT
.LBB6_12:                               # %sw.epilog
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	-36(%rbp), %eax
	je	.LBB6_14
# BB#13:                                # %if.then.15
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_54
.LBB6_14:                               # %if.end.16
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-48(%rbp), %rdi
	movq	%rdi, %rcx
	subq	$20, %rcx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	je	.LBB6_19
	jmp	.LBB6_64
.LBB6_64:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$24, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	je	.LBB6_28
	jmp	.LBB6_65
.LBB6_65:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$28, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB6_32
	jmp	.LBB6_66
.LBB6_66:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$32, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	je	.LBB6_33
	jmp	.LBB6_67
.LBB6_67:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$36, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	je	.LBB6_37
	jmp	.LBB6_68
.LBB6_68:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$40, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	je	.LBB6_38
	jmp	.LBB6_69
.LBB6_69:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$44, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	je	.LBB6_42
	jmp	.LBB6_70
.LBB6_70:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$56, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	je	.LBB6_43
	jmp	.LBB6_71
.LBB6_71:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$60, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	je	.LBB6_47
	jmp	.LBB6_72
.LBB6_72:                               # %if.end.16
	movq	-168(%rbp), %rax        # 8-byte Reload
	subq	$64, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jne	.LBB6_51
	jmp	.LBB6_15
.LBB6_15:                               # %sw.bb.18
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	scanner_string_utf8_valid
	cmpl	$0, %eax
	je	.LBB6_17
# BB#16:                                # %if.then.20
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB6_18
.LBB6_17:                               # %if.else
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB6_54
.LBB6_18:                               # %if.end.22
	jmp	.LBB6_53
.LBB6_19:                               # %sw.bb.23
	leaq	.L.str.6(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB6_21
# BB#20:                                # %lor.lhs.false
	leaq	.L.str.7(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB6_22
.LBB6_21:                               # %if.then.31
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	g_value_set_boolean@PLT
	jmp	.LBB6_27
.LBB6_22:                               # %if.else.32
	leaq	.L.str.8(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	je	.LBB6_24
# BB#23:                                # %lor.lhs.false.37
	leaq	.L.str.9(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	jne	.LBB6_25
.LBB6_24:                               # %if.then.42
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	g_value_set_boolean@PLT
	jmp	.LBB6_26
.LBB6_25:                               # %if.else.43
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rcx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB6_54
.LBB6_26:                               # %if.end.48
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.49
	jmp	.LBB6_53
.LBB6_28:                               # %sw.bb.50
	movq	-16(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	je	.LBB6_30
# BB#29:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	subq	48(%rdx), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB6_31
.LBB6_30:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB6_31:                               # %cond.end
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	g_value_set_int@PLT
	jmp	.LBB6_53
.LBB6_32:                               # %sw.bb.55
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	g_value_set_uint@PLT
	jmp	.LBB6_53
.LBB6_33:                               # %sw.bb.59
	movq	-16(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	je	.LBB6_35
# BB#34:                                # %cond.true.61
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	subq	48(%rdx), %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB6_36
.LBB6_35:                               # %cond.false.65
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB6_36:                               # %cond.end.68
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_long@PLT
	jmp	.LBB6_53
.LBB6_37:                               # %sw.bb.70
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_ulong@PLT
	jmp	.LBB6_53
.LBB6_38:                               # %sw.bb.73
	movq	-16(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	je	.LBB6_40
# BB#39:                                # %cond.true.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	subq	48(%rdx), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB6_41
.LBB6_40:                               # %cond.false.79
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB6_41:                               # %cond.end.82
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_value_set_int64@PLT
	jmp	.LBB6_53
.LBB6_42:                               # %sw.bb.84
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_uint64@PLT
	jmp	.LBB6_53
.LBB6_43:                               # %sw.bb.87
	movq	-16(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	je	.LBB6_45
# BB#44:                                # %cond.true.89
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB6_46
.LBB6_45:                               # %cond.false.92
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB6_46:                               # %cond.end.95
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-312(%rbp), %rdi        # 8-byte Reload
	callq	g_value_set_float@PLT
	jmp	.LBB6_53
.LBB6_47:                               # %sw.bb.98
	movq	-16(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	je	.LBB6_49
# BB#48:                                # %cond.true.100
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	jmp	.LBB6_50
.LBB6_49:                               # %cond.false.104
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
.LBB6_50:                               # %cond.end.107
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-328(%rbp), %rdi        # 8-byte Reload
	callq	g_value_set_double@PLT
	jmp	.LBB6_53
.LBB6_51:                               # %sw.default.109
	jmp	.LBB6_52
.LBB6_52:                               # %do.body.110
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$494, %edx              # imm = 0x1EE
	leaq	.L__func__.gimp_config_deserialize_fundamental(%rip), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr@PLT
.LBB6_53:                               # %sw.epilog.112
	movl	$41, -4(%rbp)
.LBB6_54:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_config_deserialize_fundamental, .Lfunc_end6-gimp_config_deserialize_fundamental
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_memsize,@function
gimp_config_deserialize_memsize:        # @gimp_config_deserialize_memsize
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
	subq	$64, %rsp
	leaq	.L.str.13(%rip), %rax
	leaq	.L.str.12(%rip), %rcx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rcx, 8(%rdx)
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$266, %eax              # imm = 0x10A
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	-56(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, 8(%rcx)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rcx, 16(%rdi)
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_memsize_deserialize@PLT
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then.13
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.14
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_value_set_uint64@PLT
	movl	$41, -4(%rbp)
.LBB7_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_config_deserialize_memsize, .Lfunc_end7-gimp_config_deserialize_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_path,@function
gimp_config_deserialize_path:           # @gimp_config_deserialize_path
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$264, %eax              # imm = 0x108
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$264, -4(%rbp)          # imm = 0x108
	jmp	.LBB8_9
.LBB8_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	scanner_string_utf8_valid
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB8_9
.LBB8_4:                                # %if.end.4
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_8
# BB#5:                                 # %if.then.7
	movl	$1, %esi
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_config_path_expand@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_7
# BB#6:                                 # %if.then.12
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movq	-40(%rbp), %rdi
	callq	g_error_free@PLT
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB8_9
.LBB8_7:                                # %if.end.15
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_static_string@PLT
.LBB8_8:                                # %if.end.18
	movl	$41, -4(%rbp)
.LBB8_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_config_deserialize_path, .Lfunc_end8-gimp_config_deserialize_path
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_rgb,@function
gimp_config_deserialize_rgb:            # @gimp_config_deserialize_rgb
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
	subq	$64, %rsp
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_color@PLT
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	leaq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
	movl	$41, -4(%rbp)
.LBB9_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_config_deserialize_rgb, .Lfunc_end9-gimp_config_deserialize_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_matrix2,@function
gimp_config_deserialize_matrix2:        # @gimp_config_deserialize_matrix2
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
	leaq	-64(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_scanner_parse_matrix2@PLT
	cmpl	$0, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	leaq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_value_set_boxed@PLT
	movl	$41, -4(%rbp)
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_config_deserialize_matrix2, .Lfunc_end10-gimp_config_deserialize_matrix2
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_value_array,@function
gimp_config_deserialize_value_array:    # @gimp_config_deserialize_value_array
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
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	xorl	%r8d, %r8d
	movl	$24, %r9d
	movl	%r9d, %r10d
	leaq	-80(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r11, %rdi
	movl	%r8d, %esi
	movq	%r10, %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memset@PLT
	movq	-32(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	(%rcx), %rdx
	movq	144(%rdx), %rsi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	-84(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_scanner_parse_int@PLT
	cmpl	$0, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$261, -4(%rbp)          # imm = 0x105
	jmp	.LBB11_11
.LBB11_2:                               # %if.end
	movl	-84(%rbp), %edi
	callq	g_value_array_new@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -92(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB11_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rsi
	callq	g_value_init@PLT
	leaq	-80(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	72(%rcx), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_config_deserialize_value
	movl	%eax, -88(%rbp)
	cmpl	$41, -88(%rbp)
	jne	.LBB11_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	g_value_array_append@PLT
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB11_6:                               # %if.end.9
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-80(%rbp), %rdi
	callq	g_value_unset@PLT
	cmpl	$41, -88(%rbp)
	je	.LBB11_8
# BB#7:                                 # %if.then.11
	movl	-88(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_11
.LBB11_8:                               # %if.end.12
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_9
.LBB11_9:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB11_3
.LBB11_10:                              # %for.end
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_value_take_boxed@PLT
	movl	$41, -4(%rbp)
.LBB11_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_config_deserialize_value_array, .Lfunc_end11-gimp_config_deserialize_value_array
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_unit,@function
gimp_config_deserialize_unit:           # @gimp_config_deserialize_unit
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	.Lgimp_config_deserialize_unit.src(%rip), %rdx
	movq	%rdx, -88(%rbp)
	movq	.Lgimp_config_deserialize_unit.src+8(%rip), %rdx
	movq	%rdx, -80(%rbp)
	movq	.Lgimp_config_deserialize_unit.src+16(%rip), %rdx
	movq	%rdx, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -92(%rbp)
	cmpl	$264, -92(%rbp)         # imm = 0x108
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_config_deserialize_any
	movl	%eax, -4(%rbp)
	jmp	.LBB12_16
.LBB12_2:                               # %if.end
	leaq	.L.str.15(%rip), %rax
	leaq	.L.str.17(%rip), %rcx
	leaq	.L.str.16(%rip), %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rdx, 8(%rsi)
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rcx, 16(%rdx)
	movq	%rax, %rdi
	callq	g_string_new@PLT
	movq	%rax, -64(%rbp)
.LBB12_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	cmpl	$41, %eax
	je	.LBB12_14
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -92(%rbp)
	cmpl	$266, -92(%rbp)         # imm = 0x10A
	jne	.LBB12_6
# BB#5:                                 # %if.then.15
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	48(%rcx), %rsi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	g_string_append@PLT
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB12_13
.LBB12_6:                               # %if.else
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$258, -92(%rbp)         # imm = 0x102
	jne	.LBB12_8
# BB#7:                                 # %if.then.20
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movsbl	48(%rcx), %esi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_12
.LBB12_8:                               # %if.else.24
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$32, -92(%rbp)
	jne	.LBB12_10
# BB#9:                                 # %if.then.26
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	movq	-64(%rbp), %rdi
	movl	-92(%rbp), %ecx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.29
	movl	$266, -92(%rbp)         # imm = 0x10A
	jmp	.LBB12_15
.LBB12_11:                              # %if.end.30
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.31
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_13
.LBB12_13:                              # %if.end.32
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_3
.LBB12_14:                              # %while.end
	leaq	-88(%rbp), %rdi
	movl	$64, %eax
	movl	%eax, %esi
	callq	g_value_init@PLT
	leaq	-88(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_value_set_static_string@PLT
	leaq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_value_transform@PLT
	leaq	-88(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_value_unset@PLT
	movl	$41, -92(%rbp)
.LBB12_15:                              # %cleanup
	movl	$1, %esi
	movq	-64(%rbp), %rdi
	callq	g_string_free@PLT
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, (%rcx)
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rcx, 8(%rdi)
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rcx, 16(%rdi)
	movl	-92(%rbp), %esi
	movl	%esi, -4(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB12_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_config_deserialize_unit, .Lfunc_end12-gimp_config_deserialize_unit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config_deserialize_any,@function
gimp_config_deserialize_any:            # @gimp_config_deserialize_any
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
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	.Lgimp_config_deserialize_any.src(%rip), %rdx
	movq	%rdx, -56(%rbp)
	movq	.Lgimp_config_deserialize_any.src+8(%rip), %rdx
	movq	%rdx, -48(%rbp)
	movq	.Lgimp_config_deserialize_any.src+16(%rip), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rsi
	movq	%rcx, %rdi
	callq	g_value_type_transformable@PLT
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_name@PLT
	leaq	.L.str.18(%rip), %rdi
	leaq	.L__func__.gimp_config_deserialize_any(%rip), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_warning
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB13_9
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token@PLT
	movl	%eax, -60(%rbp)
	cmpl	$266, -60(%rbp)         # imm = 0x10A
	je	.LBB13_5
# BB#3:                                 # %land.lhs.true
	cmpl	$264, -60(%rbp)         # imm = 0x108
	je	.LBB13_5
# BB#4:                                 # %if.then.5
	movl	$266, -4(%rbp)          # imm = 0x10A
	jmp	.LBB13_9
.LBB13_5:                               # %if.end.6
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token@PLT
	leaq	-56(%rbp), %rdi
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	g_value_init@PLT
	cmpl	$266, -60(%rbp)         # imm = 0x10A
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB13_7
# BB#6:                                 # %if.then.10
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_static_string@PLT
	jmp	.LBB13_8
.LBB13_7:                               # %if.else
	leaq	-56(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_static_string@PLT
.LBB13_8:                               # %if.end.13
	leaq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_value_transform@PLT
	leaq	-56(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_value_unset@PLT
	movl	$41, -4(%rbp)
.LBB13_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_config_deserialize_any, .Lfunc_end13-gimp_config_deserialize_any
	.cfi_endproc

	.align	16, 0x90
	.type	scanner_string_utf8_valid,@function
scanner_string_utf8_valid:              # @scanner_string_utf8_valid
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
	subq	$32, %rsp
	movq	$-1, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	%rax, %rsi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	leaq	.L.str.2(%rip), %rdi
	leaq	.L.str.11(%rip), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_scanner_error@PLT
	movl	$0, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	scanner_string_utf8_valid, .Lfunc_end14-scanner_string_utf8_valid
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB15_2
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
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB15_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_string_append_c_inline, .Lfunc_end15-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpConfig"
	.size	.L.str, 14

	.type	.L__func__.gimp_config_deserialize_properties,@object # @__func__.gimp_config_deserialize_properties
.L__func__.gimp_config_deserialize_properties:
	.asciz	"gimp_config_deserialize_properties"
	.size	.L__func__.gimp_config_deserialize_properties, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp20-libgimp"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"invalid value '%s' for token %s"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"invalid value '%ld' for token %s"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimpconfig-deserialize.c"
	.size	.L.str.5, 25

	.type	.L__func__.gimp_config_deserialize_fundamental,@object # @__func__.gimp_config_deserialize_fundamental
.L__func__.gimp_config_deserialize_fundamental:
	.asciz	"gimp_config_deserialize_fundamental"
	.size	.L__func__.gimp_config_deserialize_fundamental, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"yes"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"true"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"no"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"false"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"expected 'yes' or 'no' for boolean token %s, got '%s'"
	.size	.L.str.10, 54

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"value for token %s is not a valid UTF-8 string"
	.size	.L.str.11, 47

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"0123456789"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"0123456789gGmMkKbB"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"while parsing token '%s': %s"
	.size	.L.str.14, 29

	.type	.Lgimp_config_deserialize_unit.src,@object # @gimp_config_deserialize_unit.src
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_config_deserialize_unit.src:
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8
	.size	.Lgimp_config_deserialize_unit.src, 24

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ."
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_."
	.size	.L.str.17, 66

	.type	.Lgimp_config_deserialize_any.src,@object # @gimp_config_deserialize_any.src
	.section	.rodata,"a",@progbits
	.align	8
.Lgimp_config_deserialize_any.src:
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8
	.size	.Lgimp_config_deserialize_any.src, 24

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"%s: %s can not be transformed from a string"
	.size	.L.str.18, 44

	.type	.L__func__.gimp_config_deserialize_any,@object # @__func__.gimp_config_deserialize_any
.L__func__.gimp_config_deserialize_any:
	.asciz	"gimp_config_deserialize_any"
	.size	.L__func__.gimp_config_deserialize_any, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
