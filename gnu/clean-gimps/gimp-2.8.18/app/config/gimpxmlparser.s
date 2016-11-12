	.text
	.file	"gimpxmlparser.bc"
	.globl	gimp_xml_parser_new
	.align	16, 0x90
	.type	gimp_xml_parser_new,@function
gimp_xml_parser_new:                    # @gimp_xml_parser_new
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movl	$8, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorl	%esi, %esi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	g_markup_parse_context_new
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_xml_parser_new, .Lfunc_end0-gimp_xml_parser_new
	.cfi_endproc

	.globl	gimp_xml_parser_parse_file
	.align	16, 0x90
	.type	gimp_xml_parser_parse_file,@function
gimp_xml_parser_parse_file:             # @gimp_xml_parser_parse_file
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_file, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_file, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %if.then.10
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_file, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_15:                               # %if.end.12
	jmp	.LBB1_16
.LBB1_16:                               # %do.end.13
	movabsq	$.L.str.5, %rsi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	g_io_channel_new_file
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_18:                               # %if.end.15
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_xml_parser_parse_io_channel
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_io_channel_unref
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_xml_parser_parse_file, .Lfunc_end1-gimp_xml_parser_parse_file
	.cfi_endproc

	.globl	gimp_xml_parser_parse_io_channel
	.align	16, 0x90
	.type	gimp_xml_parser_parse_io_channel,@function
