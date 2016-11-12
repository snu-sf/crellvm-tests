	.text
	.file	"gimpitem-exclusive.bc"
	.globl	gimp_item_toggle_exclusive_visible
	.align	16, 0x90
	.type	gimp_item_toggle_exclusive_visible,@function
gimp_item_toggle_exclusive_visible:     # @gimp_item_toggle_exclusive_visible
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_visible, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_91
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.14
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_visible, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_91
.LBB0_16:                               # %if.end.16
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.17
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_20
# BB#19:                                # %if.then.27
	movl	$0, -92(%rbp)
	jmp	.LBB0_25
.LBB0_20:                               # %if.else.28
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# BB#21:                                # %land.lhs.true.31
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_23
# BB#22:                                # %if.then.35
	movl	$1, -92(%rbp)
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.36
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %if.end.39
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_27
# BB#26:                                # %if.then.42
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_visible, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_91
.LBB0_28:                               # %if.end.44
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.45
	movq	-8(%rbp), %rdi
	callq	gimp_item_exclusive_get_ancestry
	movabsq	$.L.str.4, %rsi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_exclusive_get_lists
	cmpq	$0, -32(%rbp)
	jne	.LBB0_32
# BB#30:                                # %lor.lhs.false
	cmpq	$0, -40(%rbp)
	jne	.LBB0_32
