	.text
	.file	"gimphelpdomain.bc"
	.globl	gimp_help_domain_new
	.align	16, 0x90
	.type	gimp_help_domain_new,@function
gimp_help_domain_new:                   # @gimp_help_domain_new
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
	subq	$32, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_str_has_suffix
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	strlen
	subq	$1, %rax
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movb	$0, (%rdi,%rax)
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %if.end.10
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_domain_new, .Lfunc_end0-gimp_help_domain_new
	.cfi_endproc

	.globl	gimp_help_domain_free
	.align	16, 0x90
	.type	gimp_help_domain_free,@function
gimp_help_domain_free:                  # @gimp_help_domain_free
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_domain_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_9
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_hash_table_destroy
.LBB1_7:                                # %if.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#8:                                 # %do.body.4
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_9:                                # %do.end.5
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_domain_free, .Lfunc_end1-gimp_help_domain_free
	.cfi_endproc

	.globl	gimp_help_domain_lookup_locale
	.align	16, 0x90
	.type	gimp_help_domain_lookup_locale,@function
gimp_help_domain_lookup_locale:         # @gimp_help_domain_lookup_locale
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$0, 16(%rdx)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -40(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_help_locale_free, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB2_3:                                # %if.end
	cmpq	$0, -40(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                # %if.end.6
	movq	-24(%rbp), %rdi
	callq	gimp_help_locale_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	g_hash_table_insert
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	domain_locale_parse
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB2_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_help_domain_lookup_locale, .Lfunc_end2-gimp_help_domain_lookup_locale
	.cfi_endproc

	.align	16, 0x90
	.type	domain_locale_parse,@function
domain_locale_parse:                    # @domain_locale_parse
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
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.domain_locale_parse, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.domain_locale_parse, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_17
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB3_13
# BB#12:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_14
.LBB3_13:                               # %if.then.10
	jmp	.LBB3_15
.LBB3_14:                               # %if.else.11
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.domain_locale_parse, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_17
.LBB3_15:                               # %if.end.12
	jmp	.LBB3_16
.LBB3_16:                               # %do.end.13
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	gimp_help_locale_parse
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	domain_locale_parse, .Lfunc_end3-domain_locale_parse
	.cfi_endproc

	.globl	gimp_help_domain_map
	.align	16, 0x90
	.type	gimp_help_domain_map,@function
gimp_help_domain_map:                   # @gimp_help_domain_map
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_domain_map, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_47
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_domain_map, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_47
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_domain_map, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_47
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	cmpq	$0, -56(%rbp)
	je	.LBB4_17
# BB#16:                                # %if.then.13
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.LBB4_17:                               # %if.end.14
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -80(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB4_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB4_18 Depth=1
	cmpq	$0, -72(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB4_20:                               # %land.end
                                        #   in Loop: Header=BB4_18 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_21
	jmp	.LBB4_23
.LBB4_21:                               # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_help_domain_lookup_locale
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_help_locale_map
	movq	%rax, -72(%rbp)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_18
.LBB4_23:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB4_24:                               # %for.cond.18
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -80(%rbp)
	movb	%cl, -90(%rbp)          # 1-byte Spill
	je	.LBB4_26
# BB#25:                                # %land.rhs.20
                                        #   in Loop: Header=BB4_24 Depth=1
	cmpq	$0, -72(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -90(%rbp)          # 1-byte Spill
.LBB4_26:                               # %land.end.23
                                        #   in Loop: Header=BB4_24 Depth=1
	movb	-90(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_27
	jmp	.LBB4_29
.LBB4_27:                               # %for.body.24
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_help_domain_lookup_locale
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
# BB#28:                                # %for.inc.27
                                        #   in Loop: Header=BB4_24 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_24
.LBB4_29:                               # %for.end.29
	cmpq	$0, -48(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB4_31:                               # %if.end.32
	cmpq	$0, -72(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.34
	movabsq	$.L.str, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-72(%rbp), %r8
	movq	%rax, %rsi
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -8(%rbp)
	jmp	.LBB4_47
.LBB4_33:                               # %if.else.36
	movabsq	$.L.str.4, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	$0, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_help_domain_lookup_locale
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	domain_locale_parse
	cmpl	$0, %eax
	jne	.LBB4_45
# BB#34:                                # %if.then.40
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	je	.LBB4_35
	jmp	.LBB4_48
.LBB4_48:                               # %if.then.40
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB4_39
	jmp	.LBB4_49
.LBB4_49:                               # %if.then.40
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$19, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB4_40
	jmp	.LBB4_41
.LBB4_35:                               # %sw.bb
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_37
# BB#36:                                # %if.then.42
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB4_38
.LBB4_37:                               # %if.else.45
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
.LBB4_38:                               # %if.end.48
	jmp	.LBB4_42
.LBB4_39:                               # %sw.bb.49
	movabsq	$.L.str.9, %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB4_42
.LBB4_40:                               # %sw.bb.51
	jmp	.LBB4_42
.LBB4_41:                               # %sw.default
	movabsq	$.L.str.10, %rdi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_message
.LBB4_42:                               # %sw.epilog
	movq	-88(%rbp), %rdi
	callq	g_error_free
	cmpq	$0, -56(%rbp)
	je	.LBB4_44
# BB#43:                                # %if.then.54
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
.LBB4_44:                               # %if.end.55
	jmp	.LBB4_46
.LBB4_45:                               # %if.else.56
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB4_46:                               # %if.end.58
	movq	$0, -8(%rbp)
.LBB4_47:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_help_domain_map, .Lfunc_end4-gimp_help_domain_map
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_message, .Lfunc_end5-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/"
	.size	.L.str, 2

	.type	.L__func__.gimp_help_domain_free,@object # @__func__.gimp_help_domain_free
.L__func__.gimp_help_domain_free:
	.asciz	"gimp_help_domain_free"
	.size	.L__func__.gimp_help_domain_free, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"domain != NULL"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_help_domain_map,@object # @__func__.gimp_help_domain_map
.L__func__.gimp_help_domain_map:
	.asciz	"gimp_help_domain_map"
	.size	.L__func__.gimp_help_domain_map, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"help_locales != NULL"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help_id != NULL"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"en"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The help pages for '%s' are not available."
	.size	.L.str.5, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s\n\n%s"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The GIMP user manual is not available."
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Please install the additional help package or use the online user manual at: http://docs.gimp.org/"
	.size	.L.str.8, 99

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Perhaps you are missing GIO backends and need to install GVFS?"
	.size	.L.str.9, 63

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Help ID '%s' unknown"
	.size	.L.str.11, 21

	.type	.L__func__.domain_locale_parse,@object # @__func__.domain_locale_parse
.L__func__.domain_locale_parse:
	.asciz	"domain_locale_parse"
	.size	.L__func__.domain_locale_parse, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"locale != NULL"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s/%s/gimp-help.xml"
	.size	.L.str.14, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
