	.text
	.file	"gimppluginmanager-query.bc"
	.globl	gimp_plug_in_manager_query
	.align	16, 0x90
	.type	gimp_plug_in_manager_query,@function
gimp_plug_in_manager_query:             # @gimp_plug_in_manager_query
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
	subq	$192, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	movq	$0, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.19
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_21:                               # %if.end.21
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.22
	jmp	.LBB0_23
.LBB0_23:                               # %do.body.23
	cmpq	$0, -48(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.25
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.26
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_26:                               # %if.end.27
	jmp	.LBB0_27
.LBB0_27:                               # %do.end.28
	jmp	.LBB0_28
.LBB0_28:                               # %do.body.29
	cmpq	$0, -56(%rbp)
	je	.LBB0_30
# BB#29:                                # %if.then.31
	jmp	.LBB0_31
.LBB0_30:                               # %if.else.32
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_31:                               # %if.end.33
	jmp	.LBB0_32
.LBB0_32:                               # %do.end.34
	jmp	.LBB0_33
.LBB0_33:                               # %do.body.35
	cmpq	$0, -64(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.37
	jmp	.LBB0_36
.LBB0_35:                               # %if.else.38
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_36:                               # %if.end.39
	jmp	.LBB0_37
.LBB0_37:                               # %do.end.40
	jmp	.LBB0_38
.LBB0_38:                               # %do.body.41
	cmpq	$0, -72(%rbp)
	je	.LBB0_40
# BB#39:                                # %if.then.43
	jmp	.LBB0_41
.LBB0_40:                               # %if.else.44
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_query, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_41:                               # %if.end.45
	jmp	.LBB0_42
.LBB0_42:                               # %do.end.46
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB0_45
# BB#43:                                # %land.lhs.true.48
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB0_45
# BB#44:                                # %if.then.51
	movq	$0, -24(%rbp)
.LBB0_45:                               # %if.end.52
	cmpq	$0, -24(%rbp)
	je	.LBB0_49
# BB#46:                                # %if.then.54
	movl	$8193, %esi             # imm = 0x2001
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	callq	g_regex_new
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_48
# BB#47:                                # %if.then.57
	movl	$0, -4(%rbp)
	jmp	.LBB0_81
.LBB0_48:                               # %if.end.58
	jmp	.LBB0_49
.LBB0_49:                               # %if.end.59
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB0_50:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_68
# BB#51:                                # %for.body
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB0_63
# BB#52:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB0_63
# BB#53:                                # %if.then.65
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-144(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_55
# BB#54:                                # %if.then.68
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-144(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB0_59
.LBB0_55:                               # %if.else.70
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	$47, %esi
	movq	-144(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	callq	strrchr
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB0_57
# BB#56:                                # %if.then.75
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB0_58
.LBB0_57:                               # %if.else.76
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-144(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
.LBB0_58:                               # %if.end.79
                                        #   in Loop: Header=BB0_50 Depth=1
	jmp	.LBB0_59
.LBB0_59:                               # %if.end.80
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-152(%rbp), %rdi
	callq	gimp_strip_uline
	movq	%rax, -152(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_61
# BB#60:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-112(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	match_string
	cmpl	$0, %eax
	je	.LBB0_62
.LBB0_61:                               # %if.then.85
                                        #   in Loop: Header=BB0_50 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	movq	-96(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slist_prepend
	movq	%rax, -96(%rbp)
.LBB0_62:                               # %if.end.87
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-152(%rbp), %rdi
	callq	g_free
.LBB0_63:                               # %if.end.88
                                        #   in Loop: Header=BB0_50 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               # %for.inc
                                        #   in Loop: Header=BB0_50 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_66
# BB#65:                                # %cond.true
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_67
.LBB0_66:                               # %cond.false
                                        #   in Loop: Header=BB0_50 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_67
.LBB0_67:                               # %cond.end
                                        #   in Loop: Header=BB0_50 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB0_50
.LBB0_68:                               # %for.end
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-76(%rbp), %rdi
	callq	g_malloc_n
	movq	-72(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-96(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_69:                               # %for.cond.102
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_78
# BB#70:                                # %for.body.104
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB0_72
# BB#71:                                # %if.then.112
                                        #   in Loop: Header=BB0_69 Depth=1
	movabsq	$.L.str.8, %rdi
	movq	-160(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rsi
	movq	-160(%rbp), %rax
	movq	152(%rax), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -168(%rbp)
	jmp	.LBB0_73
.LBB0_72:                               # %if.else.117
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-160(%rbp), %rax
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	%rax, -168(%rbp)
.LBB0_73:                               # %if.end.121
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-168(%rbp), %rdi
	callq	gimp_strip_uline
	movslq	-100(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movslq	-100(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-160(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_strdup
	movslq	-100(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-160(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_strdup
	movslq	-100(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	g_strdup
	movslq	-100(%rbp), %rcx
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movq	-160(%rbp), %rax
	movq	208(%rax), %rax
	movl	%eax, %edx
	movslq	-100(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%edx, (%rcx,%rax,4)
	movq	-168(%rbp), %rdi
	callq	g_free
	movl	-100(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -100(%rbp)
# BB#74:                                # %for.inc.140
                                        #   in Loop: Header=BB0_69 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB0_76
# BB#75:                                # %cond.true.142
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_77
.LBB0_76:                               # %cond.false.144
                                        #   in Loop: Header=BB0_69 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_77
.LBB0_77:                               # %cond.end.145
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	jmp	.LBB0_69
.LBB0_78:                               # %for.end.147
	movq	-96(%rbp), %rdi
	callq	g_slist_free
	cmpq	$0, -112(%rbp)
	je	.LBB0_80
# BB#79:                                # %if.then.149
	movq	-112(%rbp), %rdi
	callq	g_regex_unref
.LBB0_80:                               # %if.end.150
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_81:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_query, .Lfunc_end0-gimp_plug_in_manager_query
	.cfi_endproc

	.align	16, 0x90
	.type	match_string,@function
match_string:                           # @match_string
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
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_regex_match
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	match_string, .Lfunc_end1-match_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_query,@object # @__func__.gimp_plug_in_manager_query
.L__func__.gimp_plug_in_manager_query:
	.asciz	"gimp_plug_in_manager_query"
	.size	.L__func__.gimp_plug_in_manager_query, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"menu_strs != NULL"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"accel_strs != NULL"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"prog_strs != NULL"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"types_strs != NULL"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"realname_strs != NULL"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"time_ints != NULL"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s/%s"
	.size	.L.str.8, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
