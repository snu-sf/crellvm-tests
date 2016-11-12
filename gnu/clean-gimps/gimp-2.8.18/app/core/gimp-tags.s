	.text
	.file	"gimp-tags.bc"
	.globl	gimp_tags_user_install
	.align	16, 0x90
	.type	gimp_tags_user_install,@function
gimp_tags_user_install:                 # @gimp_tags_user_install
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
	subq	$160, %rsp
	movabsq	$.L.str, %rdi
	xorl	%esi, %esi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	memset
	movq	$0, -104(%rbp)
	movl	$1, -108(%rbp)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_5
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_4
# BB#2:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$67, %ecx
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB0_4:                                # %if.end
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_warning
.LBB0_6:                                # %if.end.6
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movabsq	$.L.str.3, %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_string_append
	movabsq	$.L.str.4, %rsi
	movq	-88(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_directory
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-56(%rbp), %rdi
	leaq	-96(%rbp), %rcx
	movabsq	$gimp_tags_installer_load_text, %rdx
	movabsq	$gimp_tags_installer_load_end_element, %rsi
	movabsq	$gimp_tags_installer_load_start_element, %r8
	movq	%rax, -16(%rbp)
	movq	%r8, -56(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	%rcx, %rsi
	callq	gimp_xml_parser_new
	leaq	-104(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_xml_parser_parse_file
	movl	%eax, -108(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	gimp_xml_parser_free
	cmpl	$0, -108(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.18
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	g_string_free
	movl	$0, -4(%rbp)
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_11
.LBB0_8:                                # %if.end.21
	movabsq	$.L.str.7, %rsi
	movq	-88(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_directory
	movabsq	$.L.str.8, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-104(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	(%rax), %rsi
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdx
	callq	g_file_set_contents
	movl	%eax, -108(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-88(%rbp), %rdi
	callq	g_string_free
	cmpl	$0, -108(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jne	.LBB0_10
# BB#9:                                 # %if.then.32
	movabsq	$.L.str.9, %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-104(%rbp), %rdi
	callq	g_error_free
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %if.end.33
	movl	$1, -4(%rbp)
.LBB0_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tags_user_install, .Lfunc_end0-gimp_tags_user_install
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
	movl	$.L.str.10, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end1:
	.size	g_warning, .Lfunc_end1-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tags_installer_load_start_element,@function
gimp_tags_installer_load_start_element: # @gimp_tags_installer_load_start_element
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_5
# BB#1:                                 # %if.then
	movabsq	$.L.str.12, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movb	$0, %al
	callq	g_string_append_printf
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movabsq	$.L.str.13, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movq	-32(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB2_2
.LBB2_4:                                # %while.end
	movabsq	$.L.str.14, %rsi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB2_12
.LBB2_5:                                # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_11
# BB#6:                                 # %if.then.7
	movabsq	$.L.str.16, %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	attribute_name_to_value
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_9
# BB#8:                                 # %if.then.11
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-56(%rbp), %rsi
	movl	%eax, 16(%rsi)
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.15
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-56(%rbp), %rax
	movl	%esi, 16(%rax)
.LBB2_10:                               # %if.end
	jmp	.LBB2_11
.LBB2_11:                               # %if.end.18
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tags_installer_load_start_element, .Lfunc_end2-gimp_tags_installer_load_start_element
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tags_installer_load_end_element,@function
gimp_tags_installer_load_end_element:   # @gimp_tags_installer_load_end_element
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.17, %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_string_append
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB3_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tags_installer_load_end_element, .Lfunc_end3-gimp_tags_installer_load_end_element
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tags_installer_load_text,@function
gimp_tags_installer_load_text:          # @gimp_tags_installer_load_text
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_markup_parse_context_get_element
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB4_4
# BB#2:                                 # %land.lhs.true.2
	movq	-56(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_markup_escape_text
	movabsq	$.L.str.18, %rsi
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB4_4:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tags_installer_load_text, .Lfunc_end4-gimp_tags_installer_load_text
	.cfi_endproc

	.align	16, 0x90
	.type	attribute_name_to_value,@function
attribute_name_to_value:                # @attribute_name_to_value
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_5:                                # %while.end
	movq	$0, -8(%rbp)
.LBB5_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	attribute_name_to_value, .Lfunc_end5-attribute_name_to_value
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tags-locale:C"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tags-locale:"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Wrong translation for 'tags-locale:', fix the translation!"
	.size	.L.str.2, 59

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<?xml version='1.0' encoding='UTF-8'?>\n"
	.size	.L.str.3, 40

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<tags>\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"tags"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-tags-default.xml"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n</tags>\n"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tags.xml"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Error while creating tags.xml: %s\n"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Gimp-Core"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"resource"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\n  <resource"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" %s=\"%s\""
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	">\n"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"thetag"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"xml:lang"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"  </resource>\n"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"    <tag>%s</tag>\n"
	.size	.L.str.18, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
