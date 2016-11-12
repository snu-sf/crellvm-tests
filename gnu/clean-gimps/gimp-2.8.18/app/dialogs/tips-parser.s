	.text
	.file	"tips-parser.bc"
	.globl	gimp_tip_new
	.align	16, 0x90
	.type	gimp_tip_new,@function
gimp_tip_new:                           # @gimp_tip_new
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
	subq	$464, %rsp              # imm = 0x1D0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB0_8
# BB#7:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB0_8:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movl	$16, %r9d
	movl	%r9d, %r10d
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%r10, %rdi
	callq	g_slice_alloc0
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -24(%rbp)
	callq	g_string_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_4
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	-32(%rbp), %rdi
	callq	g_string_append
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_string_append
	movabsq	$.L.str.1, %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_string_append
	cmpq	$0, -16(%rbp)
	movq	%rax, -440(%rbp)        # 8-byte Spill
	je	.LBB0_3
# BB#2:                                 # %if.then.6
	movabsq	$.L.str.2, %rsi
	movq	-32(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %if.end.8
	cmpq	$0, -16(%rbp)
	je	.LBB0_6
# BB#5:                                 # %if.then.10
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	leaq	-240(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, %rdx
	callq	g_string_append_vprintf
	leaq	-64(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB0_6:                                # %if.end.15
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	g_string_free
	movq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tip_new, .Lfunc_end0-gimp_tip_new
	.cfi_endproc

	.globl	gimp_tip_free
	.align	16, 0x90
	.type	gimp_tip_free,@function
gimp_tip_free:                          # @gimp_tip_free
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
	cmpq	$0, -8(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_4
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#3:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB1_4:                                # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tip_free, .Lfunc_end1-gimp_tip_free
	.cfi_endproc

	.globl	gimp_tips_from_file
	.align	16, 0x90
	.type	gimp_tips_from_file,@function
gimp_tips_from_file:                    # @gimp_tips_from_file
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
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
	movq	$0, -112(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_tips_from_file, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_18
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB2_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_9
.LBB2_8:                                # %if.then.4
	jmp	.LBB2_10
.LBB2_9:                                # %if.else.5
	movabsq	$.L.str.3, %rdi
	movabsq	$.L__func__.gimp_tips_from_file, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_18
.LBB2_10:                               # %if.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.end.7
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movabsq	$.L.str.6, %rdi
	movq	%rax, -56(%rbp)
	callq	gettext
	movabsq	$.L.str.7, %rsi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB2_16
# BB#12:                                # %if.then.10
	movq	-104(%rbp), %rax
	addq	$12, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB2_15
# BB#13:                                # %land.lhs.true
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$67, %ecx
	je	.LBB2_15
# BB#14:                                # %if.then.15
	movq	-104(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB2_15:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.17
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_warning
.LBB2_17:                               # %if.end.18
	movabsq	$markup_parser, %rdi
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_xml_parser_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_xml_parser_parse_file
	movq	-32(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_xml_parser_free
	movq	-40(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_tip_free
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	g_string_free
	movq	-112(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB2_18:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tips_from_file, .Lfunc_end2-gimp_tips_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
	movl	$.L.str.3, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.globl	gimp_tips_free
	.align	16, 0x90
	.type	gimp_tips_free,@function
gimp_tips_free:                         # @gimp_tips_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_tip_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	g_list_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tips_free, .Lfunc_end4-gimp_tips_free
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_start_element,@function
tips_parser_start_element:              # @tips_parser_start_element
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB5_20
# BB#21:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-16(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-56(%rbp), %rdi
	callq	tips_parser_start_unknown
.LBB5_4:                                # %if.end
	jmp	.LBB5_20
.LBB5_5:                                # %sw.bb.2
	movq	-16(%rbp), %rdi
	movl	$.L.str.10, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_7
# BB#6:                                 # %if.then.5
	movl	$16, %eax
	movl	%eax, %edi
	movq	-56(%rbp), %rcx
	movl	$2, (%rcx)
	callq	g_slice_alloc0
	movq	-56(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	tips_parser_parse_help_id
	movq	-56(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.10
	movq	-56(%rbp), %rdi
	callq	tips_parser_start_unknown
.LBB5_8:                                # %if.end.11
	jmp	.LBB5_20
.LBB5_9:                                # %sw.bb.12
	movq	-16(%rbp), %rdi
	movl	$.L.str.11, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_11
# BB#10:                                # %if.then.15
	movq	-56(%rbp), %rax
	movl	$3, (%rax)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	tips_parser_parse_locale
	jmp	.LBB5_12
.LBB5_11:                               # %if.else.17
	movq	-56(%rbp), %rdi
	callq	tips_parser_start_unknown
.LBB5_12:                               # %if.end.18
	jmp	.LBB5_20
.LBB5_13:                               # %sw.bb.19
	movq	-16(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB5_16
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB5_16
# BB#15:                                # %lor.lhs.false.24
	movq	-16(%rbp), %rdi
	movl	$.L.str.14, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_17
.LBB5_16:                               # %if.then.27
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tips_parser_start_markup
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.28
	movq	-56(%rbp), %rdi
	callq	tips_parser_start_unknown
.LBB5_18:                               # %if.end.29
	jmp	.LBB5_20
.LBB5_19:                               # %sw.bb.30
	movq	-56(%rbp), %rdi
	callq	tips_parser_start_unknown
.LBB5_20:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tips_parser_start_element, .Lfunc_end5-tips_parser_start_element
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_5
	.quad	.LBB5_9
	.quad	.LBB5_13
	.quad	.LBB5_19

	.text
	.align	16, 0x90
	.type	tips_parser_end_element,@function
tips_parser_end_element:                # @tips_parser_end_element
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	(%rcx), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB6_9
# BB#10:                                # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB6_9
.LBB6_2:                                # %sw.bb.1
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB6_9
.LBB6_3:                                # %sw.bb.3
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-40(%rbp), %rsi
	movq	%rax, 56(%rsi)
	movq	-40(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB6_9
.LBB6_4:                                # %sw.bb.7
	movq	-40(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB6_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rsi
	callq	tips_parser_set_by_locale
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_string_truncate
	movq	-40(%rbp), %rsi
	movl	$2, (%rsi)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_7
.LBB6_6:                                # %if.else
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tips_parser_end_markup
.LBB6_7:                                # %if.end
	jmp	.LBB6_9
.LBB6_8:                                # %sw.bb.11
	movq	-40(%rbp), %rdi
	callq	tips_parser_end_unknown
.LBB6_9:                                # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tips_parser_end_element, .Lfunc_end6-tips_parser_end_element
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_8

	.text
	.align	16, 0x90
	.type	tips_parser_characters,@function
tips_parser_characters:                 # @tips_parser_characters
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	(%rcx), %eax
	subl	$3, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jne	.LBB7_17
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-48(%rbp), %rax
	cmpl	$2, 24(%rax)
	je	.LBB7_16
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB7_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	je	.LBB7_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$9, %edx
	je	.LBB7_9
# BB#6:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB7_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$13, %edx
	je	.LBB7_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %esi
	callq	g_string_append_c_inline
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_13
.LBB7_9:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB7_12
# BB#10:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	-48(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	je	.LBB7_12
# BB#11:                                # %if.then.37
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	$32, %esi
	movq	-48(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB7_12:                               # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               # %if.end.40
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_14
.LBB7_14:                               # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB7_3
.LBB7_15:                               # %for.end
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.41
	jmp	.LBB7_18
.LBB7_17:                               # %sw.default
	jmp	.LBB7_18
.LBB7_18:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tips_parser_characters, .Lfunc_end7-tips_parser_characters
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_start_unknown,@function
tips_parser_start_unknown:              # @tips_parser_start_unknown
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 32(%rdi)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tips_parser_start_unknown, .Lfunc_end8-tips_parser_start_unknown
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_parse_help_id,@function
tips_parser_parse_help_id:              # @tips_parser_parse_help_id
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_8
.LBB9_4:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB9_7
# BB#6:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
	jmp	.LBB9_9
.LBB9_7:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %while.end
	movq	$0, -8(%rbp)
.LBB9_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tips_parser_parse_help_id, .Lfunc_end9-tips_parser_parse_help_id
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_parse_locale,@function
tips_parser_parse_locale:               # @tips_parser_parse_locale
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movl	$0, 24(%rdx)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB10_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB10_3:                               # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_10
.LBB10_4:                               # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB10_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_9
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, 8(%rdx)
	movb	%cl, -26(%rbp)          # 1-byte Spill
	je	.LBB10_8
# BB#7:                                 # %land.rhs.4
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -26(%rbp)          # 1-byte Spill
.LBB10_8:                               # %land.end.9
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	movl	$2, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, 24(%rsi)
.LBB10_9:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_10:                              # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tips_parser_parse_locale, .Lfunc_end10-tips_parser_parse_locale
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_start_markup,@function
tips_parser_start_markup:               # @tips_parser_start_markup
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
	subq	$16, %rsp
	movabsq	$.L.str.17, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	28(%rsi), %ecx
	addl	$1, %ecx
	movl	%ecx, 28(%rsi)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_string_append_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tips_parser_start_markup, .Lfunc_end11-tips_parser_start_markup
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_set_by_locale,@function
tips_parser_set_by_locale:              # @tips_parser_set_by_locale
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %eax
	testl	%eax, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB12_1
	jmp	.LBB12_10
.LBB12_10:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_11
.LBB12_11:                              # %entry
	movl	-20(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB12_8
	jmp	.LBB12_9
.LBB12_1:                               # %sw.bb
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB12_6
.LBB12_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB12_5
# BB#4:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB12_5:                               # %if.end
	jmp	.LBB12_6
.LBB12_6:                               # %if.end.5
	jmp	.LBB12_9
.LBB12_7:                               # %sw.bb.6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB12_9
.LBB12_8:                               # %sw.bb.10
	jmp	.LBB12_9
.LBB12_9:                               # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tips_parser_set_by_locale, .Lfunc_end12-tips_parser_set_by_locale
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_end_markup,@function
tips_parser_end_markup:                 # @tips_parser_end_markup
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	jle	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$385, %edx              # imm = 0x181
	movabsq	$.L__func__.tips_parser_end_markup, %rcx
	movabsq	$.L.str.21, %r8
	callq	g_assertion_message_expr
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movabsq	$.L.str.22, %rsi
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 28(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_string_append_printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tips_parser_end_markup, .Lfunc_end13-tips_parser_end_markup
	.cfi_endproc

	.align	16, 0x90
	.type	tips_parser_end_unknown,@function
tips_parser_end_unknown:                # @tips_parser_end_unknown
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jle	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB14_4
# BB#3:                                 # %if.then
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movabsq	$.L.str.3, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$404, %edx              # imm = 0x194
	movabsq	$.L__func__.tips_parser_end_unknown, %rcx
	movabsq	$.L.str.23, %r8
	callq	g_assertion_message_expr
.LBB14_5:                               # %if.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.end
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB14_8
# BB#7:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
.LBB14_8:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tips_parser_end_unknown, .Lfunc_end14-tips_parser_end_unknown
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
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB15_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_string_append_c_inline, .Lfunc_end15-g_string_append_c_inline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<b>"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"</b>"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"\n\n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-Dialogs"
	.size	.L.str.3, 13

	.type	.L__func__.gimp_tips_from_file,@object # @__func__.gimp_tips_from_file
.L__func__.gimp_tips_from_file:
	.asciz	"gimp_tips_from_file"
	.size	.L__func__.gimp_tips_from_file, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"filename != NULL"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tips-locale:C"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tips-locale:"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Wrong translation for 'tips-locale:', fix the translation!"
	.size	.L.str.8, 59

	.type	markup_parser,@object   # @markup_parser
	.section	.rodata,"a",@progbits
	.align	8
markup_parser:
	.quad	tips_parser_start_element
	.quad	tips_parser_end_element
	.quad	tips_parser_characters
	.quad	0
	.quad	0
	.size	markup_parser, 40

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"gimp-tips"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tip"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"thetip"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"b"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"big"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tt"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"help"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"xml:lang"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<%s>"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: shouldn't get here"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tips-parser.c:306"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tips-parser.c"
	.size	.L.str.20, 14

	.type	.L__func__.tips_parser_end_markup,@object # @__func__.tips_parser_end_markup
.L__func__.tips_parser_end_markup:
	.asciz	"tips_parser_end_markup"
	.size	.L__func__.tips_parser_end_markup, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"parser->markup_depth > 0"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"</%s>"
	.size	.L.str.22, 6

	.type	.L__func__.tips_parser_end_unknown,@object # @__func__.tips_parser_end_unknown
.L__func__.tips_parser_end_unknown:
	.asciz	"tips_parser_end_unknown"
	.size	.L__func__.tips_parser_end_unknown, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"parser->unknown_depth > 0 && parser->state == TIPS_IN_UNKNOWN"
	.size	.L.str.23, 62


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
