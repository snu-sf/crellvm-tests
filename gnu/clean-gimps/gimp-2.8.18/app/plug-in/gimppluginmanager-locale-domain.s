	.text
	.file	"gimppluginmanager-locale-domain.bc"
	.globl	gimp_plug_in_manager_locale_domain_exit
	.align	16, 0x90
	.type	gimp_plug_in_manager_locale_domain_exit,@function
gimp_plug_in_manager_locale_domain_exit: # @gimp_plug_in_manager_locale_domain_exit
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_locale_domain_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_19
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
# BB#15:                                # %do.body.13
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$24, %eax
	movl	%eax, %edi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#16:                                # %do.end.14
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %for.inc
                                        #   in Loop: Header=BB0_13 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_13
.LBB0_18:                               # %for.end
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_slist_free
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
.LBB0_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_manager_locale_domain_exit, .Lfunc_end0-gimp_plug_in_manager_locale_domain_exit
	.cfi_endproc

	.globl	gimp_plug_in_manager_add_locale_domain
	.align	16, 0x90
	.type	gimp_plug_in_manager_add_locale_domain,@function
gimp_plug_in_manager_add_locale_domain: # @gimp_plug_in_manager_add_locale_domain
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_locale_domain, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_locale_domain, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.19
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_add_locale_domain, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_21:                               # %if.end.21
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.22
	movl	$24, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rsi
	movq	%rax, 96(%rsi)
.LBB1_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_manager_add_locale_domain, .Lfunc_end1-gimp_plug_in_manager_add_locale_domain
	.cfi_endproc

	.globl	gimp_plug_in_manager_get_locale_domain
	.align	16, 0x90
	.type	gimp_plug_in_manager_get_locale_domain,@function
gimp_plug_in_manager_get_locale_domain: # @gimp_plug_in_manager_get_locale_domain
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_locale_domain, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB2_14
# BB#13:                                # %if.then.12
	callq	gimp_locale_directory
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_14:                               # %if.end.14
	cmpq	$0, -24(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.16
	movq	$0, -8(%rbp)
	jmp	.LBB2_28
.LBB2_16:                               # %if.end.17
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB2_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB2_27
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB2_25
# BB#19:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_25
# BB#20:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_25
# BB#21:                                # %if.then.28
	cmpq	$0, -32(%rbp)
	je	.LBB2_24
# BB#22:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB2_24
# BB#23:                                # %if.then.33
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_24:                               # %if.end.35
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_28
.LBB2_25:                               # %if.end.36
                                        #   in Loop: Header=BB2_17 Depth=1
	jmp	.LBB2_26
.LBB2_26:                               # %for.inc
                                        #   in Loop: Header=BB2_17 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_17
.LBB2_27:                               # %for.end
	movabsq	$.L.str.4, %rax
	movq	%rax, -8(%rbp)
.LBB2_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_manager_get_locale_domain, .Lfunc_end2-gimp_plug_in_manager_get_locale_domain
	.cfi_endproc

	.globl	gimp_plug_in_manager_get_locale_domains
	.align	16, 0x90
	.type	gimp_plug_in_manager_get_locale_domains,@function
gimp_plug_in_manager_get_locale_domains: # @gimp_plug_in_manager_get_locale_domains
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_locale_domains, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_42
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_locale_domains, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_42
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_plug_in_manager_get_locale_domains, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_42
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_23:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB3_34
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB3_25:                               # %for.cond.28
                                        #   Parent Loop BB3_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB3_30
# BB#26:                                # %for.body.30
                                        #   in Loop: Header=BB3_25 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.34
                                        #   in Loop: Header=BB3_23 Depth=1
	jmp	.LBB3_30
.LBB3_28:                               # %if.end.35
                                        #   in Loop: Header=BB3_25 Depth=2
	jmp	.LBB3_29
.LBB3_29:                               # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_25
.LBB3_30:                               # %for.end
                                        #   in Loop: Header=BB3_23 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB3_32
# BB#31:                                # %if.then.37
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	%rax, -48(%rbp)
.LBB3_32:                               # %if.end.39
                                        #   in Loop: Header=BB3_23 Depth=1
	jmp	.LBB3_33
.LBB3_33:                               # %for.inc.40
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_23
.LBB3_34:                               # %for.end.42
	movq	-48(%rbp), %rdi
	callq	g_slist_reverse
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_slist_length
	movl	$8, %ecx
	movl	%ecx, %esi
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	callq	g_strdup
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, (%rsi)
	callq	gimp_locale_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$1, -56(%rbp)
.LBB3_35:                               # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB3_41
# BB#36:                                # %for.body.56
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_strdup
	movslq	-56(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB3_38
# BB#37:                                # %cond.true
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_strdup
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false
                                        #   in Loop: Header=BB3_35 Depth=1
	callq	gimp_locale_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB3_39:                               # %cond.end
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movslq	-56(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#40:                                # %for.inc.70
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-56(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB3_35
.LBB3_41:                               # %for.end.72
	movq	-48(%rbp), %rdi
	callq	g_slist_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_manager_get_locale_domains, .Lfunc_end3-gimp_plug_in_manager_get_locale_domains
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.gimp_plug_in_manager_locale_domain_exit,@object # @__func__.gimp_plug_in_manager_locale_domain_exit
.L__func__.gimp_plug_in_manager_locale_domain_exit:
	.asciz	"gimp_plug_in_manager_locale_domain_exit"
	.size	.L__func__.gimp_plug_in_manager_locale_domain_exit, 40

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.1, 34

	.type	.L__func__.gimp_plug_in_manager_add_locale_domain,@object # @__func__.gimp_plug_in_manager_add_locale_domain
.L__func__.gimp_plug_in_manager_add_locale_domain:
	.asciz	"gimp_plug_in_manager_add_locale_domain"
	.size	.L__func__.gimp_plug_in_manager_add_locale_domain, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"prog_name != NULL"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"domain_name != NULL"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_plug_in_manager_get_locale_domain,@object # @__func__.gimp_plug_in_manager_get_locale_domain
.L__func__.gimp_plug_in_manager_get_locale_domain:
	.asciz	"gimp_plug_in_manager_get_locale_domain"
	.size	.L__func__.gimp_plug_in_manager_get_locale_domain, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.4, 20

	.type	.L__func__.gimp_plug_in_manager_get_locale_domains,@object # @__func__.gimp_plug_in_manager_get_locale_domains
.L__func__.gimp_plug_in_manager_get_locale_domains:
	.asciz	"gimp_plug_in_manager_get_locale_domains"
	.size	.L__func__.gimp_plug_in_manager_get_locale_domains, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"locale_domains != NULL"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"locale_paths != NULL"
	.size	.L.str.6, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
