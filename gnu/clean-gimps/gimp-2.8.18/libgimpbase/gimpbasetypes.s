	.text
	.file	"gimpbasetypes.bc"
	.globl	gimp_type_set_translation_domain
	.align	16, 0x90
	.type	gimp_type_set_translation_domain,@function
gimp_type_set_translation_domain:       # @gimp_type_set_translation_domain
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_translation_domain_quark
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_set_qdata@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_type_set_translation_domain, .Lfunc_end0-gimp_type_set_translation_domain
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_domain_quark,@function
gimp_translation_domain_quark:          # @gimp_translation_domain_quark
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
	cmpl	$0, gimp_translation_domain_quark.quark(%rip)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.4(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, gimp_translation_domain_quark.quark(%rip)
.LBB1_2:                                # %if.end
	movl	gimp_translation_domain_quark.quark(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_translation_domain_quark, .Lfunc_end1-gimp_translation_domain_quark
	.cfi_endproc

	.globl	gimp_type_get_translation_domain
	.align	16, 0x90
	.type	gimp_type_get_translation_domain,@function
gimp_type_get_translation_domain:       # @gimp_type_get_translation_domain
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
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_translation_domain_quark
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_get_qdata@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_type_get_translation_domain, .Lfunc_end2-gimp_type_get_translation_domain
	.cfi_endproc

	.globl	gimp_type_set_translation_context
	.align	16, 0x90
	.type	gimp_type_set_translation_context,@function
gimp_type_set_translation_context:      # @gimp_type_set_translation_context
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_translation_context_quark
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_set_qdata@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_type_set_translation_context, .Lfunc_end3-gimp_type_set_translation_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_translation_context_quark,@function
gimp_translation_context_quark:         # @gimp_translation_context_quark
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
	cmpl	$0, gimp_translation_context_quark.quark(%rip)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	.L.str.5(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, gimp_translation_context_quark.quark(%rip)
.LBB4_2:                                # %if.end
	movl	gimp_translation_context_quark.quark(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_translation_context_quark, .Lfunc_end4-gimp_translation_context_quark
	.cfi_endproc

	.globl	gimp_type_get_translation_context
	.align	16, 0x90
	.type	gimp_type_get_translation_context,@function
gimp_type_get_translation_context:      # @gimp_type_get_translation_context
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_translation_context_quark
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_get_qdata@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_type_get_translation_context, .Lfunc_end5-gimp_type_get_translation_context
	.cfi_endproc

	.globl	gimp_enum_set_value_descriptions
	.align	16, 0x90
	.type	gimp_enum_set_value_descriptions,@function
gimp_enum_set_value_descriptions:       # @gimp_enum_set_value_descriptions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_set_value_descriptions(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_11
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.2
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_set_value_descriptions(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_11
.LBB6_9:                                # %if.end.4
	jmp	.LBB6_10
.LBB6_10:                               # %do.end.5
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_value_descriptions_quark
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_type_set_qdata@PLT
.LBB6_11:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_enum_set_value_descriptions, .Lfunc_end6-gimp_enum_set_value_descriptions
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_value_descriptions_quark,@function
gimp_value_descriptions_quark:          # @gimp_value_descriptions_quark
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
	cmpl	$0, gimp_value_descriptions_quark.quark(%rip)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	leaq	.L.str.6(%rip), %rdi
	callq	g_quark_from_static_string@PLT
	movl	%eax, gimp_value_descriptions_quark.quark(%rip)
.LBB7_2:                                # %if.end
	movl	gimp_value_descriptions_quark.quark(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_value_descriptions_quark, .Lfunc_end7-gimp_value_descriptions_quark
	.cfi_endproc

	.globl	gimp_enum_get_value_descriptions
	.align	16, 0x90
	.type	gimp_enum_get_value_descriptions,@function
gimp_enum_get_value_descriptions:       # @gimp_enum_get_value_descriptions
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$48, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_get_value_descriptions(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_value_descriptions_quark
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_get_qdata@PLT
	movq	%rax, -8(%rbp)
.LBB8_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_enum_get_value_descriptions, .Lfunc_end8-gimp_enum_get_value_descriptions
	.cfi_endproc

	.globl	gimp_flags_set_value_descriptions
	.align	16, 0x90
	.type	gimp_flags_set_value_descriptions,@function
gimp_flags_set_value_descriptions:      # @gimp_flags_set_value_descriptions
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$52, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_flags_set_value_descriptions(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_11
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.2
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.3
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_flags_set_value_descriptions(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_11
.LBB9_9:                                # %if.end.4
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.5
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_value_descriptions_quark
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, %esi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	g_type_set_qdata@PLT
.LBB9_11:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_flags_set_value_descriptions, .Lfunc_end9-gimp_flags_set_value_descriptions
	.cfi_endproc

	.globl	gimp_flags_get_value_descriptions
	.align	16, 0x90
	.type	gimp_flags_get_value_descriptions,@function
gimp_flags_get_value_descriptions:      # @gimp_flags_get_value_descriptions
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movl	$52, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	g_type_is_a@PLT
	cmpl	$0, %eax
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_flags_get_value_descriptions(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_6
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_value_descriptions_quark
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	g_type_get_qdata@PLT
	movq	%rax, -8(%rbp)
.LBB10_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_flags_get_value_descriptions, .Lfunc_end10-gimp_flags_get_value_descriptions
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_enum_set_value_descriptions,@object # @__func__.gimp_enum_set_value_descriptions
.L__func__.gimp_enum_set_value_descriptions:
	.asciz	"gimp_enum_set_value_descriptions"
	.size	.L__func__.gimp_enum_set_value_descriptions, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"g_type_is_a (enum_type, G_TYPE_ENUM)"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"descriptions != NULL"
	.size	.L.str.2, 21

	.type	.L__func__.gimp_enum_get_value_descriptions,@object # @__func__.gimp_enum_get_value_descriptions
.L__func__.gimp_enum_get_value_descriptions:
	.asciz	"gimp_enum_get_value_descriptions"
	.size	.L__func__.gimp_enum_get_value_descriptions, 33

	.type	.L__func__.gimp_flags_set_value_descriptions,@object # @__func__.gimp_flags_set_value_descriptions
.L__func__.gimp_flags_set_value_descriptions:
	.asciz	"gimp_flags_set_value_descriptions"
	.size	.L__func__.gimp_flags_set_value_descriptions, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (flags_type, G_TYPE_FLAGS)"
	.size	.L.str.3, 39

	.type	.L__func__.gimp_flags_get_value_descriptions,@object # @__func__.gimp_flags_get_value_descriptions
.L__func__.gimp_flags_get_value_descriptions:
	.asciz	"gimp_flags_get_value_descriptions"
	.size	.L__func__.gimp_flags_get_value_descriptions, 34

	.type	gimp_translation_domain_quark.quark,@object # @gimp_translation_domain_quark.quark
	.local	gimp_translation_domain_quark.quark
	.comm	gimp_translation_domain_quark.quark,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-translation-domain-quark"
	.size	.L.str.4, 30

	.type	gimp_translation_context_quark.quark,@object # @gimp_translation_context_quark.quark
	.local	gimp_translation_context_quark.quark
	.comm	gimp_translation_context_quark.quark,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-translation-context-quark"
	.size	.L.str.5, 31

	.type	gimp_value_descriptions_quark.quark,@object # @gimp_value_descriptions_quark.quark
	.local	gimp_value_descriptions_quark.quark
	.comm	gimp_value_descriptions_quark.quark,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-value-descriptions-quark"
	.size	.L.str.6, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
