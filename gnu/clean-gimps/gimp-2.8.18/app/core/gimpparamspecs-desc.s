	.text
	.file	"gimpparamspecs-desc.bc"
	.globl	gimp_param_spec_get_desc
	.align	16, 0x90
	.type	gimp_param_spec_get_desc,@function
gimp_param_spec_get_desc:               # @gimp_param_spec_get_desc
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$76, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_param_spec_get_desc, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_30
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_param_unit_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.3
	movl	$0, -36(%rbp)
	jmp	.LBB0_12
.LBB0_7:                                # %if.else.4
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_10
# BB#8:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_10
# BB#9:                                 # %if.then.7
	movl	$1, -36(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.8
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %if.end.11
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_14
# BB#13:                                # %if.then.13
	jmp	.LBB0_29
.LBB0_14:                               # %if.else.14
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_param_int32_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.23
	movl	$0, -60(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.24
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.27
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.31
	movl	$1, -60(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.32
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_20:                               # %if.end.34
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.35
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB0_23
# BB#22:                                # %if.then.38
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_int32_desc
	movq	%rax, -8(%rbp)
	jmp	.LBB0_30
.LBB0_23:                               # %if.else.40
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_fundamental
	movq	%rax, %rdi
	subq	$20, %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB0_24
	jmp	.LBB0_31
.LBB0_31:                               # %if.else.40
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	$48, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB0_26
	jmp	.LBB0_32
.LBB0_32:                               # %if.else.40
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	$60, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	je	.LBB0_25
	jmp	.LBB0_27
.LBB0_24:                               # %sw.bb
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_boolean_desc
	movq	%rax, -8(%rbp)
	jmp	.LBB0_30
.LBB0_25:                               # %sw.bb.43
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_double_desc
	movq	%rax, -8(%rbp)
	jmp	.LBB0_30
.LBB0_26:                               # %sw.bb.45
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_enum_desc
	movq	%rax, -8(%rbp)
	jmp	.LBB0_30
.LBB0_27:                               # %sw.epilog
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.47
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.48
	movq	-16(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB0_30:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_param_spec_get_desc, .Lfunc_end0-gimp_param_spec_get_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_spec_int32_desc,@function
gimp_param_spec_int32_desc:             # @gimp_param_spec_int32_desc
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	g_param_spec_types, %rax
	movq	24(%rax), %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_get_blurb
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$-2147483648, 72(%rax)  # imm = 0xFFFFFFFF80000000
	jne	.LBB1_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$2147483647, 76(%rax)   # imm = 0x7FFFFFFF
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.end
	movq	-24(%rbp), %rax
	cmpl	$-2147483648, 72(%rax)  # imm = 0xFFFFFFFF80000000
	jne	.LBB1_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.2, %rdi
	movq	-24(%rbp), %rsi
	movl	76(%rsi), %ecx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB1_8
.LBB1_5:                                # %if.end.10
	movq	-24(%rbp), %rax
	cmpl	$2147483647, 76(%rax)   # imm = 0x7FFFFFFF
	jne	.LBB1_7
# BB#6:                                 # %if.then.13
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rsi
	movl	72(%rsi), %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.end.17
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	72(%rax), %edx
	movq	-16(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.4, %rdi
	movq	-24(%rbp), %rsi
	movl	76(%rsi), %r8d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB1_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_param_spec_int32_desc, .Lfunc_end1-gimp_param_spec_int32_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_spec_boolean_desc,@function
gimp_param_spec_boolean_desc:           # @gimp_param_spec_boolean_desc
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
	movq	-8(%rbp), %rdi
	callq	gimp_param_spec_get_blurb
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_param_spec_boolean_desc, .Lfunc_end2-gimp_param_spec_boolean_desc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	-4503599627370497       # double -1.7976931348623157E+308
.LCPI3_1:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.align	16, 0x90
	.type	gimp_param_spec_double_desc,@function
gimp_param_spec_double_desc:            # @gimp_param_spec_double_desc
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	g_param_spec_types, %rax
	movq	104(%rax), %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_param_spec_get_blurb
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_3
	jp	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_3
	jp	.LBB3_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.end
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	72(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_5
	jp	.LBB3_5
# BB#4:                                 # %if.then.6
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rsi
	movsd	80(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_5:                                # %if.end.10
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_7
	jp	.LBB3_7
# BB#6:                                 # %if.then.13
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.8, %rdi
	movq	-24(%rbp), %rsi
	movsd	72(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$1, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.17
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	g_param_spec_get_name
	movabsq	$.L.str.9, %rdi
	movq	-24(%rbp), %rsi
	movsd	80(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rax, %rdx
	movb	$2, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_param_spec_double_desc, .Lfunc_end3-gimp_param_spec_double_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_spec_enum_desc,@function
gimp_param_spec_enum_desc:              # @gimp_param_spec_enum_desc
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_param_spec_get_blurb
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	g_type_class_peek
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_param_enum_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_5
# BB#4:                                 # %if.then.6
	movl	$1, -76(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.7
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.9
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_param_enum_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.14
	movq	$0, -48(%rbp)
.LBB4_10:                               # %if.end.15
	movabsq	$.L.str.10, %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	.LBB4_27
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB4_13:                               # %for.cond.20
                                        #   Parent Loop BB4_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -88(%rbp)
	je	.LBB4_18
# BB#14:                                # %for.body.22
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	movl	-100(%rbp), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB4_16
# BB#15:                                # %if.then.27
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.28
                                        #   in Loop: Header=BB4_13 Depth=2
	jmp	.LBB4_17
.LBB4_17:                               # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB4_13
.LBB4_18:                               # %for.end
                                        #   in Loop: Header=BB4_11 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.30
                                        #   in Loop: Header=BB4_11 Depth=1
	jmp	.LBB4_26
.LBB4_20:                               # %if.end.31
                                        #   in Loop: Header=BB4_11 Depth=1
	cmpl	$0, -56(%rbp)
	jle	.LBB4_22
# BB#21:                                # %if.then.34
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$.L.str.11, %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_22:                               # %if.end.36
                                        #   in Loop: Header=BB4_11 Depth=1
	movabsq	$.L.str.12, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB4_24
# BB#23:                                # %if.then.39
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$5, %rax
	movq	%rax, %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -96(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.42
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_canonicalize_identifier
	movq	%rax, -96(%rbp)
.LBB4_25:                               # %if.end.45
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_string_append
	movq	-96(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_free
	movabsq	$.L.str.13, %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	g_string_append_printf
	movl	-56(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -56(%rbp)
.LBB4_26:                               # %for.inc.48
                                        #   in Loop: Header=BB4_11 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rcx
	addq	$24, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB4_11
.LBB4_27:                               # %for.end.50
	movabsq	$.L.str.14, %rsi
	movq	-24(%rbp), %rdi
	callq	g_string_append
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_string_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_param_spec_enum_desc, .Lfunc_end4-gimp_param_spec_enum_desc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_spec_get_blurb,@function
gimp_param_spec_get_blurb:              # @gimp_param_spec_get_blurb
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_param_spec_get_blurb
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_2:                                # %cond.false
	movabsq	$.L.str.5, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB5_3
.LBB5_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_param_spec_get_blurb, .Lfunc_end5-gimp_param_spec_get_blurb
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_param_spec_get_desc,@object # @__func__.gimp_param_spec_get_desc
.L__func__.gimp_param_spec_get_desc:
	.asciz	"gimp_param_spec_get_desc"
	.size	.L__func__.gimp_param_spec_get_desc, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"G_IS_PARAM_SPEC (pspec)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s (%s <= %d)"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s (%s >= %d)"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s (%d <= %s <= %d)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" (TRUE or FALSE)"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s (%s <= %g)"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s (%s >= %g)"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s (%g <= %s <= %g)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" { "
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	", "
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" (%d)"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	" }"
	.size	.L.str.14, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