# BB#31:                                # %lor.lhs.false.49
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	jne	.LBB0_90
.LBB0_32:                               # %if.then.52
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -104(%rbp)
	movl	$1, -116(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$17, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB0_35
# BB#33:                                # %land.lhs.true.60
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_35
# BB#34:                                # %if.then.64
	movl	$0, -116(%rbp)
.LBB0_35:                               # %if.end.65
	cmpl	$0, -116(%rbp)
	je	.LBB0_62
# BB#36:                                # %if.then.67
	movabsq	$.L.str.6, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$17, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	cmpl	$0, %eax
	je	.LBB0_40
# BB#37:                                # %if.then.71
	movq	-104(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$17, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.75
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB0_39:                               # %if.end.77
	jmp	.LBB0_40
.LBB0_40:                               # %if.end.78
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_41:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_47
# BB#42:                                # %for.body
                                        #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	callq	gimp_image_undo_push_item_visibility
	movq	%rax, -152(%rbp)        # 8-byte Spill
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB0_41 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_45
# BB#44:                                # %cond.true
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_46
.LBB0_45:                               # %cond.false
                                        #   in Loop: Header=BB0_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB0_46
.LBB0_46:                               # %cond.end
                                        #   in Loop: Header=BB0_41 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_41
.LBB0_47:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_48:                               # %for.cond.82
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_54
# BB#49:                                # %for.body.84
                                        #   in Loop: Header=BB0_48 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	callq	gimp_image_undo_push_item_visibility
	movq	%rax, -168(%rbp)        # 8-byte Spill
# BB#50:                                # %for.inc.87
                                        #   in Loop: Header=BB0_48 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_52
# BB#51:                                # %cond.true.89
                                        #   in Loop: Header=BB0_48 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_53
.LBB0_52:                               # %cond.false.91
                                        #   in Loop: Header=BB0_48 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_53
.LBB0_53:                               # %cond.end.92
                                        #   in Loop: Header=BB0_48 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_48
.LBB0_54:                               # %for.end.94
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_55:                               # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_61
# BB#56:                                # %for.body.97
                                        #   in Loop: Header=BB0_55 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	callq	gimp_image_undo_push_item_visibility
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#57:                                # %for.inc.100
                                        #   in Loop: Header=BB0_55 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_59
# BB#58:                                # %cond.true.102
                                        #   in Loop: Header=BB0_55 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_60
.LBB0_59:                               # %cond.false.104
                                        #   in Loop: Header=BB0_55 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB0_60
.LBB0_60:                               # %cond.end.105
                                        #   in Loop: Header=BB0_55 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_55
.LBB0_61:                               # %for.end.107
	movq	-104(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB0_63
.LBB0_62:                               # %if.else.109
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_undo_refresh_preview
.LBB0_63:                               # %if.end.110
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_64:                               # %for.cond.111
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_70
# BB#65:                                # %for.body.113
                                        #   in Loop: Header=BB0_64 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_item_set_visible
# BB#66:                                # %for.inc.115
                                        #   in Loop: Header=BB0_64 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_68
# BB#67:                                # %cond.true.117
                                        #   in Loop: Header=BB0_64 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB0_69
.LBB0_68:                               # %cond.false.119
                                        #   in Loop: Header=BB0_64 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB0_69
.LBB0_69:                               # %cond.end.120
                                        #   in Loop: Header=BB0_64 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_64
.LBB0_70:                               # %for.end.122
	cmpq	$0, -32(%rbp)
	je	.LBB0_79
# BB#71:                                # %if.then.124
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_72:                               # %for.cond.125
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_78
# BB#73:                                # %for.body.127
                                        #   in Loop: Header=BB0_72 Depth=1
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_item_set_visible
# BB#74:                                # %for.inc.129
                                        #   in Loop: Header=BB0_72 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_76
# BB#75:                                # %cond.true.131
                                        #   in Loop: Header=BB0_72 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_77
.LBB0_76:                               # %cond.false.133
                                        #   in Loop: Header=BB0_72 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB0_77
.LBB0_77:                               # %cond.end.134
                                        #   in Loop: Header=BB0_72 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_72
.LBB0_78:                               # %for.end.136
	jmp	.LBB0_89
.LBB0_79:                               # %if.else.137
	cmpq	$0, -40(%rbp)
	je	.LBB0_88
# BB#80:                                # %if.then.139
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_81:                               # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_87
# BB#82:                                # %for.body.142
                                        #   in Loop: Header=BB0_81 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_item_set_visible
# BB#83:                                # %for.inc.144
                                        #   in Loop: Header=BB0_81 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_85
# BB#84:                                # %cond.true.146
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_86
.LBB0_85:                               # %cond.false.148
                                        #   in Loop: Header=BB0_81 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB0_86
.LBB0_86:                               # %cond.end.149
                                        #   in Loop: Header=BB0_81 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB0_81
.LBB0_87:                               # %for.end.151
	jmp	.LBB0_88
.LBB0_88:                               # %if.end.152
	jmp	.LBB0_89
.LBB0_89:                               # %if.end.153
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB0_90:                               # %if.end.154
	movq	-24(%rbp), %rdi
	callq	g_list_free
.LBB0_91:                               # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_toggle_exclusive_visible, .Lfunc_end0-gimp_item_toggle_exclusive_visible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_exclusive_get_ancestry,@function
gimp_item_exclusive_get_ancestry:       # @gimp_item_exclusive_get_ancestry
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
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_exclusive_get_ancestry, .Lfunc_end1-gimp_item_exclusive_get_ancestry
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_exclusive_get_lists,@function
gimp_item_exclusive_get_lists:          # @gimp_item_exclusive_get_lists
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_tree
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_list
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB2_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB2_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_parent
	cmpq	$0, %rax
	jne	.LBB2_9
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_is_ancestor
	cmpl	$0, %eax
	jne	.LBB2_9
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-68(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -68(%rbp)
	je	.LBB2_7
# BB#6:                                 # %if.then.16
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	jmp	.LBB2_8
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.19
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.20
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB2_13
# BB#12:                                # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB2_14
.LBB2_14:                               # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB2_1
.LBB2_15:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_exclusive_get_lists, .Lfunc_end2-gimp_item_exclusive_get_lists
	.cfi_endproc

	.globl	gimp_item_toggle_exclusive_linked
	.align	16, 0x90
	.type	gimp_item_toggle_exclusive_linked,@function
gimp_item_toggle_exclusive_linked:      # @gimp_item_toggle_exclusive_linked
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_linked, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_87
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_linked, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_87
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.18
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_20
# BB#19:                                # %if.then.27
	movl	$0, -84(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %if.else.28
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_23
# BB#21:                                # %land.lhs.true.31
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_23
# BB#22:                                # %if.then.35
	movl	$1, -84(%rbp)
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.36
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_24:                               # %if.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.39
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.42
	jmp	.LBB3_28
.LBB3_27:                               # %if.else.43
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_item_toggle_exclusive_linked, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_87
.LBB3_28:                               # %if.end.44
	jmp	.LBB3_29
.LBB3_29:                               # %do.end.45
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_container_iter
	movq	%rax, -40(%rbp)
.LBB3_30:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_41
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB3_36
# BB#32:                                # %if.then.50
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB3_34
# BB#33:                                # %if.then.53
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -24(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.55
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -32(%rbp)
.LBB3_35:                               # %if.end.57
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.58
                                        #   in Loop: Header=BB3_30 Depth=1
	jmp	.LBB3_37
.LBB3_37:                               # %for.inc
                                        #   in Loop: Header=BB3_30 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_39
# BB#38:                                # %cond.true
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_40
.LBB3_39:                               # %cond.false
                                        #   in Loop: Header=BB3_30 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_40
.LBB3_40:                               # %cond.end
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_30
.LBB3_41:                               # %for.end
	cmpq	$0, -24(%rbp)
	jne	.LBB3_44
# BB#42:                                # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB3_44
# BB#43:                                # %lor.lhs.false.62
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	jne	.LBB3_87
.LBB3_44:                               # %if.then.65
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -104(%rbp)
	movl	$1, -116(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$18, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_47
# BB#45:                                # %land.lhs.true.73
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB3_47
# BB#46:                                # %if.then.77
	movl	$0, -116(%rbp)
.LBB3_47:                               # %if.end.78
	cmpl	$0, -116(%rbp)
	je	.LBB3_67
# BB#48:                                # %if.then.80
	movabsq	$.L.str.8, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$18, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	cmpl	$0, %eax
	je	.LBB3_52
# BB#49:                                # %if.then.84
	movq	-104(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_undo_stack_get_type
	movl	$18, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.LBB3_51
# BB#50:                                # %if.then.88
	movl	$80, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
.LBB3_51:                               # %if.end.90
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.91
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-8(%rbp), %rdx
	callq	gimp_image_undo_push_item_linked
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB3_53:                               # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_59
# BB#54:                                # %for.body.95
                                        #   in Loop: Header=BB3_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	callq	gimp_image_undo_push_item_linked
	movq	%rax, -168(%rbp)        # 8-byte Spill
# BB#55:                                # %for.inc.98
                                        #   in Loop: Header=BB3_53 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_57
# BB#56:                                # %cond.true.100
                                        #   in Loop: Header=BB3_53 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_58
.LBB3_57:                               # %cond.false.102
                                        #   in Loop: Header=BB3_53 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB3_58
.LBB3_58:                               # %cond.end.103
                                        #   in Loop: Header=BB3_53 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_53
.LBB3_59:                               # %for.end.105
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_60:                               # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_66
# BB#61:                                # %for.body.108
                                        #   in Loop: Header=BB3_60 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdx
	callq	gimp_image_undo_push_item_linked
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#62:                                # %for.inc.111
                                        #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_64
# BB#63:                                # %cond.true.113
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_65
.LBB3_64:                               # %cond.false.115
                                        #   in Loop: Header=BB3_60 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB3_65
.LBB3_65:                               # %cond.end.116
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_60
.LBB3_66:                               # %for.end.118
	movq	-104(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB3_68
.LBB3_67:                               # %if.else.120
	movq	-112(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_undo_refresh_preview
.LBB3_68:                               # %if.end.121
	cmpq	$0, -32(%rbp)
	jne	.LBB3_70
# BB#69:                                # %lor.lhs.false.123
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	jne	.LBB3_78
.LBB3_70:                               # %if.then.126
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_item_set_linked
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)
.LBB3_71:                               # %for.cond.127
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_77
# BB#72:                                # %for.body.129
                                        #   in Loop: Header=BB3_71 Depth=1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_item_set_linked
# BB#73:                                # %for.inc.131
                                        #   in Loop: Header=BB3_71 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_75
# BB#74:                                # %cond.true.133
                                        #   in Loop: Header=BB3_71 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB3_76
.LBB3_75:                               # %cond.false.135
                                        #   in Loop: Header=BB3_71 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB3_76
.LBB3_76:                               # %cond.end.136
                                        #   in Loop: Header=BB3_71 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_71
.LBB3_77:                               # %for.end.138
	jmp	.LBB3_86
.LBB3_78:                               # %if.else.139
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_79:                               # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_85
# BB#80:                                # %for.body.142
                                        #   in Loop: Header=BB3_79 Depth=1
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_item_set_linked
# BB#81:                                # %for.inc.144
                                        #   in Loop: Header=BB3_79 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_83
# BB#82:                                # %cond.true.146
                                        #   in Loop: Header=BB3_79 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_84
.LBB3_83:                               # %cond.false.148
                                        #   in Loop: Header=BB3_79 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_84
.LBB3_84:                               # %cond.end.149
                                        #   in Loop: Header=BB3_79 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB3_79
.LBB3_85:                               # %for.end.151
	jmp	.LBB3_86
.LBB3_86:                               # %if.end.152
	movq	-24(%rbp), %rdi
	callq	g_list_free
	movq	-32(%rbp), %rdi
	callq	g_list_free
.LBB3_87:                               # %if.end.153
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_toggle_exclusive_linked, .Lfunc_end3-gimp_item_toggle_exclusive_linked
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_item_toggle_exclusive_visible,@object # @__func__.gimp_item_toggle_exclusive_visible
.L__func__.gimp_item_toggle_exclusive_visible:
	.asciz	"gimp_item_toggle_exclusive_visible"
	.size	.L__func__.gimp_item_toggle_exclusive_visible, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_ITEM (item)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (item)"
	.size	.L.str.2, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"visible"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"exclusive-visible-item"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Set Item Exclusive Visible"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_item_toggle_exclusive_linked,@object # @__func__.gimp_item_toggle_exclusive_linked
.L__func__.gimp_item_toggle_exclusive_linked:
	.asciz	"gimp_item_toggle_exclusive_linked"
	.size	.L__func__.gimp_item_toggle_exclusive_linked, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"exclusive-linked-item"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Set Item Exclusive Linked"
	.size	.L.str.8, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