gimp_xml_parser_parse_io_channel:       # @gimp_xml_parser_parse_io_channel
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
	subq	$4208, %rsp             # imm = 0x1070
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -4152(%rbp)
	movq	$0, -4176(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_io_channel, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	jmp	.LBB2_6
.LBB2_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.3
	jmp	.LBB2_9
.LBB2_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_io_channel, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_9:                                # %if.end.5
	jmp	.LBB2_10
.LBB2_10:                               # %do.end.6
	jmp	.LBB2_11
.LBB2_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB2_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_14
.LBB2_13:                               # %if.then.10
	jmp	.LBB2_15
.LBB2_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_io_channel, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_15:                               # %if.end.12
	jmp	.LBB2_16
.LBB2_16:                               # %do.end.13
	movq	-24(%rbp), %rdi
	callq	g_io_channel_get_encoding
	movabsq	$.L.str.7, %rsi
	movq	%rax, -4168(%rbp)
	movq	-4168(%rbp), %rdi
	callq	g_strcmp0
	cmpl	$0, %eax
	je	.LBB2_18
# BB#17:                                # %if.then.15
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_18:                               # %if.end.16
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	g_io_channel_set_encoding
	movl	%eax, -4180(%rbp)       # 4-byte Spill
.LBB2_19:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4096, -4152(%rbp)      # imm = 0x1000
	jae	.LBB2_27
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB2_19 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-4160(%rbp), %rcx
	leaq	-4144(%rbp), %rsi
	movq	-24(%rbp), %rdi
	addq	-4152(%rbp), %rsi
	movq	-32(%rbp), %r8
	callq	g_io_channel_read_chars
	movl	%eax, -36(%rbp)
	movq	-4160(%rbp), %rcx
	addq	-4152(%rbp), %rcx
	movq	%rcx, -4152(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB2_22
# BB#21:                                # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_22:                               # %if.end.22
                                        #   in Loop: Header=BB2_19 Depth=1
	cmpl	$2, -36(%rbp)
	jne	.LBB2_24
# BB#23:                                # %if.then.24
	jmp	.LBB2_27
.LBB2_24:                               # %if.end.25
                                        #   in Loop: Header=BB2_19 Depth=1
	leaq	-4176(%rbp), %rdx
	leaq	-4144(%rbp), %rdi
	movq	-4152(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	parse_encoding
	cmpl	$0, %eax
	je	.LBB2_26
# BB#25:                                # %if.then.29
	jmp	.LBB2_27
.LBB2_26:                               # %if.end.30
                                        #   in Loop: Header=BB2_19 Depth=1
	jmp	.LBB2_19
.LBB2_27:                               # %while.end
	cmpq	$0, -4176(%rbp)
	je	.LBB2_31
# BB#28:                                # %if.then.32
	movq	-24(%rbp), %rdi
	movq	-4176(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	g_io_channel_set_encoding
	cmpl	$0, %eax
	jne	.LBB2_30
# BB#29:                                # %if.then.35
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_30:                               # %if.end.36
	movq	-4176(%rbp), %rdi
	callq	g_free
	jmp	.LBB2_32
.LBB2_31:                               # %if.else.37
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	g_io_channel_set_encoding
	movl	%eax, -4184(%rbp)       # 4-byte Spill
.LBB2_32:                               # %if.end.39
	jmp	.LBB2_33
.LBB2_33:                               # %while.body.41
                                        # =>This Inner Loop Header: Depth=1
	leaq	-4144(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-4152(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	g_markup_parse_context_parse
	cmpl	$0, %eax
	jne	.LBB2_35
# BB#34:                                # %if.then.45
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_35:                               # %if.end.46
                                        #   in Loop: Header=BB2_33 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-4144(%rbp), %rsi
	leaq	-4152(%rbp), %rcx
	callq	g_io_channel_read_chars
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -4192(%rbp)       # 8-byte Spill
	movq	%rdx, -4200(%rbp)       # 8-byte Spill
	ja	.LBB2_39
# BB#41:                                # %if.end.46
                                        #   in Loop: Header=BB2_33 Depth=1
	movq	-4192(%rbp), %rax       # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_36:                               # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB2_40
.LBB2_37:                               # %sw.bb.49
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	g_markup_parse_context_end_parse
	movl	%eax, -4(%rbp)
	jmp	.LBB2_40
.LBB2_38:                               # %sw.bb.52
                                        #   in Loop: Header=BB2_33 Depth=1
	jmp	.LBB2_39
.LBB2_39:                               # %sw.epilog
                                        #   in Loop: Header=BB2_33 Depth=1
	jmp	.LBB2_33
.LBB2_40:                               # %return
	movl	-4(%rbp), %eax
	addq	$4208, %rsp             # imm = 0x1070
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_xml_parser_parse_io_channel, .Lfunc_end2-gimp_xml_parser_parse_io_channel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_36
	.quad	.LBB2_38
	.quad	.LBB2_37
	.quad	.LBB2_38

	.text
	.globl	gimp_xml_parser_parse_fd
	.align	16, 0x90
	.type	gimp_xml_parser_parse_fd,@function
gimp_xml_parser_parse_fd:               # @gimp_xml_parser_parse_fd
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_fd, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_12
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB3_8
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_9
.LBB3_8:                                # %if.then.4
	jmp	.LBB3_10
.LBB3_9:                                # %if.else.5
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_fd, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_12
.LBB3_10:                               # %if.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.end.7
	movl	-20(%rbp), %edi
	callq	g_io_channel_unix_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_xml_parser_parse_io_channel
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_io_channel_unref
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_xml_parser_parse_fd, .Lfunc_end3-gimp_xml_parser_parse_fd
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB4_2
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
.LBB4_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	parse_encoding,@function
parse_encoding:                         # @parse_encoding
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.parse_encoding, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_42
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	cmpl	$20, -20(%rbp)
	jge	.LBB5_7
# BB#6:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB5_42
.LBB5_7:                                # %if.end.2
	movabsq	$.L.str.12, %rdx
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	g_strstr_len
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_9
# BB#8:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB5_42
.LBB5_9:                                # %if.end.5
	movabsq	$.L.str.13, %rdx
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rsi
	subq	%rsi, %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strstr_len
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_11
# BB#10:                                # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB5_42
.LBB5_11:                               # %if.end.10
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	cmpl	$12, -20(%rbp)
	jge	.LBB5_13
# BB#12:                                # %if.then.17
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_13:                               # %if.end.18
	movabsq	$.L.str.14, %rdx
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	callq	g_strstr_len
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.23
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_15:                               # %if.end.24
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
.LBB5_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jae	.LBB5_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -53(%rbp)          # 1-byte Spill
.LBB5_18:                               # %land.end
                                        #   in Loop: Header=BB5_16 Depth=1
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_19
	jmp	.LBB5_20
.LBB5_19:                               # %while.body
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_16
.LBB5_20:                               # %while.end
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	je	.LBB5_22
# BB#21:                                # %if.then.34
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_22:                               # %if.end.35
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB5_23:                               # %while.cond.37
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -54(%rbp)          # 1-byte Spill
	jae	.LBB5_25
# BB#24:                                # %land.rhs.40
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -54(%rbp)          # 1-byte Spill
.LBB5_25:                               # %land.end.44
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-54(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_26
	jmp	.LBB5_27
.LBB5_26:                               # %while.body.45
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_23
.LBB5_27:                               # %while.end.47
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	je	.LBB5_30
# BB#28:                                # %land.lhs.true
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	je	.LBB5_30
# BB#29:                                # %if.then.54
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_30:                               # %if.end.55
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	cmpl	$1, -20(%rbp)
	jge	.LBB5_32
# BB#31:                                # %if.then.62
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_32:                               # %if.end.63
	movl	$1, -52(%rbp)
.LBB5_33:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_38
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB5_33 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movq	-40(%rbp), %rax
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB5_36
# BB#35:                                # %if.then.71
	jmp	.LBB5_38
.LBB5_36:                               # %if.end.72
                                        #   in Loop: Header=BB5_33 Depth=1
	jmp	.LBB5_37
.LBB5_37:                               # %for.inc
                                        #   in Loop: Header=BB5_33 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_33
.LBB5_38:                               # %for.end
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB5_40
# BB#39:                                # %lor.lhs.false
	cmpl	$3, -52(%rbp)
	jge	.LBB5_41
.LBB5_40:                               # %if.then.77
	movl	$1, -4(%rbp)
	jmp	.LBB5_42
.LBB5_41:                               # %if.end.78
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	callq	g_strndup
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	$1, -4(%rbp)
.LBB5_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	parse_encoding, .Lfunc_end5-parse_encoding
	.cfi_endproc

	.globl	gimp_xml_parser_parse_buffer
	.align	16, 0x90
	.type	gimp_xml_parser_parse_buffer,@function
gimp_xml_parser_parse_buffer:           # @gimp_xml_parser_parse_buffer
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_buffer, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	jmp	.LBB6_6
.LBB6_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB6_9
.LBB6_8:                                # %if.then.7
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.8
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_buffer, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_10:                               # %if.end.9
	jmp	.LBB6_11
.LBB6_11:                               # %do.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.body.11
	cmpq	$0, -40(%rbp)
	je	.LBB6_14
# BB#13:                                # %lor.lhs.false.14
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB6_15
.LBB6_14:                               # %if.then.17
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.18
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_parse_buffer, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_16:                               # %if.end.19
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.20
	cmpq	$0, -32(%rbp)
	jge	.LBB6_19
# BB#18:                                # %if.then.23
	movq	-24(%rbp), %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
.LBB6_19:                               # %if.end.24
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	parse_encoding
	cmpl	$0, %eax
	je	.LBB6_27
# BB#20:                                # %land.lhs.true
	cmpq	$0, -48(%rbp)
	je	.LBB6_27
# BB#21:                                # %if.then.28
	movabsq	$.L.str.7, %rsi
	movq	-48(%rbp), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	je	.LBB6_26
# BB#22:                                # %land.lhs.true.31
	movabsq	$.L.str.10, %rsi
	movq	-48(%rbp), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	je	.LBB6_26
# BB#23:                                # %if.then.34
	movabsq	$.L.str.7, %rdx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-72(%rbp), %r9
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %r10
	movq	%r10, (%rsp)
	callq	g_convert
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_25
# BB#24:                                # %if.then.37
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB6_33
.LBB6_25:                               # %if.end.38
	movq	-72(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB6_26:                               # %if.end.39
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB6_27:                               # %if.end.40
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	cmpq	$0, -56(%rbp)
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	je	.LBB6_29
# BB#28:                                # %cond.true
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB6_30:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_markup_parse_context_parse
	movl	%eax, -60(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_32
# BB#31:                                # %if.then.44
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB6_32:                               # %if.end.45
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_xml_parser_parse_buffer, .Lfunc_end6-gimp_xml_parser_parse_buffer
	.cfi_endproc

	.globl	gimp_xml_parser_free
	.align	16, 0x90
	.type	gimp_xml_parser_free,@function
gimp_xml_parser_free:                   # @gimp_xml_parser_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_xml_parser_free, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_7
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_markup_parse_context_free
# BB#6:                                 # %do.body.1
	movl	$8, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB7_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_xml_parser_free, .Lfunc_end7-gimp_xml_parser_free
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Config"
	.size	.L.str, 12

	.type	.L__func__.gimp_xml_parser_new,@object # @__func__.gimp_xml_parser_new
.L__func__.gimp_xml_parser_new:
	.asciz	"gimp_xml_parser_new"
	.size	.L__func__.gimp_xml_parser_new, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"markup_parser != NULL"
	.size	.L.str.1, 22

	.type	.L__func__.gimp_xml_parser_parse_file,@object # @__func__.gimp_xml_parser_parse_file
.L__func__.gimp_xml_parser_parse_file:
	.asciz	"gimp_xml_parser_parse_file"
	.size	.L__func__.gimp_xml_parser_parse_file, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"parser != NULL"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"filename != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L__func__.gimp_xml_parser_parse_fd,@object # @__func__.gimp_xml_parser_parse_fd
.L__func__.gimp_xml_parser_parse_fd:
	.asciz	"gimp_xml_parser_parse_fd"
	.size	.L__func__.gimp_xml_parser_parse_fd, 25

	.type	.L__func__.gimp_xml_parser_parse_io_channel,@object # @__func__.gimp_xml_parser_parse_io_channel
.L__func__.gimp_xml_parser_parse_io_channel:
	.asciz	"gimp_xml_parser_parse_io_channel"
	.size	.L__func__.gimp_xml_parser_parse_io_channel, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"io != NULL"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"UTF-8"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp_xml_parser_parse_io_channel():\nThe encoding has already been set on this GIOChannel!"
	.size	.L.str.8, 90

	.type	.L__func__.gimp_xml_parser_parse_buffer,@object # @__func__.gimp_xml_parser_parse_buffer
.L__func__.gimp_xml_parser_parse_buffer:
	.asciz	"gimp_xml_parser_parse_buffer"
	.size	.L__func__.gimp_xml_parser_parse_buffer, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"buffer != NULL || len == 0"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"UTF8"
	.size	.L.str.10, 5

	.type	.L__func__.gimp_xml_parser_free,@object # @__func__.gimp_xml_parser_free
.L__func__.gimp_xml_parser_free:
	.asciz	"gimp_xml_parser_free"
	.size	.L__func__.gimp_xml_parser_free, 21

	.type	.L__func__.parse_encoding,@object # @__func__.parse_encoding
.L__func__.parse_encoding:
	.asciz	"parse_encoding"
	.size	.L__func__.parse_encoding, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<?xml"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"?>"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"encoding"
	.size	.L.str.14, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
