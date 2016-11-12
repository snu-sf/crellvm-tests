	.text
	.file	"gimprgb-parse.bc"
	.globl	gimp_rgb_parse_name
	.align	16, 0x90
	.type	gimp_rgb_parse_name,@function
gimp_rgb_parse_name:                    # @gimp_rgb_parse_name
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_name(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.4
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_name(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_11
.LBB0_9:                                # %if.end.6
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.7
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_rgb_parse_strip
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_rgb_parse_name_internal
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_rgb_parse_name, .Lfunc_end0-gimp_rgb_parse_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_parse_strip,@function
gimp_rgb_parse_strip:                   # @gimp_rgb_parse_strip
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
	movl	%esi, -12(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jle	.LBB1_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -25(%rbp)         # 1-byte Spill
.LBB1_3:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB1_1
.LBB1_5:                                # %while.end
	cmpl	$0, -12(%rbp)
	jge	.LBB1_10
# BB#6:                                 # %if.then
	jmp	.LBB1_7
.LBB1_7:                                # %while.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	je	.LBB1_9
# BB#8:                                 # %while.body.12
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_7
.LBB1_9:                                # %while.end.14
	movq	-8(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
.LBB1_10:                               # %if.end
	jmp	.LBB1_11
.LBB1_11:                               # %while.cond.16
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jle	.LBB1_13
# BB#12:                                # %land.rhs.19
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	%ecx, %edx
	movq	(%rax), %rax
	movzwl	(%rax,%rdx,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	setne	%dil
	movb	%dil, -26(%rbp)         # 1-byte Spill
.LBB1_13:                               # %land.end.28
                                        #   in Loop: Header=BB1_11 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_14:                               # %while.body.29
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_11
.LBB1_15:                               # %while.end.31
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	memcpy@PLT
	movslq	-12(%rbp), %rax
	movq	-24(%rbp), %rdx
	movb	$0, (%rdx,%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_rgb_parse_strip, .Lfunc_end1-gimp_rgb_parse_strip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_parse_name_internal,@function
gimp_rgb_parse_name_internal:           # @gimp_rgb_parse_name_internal
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
	subq	$32, %rsp
	leaq	named_colors(%rip), %rax
	movl	$147, %ecx
	movl	%ecx, %edx
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	gimp_rgb_color_entry_compare(%rip), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	bsearch@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	8(%rax), %cl
	movq	-32(%rbp), %rax
	movb	9(%rax), %dl
	movq	-32(%rbp), %rax
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	10(%rax), %ecx
	callq	gimp_rgb_set_uchar@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB2_3
.LBB2_2:                                # %if.end
	movl	$0, -4(%rbp)
.LBB2_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rgb_parse_name_internal, .Lfunc_end2-gimp_rgb_parse_name_internal
	.cfi_endproc

	.globl	gimp_rgb_parse_hex
	.align	16, 0x90
	.type	gimp_rgb_parse_hex,@function
gimp_rgb_parse_hex:                     # @gimp_rgb_parse_hex
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
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_hex(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_11
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.4
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_hex(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB3_11
.LBB3_9:                                # %if.end.6
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.7
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_rgb_parse_strip
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_rgb_parse_hex_internal
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_rgb_parse_hex, .Lfunc_end3-gimp_rgb_parse_hex
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_parse_hex_internal,@function
gimp_rgb_parse_hex_internal:            # @gimp_rgb_parse_hex_internal
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
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$35, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB4_2:                                # %if.end
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	strlen@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-72(%rbp), %rcx         # 8-byte Reload
	divq	%rcx
	cmpq	$0, %rdx
	jne	.LBB4_5
# BB#3:                                 # %lor.lhs.false
	cmpq	$3, -40(%rbp)
	jb	.LBB4_5
# BB#4:                                 # %lor.lhs.false.4
	cmpq	$12, -40(%rbp)
	jbe	.LBB4_6
.LBB4_5:                                # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_6:                                # %if.end.8
	movl	$3, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movq	%rax, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -28(%rbp)
	jge	.LBB4_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	leaq	-64(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	movslq	-28(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	gimp_rgb_parse_hex_component
	cmpl	$0, %eax
	jne	.LBB4_10
# BB#9:                                 # %if.then.14
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_10:                               # %if.end.15
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_11
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-40(%rbp), %rcx
	addq	-24(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	jmp	.LBB4_7
.LBB4_12:                               # %for.end
	movq	-16(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_rgb_set@PLT
	movl	$1, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_rgb_parse_hex_internal, .Lfunc_end4-gimp_rgb_parse_hex_internal
	.cfi_endproc

	.globl	gimp_rgb_parse_css
	.align	16, 0x90
	.type	gimp_rgb_parse_css,@function
gimp_rgb_parse_css:                     # @gimp_rgb_parse_css
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_css(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.4
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_parse_css(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_11
.LBB5_9:                                # %if.end.6
	jmp	.LBB5_10
.LBB5_10:                               # %do.end.7
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_rgb_parse_strip
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_rgb_parse_css_internal
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_rgb_parse_css, .Lfunc_end5-gimp_rgb_parse_css
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_parse_css_internal,@function
gimp_rgb_parse_css_internal:            # @gimp_rgb_parse_css_internal
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$35, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_parse_hex_internal
	movl	%eax, -4(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	leaq	.L.str.158(%rip), %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %lor.lhs.false
	leaq	.L.str.159(%rip), %rsi
	movl	$4, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB6_5
.LBB6_4:                                # %if.then.8
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_parse_css_numeric
	movl	%eax, -4(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_parse_name_internal
	movl	%eax, -4(%rbp)
.LBB6_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rgb_parse_css_internal, .Lfunc_end6-gimp_rgb_parse_css_internal
	.cfi_endproc

	.globl	gimp_rgba_parse_css
	.align	16, 0x90
	.type	gimp_rgba_parse_css,@function
gimp_rgba_parse_css:                    # @gimp_rgba_parse_css
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgba_parse_css(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_16
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.2
	cmpq	$0, -24(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.4
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.5
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgba_parse_css(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_16
.LBB7_9:                                # %if.end.6
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.7
	cmpl	$0, -28(%rbp)
	jge	.LBB7_12
# BB#11:                                # %if.then.9
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB7_12:                               # %if.end.10
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_rgb_parse_strip
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	leaq	.L.str.6(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB7_14
# BB#13:                                # %if.then.15
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	movl	$1, -44(%rbp)
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.16
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_rgba_parse_css_internal
	movl	%eax, -44(%rbp)
.LBB7_15:                               # %if.end.18
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_rgba_parse_css, .Lfunc_end7-gimp_rgba_parse_css
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgba_parse_css_internal,@function
gimp_rgba_parse_css_internal:           # @gimp_rgba_parse_css_internal
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
	leaq	.L.str.160(%rip), %rax
	movl	$5, %ecx
	movl	%ecx, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	strncmp@PLT
	cmpl	$0, %eax
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	leaq	.L.str.161(%rip), %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	strncmp@PLT
	cmpl	$0, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_parse_css_numeric
	movl	%eax, -4(%rbp)
.LBB8_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_rgba_parse_css_internal, .Lfunc_end8-gimp_rgba_parse_css_internal
	.cfi_endproc

	.globl	gimp_rgb_list_names
	.align	16, 0x90
	.type	gimp_rgb_list_names,@function
gimp_rgb_list_names:                    # @gimp_rgb_list_names
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_list_names(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_15
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	jmp	.LBB9_6
.LBB9_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB9_8
# BB#7:                                 # %if.then.3
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_rgb_list_names(%rip), %rsi
	leaq	.L.str.8(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB9_15
.LBB9_9:                                # %if.end.5
	jmp	.LBB9_10
.LBB9_10:                               # %do.end.6
	movl	$147, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n@PLT
	movl	$147, %ecx
	movl	%ecx, %edi
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	callq	g_malloc_n@PLT
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$0, -28(%rbp)
.LBB9_11:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	cmpq	$147, %rax
	jae	.LBB9_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	$255, %r8d
	leaq	named_colors(%rip), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movslq	-28(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movb	8(%rsi), %dil
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movb	9(%rsi), %r9b
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movb	%dil, -29(%rbp)         # 1-byte Spill
	movq	%rcx, %rdi
	movb	-29(%rbp), %r10b        # 1-byte Reload
	movzbl	%r10b, %esi
	movzbl	%r9b, %edx
	movzbl	10(%rax), %ecx
	callq	gimp_rgba_set_uchar@PLT
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_11
.LBB9_14:                               # %for.end
	movl	$147, -4(%rbp)
.LBB9_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_rgb_list_names, .Lfunc_end9-gimp_rgb_list_names
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_rgb_color_entry_compare,@function
gimp_rgb_color_entry_compare:           # @gimp_rgb_color_entry_compare
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	g_ascii_strcasecmp@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_rgb_color_entry_compare, .Lfunc_end10-gimp_rgb_color_entry_compare
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4679239875398991872     # double 65535
.LCPI11_1:
	.quad	4661223415305207808     # double 4095
.LCPI11_2:
	.quad	4643176031446892544     # double 255
.LCPI11_3:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	gimp_rgb_parse_hex_component,@function
gimp_rgb_parse_hex_component:           # @gimp_rgb_parse_hex_component
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB11_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB11_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$1024, %edx             # imm = 0x400
	cmpl	$0, %edx
	jne	.LBB11_5
.LBB11_4:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%rbp), %eax
	shll	$4, %eax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx), %edi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_ascii_xdigit_value@PLT
	movl	-44(%rbp), %edi         # 4-byte Reload
	orl	%eax, %edi
	movl	%edi, -40(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	jmp	.LBB11_1
.LBB11_7:                               # %for.end
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	ja	.LBB11_12
# BB#16:                                # %for.end
	leaq	.LJTI11_0(%rip), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB11_8:                               # %sw.bb
	movsd	.LCPI11_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	jmp	.LBB11_14
.LBB11_9:                               # %sw.bb.4
	movsd	.LCPI11_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	jmp	.LBB11_14
.LBB11_10:                              # %sw.bb.7
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	jmp	.LBB11_14
.LBB11_11:                              # %sw.bb.10
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	jmp	.LBB11_14
.LBB11_12:                              # %sw.default
	jmp	.LBB11_13
.LBB11_13:                              # %do.body
	leaq	.L.str(%rip), %rdi
	movl	$8, %esi
	leaq	.L.str.156(%rip), %rdx
	leaq	.L.str.157(%rip), %rcx
	movl	$503, %r8d              # imm = 0x1F7
	leaq	.L__func__.gimp_rgb_parse_hex_component(%rip), %r9
	movb	$0, %al
	callq	g_log@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %sw.epilog
	movl	$1, -4(%rbp)
.LBB11_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_rgb_parse_hex_component, .Lfunc_end11-gimp_rgb_parse_hex_component
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI11_0:
	.long	.LBB11_8-.LJTI11_0
	.long	.LBB11_9-.LJTI11_0
	.long	.LBB11_10-.LJTI11_0
	.long	.LBB11_11-.LJTI11_0

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643176031446892544     # double 255
.LCPI12_1:
	.quad	4645040803167600640     # double 360
.LCPI12_2:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_rgb_parse_css_numeric,@function
gimp_rgb_parse_css_numeric:             # @gimp_rgb_parse_css_numeric
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movsbl	(%rsi), %eax
	cmpl	$114, %eax
	jne	.LBB12_4
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$103, %ecx
	jne	.LBB12_4
# BB#2:                                 # %land.lhs.true.6
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$98, %ecx
	jne	.LBB12_4
# BB#3:                                 # %if.then
	movl	$0, -72(%rbp)
	jmp	.LBB12_10
.LBB12_4:                               # %if.else
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$104, %ecx
	jne	.LBB12_8
# BB#5:                                 # %land.lhs.true.15
	movq	-24(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$115, %ecx
	jne	.LBB12_8
# BB#6:                                 # %land.lhs.true.20
	movq	-24(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$108, %ecx
	jne	.LBB12_8
# BB#7:                                 # %if.then.25
	movl	$1, -72(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %if.else.26
	movl	$0, -4(%rbp)
	jmp	.LBB12_54
.LBB12_9:                               # %if.end
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.27
	movq	-24(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$97, %ecx
	jne	.LBB12_13
# BB#11:                                # %land.lhs.true.32
	movq	-24(%rbp), %rax
	movsbl	4(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB12_13
# BB#12:                                # %if.then.37
	movl	$1, -68(%rbp)
	jmp	.LBB12_17
.LBB12_13:                              # %if.else.38
	movq	-24(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$40, %ecx
	jne	.LBB12_15
# BB#14:                                # %if.then.43
	movl	$0, -68(%rbp)
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.44
	movl	$0, -4(%rbp)
	jmp	.LBB12_54
.LBB12_16:                              # %if.end.45
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.46
	movl	$4, %eax
	movl	$5, %ecx
	cmpl	$0, -68(%rbp)
	cmovnel	%ecx, %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	movl	$0, -76(%rbp)
.LBB12_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_20 Depth 2
                                        #     Child Loop BB12_40 Depth 2
	movl	$3, %eax
	movl	$4, %ecx
	movl	-76(%rbp), %edx
	cmpl	$0, -68(%rbp)
	cmovnel	%ecx, %eax
	cmpl	%eax, %edx
	jge	.LBB12_46
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB12_20:                              # %while.cond
                                        #   Parent Loop BB12_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB12_24
# BB#21:                                # %land.lhs.true.53
                                        #   in Loop: Header=BB12_20 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$44, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB12_24
# BB#22:                                # %land.lhs.true.57
                                        #   in Loop: Header=BB12_20 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$37, %eax
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB12_24
# BB#23:                                # %land.rhs
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	setne	%dl
	movb	%dl, -129(%rbp)         # 1-byte Spill
.LBB12_24:                              # %land.end
                                        #   in Loop: Header=BB12_20 Depth=2
	movb	-129(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_25
	jmp	.LBB12_26
.LBB12_25:                              # %while.body
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB12_20
.LBB12_26:                              # %while.end
                                        #   in Loop: Header=BB12_18 Depth=1
	cmpl	$3, -76(%rbp)
	je	.LBB12_28
# BB#27:                                # %lor.lhs.false
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB12_33
.LBB12_28:                              # %if.then.69
                                        #   in Loop: Header=BB12_18 Depth=1
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	g_ascii_strtod@PLT
	movslq	-76(%rbp), %rsi
	movsd	%xmm0, -64(%rbp,%rsi,8)
	callq	__errno_location@PLT
	cmpl	$34, (%rax)
	jne	.LBB12_30
# BB#29:                                # %if.then.74
	movl	$0, -4(%rbp)
	jmp	.LBB12_54
.LBB12_30:                              # %if.end.75
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-88(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	jne	.LBB12_32
# BB#31:                                # %if.then.79
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	.LCPI12_2(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	movslq	-76(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm1 # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp,%rax,8)
.LBB12_32:                              # %if.end.83
                                        #   in Loop: Header=BB12_18 Depth=1
	jmp	.LBB12_39
.LBB12_33:                              # %if.else.84
                                        #   in Loop: Header=BB12_18 Depth=1
	leaq	-88(%rbp), %rsi
	movl	$10, %edx
	movq	-24(%rbp), %rdi
	callq	strtol@PLT
	movq	%rax, -96(%rbp)
	callq	__errno_location@PLT
	cmpl	$34, (%rax)
	jne	.LBB12_35
# BB#34:                                # %if.then.89
	movl	$0, -4(%rbp)
	jmp	.LBB12_54
.LBB12_35:                              # %if.end.90
                                        #   in Loop: Header=BB12_18 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB12_37
# BB#36:                                # %if.then.92
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	.LCPI12_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI12_2(%rip), %xmm1  # xmm1 = mem[0],zero
	cvtsi2sdq	-96(%rbp), %xmm2
	cmpl	$0, -76(%rbp)
	movsd	%xmm2, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	je	.LBB12_56
# BB#55:                                # %if.then.92
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
.LBB12_56:                              # %if.then.92
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	-76(%rbp), %rax
	movsd	%xmm1, -64(%rbp,%rax,8)
	jmp	.LBB12_38
.LBB12_37:                              # %if.else.100
                                        #   in Loop: Header=BB12_18 Depth=1
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtsi2sdq	-96(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movslq	-76(%rbp), %rax
	movsd	%xmm1, -64(%rbp,%rax,8)
.LBB12_38:                              # %if.end.105
                                        #   in Loop: Header=BB12_18 Depth=1
	jmp	.LBB12_39
.LBB12_39:                              # %if.end.106
                                        #   in Loop: Header=BB12_18 Depth=1
	jmp	.LBB12_40
.LBB12_40:                              # %while.cond.107
                                        #   Parent Loop BB12_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	movq	-88(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$44, %edx
	movb	%al, -161(%rbp)         # 1-byte Spill
	je	.LBB12_42
# BB#41:                                # %lor.rhs
                                        #   in Loop: Header=BB12_40 Depth=2
	movq	g_ascii_table@GOTPCREL(%rip), %rax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	(%rax), %rax
	movzwl	(%rax,%rcx,2), %edx
	andl	$256, %edx              # imm = 0x100
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -161(%rbp)        # 1-byte Spill
.LBB12_42:                              # %lor.end
                                        #   in Loop: Header=BB12_40 Depth=2
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_43
	jmp	.LBB12_44
.LBB12_43:                              # %while.body.116
                                        #   in Loop: Header=BB12_40 Depth=2
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB12_40
.LBB12_44:                              # %while.end.118
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#45:                                # %for.inc
                                        #   in Loop: Header=BB12_18 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_18
.LBB12_46:                              # %for.end
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$41, %ecx
	je	.LBB12_48
# BB#47:                                # %if.then.122
	movl	$0, -4(%rbp)
	jmp	.LBB12_54
.LBB12_48:                              # %if.end.123
	cmpl	$0, -68(%rbp)
	je	.LBB12_50
# BB#49:                                # %if.then.125
	movq	-16(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	gimp_rgba_set@PLT
	jmp	.LBB12_51
.LBB12_50:                              # %if.else.130
	movq	-16(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_rgb_set@PLT
.LBB12_51:                              # %if.end.134
	movq	-16(%rbp), %rdi
	callq	gimp_rgb_clamp@PLT
	cmpl	$0, -72(%rbp)
	je	.LBB12_53
# BB#52:                                # %if.then.136
	leaq	-128(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rsi
	callq	gimp_hsl_to_rgb@PLT
.LBB12_53:                              # %if.end.137
	movl	$1, -4(%rbp)
.LBB12_54:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_rgb_parse_css_numeric, .Lfunc_end12-gimp_rgb_parse_css_numeric
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpColor"
	.size	.L.str, 13

	.type	.L__func__.gimp_rgb_parse_name,@object # @__func__.gimp_rgb_parse_name
.L__func__.gimp_rgb_parse_name:
	.asciz	"gimp_rgb_parse_name"
	.size	.L__func__.gimp_rgb_parse_name, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"rgb != NULL"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_rgb_parse_hex,@object # @__func__.gimp_rgb_parse_hex
.L__func__.gimp_rgb_parse_hex:
	.asciz	"gimp_rgb_parse_hex"
	.size	.L__func__.gimp_rgb_parse_hex, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"hex != NULL"
	.size	.L.str.3, 12

	.type	.L__func__.gimp_rgb_parse_css,@object # @__func__.gimp_rgb_parse_css
.L__func__.gimp_rgb_parse_css:
	.asciz	"gimp_rgb_parse_css"
	.size	.L__func__.gimp_rgb_parse_css, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"css != NULL"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_rgba_parse_css,@object # @__func__.gimp_rgba_parse_css
.L__func__.gimp_rgba_parse_css:
	.asciz	"gimp_rgba_parse_css"
	.size	.L__func__.gimp_rgba_parse_css, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rgba != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"transparent"
	.size	.L.str.6, 12

	.type	.L__func__.gimp_rgb_list_names,@object # @__func__.gimp_rgb_list_names
.L__func__.gimp_rgb_list_names:
	.asciz	"gimp_rgb_list_names"
	.size	.L__func__.gimp_rgb_list_names, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"names != NULL"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"colors != NULL"
	.size	.L.str.8, 15

	.type	named_colors,@object    # @named_colors
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
named_colors:
	.quad	.L.str.9
	.byte	240                     # 0xf0
	.byte	248                     # 0xf8
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.10
	.byte	250                     # 0xfa
	.byte	235                     # 0xeb
	.byte	215                     # 0xd7
	.zero	5
	.quad	.L.str.11
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.12
	.byte	127                     # 0x7f
	.byte	255                     # 0xff
	.byte	212                     # 0xd4
	.zero	5
	.quad	.L.str.13
	.byte	240                     # 0xf0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.14
	.byte	245                     # 0xf5
	.byte	245                     # 0xf5
	.byte	220                     # 0xdc
	.zero	5
	.quad	.L.str.15
	.byte	255                     # 0xff
	.byte	228                     # 0xe4
	.byte	196                     # 0xc4
	.zero	5
	.quad	.L.str.16
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.17
	.byte	255                     # 0xff
	.byte	235                     # 0xeb
	.byte	205                     # 0xcd
	.zero	5
	.quad	.L.str.18
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.19
	.byte	138                     # 0x8a
	.byte	43                      # 0x2b
	.byte	226                     # 0xe2
	.zero	5
	.quad	.L.str.20
	.byte	165                     # 0xa5
	.byte	42                      # 0x2a
	.byte	42                      # 0x2a
	.zero	5
	.quad	.L.str.21
	.byte	222                     # 0xde
	.byte	184                     # 0xb8
	.byte	135                     # 0x87
	.zero	5
	.quad	.L.str.22
	.byte	95                      # 0x5f
	.byte	158                     # 0x9e
	.byte	160                     # 0xa0
	.zero	5
	.quad	.L.str.23
	.byte	127                     # 0x7f
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.24
	.byte	210                     # 0xd2
	.byte	105                     # 0x69
	.byte	30                      # 0x1e
	.zero	5
	.quad	.L.str.25
	.byte	255                     # 0xff
	.byte	127                     # 0x7f
	.byte	80                      # 0x50
	.zero	5
	.quad	.L.str.26
	.byte	100                     # 0x64
	.byte	149                     # 0x95
	.byte	237                     # 0xed
	.zero	5
	.quad	.L.str.27
	.byte	255                     # 0xff
	.byte	248                     # 0xf8
	.byte	220                     # 0xdc
	.zero	5
	.quad	.L.str.28
	.byte	220                     # 0xdc
	.byte	20                      # 0x14
	.byte	60                      # 0x3c
	.zero	5
	.quad	.L.str.29
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.30
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	139                     # 0x8b
	.zero	5
	.quad	.L.str.31
	.byte	0                       # 0x0
	.byte	139                     # 0x8b
	.byte	139                     # 0x8b
	.zero	5
	.quad	.L.str.32
	.byte	184                     # 0xb8
	.byte	134                     # 0x86
	.byte	11                      # 0xb
	.zero	5
	.quad	.L.str.33
	.byte	169                     # 0xa9
	.byte	169                     # 0xa9
	.byte	169                     # 0xa9
	.zero	5
	.quad	.L.str.34
	.byte	0                       # 0x0
	.byte	100                     # 0x64
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.35
	.byte	169                     # 0xa9
	.byte	169                     # 0xa9
	.byte	169                     # 0xa9
	.zero	5
	.quad	.L.str.36
	.byte	189                     # 0xbd
	.byte	183                     # 0xb7
	.byte	107                     # 0x6b
	.zero	5
	.quad	.L.str.37
	.byte	139                     # 0x8b
	.byte	0                       # 0x0
	.byte	139                     # 0x8b
	.zero	5
	.quad	.L.str.38
	.byte	85                      # 0x55
	.byte	107                     # 0x6b
	.byte	47                      # 0x2f
	.zero	5
	.quad	.L.str.39
	.byte	255                     # 0xff
	.byte	140                     # 0x8c
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.40
	.byte	153                     # 0x99
	.byte	50                      # 0x32
	.byte	204                     # 0xcc
	.zero	5
	.quad	.L.str.41
	.byte	139                     # 0x8b
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.42
	.byte	233                     # 0xe9
	.byte	150                     # 0x96
	.byte	122                     # 0x7a
	.zero	5
	.quad	.L.str.43
	.byte	143                     # 0x8f
	.byte	188                     # 0xbc
	.byte	143                     # 0x8f
	.zero	5
	.quad	.L.str.44
	.byte	72                      # 0x48
	.byte	61                      # 0x3d
	.byte	139                     # 0x8b
	.zero	5
	.quad	.L.str.45
	.byte	47                      # 0x2f
	.byte	79                      # 0x4f
	.byte	79                      # 0x4f
	.zero	5
	.quad	.L.str.46
	.byte	47                      # 0x2f
	.byte	79                      # 0x4f
	.byte	79                      # 0x4f
	.zero	5
	.quad	.L.str.47
	.byte	0                       # 0x0
	.byte	206                     # 0xce
	.byte	209                     # 0xd1
	.zero	5
	.quad	.L.str.48
	.byte	148                     # 0x94
	.byte	0                       # 0x0
	.byte	211                     # 0xd3
	.zero	5
	.quad	.L.str.49
	.byte	255                     # 0xff
	.byte	20                      # 0x14
	.byte	147                     # 0x93
	.zero	5
	.quad	.L.str.50
	.byte	0                       # 0x0
	.byte	191                     # 0xbf
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.51
	.byte	105                     # 0x69
	.byte	105                     # 0x69
	.byte	105                     # 0x69
	.zero	5
	.quad	.L.str.52
	.byte	105                     # 0x69
	.byte	105                     # 0x69
	.byte	105                     # 0x69
	.zero	5
	.quad	.L.str.53
	.byte	30                      # 0x1e
	.byte	144                     # 0x90
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.54
	.byte	178                     # 0xb2
	.byte	34                      # 0x22
	.byte	34                      # 0x22
	.zero	5
	.quad	.L.str.55
	.byte	255                     # 0xff
	.byte	250                     # 0xfa
	.byte	240                     # 0xf0
	.zero	5
	.quad	.L.str.56
	.byte	34                      # 0x22
	.byte	139                     # 0x8b
	.byte	34                      # 0x22
	.zero	5
	.quad	.L.str.57
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.58
	.byte	220                     # 0xdc
	.byte	220                     # 0xdc
	.byte	220                     # 0xdc
	.zero	5
	.quad	.L.str.59
	.byte	248                     # 0xf8
	.byte	248                     # 0xf8
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.60
	.byte	255                     # 0xff
	.byte	215                     # 0xd7
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.61
	.byte	218                     # 0xda
	.byte	165                     # 0xa5
	.byte	32                      # 0x20
	.zero	5
	.quad	.L.str.62
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.63
	.byte	0                       # 0x0
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.64
	.byte	173                     # 0xad
	.byte	255                     # 0xff
	.byte	47                      # 0x2f
	.zero	5
	.quad	.L.str.65
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.66
	.byte	240                     # 0xf0
	.byte	255                     # 0xff
	.byte	240                     # 0xf0
	.zero	5
	.quad	.L.str.67
	.byte	255                     # 0xff
	.byte	105                     # 0x69
	.byte	180                     # 0xb4
	.zero	5
	.quad	.L.str.68
	.byte	205                     # 0xcd
	.byte	92                      # 0x5c
	.byte	92                      # 0x5c
	.zero	5
	.quad	.L.str.69
	.byte	75                      # 0x4b
	.byte	0                       # 0x0
	.byte	130                     # 0x82
	.zero	5
	.quad	.L.str.70
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	240                     # 0xf0
	.zero	5
	.quad	.L.str.71
	.byte	240                     # 0xf0
	.byte	230                     # 0xe6
	.byte	140                     # 0x8c
	.zero	5
	.quad	.L.str.72
	.byte	230                     # 0xe6
	.byte	230                     # 0xe6
	.byte	250                     # 0xfa
	.zero	5
	.quad	.L.str.73
	.byte	255                     # 0xff
	.byte	240                     # 0xf0
	.byte	245                     # 0xf5
	.zero	5
	.quad	.L.str.74
	.byte	124                     # 0x7c
	.byte	252                     # 0xfc
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.75
	.byte	255                     # 0xff
	.byte	250                     # 0xfa
	.byte	205                     # 0xcd
	.zero	5
	.quad	.L.str.76
	.byte	173                     # 0xad
	.byte	216                     # 0xd8
	.byte	230                     # 0xe6
	.zero	5
	.quad	.L.str.77
	.byte	240                     # 0xf0
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.78
	.byte	224                     # 0xe0
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.79
	.byte	250                     # 0xfa
	.byte	250                     # 0xfa
	.byte	210                     # 0xd2
	.zero	5
	.quad	.L.str.80
	.byte	211                     # 0xd3
	.byte	211                     # 0xd3
	.byte	211                     # 0xd3
	.zero	5
	.quad	.L.str.81
	.byte	144                     # 0x90
	.byte	238                     # 0xee
	.byte	144                     # 0x90
	.zero	5
	.quad	.L.str.82
	.byte	211                     # 0xd3
	.byte	211                     # 0xd3
	.byte	211                     # 0xd3
	.zero	5
	.quad	.L.str.83
	.byte	255                     # 0xff
	.byte	182                     # 0xb6
	.byte	193                     # 0xc1
	.zero	5
	.quad	.L.str.84
	.byte	255                     # 0xff
	.byte	160                     # 0xa0
	.byte	122                     # 0x7a
	.zero	5
	.quad	.L.str.85
	.byte	32                      # 0x20
	.byte	178                     # 0xb2
	.byte	170                     # 0xaa
	.zero	5
	.quad	.L.str.86
	.byte	135                     # 0x87
	.byte	206                     # 0xce
	.byte	250                     # 0xfa
	.zero	5
	.quad	.L.str.87
	.byte	119                     # 0x77
	.byte	136                     # 0x88
	.byte	153                     # 0x99
	.zero	5
	.quad	.L.str.88
	.byte	119                     # 0x77
	.byte	136                     # 0x88
	.byte	153                     # 0x99
	.zero	5
	.quad	.L.str.89
	.byte	176                     # 0xb0
	.byte	196                     # 0xc4
	.byte	222                     # 0xde
	.zero	5
	.quad	.L.str.90
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	224                     # 0xe0
	.zero	5
	.quad	.L.str.91
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.92
	.byte	50                      # 0x32
	.byte	205                     # 0xcd
	.byte	50                      # 0x32
	.zero	5
	.quad	.L.str.93
	.byte	250                     # 0xfa
	.byte	240                     # 0xf0
	.byte	230                     # 0xe6
	.zero	5
	.quad	.L.str.94
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.95
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.96
	.byte	102                     # 0x66
	.byte	205                     # 0xcd
	.byte	170                     # 0xaa
	.zero	5
	.quad	.L.str.97
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	205                     # 0xcd
	.zero	5
	.quad	.L.str.98
	.byte	186                     # 0xba
	.byte	85                      # 0x55
	.byte	211                     # 0xd3
	.zero	5
	.quad	.L.str.99
	.byte	147                     # 0x93
	.byte	112                     # 0x70
	.byte	219                     # 0xdb
	.zero	5
	.quad	.L.str.100
	.byte	60                      # 0x3c
	.byte	179                     # 0xb3
	.byte	113                     # 0x71
	.zero	5
	.quad	.L.str.101
	.byte	123                     # 0x7b
	.byte	104                     # 0x68
	.byte	238                     # 0xee
	.zero	5
	.quad	.L.str.102
	.byte	0                       # 0x0
	.byte	250                     # 0xfa
	.byte	154                     # 0x9a
	.zero	5
	.quad	.L.str.103
	.byte	72                      # 0x48
	.byte	209                     # 0xd1
	.byte	204                     # 0xcc
	.zero	5
	.quad	.L.str.104
	.byte	199                     # 0xc7
	.byte	21                      # 0x15
	.byte	133                     # 0x85
	.zero	5
	.quad	.L.str.105
	.byte	25                      # 0x19
	.byte	25                      # 0x19
	.byte	112                     # 0x70
	.zero	5
	.quad	.L.str.106
	.byte	245                     # 0xf5
	.byte	255                     # 0xff
	.byte	250                     # 0xfa
	.zero	5
	.quad	.L.str.107
	.byte	255                     # 0xff
	.byte	228                     # 0xe4
	.byte	225                     # 0xe1
	.zero	5
	.quad	.L.str.108
	.byte	255                     # 0xff
	.byte	228                     # 0xe4
	.byte	181                     # 0xb5
	.zero	5
	.quad	.L.str.109
	.byte	255                     # 0xff
	.byte	222                     # 0xde
	.byte	173                     # 0xad
	.zero	5
	.quad	.L.str.110
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.111
	.byte	253                     # 0xfd
	.byte	245                     # 0xf5
	.byte	230                     # 0xe6
	.zero	5
	.quad	.L.str.112
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.113
	.byte	107                     # 0x6b
	.byte	142                     # 0x8e
	.byte	35                      # 0x23
	.zero	5
	.quad	.L.str.114
	.byte	255                     # 0xff
	.byte	165                     # 0xa5
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.115
	.byte	255                     # 0xff
	.byte	69                      # 0x45
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.116
	.byte	218                     # 0xda
	.byte	112                     # 0x70
	.byte	214                     # 0xd6
	.zero	5
	.quad	.L.str.117
	.byte	238                     # 0xee
	.byte	232                     # 0xe8
	.byte	170                     # 0xaa
	.zero	5
	.quad	.L.str.118
	.byte	152                     # 0x98
	.byte	251                     # 0xfb
	.byte	152                     # 0x98
	.zero	5
	.quad	.L.str.119
	.byte	175                     # 0xaf
	.byte	238                     # 0xee
	.byte	238                     # 0xee
	.zero	5
	.quad	.L.str.120
	.byte	219                     # 0xdb
	.byte	112                     # 0x70
	.byte	147                     # 0x93
	.zero	5
	.quad	.L.str.121
	.byte	255                     # 0xff
	.byte	239                     # 0xef
	.byte	213                     # 0xd5
	.zero	5
	.quad	.L.str.122
	.byte	255                     # 0xff
	.byte	218                     # 0xda
	.byte	185                     # 0xb9
	.zero	5
	.quad	.L.str.123
	.byte	205                     # 0xcd
	.byte	133                     # 0x85
	.byte	63                      # 0x3f
	.zero	5
	.quad	.L.str.124
	.byte	255                     # 0xff
	.byte	192                     # 0xc0
	.byte	203                     # 0xcb
	.zero	5
	.quad	.L.str.125
	.byte	221                     # 0xdd
	.byte	160                     # 0xa0
	.byte	221                     # 0xdd
	.zero	5
	.quad	.L.str.126
	.byte	176                     # 0xb0
	.byte	224                     # 0xe0
	.byte	230                     # 0xe6
	.zero	5
	.quad	.L.str.127
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.128
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.129
	.byte	188                     # 0xbc
	.byte	143                     # 0x8f
	.byte	143                     # 0x8f
	.zero	5
	.quad	.L.str.130
	.byte	65                      # 0x41
	.byte	105                     # 0x69
	.byte	225                     # 0xe1
	.zero	5
	.quad	.L.str.131
	.byte	139                     # 0x8b
	.byte	69                      # 0x45
	.byte	19                      # 0x13
	.zero	5
	.quad	.L.str.132
	.byte	250                     # 0xfa
	.byte	128                     # 0x80
	.byte	114                     # 0x72
	.zero	5
	.quad	.L.str.133
	.byte	244                     # 0xf4
	.byte	164                     # 0xa4
	.byte	96                      # 0x60
	.zero	5
	.quad	.L.str.134
	.byte	46                      # 0x2e
	.byte	139                     # 0x8b
	.byte	87                      # 0x57
	.zero	5
	.quad	.L.str.135
	.byte	255                     # 0xff
	.byte	245                     # 0xf5
	.byte	238                     # 0xee
	.zero	5
	.quad	.L.str.136
	.byte	160                     # 0xa0
	.byte	82                      # 0x52
	.byte	45                      # 0x2d
	.zero	5
	.quad	.L.str.137
	.byte	192                     # 0xc0
	.byte	192                     # 0xc0
	.byte	192                     # 0xc0
	.zero	5
	.quad	.L.str.138
	.byte	135                     # 0x87
	.byte	206                     # 0xce
	.byte	235                     # 0xeb
	.zero	5
	.quad	.L.str.139
	.byte	106                     # 0x6a
	.byte	90                      # 0x5a
	.byte	205                     # 0xcd
	.zero	5
	.quad	.L.str.140
	.byte	112                     # 0x70
	.byte	128                     # 0x80
	.byte	144                     # 0x90
	.zero	5
	.quad	.L.str.141
	.byte	112                     # 0x70
	.byte	128                     # 0x80
	.byte	144                     # 0x90
	.zero	5
	.quad	.L.str.142
	.byte	255                     # 0xff
	.byte	250                     # 0xfa
	.byte	250                     # 0xfa
	.zero	5
	.quad	.L.str.143
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	127                     # 0x7f
	.zero	5
	.quad	.L.str.144
	.byte	70                      # 0x46
	.byte	130                     # 0x82
	.byte	180                     # 0xb4
	.zero	5
	.quad	.L.str.145
	.byte	210                     # 0xd2
	.byte	180                     # 0xb4
	.byte	140                     # 0x8c
	.zero	5
	.quad	.L.str.146
	.byte	0                       # 0x0
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.zero	5
	.quad	.L.str.147
	.byte	216                     # 0xd8
	.byte	191                     # 0xbf
	.byte	216                     # 0xd8
	.zero	5
	.quad	.L.str.148
	.byte	255                     # 0xff
	.byte	99                      # 0x63
	.byte	71                      # 0x47
	.zero	5
	.quad	.L.str.149
	.byte	64                      # 0x40
	.byte	224                     # 0xe0
	.byte	208                     # 0xd0
	.zero	5
	.quad	.L.str.150
	.byte	238                     # 0xee
	.byte	130                     # 0x82
	.byte	238                     # 0xee
	.zero	5
	.quad	.L.str.151
	.byte	245                     # 0xf5
	.byte	222                     # 0xde
	.byte	179                     # 0xb3
	.zero	5
	.quad	.L.str.152
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.zero	5
	.quad	.L.str.153
	.byte	245                     # 0xf5
	.byte	245                     # 0xf5
	.byte	245                     # 0xf5
	.zero	5
	.quad	.L.str.154
	.byte	255                     # 0xff
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.zero	5
	.quad	.L.str.155
	.byte	154                     # 0x9a
	.byte	205                     # 0xcd
	.byte	50                      # 0x32
	.zero	5
	.size	named_colors, 2352

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"aliceblue"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"antiquewhite"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"aqua"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"aquamarine"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"azure"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"beige"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"bisque"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"black"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"blanchedalmond"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"blue"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"blueviolet"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"brown"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"burlywood"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"cadetblue"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"chartreuse"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"chocolate"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"coral"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"cornflowerblue"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"cornsilk"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"crimson"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"cyan"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"darkblue"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"darkcyan"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"darkgoldenrod"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"darkgray"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"darkgreen"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"darkgrey"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"darkkhaki"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"darkmagenta"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"darkolivegreen"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"darkorange"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"darkorchid"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"darkred"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"darksalmon"
	.size	.L.str.42, 11

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"darkseagreen"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"darkslateblue"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"darkslategray"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"darkslategrey"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"darkturquoise"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"darkviolet"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"deeppink"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"deepskyblue"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"dimgray"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"dimgrey"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"dodgerblue"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"firebrick"
	.size	.L.str.54, 10

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"floralwhite"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"forestgreen"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"fuchsia"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gainsboro"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"ghostwhite"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gold"
	.size	.L.str.60, 5

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"goldenrod"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gray"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"green"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"greenyellow"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"grey"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"honeydew"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"hotpink"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"indianred"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"indigo"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"ivory"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"khaki"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"lavender"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"lavenderblush"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"lawngreen"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"lemonchiffon"
	.size	.L.str.75, 13

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"lightblue"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"lightcoral"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"lightcyan"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"lightgoldenrodyellow"
	.size	.L.str.79, 21

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"lightgray"
	.size	.L.str.80, 10

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"lightgreen"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"lightgrey"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"lightpink"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"lightsalmon"
	.size	.L.str.84, 12

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"lightseagreen"
	.size	.L.str.85, 14

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"lightskyblue"
	.size	.L.str.86, 13

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"lightslategray"
	.size	.L.str.87, 15

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"lightslategrey"
	.size	.L.str.88, 15

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"lightsteelblue"
	.size	.L.str.89, 15

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"lightyellow"
	.size	.L.str.90, 12

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"lime"
	.size	.L.str.91, 5

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"limegreen"
	.size	.L.str.92, 10

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"linen"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"magenta"
	.size	.L.str.94, 8

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"maroon"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"mediumaquamarine"
	.size	.L.str.96, 17

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"mediumblue"
	.size	.L.str.97, 11

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"mediumorchid"
	.size	.L.str.98, 13

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"mediumpurple"
	.size	.L.str.99, 13

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"mediumseagreen"
	.size	.L.str.100, 15

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"mediumslateblue"
	.size	.L.str.101, 16

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"mediumspringgreen"
	.size	.L.str.102, 18

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"mediumturquoise"
	.size	.L.str.103, 16

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"mediumvioletred"
	.size	.L.str.104, 16

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"midnightblue"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"mintcream"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"mistyrose"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"moccasin"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"navajowhite"
	.size	.L.str.109, 12

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"navy"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"oldlace"
	.size	.L.str.111, 8

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"olive"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"olivedrab"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"orange"
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"orangered"
	.size	.L.str.115, 10

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"orchid"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"palegoldenrod"
	.size	.L.str.117, 14

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"palegreen"
	.size	.L.str.118, 10

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"paleturquoise"
	.size	.L.str.119, 14

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"palevioletred"
	.size	.L.str.120, 14

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"papayawhip"
	.size	.L.str.121, 11

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"peachpuff"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"peru"
	.size	.L.str.123, 5

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"pink"
	.size	.L.str.124, 5

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"plum"
	.size	.L.str.125, 5

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"powderblue"
	.size	.L.str.126, 11

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"purple"
	.size	.L.str.127, 7

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"red"
	.size	.L.str.128, 4

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"rosybrown"
	.size	.L.str.129, 10

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"royalblue"
	.size	.L.str.130, 10

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"saddlebrown"
	.size	.L.str.131, 12

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"salmon"
	.size	.L.str.132, 7

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"sandybrown"
	.size	.L.str.133, 11

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"seagreen"
	.size	.L.str.134, 9

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"seashell"
	.size	.L.str.135, 9

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"sienna"
	.size	.L.str.136, 7

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"silver"
	.size	.L.str.137, 7

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"skyblue"
	.size	.L.str.138, 8

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"slateblue"
	.size	.L.str.139, 10

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"slategray"
	.size	.L.str.140, 10

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"slategrey"
	.size	.L.str.141, 10

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"snow"
	.size	.L.str.142, 5

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"springgreen"
	.size	.L.str.143, 12

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"steelblue"
	.size	.L.str.144, 10

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"tan"
	.size	.L.str.145, 4

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"teal"
	.size	.L.str.146, 5

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"thistle"
	.size	.L.str.147, 8

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"tomato"
	.size	.L.str.148, 7

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"turquoise"
	.size	.L.str.149, 10

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"violet"
	.size	.L.str.150, 7

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"wheat"
	.size	.L.str.151, 6

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"white"
	.size	.L.str.152, 6

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"whitesmoke"
	.size	.L.str.153, 11

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"yellow"
	.size	.L.str.154, 7

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"yellowgreen"
	.size	.L.str.155, 12

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.156, 45

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"gimprgb-parse.c"
	.size	.L.str.157, 16

	.type	.L__func__.gimp_rgb_parse_hex_component,@object # @__func__.gimp_rgb_parse_hex_component
.L__func__.gimp_rgb_parse_hex_component:
	.asciz	"gimp_rgb_parse_hex_component"
	.size	.L__func__.gimp_rgb_parse_hex_component, 29

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"rgb("
	.size	.L.str.158, 5

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"hsl("
	.size	.L.str.159, 5

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"rgba("
	.size	.L.str.160, 6

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"hsla("
	.size	.L.str.161, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
