	.text
	.file	"gimpimage-arrange.bc"
	.globl	gimp_image_arrange_objects
	.align	16, 0x90
	.type	gimp_image_arrange_objects,@function
gimp_image_arrange_objects:             # @gimp_image_arrange_objects
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_arrange_objects, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_66
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_is_fundamentally_a
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB0_16
.LBB0_15:                               # %if.then.15
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.16
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_arrange_objects, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_66
.LBB0_17:                               # %if.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.end.18
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	ja	.LBB0_23
# BB#67:                                # %do.end.18
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_19:                               # %sw.bb
	movl	$3, %esi
	movl	$1, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	compute_offsets
	jmp	.LBB0_23
.LBB0_20:                               # %sw.bb.19
	movl	$1, -44(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	compute_offsets
	jmp	.LBB0_23
.LBB0_21:                               # %sw.bb.20
	xorl	%esi, %esi
	movl	$1, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	compute_offsets
	jmp	.LBB0_23
.LBB0_22:                               # %sw.bb.21
	movl	$1, -48(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	compute_offsets
.LBB0_23:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	sort_by_offset
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	compute_offsets
	cmpq	$0, -32(%rbp)
	jne	.LBB0_28
# BB#24:                                # %if.then.24
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_26
# BB#25:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB0_27
.LBB0_26:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB0_27
.LBB0_27:                               # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.27
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	compute_offset
.LBB0_29:                               # %if.end.28
	movabsq	$.L.str.3, %rsi
	movq	-32(%rbp), %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_65
# BB#30:                                # %if.then.31
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$20, %esi
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-64(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movl	$1, -100(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB0_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB0_64
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movq	-112(%rbp), %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -124(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.46
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-52(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	-100(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -116(%rbp)
.LBB0_34:                               # %if.end.47
                                        #   in Loop: Header=BB0_31 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then.49
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-52(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	-100(%rbp), %ecx
	imull	-40(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -120(%rbp)
.LBB0_36:                               # %if.end.53
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.62
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$0, -148(%rbp)
	jmp	.LBB0_43
.LBB0_38:                               # %if.else.63
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB0_41
# BB#40:                                # %if.then.71
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$1, -148(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.72
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB0_42:                               # %if.end.74
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.75
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.78
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
	jmp	.LBB0_59
.LBB0_45:                               # %if.else.81
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB0_47
# BB#46:                                # %if.then.90
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$0, -172(%rbp)
	jmp	.LBB0_52
.LBB0_47:                               # %if.else.91
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_50
# BB#48:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB0_50
# BB#49:                                # %if.then.99
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$1, -172(%rbp)
	jmp	.LBB0_51
.LBB0_50:                               # %if.else.100
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB0_51:                               # %if.end.102
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_52
.LBB0_52:                               # %if.end.103
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB0_58
# BB#53:                                # %if.then.106
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-112(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_guide_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -184(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	je	.LBB0_55
	jmp	.LBB0_68
.LBB0_68:                               # %if.then.106
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jne	.LBB0_56
	jmp	.LBB0_54
.LBB0_54:                               # %sw.bb.111
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-124(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB0_57
.LBB0_55:                               # %sw.bb.113
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movl	-124(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_image_move_guide
	jmp	.LBB0_57
.LBB0_56:                               # %sw.default
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_57
.LBB0_57:                               # %sw.epilog.115
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_58
.LBB0_58:                               # %if.end.116
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.117
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_60
.LBB0_60:                               # %for.inc
                                        #   in Loop: Header=BB0_31 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB0_62
# BB#61:                                # %cond.true.119
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB0_63
.LBB0_62:                               # %cond.false.121
                                        #   in Loop: Header=BB0_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB0_63
.LBB0_63:                               # %cond.end.122
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	movl	-100(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -100(%rbp)
	jmp	.LBB0_31
.LBB0_64:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_65:                               # %if.end.125
	movq	-64(%rbp), %rdi
	callq	g_list_free
.LBB0_66:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_arrange_objects, .Lfunc_end0-gimp_image_arrange_objects
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_19
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_21
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_22
	.quad	.LBB0_22
	.quad	.LBB0_22

	.text
	.align	16, 0x90
	.type	compute_offsets,@function
compute_offsets:                        # @compute_offsets
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	compute_offset
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
.LBB1_6:                                # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_7:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	compute_offsets, .Lfunc_end1-compute_offsets
	.cfi_endproc

	.align	16, 0x90
	.type	sort_by_offset,@function
sort_by_offset:                         # @sort_by_offset
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
	callq	g_list_copy
	movabsq	$offset_compare, %rsi
	movq	%rax, %rdi
	callq	g_list_sort
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sort_by_offset, .Lfunc_end2-sort_by_offset
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	compute_offset,@function
compute_offset:                         # @compute_offset
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_7
.LBB3_2:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_5
# BB#3:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_5
# BB#4:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_6
.LBB3_5:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_6:                                # %if.end
	jmp	.LBB3_7
.LBB3_7:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -24(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -28(%rbp)
	jmp	.LBB3_57
.LBB3_9:                                # %if.else.14
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_11
# BB#10:                                # %if.then.23
	movl	$0, -84(%rbp)
	jmp	.LBB3_16
.LBB3_11:                               # %if.else.24
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_14
# BB#12:                                # %land.lhs.true.27
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_14
# BB#13:                                # %if.then.31
	movl	$1, -84(%rbp)
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.32
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_15:                               # %if.end.34
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.35
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_21
# BB#17:                                # %if.then.38
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB3_19
# BB#18:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -28(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -24(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.50
	leaq	-108(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-96(%rbp), %rdi
	callq	gimp_channel_bounds
	movl	-108(%rbp), %r9d
	movl	%r9d, -16(%rbp)
	movl	-116(%rbp), %r9d
	movl	%r9d, -20(%rbp)
	movl	-112(%rbp), %r9d
	subl	-108(%rbp), %r9d
	movl	%r9d, -28(%rbp)
	movl	-120(%rbp), %r9d
	subl	-116(%rbp), %r9d
	movl	%r9d, -24(%rbp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB3_20:                               # %if.end.57
	jmp	.LBB3_56
.LBB3_21:                               # %if.else.58
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_23
# BB#22:                                # %if.then.67
	movl	$0, -140(%rbp)
	jmp	.LBB3_28
.LBB3_23:                               # %if.else.68
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_26
# BB#24:                                # %land.lhs.true.71
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_26
# BB#25:                                # %if.then.75
	movl	$1, -140(%rbp)
	jmp	.LBB3_27
.LBB3_26:                               # %if.else.76
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_27:                               # %if.end.78
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.79
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_40
# BB#29:                                # %if.then.82
	movq	-8(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_vectors_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB3_31
# BB#30:                                # %if.then.95
	movl	$0, -172(%rbp)
	jmp	.LBB3_36
.LBB3_31:                               # %if.else.96
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_34
# BB#32:                                # %land.lhs.true.99
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB3_34
# BB#33:                                # %if.then.103
	movl	$1, -172(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.104
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB3_35:                               # %if.end.106
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.107
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB3_38
# BB#37:                                # %if.then.110
	movq	-152(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	leaq	-200(%rbp), %rcx
	leaq	-208(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_vectors_bounds
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-184(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -16(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-192(%rbp), %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -20(%rbp)
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-192(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -24(%rbp)
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-184(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	movl	%r9d, -28(%rbp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %if.else.126
	leaq	-16(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -28(%rbp)
	movq	-152(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -24(%rbp)
.LBB3_39:                               # %if.end.129
	jmp	.LBB3_55
.LBB3_40:                               # %if.else.130
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)
	callq	gimp_guide_get_type
	movq	%rax, -224(%rbp)
	cmpq	$0, -216(%rbp)
	jne	.LBB3_42
# BB#41:                                # %if.then.139
	movl	$0, -228(%rbp)
	jmp	.LBB3_47
.LBB3_42:                               # %if.else.140
	movq	-216(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_45
# BB#43:                                # %land.lhs.true.143
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-224(%rbp), %rax
	jne	.LBB3_45
# BB#44:                                # %if.then.148
	movl	$1, -228(%rbp)
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.149
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -228(%rbp)
.LBB3_46:                               # %if.end.151
	jmp	.LBB3_47
.LBB3_47:                               # %if.end.152
	movl	-228(%rbp), %eax
	movl	%eax, -232(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB3_53
# BB#48:                                # %if.then.155
	movq	-8(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	callq	gimp_guide_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -240(%rbp)
	movq	%rax, %rdi
	callq	gimp_guide_get_orientation
	movl	%eax, %ecx
	testl	%eax, %eax
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	je	.LBB3_50
	jmp	.LBB3_67
.LBB3_67:                               # %if.then.155
	movl	-308(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jne	.LBB3_51
	jmp	.LBB3_49
.LBB3_49:                               # %sw.bb
	movq	-240(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -16(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB3_52
.LBB3_50:                               # %sw.bb.161
	movq	-240(%rbp), %rdi
	callq	gimp_guide_get_position
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	jmp	.LBB3_52
.LBB3_51:                               # %sw.default
	jmp	.LBB3_52
.LBB3_52:                               # %sw.epilog
	jmp	.LBB3_54
.LBB3_53:                               # %if.else.163
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB3_54:                               # %if.end.164
	jmp	.LBB3_55
.LBB3_55:                               # %if.end.165
	jmp	.LBB3_56
.LBB3_56:                               # %if.end.166
	jmp	.LBB3_57
.LBB3_57:                               # %if.end.167
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	ja	.LBB3_64
# BB#68:                                # %if.end.167
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_58:                               # %sw.bb.168
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_66
.LBB3_59:                               # %sw.bb.169
	movl	$2, %eax
	movl	-16(%rbp), %ecx
	movl	-28(%rbp), %edx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-332(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB3_66
.LBB3_60:                               # %sw.bb.171
	movl	-16(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_66
.LBB3_61:                               # %sw.bb.173
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_66
.LBB3_62:                               # %sw.bb.174
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	%eax, -336(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-336(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB3_66
.LBB3_63:                               # %sw.bb.177
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_66
.LBB3_64:                               # %sw.default.179
	jmp	.LBB3_65
.LBB3_65:                               # %do.body
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.6, %rsi
	movl	$350, %edx              # imm = 0x15E
	movabsq	$.L__func__.compute_offset, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB3_66:                               # %sw.epilog.180
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	movslq	-32(%rbp), %rdx
	callq	g_object_set_data
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	compute_offset, .Lfunc_end3-compute_offset
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_58
	.quad	.LBB3_59
	.quad	.LBB3_60
	.quad	.LBB3_61
	.quad	.LBB3_62
	.quad	.LBB3_63
	.quad	.LBB3_58
	.quad	.LBB3_59
	.quad	.LBB3_60
	.quad	.LBB3_61
	.quad	.LBB3_62
	.quad	.LBB3_63

	.text
	.align	16, 0x90
	.type	offset_compare,@function
offset_compare:                         # @offset_compare
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	offset_compare, .Lfunc_end4-offset_compare
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_arrange_objects,@object # @__func__.gimp_image_arrange_objects
.L__func__.gimp_image_arrange_objects:
	.asciz	"gimp_image_arrange_objects"
	.size	.L__func__.gimp_image_arrange_objects, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_IS_OBJECT (reference) || reference == NULL"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"align-offset"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Arrange Objects"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Alignment object is not an image, item or guide.\n"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimpimage-arrange.c"
	.size	.L.str.6, 20

	.type	.L__func__.compute_offset,@object # @__func__.compute_offset
.L__func__.compute_offset:
	.asciz	"compute_offset"
	.size	.L__func__.compute_offset, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
