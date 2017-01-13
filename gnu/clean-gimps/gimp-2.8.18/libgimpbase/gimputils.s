	.text
	.file	"gimputils.bc"
	.globl	gimp_utf8_strtrim
	.align	16, 0x90
	.type	gimp_utf8_strtrim,@function
gimp_utf8_strtrim:                      # @gimp_utf8_strtrim
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	leaq	gimp_utf8_strtrim.ellipsis(%rip), %rdi
	callq	strlen@PLT
	movl	%eax, %esi
	movl	%esi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#1:                                 # %if.then
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	-20(%rbp), %eax
	jle	.LBB0_5
# BB#4:                                 # %if.then.3
	jmp	.LBB0_10
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_utf8_get_char@PLT
	movl	%eax, -48(%rbp)
	movl	%eax, %edi
	callq	g_unichar_break_type@PLT
	orl	$2, %eax
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                # %sw.bb
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                # %sw.default
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_9
.LBB0_8:                                # %sw.epilog
	jmp	.LBB0_10
.LBB0_9:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB0_2
.LBB0_10:                               # %for.end
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_14
# BB#11:                                # %if.then.8
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	memcpy@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB0_13
# BB#12:                                # %if.then.13
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movq	-64(%rbp), %rcx
	movb	$32, (%rcx,%rax)
