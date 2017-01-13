	.text
	.file	"quotearg.bc"
	.globl	clone_quoting_options
	.align	16, 0x90
	.type	clone_quoting_options,@function
clone_quoting_options:                  # @clone_quoting_options
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
	movl	$36, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, -8(%rbp)
	movq	%rax, -24(%rbp)         # 8-byte Spill
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movabsq	$default_quoting_options, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	$36, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clone_quoting_options, .Lfunc_end0-clone_quoting_options
	.cfi_endproc

	.globl	get_quoting_style
	.align	16, 0x90
	.type	get_quoting_style,@function
get_quoting_style:                      # @get_quoting_style
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movabsq	$default_quoting_options, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_quoting_style, .Lfunc_end1-get_quoting_style
	.cfi_endproc

	.globl	set_quoting_style
	.align	16, 0x90
	.type	set_quoting_style,@function
set_quoting_style:                      # @set_quoting_style
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	cmpq	$0, -8(%rbp)
	movl	%esi, -16(%rbp)         # 4-byte Spill
	je	.LBB2_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movabsq	$default_quoting_options, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	-16(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	set_quoting_style, .Lfunc_end2-set_quoting_style
	.cfi_endproc

	.globl	set_char_quoting
	.align	16, 0x90
	.type	set_char_quoting,@function
set_char_quoting:                       # @set_char_quoting
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	%edx, -16(%rbp)
	movb	-9(%rbp), %al
	movb	%al, -17(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$default_quoting_options, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$4, %rax
	movzbl	-17(%rbp), %ecx
	movl	%ecx, %edx
	shrq	$5, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movzbl	-17(%rbp), %ecx
	movl	%ecx, %eax
	andq	$31, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	-36(%rbp), %esi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-52(%rbp), %esi         # 4-byte Reload
	sarl	%cl, %esi
	andl	$1, %esi
	movl	%esi, -40(%rbp)
	movl	-16(%rbp), %esi
	andl	$1, %esi
	xorl	-40(%rbp), %esi
	movl	-36(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movq	-32(%rbp), %rax
	xorl	(%rax), %esi
	movl	%esi, (%rax)
	movl	-40(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	set_char_quoting, .Lfunc_end3-set_char_quoting
	.cfi_endproc

	.globl	quotearg_buffer
	.align	16, 0x90
	.type	quotearg_buffer,@function
quotearg_buffer:                        # @quotearg_buffer
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
	cmpq	$0, -40(%rbp)
	je	.LBB4_2
# BB#1:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_2:                                # %cond.false
	movabsq	$default_quoting_options, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_3
.LBB4_3:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %rax
	movl	(%rax), %r8d
	movq	-48(%rbp), %r9
	callq	quotearg_buffer_restyled
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	quotearg_buffer, .Lfunc_end4-quotearg_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	quotearg_buffer_restyled,@function
quotearg_buffer_restyled:               # @quotearg_buffer_restyled
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
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	-44(%rbp), %r8d
	addl	$-2, %r8d
	movl	%r8d, %ecx
	subl	$3, %r8d
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	ja	.LBB5_21
# BB#177:                               # %entry
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	jmp	.LBB5_2
.LBB5_2:                                # %do.body
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_4
# BB#3:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$34, (%rcx,%rax)
.LBB5_4:                                # %if.end
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#5:                                 # %do.end
	movabsq	$.L.str.6, %rax
	movl	$1, -92(%rbp)
	movq	%rax, -80(%rbp)
	movq	$1, -88(%rbp)
	jmp	.LBB5_22
.LBB5_6:                                # %sw.bb.1
	movl	$1, -92(%rbp)
	jmp	.LBB5_22
.LBB5_7:                                # %sw.bb.2
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, -80(%rbp)
.LBB5_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_15
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %do.body.3
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_12
# BB#11:                                # %if.then.5
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-80(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
.LBB5_12:                               # %if.end.7
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#13:                                # %do.end.9
                                        #   in Loop: Header=BB5_8 Depth=1
	jmp	.LBB5_14
.LBB5_14:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB5_8
.LBB5_15:                               # %for.end
	movabsq	$.L.str.8, %rdi
	movl	$1, -92(%rbp)
	callq	gettext
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	strlen
	movq	%rax, -88(%rbp)
	jmp	.LBB5_22
.LBB5_16:                               # %sw.bb.12
	jmp	.LBB5_17
.LBB5_17:                               # %do.body.13
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_19
# BB#18:                                # %if.then.15
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$39, (%rcx,%rax)
.LBB5_19:                               # %if.end.17
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#20:                                # %do.end.19
	movabsq	$.L.str.8, %rax
	movq	%rax, -80(%rbp)
	movq	$1, -88(%rbp)
	jmp	.LBB5_22
.LBB5_21:                               # %sw.default
	jmp	.LBB5_22
.LBB5_22:                               # %sw.epilog
	movq	$0, -64(%rbp)
.LBB5_23:                               # %for.cond.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_99 Depth 2
                                        #     Child Loop BB5_105 Depth 2
                                        #     Child Loop BB5_123 Depth 2
	cmpq	$-1, -40(%rbp)
	jne	.LBB5_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB5_26
.LBB5_25:                               # %cond.false
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -160(%rbp)        # 4-byte Spill
.LBB5_26:                               # %cond.end
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB5_27
	jmp	.LBB5_162
.LBB5_27:                               # %for.body.28
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB5_36
# BB#28:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB5_36
# BB#29:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	addq	-88(%rbp), %rax
	cmpq	-40(%rbp), %rax
	ja	.LBB5_36
# BB#30:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-32(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB5_36
# BB#31:                                # %if.then.38
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_32
.LBB5_32:                               # %do.body.39
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_34
# BB#33:                                # %if.then.42
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$92, (%rcx,%rax)
.LBB5_34:                               # %if.end.44
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#35:                                # %do.end.46
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_36
.LBB5_36:                               # %if.end.47
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -93(%rbp)
	movzbl	-93(%rbp), %esi
	addl	$-7, %esi
	movl	%esi, %eax
	subl	$119, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%esi, -172(%rbp)        # 4-byte Spill
	ja	.LBB5_96
# BB#178:                               # %if.end.47
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_37:                               # %sw.bb.50
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -176(%rbp)        # 4-byte Spill
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	je	.LBB5_38
	jmp	.LBB5_180
.LBB5_180:                              # %sw.bb.50
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	je	.LBB5_39
	jmp	.LBB5_57
.LBB5_38:                               # %sw.bb.51
	jmp	.LBB5_175
.LBB5_39:                               # %sw.bb.52
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	addq	$2, %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB5_56
# BB#40:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	cmpl	$63, %edx
	jne	.LBB5_56
# BB#41:                                # %if.then.62
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	2(%rax,%rcx), %edx
	movl	%edx, %esi
	subl	$33, %esi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	%esi, -192(%rbp)        # 4-byte Spill
	je	.LBB5_42
	jmp	.LBB5_181
.LBB5_181:                              # %if.then.62
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	addl	$-39, %eax
	subl	$3, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jb	.LBB5_42
	jmp	.LBB5_182
.LBB5_182:                              # %if.then.62
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB5_42
	jmp	.LBB5_183
.LBB5_183:                              # %if.then.62
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	subl	$47, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB5_42
	jmp	.LBB5_184
.LBB5_184:                              # %if.then.62
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	addl	$-60, %eax
	subl	$2, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	ja	.LBB5_55
	jmp	.LBB5_42
.LBB5_42:                               # %sw.bb.66
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	2(%rcx,%rax), %dl
	movb	%dl, -93(%rbp)
# BB#43:                                # %do.body.70
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_45
# BB#44:                                # %if.then.73
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$63, (%rcx,%rax)
.LBB5_45:                               # %if.end.75
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#46:                                # %do.end.77
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_47
.LBB5_47:                               # %do.body.78
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_49
# BB#48:                                # %if.then.81
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$92, (%rcx,%rax)
.LBB5_49:                               # %if.end.83
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#50:                                # %do.end.85
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_51
.LBB5_51:                               # %do.body.86
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_53
# BB#52:                                # %if.then.89
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$63, (%rcx,%rax)
.LBB5_53:                               # %if.end.91
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#54:                                # %do.end.93
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_55
.LBB5_55:                               # %sw.epilog.94
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.95
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_58
.LBB5_57:                               # %sw.default.96
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_58
.LBB5_58:                               # %sw.epilog.97
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_59:                               # %sw.bb.98
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$97, -94(%rbp)
	jmp	.LBB5_67
.LBB5_60:                               # %sw.bb.99
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$98, -94(%rbp)
	jmp	.LBB5_67
.LBB5_61:                               # %sw.bb.100
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$102, -94(%rbp)
	jmp	.LBB5_67
.LBB5_62:                               # %sw.bb.101
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$110, -94(%rbp)
	jmp	.LBB5_67
.LBB5_63:                               # %sw.bb.102
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$114, -94(%rbp)
	jmp	.LBB5_67
.LBB5_64:                               # %sw.bb.103
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$116, -94(%rbp)
	jmp	.LBB5_67
.LBB5_65:                               # %sw.bb.104
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	$118, -94(%rbp)
	jmp	.LBB5_67
.LBB5_66:                               # %sw.bb.105
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-93(%rbp), %al
	movb	%al, -94(%rbp)
.LBB5_67:                               # %c_escape
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB5_69
# BB#68:                                # %if.then.107
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-94(%rbp), %al
	movb	%al, -93(%rbp)
	jmp	.LBB5_151
.LBB5_69:                               # %if.end.108
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$1, -44(%rbp)
	jne	.LBB5_71
# BB#70:                                # %if.then.111
	jmp	.LBB5_175
.LBB5_71:                               # %if.end.112
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_72:                               # %sw.bb.113
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB5_74
# BB#73:                                # %if.then.116
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_74:                               # %if.end.117
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_75
.LBB5_75:                               # %sw.bb.118
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$1, -44(%rbp)
	jne	.LBB5_77
# BB#76:                                # %if.then.121
	jmp	.LBB5_175
.LBB5_77:                               # %if.end.122
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_78:                               # %sw.bb.123
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	je	.LBB5_79
	jmp	.LBB5_179
.LBB5_179:                              # %sw.bb.123
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB5_80
	jmp	.LBB5_93
.LBB5_79:                               # %sw.bb.124
	jmp	.LBB5_175
.LBB5_80:                               # %sw.bb.125
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_81
.LBB5_81:                               # %do.body.126
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_83
# BB#82:                                # %if.then.129
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$39, (%rcx,%rax)
.LBB5_83:                               # %if.end.131
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#84:                                # %do.end.133
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_85
.LBB5_85:                               # %do.body.134
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_87
# BB#86:                                # %if.then.137
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$92, (%rcx,%rax)
.LBB5_87:                               # %if.end.139
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#88:                                # %do.end.141
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_89
.LBB5_89:                               # %do.body.142
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_91
# BB#90:                                # %if.then.145
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$39, (%rcx,%rax)
.LBB5_91:                               # %if.end.147
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#92:                                # %do.end.149
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_94
.LBB5_93:                               # %sw.default.150
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_94
.LBB5_94:                               # %sw.epilog.151
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_95:                               # %sw.bb.152
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_96:                               # %sw.default.153
                                        #   in Loop: Header=BB5_23 Depth=1
	xorl	%esi, %esi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-120(%rbp), %rcx
	movq	$0, -104(%rbp)
	movl	$1, -108(%rbp)
	movq	%rcx, %rdi
	callq	memset
	cmpq	$-1, -40(%rbp)
	jne	.LBB5_98
# BB#97:                                # %if.then.156
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-32(%rbp), %rdi
	callq	strlen
	movq	%rax, -40(%rbp)
.LBB5_98:                               # %if.end.158
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_99
.LBB5_99:                               # %do.body.159
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-124(%rbp), %rdi
	leaq	-120(%rbp), %rcx
	movq	-64(%rbp), %rax
	addq	-104(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rsi
	addq	-104(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rax, %rsi
	callq	mbrtowc
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB5_101
# BB#100:                               # %if.then.166
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_117
.LBB5_101:                              # %if.else
                                        #   in Loop: Header=BB5_99 Depth=2
	cmpq	$-1, -136(%rbp)
	jne	.LBB5_103
# BB#102:                               # %if.then.169
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	$0, -108(%rbp)
	jmp	.LBB5_117
.LBB5_103:                              # %if.else.170
                                        #   in Loop: Header=BB5_99 Depth=2
	cmpq	$-2, -136(%rbp)
	jne	.LBB5_110
# BB#104:                               # %if.then.173
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	$0, -108(%rbp)
.LBB5_105:                              # %while.cond
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	addq	-104(%rbp), %rdx
	cmpq	-40(%rbp), %rdx
	movb	%cl, -221(%rbp)         # 1-byte Spill
	jae	.LBB5_107
# BB#106:                               # %land.rhs
                                        #   in Loop: Header=BB5_105 Depth=2
	movq	-64(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -221(%rbp)        # 1-byte Spill
.LBB5_107:                              # %land.end
                                        #   in Loop: Header=BB5_105 Depth=2
	movb	-221(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_108
	jmp	.LBB5_109
.LBB5_108:                              # %while.body
                                        #   in Loop: Header=BB5_105 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB5_105
.LBB5_109:                              # %while.end
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_117
.LBB5_110:                              # %if.else.182
                                        #   in Loop: Header=BB5_99 Depth=2
	movl	-124(%rbp), %edi
	movb	$0, %al
	callq	iswprint
	cmpl	$0, %eax
	jne	.LBB5_112
# BB#111:                               # %if.then.185
                                        #   in Loop: Header=BB5_99 Depth=2
	movl	$0, -108(%rbp)
.LBB5_112:                              # %if.end.186
                                        #   in Loop: Header=BB5_99 Depth=2
	movq	-136(%rbp), %rax
	addq	-104(%rbp), %rax
	movq	%rax, -104(%rbp)
# BB#113:                               # %if.end.188
                                        #   in Loop: Header=BB5_99 Depth=2
	jmp	.LBB5_114
.LBB5_114:                              # %if.end.189
                                        #   in Loop: Header=BB5_99 Depth=2
	jmp	.LBB5_115
.LBB5_115:                              # %if.end.190
                                        #   in Loop: Header=BB5_99 Depth=2
	jmp	.LBB5_116
.LBB5_116:                              # %do.cond
                                        #   in Loop: Header=BB5_99 Depth=2
	leaq	-120(%rbp), %rdi
	callq	mbsinit
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB5_99
.LBB5_117:                              # %do.end.194
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpq	$1, -104(%rbp)
	ja	.LBB5_121
# BB#118:                               # %if.then.197
                                        #   in Loop: Header=BB5_23 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -222(%rbp)         # 1-byte Spill
	je	.LBB5_120
# BB#119:                               # %land.rhs.199
                                        #   in Loop: Header=BB5_23 Depth=1
	movzbl	-93(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	andl	$16384, %edx            # imm = 0x4000
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -222(%rbp)        # 1-byte Spill
.LBB5_120:                              # %land.end.206
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-222(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB5_121:                              # %if.end.208
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB5_146
# BB#122:                               # %if.then.210
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	addq	-104(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -144(%rbp)
.LBB5_123:                              # %for.cond.213
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -92(%rbp)
	je	.LBB5_138
# BB#124:                               # %land.lhs.true.215
                                        #   in Loop: Header=BB5_123 Depth=2
	cmpl	$0, -108(%rbp)
	jne	.LBB5_138
# BB#125:                               # %if.then.217
                                        #   in Loop: Header=BB5_123 Depth=2
	jmp	.LBB5_126
.LBB5_126:                              # %do.body.218
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_128
# BB#127:                               # %if.then.221
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$92, (%rcx,%rax)
.LBB5_128:                              # %if.end.223
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#129:                               # %do.end.226
                                        #   in Loop: Header=BB5_123 Depth=2
	jmp	.LBB5_130
.LBB5_130:                              # %do.body.227
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_132
# BB#131:                               # %if.then.230
                                        #   in Loop: Header=BB5_123 Depth=2
	movzbl	-93(%rbp), %eax
	sarl	$6, %eax
	addl	$48, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB5_132:                              # %if.end.235
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#133:                               # %do.end.238
                                        #   in Loop: Header=BB5_123 Depth=2
	jmp	.LBB5_134
.LBB5_134:                              # %do.body.239
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_136
# BB#135:                               # %if.then.242
                                        #   in Loop: Header=BB5_123 Depth=2
	movzbl	-93(%rbp), %eax
	sarl	$3, %eax
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB5_136:                              # %if.end.249
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#137:                               # %do.end.252
                                        #   in Loop: Header=BB5_123 Depth=2
	movzbl	-93(%rbp), %eax
	andl	$7, %eax
	addl	$48, %eax
	movb	%al, %cl
	movb	%cl, -93(%rbp)
.LBB5_138:                              # %if.end.257
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-64(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB5_140
# BB#139:                               # %if.then.260
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_145
.LBB5_140:                              # %if.end.261
                                        #   in Loop: Header=BB5_123 Depth=2
	jmp	.LBB5_141
.LBB5_141:                              # %do.body.262
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_143
# BB#142:                               # %if.then.265
                                        #   in Loop: Header=BB5_123 Depth=2
	movb	-93(%rbp), %al
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
.LBB5_143:                              # %if.end.267
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#144:                               # %do.end.270
                                        #   in Loop: Header=BB5_123 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movb	1(%rcx,%rax), %dl
	movb	%dl, -93(%rbp)
	jmp	.LBB5_123
.LBB5_145:                              # %for.end.273
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_156
.LBB5_146:                              # %if.end.274
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_147
.LBB5_147:                              # %sw.epilog.275
                                        #   in Loop: Header=BB5_23 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB5_149
# BB#148:                               # %land.lhs.true.277
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	$1, %eax
	movzbl	-93(%rbp), %ecx
	movl	%ecx, %edx
	shrq	$5, %rdx
	movq	-56(%rbp), %rsi
	movl	4(%rsi,%rdx,4), %ecx
	movzbl	-93(%rbp), %edi
	movl	%edi, %edx
	andq	$31, %rdx
	movl	%edx, %edi
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-236(%rbp), %edi        # 4-byte Reload
	andl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB5_150
.LBB5_149:                              # %if.then.283
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_156
.LBB5_150:                              # %if.end.284
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_151
.LBB5_151:                              # %store_escape
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_152
.LBB5_152:                              # %do.body.285
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_154
# BB#153:                               # %if.then.288
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$92, (%rcx,%rax)
.LBB5_154:                              # %if.end.290
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#155:                               # %do.end.293
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_156
.LBB5_156:                              # %store_c
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_157
.LBB5_157:                              # %do.body.294
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_159
# BB#158:                               # %if.then.297
                                        #   in Loop: Header=BB5_23 Depth=1
	movb	-93(%rbp), %al
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
.LBB5_159:                              # %if.end.299
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#160:                               # %do.end.302
                                        #   in Loop: Header=BB5_23 Depth=1
	jmp	.LBB5_161
.LBB5_161:                              # %for.inc.303
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB5_23
.LBB5_162:                              # %for.end.305
	cmpq	$0, -80(%rbp)
	je	.LBB5_172
# BB#163:                               # %if.then.307
	jmp	.LBB5_164
.LBB5_164:                              # %for.cond.308
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_171
# BB#165:                               # %for.body.310
                                        #   in Loop: Header=BB5_164 Depth=1
	jmp	.LBB5_166
.LBB5_166:                              # %do.body.311
                                        #   in Loop: Header=BB5_164 Depth=1
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_168
# BB#167:                               # %if.then.314
                                        #   in Loop: Header=BB5_164 Depth=1
	movq	-80(%rbp), %rax
	movb	(%rax), %cl
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
.LBB5_168:                              # %if.end.316
                                        #   in Loop: Header=BB5_164 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
# BB#169:                               # %do.end.319
                                        #   in Loop: Header=BB5_164 Depth=1
	jmp	.LBB5_170
.LBB5_170:                              # %for.inc.320
                                        #   in Loop: Header=BB5_164 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB5_164
.LBB5_171:                              # %for.end.322
	jmp	.LBB5_172
.LBB5_172:                              # %if.end.323
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_174
# BB#173:                               # %if.then.326
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
.LBB5_174:                              # %if.end.328
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_176
.LBB5_175:                              # %use_shell_always_quoting_style
	movl	$2, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %r9
	callq	quotearg_buffer_restyled
	movq	%rax, -8(%rbp)
.LBB5_176:                              # %return
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	quotearg_buffer_restyled, .Lfunc_end5-quotearg_buffer_restyled
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_16
	.quad	.LBB5_1
	.quad	.LBB5_6
	.quad	.LBB5_7
.LJTI5_1:
	.quad	.LBB5_59
	.quad	.LBB5_60
	.quad	.LBB5_64
	.quad	.LBB5_62
	.quad	.LBB5_65
	.quad	.LBB5_61
	.quad	.LBB5_63
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_96
	.quad	.LBB5_75
	.quad	.LBB5_75
	.quad	.LBB5_75
	.quad	.LBB5_72
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_78
	.quad	.LBB5_75
	.quad	.LBB5_75
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_37
	.quad	.LBB5_96
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_66
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_95
	.quad	.LBB5_75
	.quad	.LBB5_95
	.quad	.LBB5_72

	.text
	.globl	quotearg_n
	.align	16, 0x90
	.type	quotearg_n,@function
quotearg_n:                             # @quotearg_n
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
	subq	$16, %rsp
	movabsq	$default_quoting_options, %rdx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	quotearg_n_options
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	quotearg_n, .Lfunc_end6-quotearg_n
	.cfi_endproc

	.align	16, 0x90
	.type	quotearg_n_options,@function
quotearg_n_options:                     # @quotearg_n_options
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	quotearg_n_options.nslots, %edi
	cmpl	-4(%rbp), %edi
	ja	.LBB7_5
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	-4(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rdx, -40(%rbp)
	cmpl	-28(%rbp), %eax
	jge	.LBB7_3
# BB#2:                                 # %land.lhs.true
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	shrq	$4, %rcx
	cmpq	%rcx, %rax
	je	.LBB7_4
.LBB7_3:                                # %if.then.6
	callq	abort
.LBB7_4:                                # %if.end
	movq	quotearg_n_options.slotvec, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	xrealloc
	xorl	%esi, %esi
	movq	%rax, quotearg_n_options.slotvec
	movq	quotearg_n_options.slotvec, %rax
	movl	quotearg_n_options.nslots, %ecx
	movl	%ecx, %edi
	shlq	$4, %rdi
	addq	%rdi, %rax
	movl	-28(%rbp), %ecx
	subl	quotearg_n_options.nslots, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	shlq	$4, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movl	-4(%rbp), %ecx
	movl	%ecx, quotearg_n_options.nslots
.LBB7_5:                                # %if.end.9
	movq	$-1, %rcx
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	addq	quotearg_n_options.slotvec, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	addq	quotearg_n_options.slotvec, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	callq	quotearg_buffer
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.LBB7_7
# BB#6:                                 # %if.then.17
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	quotearg_n_options.slotvec, %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	xrealloc
	movq	$-1, %rcx
	movq	%rax, -56(%rbp)
	movslq	-4(%rbp), %rsi
	shlq	$4, %rsi
	addq	quotearg_n_options.slotvec, %rsi
	movq	%rax, 8(%rsi)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	callq	quotearg_buffer
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB7_7:                                # %if.end.27
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	quotearg_n_options, .Lfunc_end7-quotearg_n_options
	.cfi_endproc

	.globl	quotearg
	.align	16, 0x90
	.type	quotearg,@function
quotearg:                               # @quotearg
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	quotearg_n
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	quotearg, .Lfunc_end8-quotearg
	.cfi_endproc

	.globl	quotearg_n_style
	.align	16, 0x90
	.type	quotearg_n_style,@function
quotearg_n_style:                       # @quotearg_n_style
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
	subq	$64, %rsp
	leaq	-56(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$32, %r8d
	movl	%r8d, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %esi
	movl	%esi, -56(%rbp)
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, %rdi
	movl	%ecx, %esi
	movq	%r9, %rdx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	memset
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	quotearg_n_options
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	quotearg_n_style, .Lfunc_end9-quotearg_n_style
	.cfi_endproc

	.globl	quotearg_style
	.align	16, 0x90
	.type	quotearg_style,@function
quotearg_style:                         # @quotearg_style
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	callq	quotearg_n_style
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	quotearg_style, .Lfunc_end10-quotearg_style
	.cfi_endproc

	.globl	quotearg_char
	.align	16, 0x90
	.type	quotearg_char,@function
quotearg_char:                          # @quotearg_char
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
	subq	$80, %rsp
	movb	%sil, %al
	leaq	-48(%rbp), %rcx
	movl	$1, %edx
	movabsq	$default_quoting_options, %r8
	movl	$36, %esi
	movl	%esi, %r9d
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movq	%r9, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movsbl	-9(%rbp), %esi
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	set_char_quoting
	xorl	%edi, %edi
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	quotearg_n_options
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	quotearg_char, .Lfunc_end11-quotearg_char
	.cfi_endproc

	.globl	quotearg_colon
	.align	16, 0x90
	.type	quotearg_colon,@function
quotearg_colon:                         # @quotearg_colon
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
	subq	$16, %rsp
	movl	$58, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	quotearg_char
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	quotearg_colon, .Lfunc_end12-quotearg_colon
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"literal"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"shell"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"shell-always"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"c"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"escape"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"locale"
	.size	.L.str.5, 7

	.type	quoting_style_args,@object # @quoting_style_args
	.section	.rodata,"a",@progbits
	.globl	quoting_style_args
	.align	16
quoting_style_args:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0
	.size	quoting_style_args, 56

	.type	quoting_style_vals,@object # @quoting_style_vals
	.globl	quoting_style_vals
	.align	16
quoting_style_vals:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.size	quoting_style_vals, 24

	.type	default_quoting_options,@object # @default_quoting_options
	.local	default_quoting_options
	.comm	default_quoting_options,36,4
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"\""
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"`"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"'"
	.size	.L.str.8, 2

	.type	quotearg_n_options.nslots,@object # @quotearg_n_options.nslots
	.local	quotearg_n_options.nslots
	.comm	quotearg_n_options.nslots,4,4
	.type	quotearg_n_options.slotvec,@object # @quotearg_n_options.slotvec
	.local	quotearg_n_options.slotvec
	.comm	quotearg_n_options.slotvec,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
