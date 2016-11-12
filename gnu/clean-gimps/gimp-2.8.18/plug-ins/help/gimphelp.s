	.text
	.file	"gimphelp.bc"
	.globl	gimp_help_init
	.align	16, 0x90
	.type	gimp_help_init,@function
gimp_help_init:                         # @gimp_help_init
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
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-8(%rbp), %edx
	cmpl	-20(%rbp), %edx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movl	$0, -36(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_help_register_domain
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
	movl	$1, -4(%rbp)
.LBB0_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_help_init, .Lfunc_end0-gimp_help_init
	.cfi_endproc

	.globl	gimp_help_register_domain
	.align	16, 0x90
	.type	gimp_help_register_domain,@function
gimp_help_register_domain:              # @gimp_help_register_domain
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_register_domain, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_register_domain, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_13
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	cmpq	$0, domain_hash
	jne	.LBB1_12
# BB#11:                                # %if.then.7
	movabsq	$g_str_hash, %rdi
	movabsq	$g_str_equal, %rsi
	movabsq	$g_free, %rdx
	movabsq	$gimp_help_domain_free, %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full
	movq	%rax, domain_hash
.LBB1_12:                               # %if.end.8
	movq	domain_hash, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_help_domain_new
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_hash_table_insert
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_help_register_domain, .Lfunc_end1-gimp_help_register_domain
	.cfi_endproc

	.globl	gimp_help_exit
	.align	16, 0x90
	.type	gimp_help_exit,@function
gimp_help_exit:                         # @gimp_help_exit
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
	cmpq	$0, domain_hash
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	domain_hash, %rdi
	callq	g_hash_table_destroy
	movq	$0, domain_hash
.LBB2_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_help_exit, .Lfunc_end2-gimp_help_exit
	.cfi_endproc

	.globl	gimp_help_lookup_domain
	.align	16, 0x90
	.type	gimp_help_lookup_domain,@function
gimp_help_lookup_domain:                # @gimp_help_lookup_domain
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_lookup_domain, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	cmpq	$0, domain_hash
	je	.LBB3_7
# BB#6:                                 # %if.then.2
	movq	domain_hash, %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.3
	movq	$0, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_help_lookup_domain, .Lfunc_end3-gimp_help_lookup_domain
	.cfi_endproc

	.globl	gimp_help_parse_locales
	.align	16, 0x90
	.type	gimp_help_parse_locales,@function
gimp_help_parse_locales:                # @gimp_help_parse_locales
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gimp_help_parse_locales, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_20
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movl	$58, %esi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB4_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$58, %esi
	movq	-40(%rbp), %rdi
	callq	strchr
	movq	%rax, -48(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_11
# BB#10:                                # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB4_11:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB4_12:                               # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_17
# BB#13:                                # %for.body.11
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.5, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_17
.LBB4_15:                               # %if.end.15
                                        #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               # %for.inc.16
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_12
.LBB4_17:                               # %for.end.17
	cmpq	$0, -32(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.19
	movabsq	$.L.str.5, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_strdup
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB4_19:                               # %if.end.22
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_help_parse_locales, .Lfunc_end4-gimp_help_parse_locales
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"help: number of names doesn't match number of URIs.\n"
	.size	.L.str, 53

	.type	domain_hash,@object     # @domain_hash
	.local	domain_hash
	.comm	domain_hash,8,8
	.type	.L__func__.gimp_help_register_domain,@object # @__func__.gimp_help_register_domain
.L__func__.gimp_help_register_domain:
	.asciz	"gimp_help_register_domain"
	.size	.L__func__.gimp_help_register_domain, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"domain_name != NULL"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"domain_uri != NULL"
	.size	.L.str.2, 19

	.type	.L__func__.gimp_help_lookup_domain,@object # @__func__.gimp_help_lookup_domain
.L__func__.gimp_help_lookup_domain:
	.asciz	"gimp_help_lookup_domain"
	.size	.L__func__.gimp_help_lookup_domain, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"domain_name"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_help_parse_locales,@object # @__func__.gimp_help_parse_locales
.L__func__.gimp_help_parse_locales:
	.asciz	"gimp_help_parse_locales"
	.size	.L__func__.gimp_help_parse_locales, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"help_locales != NULL"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"en"
	.size	.L.str.5, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