.LBB0_13:                               # %if.end.16
	leaq	gimp_utf8_strtrim.ellipsis(%rip), %rsi
	movq	-64(%rbp), %rax
	addq	-56(%rbp), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	g_strlcpy@PLT
	movq	-64(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_16
.LBB0_14:                               # %if.end.21
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               # %if.end.23
	movq	$0, -8(%rbp)
.LBB0_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_utf8_strtrim, .Lfunc_end0-gimp_utf8_strtrim
	.cfi_endproc

	.globl	gimp_any_to_utf8
	.align	16, 0x90
	.type	gimp_any_to_utf8,@function
gimp_any_to_utf8:                       # @gimp_any_to_utf8
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
	subq	$480, %rsp              # imm = 0x1E0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB1_21
# BB#20:                                # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB1_21:                               # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_any_to_utf8(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB1_19
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_utf8_validate@PLT
	cmpl	$0, %eax
	je	.LBB1_10
# BB#6:                                 # %if.then.1
	cmpq	$0, -24(%rbp)
	jge	.LBB1_8
# BB#7:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.5
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_strndup@PLT
	movq	%rax, -48(%rbp)
.LBB1_9:                                # %if.end.7
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdx
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	-456(%rbp), %r8         # 8-byte Reload
	callq	g_locale_to_utf8@PLT
	movq	%rax, -48(%rbp)
.LBB1_11:                               # %if.end.10
	cmpq	$0, -48(%rbp)
	jne	.LBB1_18
# BB#12:                                # %if.then.12
	cmpq	$0, -32(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.14
	leaq	.L.str(%rip), %rdi
	movl	$32, %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	leaq	-272(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$24, (%rcx)
	movq	-32(%rbp), %rdx
	movq	%rax, %rcx
	callq	g_logv@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB1_14:                               # %if.end.19
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jbe	.LBB1_16
# BB#15:                                # %if.then.21
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup@PLT
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	leaq	.L.str.2(%rip), %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strconcat@PLT
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.25
	leaq	.L.str.3(%rip), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	%rax, -48(%rbp)
.LBB1_17:                               # %if.end.28
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.29
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_any_to_utf8, .Lfunc_end1-gimp_any_to_utf8
	.cfi_endproc

	.globl	gimp_filename_to_utf8
	.align	16, 0x90
	.type	gimp_filename_to_utf8,@function
gimp_filename_to_utf8:                  # @gimp_filename_to_utf8
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB2_7
.LBB2_2:                                # %if.end
	cmpq	$0, gimp_filename_to_utf8.ht(%rip)
	jne	.LBB2_4
# BB#3:                                 # %if.then.2
	movq	g_str_hash@GOTPCREL(%rip), %rdi
	movq	g_str_equal@GOTPCREL(%rip), %rsi
	callq	g_hash_table_new@PLT
	movq	%rax, gimp_filename_to_utf8.ht(%rip)
.LBB2_4:                                # %if.end.3
	movq	gimp_filename_to_utf8.ht(%rip), %rdi
	movq	-16(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.6
	movq	-16(%rbp), %rdi
	callq	g_filename_display_name@PLT
	movq	%rax, -24(%rbp)
	movq	gimp_filename_to_utf8.ht(%rip), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_hash_table_insert@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB2_6:                                # %if.end.10
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_filename_to_utf8, .Lfunc_end2-gimp_filename_to_utf8
	.cfi_endproc

	.globl	gimp_strip_uline
	.align	16, 0x90
	.type	gimp_strip_uline,@function
gimp_strip_uline:                       # @gimp_strip_uline
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
	movl	$0, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_16
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_15
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB3_13
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB3_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_3
.LBB3_7:                                # %if.end.10
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB3_11
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	movsbl	1(%rcx,%rax), %esi
	cmpl	$41, %esi
	jne	.LBB3_11
# BB#10:                                # %if.then.23
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	g_utf8_skip@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %esi
	movl	%esi, %edx
	movq	(%rax), %rax
	movsbl	(%rax,%rdx), %esi
	movslq	%esi, %rax
	addq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB3_12
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.LBB3_12:                               # %if.end.34
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.35
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$40, %ecx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -16(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%dl, (%rax)
.LBB3_14:                               # %if.end.41
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_15:                               # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_strip_uline, .Lfunc_end3-gimp_strip_uline
	.cfi_endproc

	.globl	gimp_escape_uline
	.align	16, 0x90
	.type	gimp_escape_uline,@function
gimp_escape_uline:                      # @gimp_escape_uline
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB4_14
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB4_6:                                # %if.end.4
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movslq	-36(%rbp), %rdi
	addq	%rdi, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
.LBB4_9:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_13
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB4_12
# BB#11:                                # %if.then.12
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$95, (%rax)
.LBB4_12:                               # %if.end.14
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB4_9
.LBB4_13:                               # %while.end
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_escape_uline, .Lfunc_end4-gimp_escape_uline
	.cfi_endproc

	.globl	gimp_canonicalize_identifier
	.align	16, 0x90
	.type	gimp_canonicalize_identifier,@function
gimp_canonicalize_identifier:           # @gimp_canonicalize_identifier
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
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB5_14
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB5_13
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -25(%rbp)
	movsbl	-25(%rbp), %edx
	cmpl	$45, %edx
	je	.LBB5_11
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB5_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$57, %eax
	jle	.LBB5_11
.LBB5_6:                                # %land.lhs.true.11
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB5_8
# BB#7:                                 # %lor.lhs.false.15
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$90, %eax
	jle	.LBB5_11
.LBB5_8:                                # %land.lhs.true.19
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$97, %eax
	jl	.LBB5_10
# BB#9:                                 # %lor.lhs.false.23
                                        #   in Loop: Header=BB5_2 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$122, %eax
	jle	.LBB5_11
.LBB5_10:                               # %if.then.27
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-24(%rbp), %rax
	movb	$45, (%rax)
.LBB5_11:                               # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_2
.LBB5_13:                               # %for.end
	jmp	.LBB5_14
.LBB5_14:                               # %if.end.28
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_canonicalize_identifier, .Lfunc_end5-gimp_canonicalize_identifier
	.cfi_endproc

	.globl	gimp_enum_get_desc
	.align	16, 0x90
	.type	gimp_enum_get_desc,@function
gimp_enum_get_desc:                     # @gimp_enum_get_desc
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$48, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_7
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_class_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.3
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_9
# BB#8:                                 # %if.then.5
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.6
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_get_desc(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB6_19
.LBB6_10:                               # %if.end.7
	jmp	.LBB6_11
.LBB6_11:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_enum_get_value_descriptions@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_18
# BB#12:                                # %if.then.11
	jmp	.LBB6_13
.LBB6_13:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_17
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB6_16
# BB#15:                                # %if.then.16
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_19
.LBB6_16:                               # %if.end.17
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_13
.LBB6_17:                               # %while.end
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.18
	movq	$0, -8(%rbp)
.LBB6_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_enum_get_desc, .Lfunc_end6-gimp_enum_get_desc
	.cfi_endproc

	.globl	gimp_enum_get_value
	.align	16, 0x90
	.type	gimp_enum_get_value,@function
gimp_enum_get_value:                    # @gimp_enum_get_value
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$48, %rax
	jne	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_enum_get_value(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_30
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_ref@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_enum_get_value@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB7_29
# BB#6:                                 # %if.then.3
	cmpq	$0, -32(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB7_8:                                # %if.end.7
	cmpq	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.9
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB7_10:                               # %if.end.11
	cmpq	$0, -48(%rbp)
	jne	.LBB7_12
# BB#11:                                # %lor.lhs.false
	cmpq	$0, -56(%rbp)
	je	.LBB7_28
.LBB7_12:                               # %if.then.14
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_enum_get_desc@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB7_21
# BB#13:                                # %if.then.17
	cmpq	$0, -88(%rbp)
	je	.LBB7_19
# BB#14:                                # %land.lhs.true
	movq	-88(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_19
# BB#15:                                # %if.then.21
	movq	-16(%rbp), %rdi
	callq	gimp_type_get_translation_context@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB7_17
# BB#16:                                # %if.then.24
	movq	-16(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	callq	g_dpgettext2@PLT
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB7_18
.LBB7_17:                               # %if.else.28
	movq	-88(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-88(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strip_context@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB7_18:                               # %if.end.34
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.35
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
.LBB7_20:                               # %if.end.36
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.37
	cmpq	$0, -56(%rbp)
	je	.LBB7_27
# BB#22:                                # %if.then.39
	cmpq	$0, -88(%rbp)
	je	.LBB7_25
# BB#23:                                # %land.lhs.true.41
	movq	-88(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB7_25
# BB#24:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-88(%rbp), %rdi
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_26
.LBB7_25:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB7_26
.LBB7_26:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB7_27:                               # %if.end.47
	jmp	.LBB7_28
.LBB7_28:                               # %if.end.48
	movl	$1, -76(%rbp)
.LBB7_29:                               # %if.end.49
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
	movl	-76(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_30:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_enum_get_value, .Lfunc_end7-gimp_enum_get_value
	.cfi_endproc

	.globl	gimp_enum_value_get_desc
	.align	16, 0x90
	.type	gimp_enum_value_get_desc,@function
gimp_enum_value_get_desc:               # @gimp_enum_value_get_desc
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_enum_get_desc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_5
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB8_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_type_get_translation_context@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	%rax, %rdi
	callq	g_dpgettext2@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB8_6
.LBB8_4:                                # %if.else
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strip_context@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_enum_value_get_desc, .Lfunc_end8-gimp_enum_value_get_desc
	.cfi_endproc

	.globl	gimp_enum_value_get_help
	.align	16, 0x90
	.type	gimp_enum_value_get_help,@function
gimp_enum_value_get_help:               # @gimp_enum_value_get_help
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
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_enum_get_desc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-40(%rbp), %rdi
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB9_4
.LBB9_3:                                # %if.end
	movq	$0, -8(%rbp)
.LBB9_4:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_enum_value_get_help, .Lfunc_end9-gimp_enum_value_get_help
	.cfi_endproc

	.globl	gimp_flags_get_first_desc
	.align	16, 0x90
	.type	gimp_flags_get_first_desc,@function
gimp_flags_get_first_desc:              # @gimp_flags_get_first_desc
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$52, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB10_7
.LBB10_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then.1
	movl	$1, -52(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.2
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_class_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.3
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.5
	jmp	.LBB10_10
.LBB10_9:                               # %if.else.6
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_flags_get_first_desc(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_19
.LBB10_10:                              # %if.end.7
	jmp	.LBB10_11
.LBB10_11:                              # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_flags_get_value_descriptions@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_18
# BB#12:                                # %if.then.11
	jmp	.LBB10_13
.LBB10_13:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_17
# BB#14:                                # %while.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	andl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	cmpl	(%rax), %ecx
	jne	.LBB10_16
# BB#15:                                # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_19
.LBB10_16:                              # %if.end.18
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_13
.LBB10_17:                              # %while.end
	jmp	.LBB10_18
.LBB10_18:                              # %if.end.19
	movq	$0, -8(%rbp)
.LBB10_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_flags_get_first_desc, .Lfunc_end10-gimp_flags_get_first_desc
	.cfi_endproc

	.globl	gimp_flags_get_first_value
	.align	16, 0x90
	.type	gimp_flags_get_first_value,@function
gimp_flags_get_first_value:             # @gimp_flags_get_first_value
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	g_type_fundamental@PLT
	cmpq	$52, %rax
	jne	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_flags_get_first_value(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_27
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	g_flags_get_first_value@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB11_26
# BB#6:                                 # %if.then.3
	cmpq	$0, -32(%rbp)
	je	.LBB11_8
# BB#7:                                 # %if.then.5
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_8:                               # %if.end.7
	cmpq	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.9
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_10:                              # %if.end.11
	cmpq	$0, -48(%rbp)
	jne	.LBB11_12
# BB#11:                                # %lor.lhs.false
	cmpq	$0, -56(%rbp)
	je	.LBB11_25
.LBB11_12:                              # %if.then.14
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_flags_get_first_desc@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB11_18
# BB#13:                                # %if.then.17
	cmpq	$0, -80(%rbp)
	je	.LBB11_16
# BB#14:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_16
# BB#15:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-80(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_17
.LBB11_17:                              # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_18:                              # %if.end.24
	cmpq	$0, -56(%rbp)
	je	.LBB11_24
# BB#19:                                # %if.then.26
	cmpq	$0, -80(%rbp)
	je	.LBB11_22
# BB#20:                                # %land.lhs.true.28
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_22
# BB#21:                                # %cond.true.31
	movq	-16(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-80(%rbp), %rdi
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_23
.LBB11_22:                              # %cond.false.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB11_23
.LBB11_23:                              # %cond.end.36
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB11_24:                              # %if.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.39
	movl	$1, -4(%rbp)
	jmp	.LBB11_27
.LBB11_26:                              # %if.end.40
	movl	$0, -4(%rbp)
.LBB11_27:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_flags_get_first_value, .Lfunc_end11-gimp_flags_get_first_value
	.cfi_endproc

	.globl	gimp_flags_value_get_desc
	.align	16, 0x90
	.type	gimp_flags_value_get_desc,@function
gimp_flags_value_get_desc:              # @gimp_flags_value_get_desc
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_flags_get_first_desc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB12_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_flags_value_get_desc, .Lfunc_end12-gimp_flags_value_get_desc
	.cfi_endproc

	.globl	gimp_flags_value_get_help
	.align	16, 0x90
	.type	gimp_flags_value_get_help,@function
gimp_flags_value_get_help:              # @gimp_flags_value_get_help
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_flags_get_first_desc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_type_get_translation_domain@PLT
	movq	-40(%rbp), %rdi
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_flags_value_get_help, .Lfunc_end13-gimp_flags_value_get_help
	.cfi_endproc

	.type	gimp_utf8_strtrim.ellipsis,@object # @gimp_utf8_strtrim.ellipsis
	.section	.rodata,"a",@progbits
gimp_utf8_strtrim.ellipsis:
	.asciz	"..."
	.size	gimp_utf8_strtrim.ellipsis, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_any_to_utf8,@object # @__func__.gimp_any_to_utf8
.L__func__.gimp_any_to_utf8:
	.asciz	"gimp_any_to_utf8"
	.size	.L__func__.gimp_any_to_utf8, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"str != NULL"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp20-libgimp"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(invalid UTF-8 string)"
	.size	.L.str.4, 23

	.type	gimp_filename_to_utf8.ht,@object # @gimp_filename_to_utf8.ht
	.local	gimp_filename_to_utf8.ht
	.comm	gimp_filename_to_utf8.ht,8,8
	.type	.L__func__.gimp_enum_get_desc,@object # @__func__.gimp_enum_get_desc
.L__func__.gimp_enum_get_desc:
	.asciz	"gimp_enum_get_desc"
	.size	.L__func__.gimp_enum_get_desc, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"G_IS_ENUM_CLASS (enum_class)"
	.size	.L.str.5, 29

	.type	.L__func__.gimp_enum_get_value,@object # @__func__.gimp_enum_get_value
.L__func__.gimp_enum_get_value:
	.asciz	"gimp_enum_get_value"
	.size	.L__func__.gimp_enum_get_value, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"G_TYPE_IS_ENUM (enum_type)"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_flags_get_first_desc,@object # @__func__.gimp_flags_get_first_desc
.L__func__.gimp_flags_get_first_desc:
	.asciz	"gimp_flags_get_first_desc"
	.size	.L__func__.gimp_flags_get_first_desc, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"G_IS_FLAGS_CLASS (flags_class)"
	.size	.L.str.7, 31

	.type	.L__func__.gimp_flags_get_first_value,@object # @__func__.gimp_flags_get_first_value
.L__func__.gimp_flags_get_first_value:
	.asciz	"gimp_flags_get_first_value"
	.size	.L__func__.gimp_flags_get_first_value, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"G_TYPE_IS_FLAGS (flags_type)"
	.size	.L.str.8, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
