	.text
	.file	"zfont42.bc"
	.globl	build_gs_TrueType_font
	.align	16, 0x90
	.type	build_gs_TrueType_font,@function
build_gs_TrueType_font:                 # @build_gs_TrueType_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movq	160(%rsp), %rcx
	movq	8(%rbx), %rdi
	leaq	48(%rsp), %rsi
	movq	%r9, %rdx
	callq	build_proc_name_refs
	testl	%eax, %eax
	js	.LBB0_18
# BB#1:                                 # %if.end
	movzbl	1(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB0_2
# BB#3:                                 # %if.end.5
	movq	8(%rbx), %r13
	leaq	96(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jle	.LBB0_18
# BB#4:                                 # %if.end.i
	movq	96(%rsp), %rsi
	movups	(%rsi), %xmm0
	movaps	%xmm0, 32(%rsp)
	leaq	80(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	array_get
	testl	%eax, %eax
	js	.LBB0_18
# BB#5:                                 # %if.end.4.i
	movl	$-20, %eax
	movzbl	81(%rsp), %ecx
	cmpl	$18, %ecx
	jne	.LBB0_18
# BB#6:                                 # %lor.lhs.false
	leaq	80(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbp, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_7
# BB#8:                                 # %if.else.i
	movq	80(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB0_16
# BB#9:                                 # %if.else.i.if.else.11.i_crit_edge
	movzwl	(%rax), %ecx
	jmp	.LBB0_10
.LBB0_2:                                # %if.then.3
	movq	%rbp, %rdi
	callq	check_type_failed
.LBB0_18:                               # %cleanup
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	movb	$14, %al
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
	jmp	.LBB0_11
.LBB0_16:                               # %land.lhs.true.i
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$15360, %edx            # imm = 0x3C00
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB0_17
.LBB0_10:                               # %if.else.11.i
	movl	%ecx, %edx
	shrl	$8, %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	2(%rax), %rdx
	movq	8(%rax), %rax
	movq	%rax, 22(%rsp)
	movq	%rdx, 16(%rsp)
	movzbl	%cl, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
.LBB0_11:                               # %if.end.15
	movl	168(%rsp), %r13d
	movl	%r13d, (%rsp)
	leaq	48(%rsp), %r9
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	movq	%r15, %r8
	callq	build_gs_primitive_font
	testl	%eax, %eax
	jne	.LBB0_18
# BB#12:                                # %if.end.20
	movq	(%r14), %rbp
	movq	72(%rbp), %rax
	movaps	32(%rsp), %xmm0
	movups	%xmm0, 96(%rax)
	movl	$0, 144(%rax)
	movq	$0, 152(%rax)
	movl	$3584, %ecx             # imm = 0xE00
	addl	76(%rbx), %ecx
	movw	%cx, 112(%rax)
	movl	12(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ebx
	movl	%ebx, %ecx
	shll	$8, %ecx
	movl	8(%rsp), %edx           # 4-byte Reload
	movzwl	%dx, %edx
	orl	%ecx, %edx
	movw	%dx, 128(%rax)
	movq	16(%rsp), %rcx
	movq	22(%rsp), %rdx
	movq	%rdx, 136(%rax)
	movq	%rcx, 130(%rax)
	movq	$z42_string_proc, 448(%rbp)
	movq	%rax, 456(%rbp)
	shrl	$5, %r13d
	andl	$1, %r13d
	movl	%r13d, 32(%rbp)
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gs_type42_font_init
	testl	%eax, %eax
	js	.LBB0_18
# BB#13:                                # %if.end.40
	movq	$z42_font_info, 184(%rbp)
	movl	$z42_enumerate_glyph, %eax
	cmpl	$14, %ebx
	je	.LBB0_15
# BB#14:                                # %if.then.47
	movq	$z42_gdir_get_outline, 472(%rbp)
	movl	$z42_gdir_enumerate_glyph, %eax
.LBB0_15:                               # %if.end.52
	movq	%rax, 216(%rbp)
	movq	$z42_get_glyph_index, 464(%rbp)
	movq	$gs_type42_substitute_glyph_index_vertical, 488(%rbp)
	movq	$z42_encode_char, 200(%rbp)
	movq	$z42_glyph_info, 224(%rbp)
	movq	$z42_glyph_outline, 232(%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_17:                               # %font_GlyphDirectory_param.exit.thread55
	movl	$-20, %eax
	jmp	.LBB0_18
.Lfunc_end0:
	.size	build_gs_TrueType_font, .Lfunc_end0-build_gs_TrueType_font
	.cfi_endproc

	.globl	font_string_array_param
	.align	16, 0x90
	.type	font_string_array_param,@function
font_string_array_param:                # @font_string_array_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 48
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	leaq	16(%rsp), %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	dict_find_string
	movl	%eax, %ecx
	movl	$-10, %eax
	testl	%ecx, %ecx
	jle	.LBB1_5
# BB#1:                                 # %if.end
	movq	16(%rsp), %rsi
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rbx)
	xorl	%ebx, %ebx
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	array_get
	testl	%eax, %eax
	js	.LBB1_5
# BB#2:                                 # %if.end.4
	movzbl	1(%rsp), %eax
	cmpl	$18, %eax
	je	.LBB1_4
# BB#3:                                 # %select.mid
	movl	$-20, %ebx
.LBB1_4:                                # %select.end
	movl	%ebx, %eax
.LBB1_5:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	font_string_array_param, .Lfunc_end1-font_string_array_param
	.cfi_endproc

	.globl	font_GlyphDirectory_param
	.align	16, 0x90
	.type	font_GlyphDirectory_param,@function
font_GlyphDirectory_param:              # @font_GlyphDirectory_param
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 32
.Ltmp20:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	leaq	8(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB2_1
# BB#2:                                 # %if.else
	movq	8(%rsp), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$2, %eax
	je	.LBB2_4
# BB#3:                                 # %land.lhs.true
	movzwl	(%rcx), %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB2_6
.LBB2_4:                                # %if.else.11
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB2_5
.LBB2_1:                                # %if.then
	movw	$3584, (%rbx)           # imm = 0xE00
.LBB2_5:                                # %cleanup
	xorl	%eax, %eax
.LBB2_6:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end2:
	.size	font_GlyphDirectory_param, .Lfunc_end2-font_GlyphDirectory_param
	.cfi_endproc

	.align	16, 0x90
	.type	z42_string_proc,@function
z42_string_proc:                        # @z42_string_proc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 32
	movl	%edx, %r8d
	movq	%rsi, %r10
	movq	16(%rdi), %rax
	movq	72(%rdi), %rdx
	leaq	96(%rdx), %rsi
	leaq	144(%rdx), %r9
	leaq	152(%rdx), %rdx
	movq	%rcx, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$2, %edx
	movq	%rax, %rdi
	movq	%r10, %rcx
	callq	string_array_access_proc
	addq	$24, %rsp
	retq
.Lfunc_end3:
	.size	z42_string_proc, .Lfunc_end3-z42_string_proc
	.cfi_endproc

	.align	16, 0x90
	.type	z42_font_info,@function
z42_font_info:                          # @z42_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	callq	zfont_info
	testl	%eax, %eax
	js	.LBB4_1
# BB#2:                                 # %if.end
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_truetype_font_info   # TAILCALL
.LBB4_1:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	z42_font_info, .Lfunc_end4-z42_font_info
	.cfi_endproc

	.align	16, 0x90
	.type	z42_gdir_get_outline,@function
z42_gdir_get_outline:                   # @z42_gdir_get_outline
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$128, %ecx
	addq	72(%rdi), %rcx
	movq	16(%rdi), %rdi
	movl	%esi, %edx
	movq	%rcx, %rsi
	movq	%rax, %rcx
	jmp	font_gdir_get_outline   # TAILCALL
.Lfunc_end5:
	.size	z42_gdir_get_outline, .Lfunc_end5-z42_gdir_get_outline
	.cfi_endproc

	.align	16, 0x90
	.type	z42_gdir_enumerate_glyph,@function
z42_gdir_enumerate_glyph:               # @z42_gdir_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 64
.Ltmp37:
	.cfi_offset %rbx, -48
.Ltmp38:
	.cfi_offset %r12, -40
.Ltmp39:
	.cfi_offset %r13, -32
.Ltmp40:
	.cfi_offset %r14, -24
.Ltmp41:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	72(%r12), %r15
	cmpl	$1, %edx
	jne	.LBB6_8
# BB#1:                                 # %if.then
	movzbl	129(%r15), %eax
	subq	$-128, %r15
	cmpl	$2, %eax
	je	.LBB6_9
# BB#2:                                 # %if.then.3
	movl	(%rbx), %ecx
	leaq	(%rsp), %r13
	.align	16, 0x90
.LBB6_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rdi
	movslq	%ecx, %rdx
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB6_4
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movzbl	1(%rsp), %edx
	movslq	(%rbx), %rax
	leal	1(%rax), %ecx
	cmpl	$14, %edx
	movl	%ecx, (%rbx)
	je	.LBB6_3
# BB#6:                                 # %if.then.14
	movl	$3221225472, %ecx       # imm = 0xC0000000
	addq	%rcx, %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB6_12
.LBB6_8:                                # %if.else
	addq	$64, %r15
.LBB6_9:                                # %if.end.20
	movq	16(%r12), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	zchar_enumerate_glyph
	cmpl	$0, (%rbx)
	je	.LBB6_12
# BB#10:                                # %land.lhs.true
	movq	(%r14), %rcx
	testq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	je	.LBB6_12
# BB#11:                                # %if.then.27
	addq	$1073741824, %rcx       # imm = 0x40000000
	movq	%rcx, (%r14)
	jmp	.LBB6_12
.LBB6_4:                                # %if.then.7
	movl	$0, (%rbx)
	xorl	%eax, %eax
.LBB6_12:                               # %cleanup.30
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	z42_gdir_enumerate_glyph, .Lfunc_end6-z42_gdir_enumerate_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	z42_enumerate_glyph,@function
z42_enumerate_glyph:                    # @z42_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	cmpl	$1, %edx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	%rax, %rsi
	jmp	gs_type42_enumerate_glyph # TAILCALL
.LBB7_2:                                # %if.else
	movq	16(%rdi), %rdx
	movq	72(%rdi), %rsi
	addq	$64, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	jmp	zchar_enumerate_glyph   # TAILCALL
.Lfunc_end7:
	.size	z42_enumerate_glyph, .Lfunc_end7-z42_enumerate_glyph
	.cfi_endproc

	.align	16, 0x90
	.type	z42_get_glyph_index,@function
z42_get_glyph_index:                    # @z42_get_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 64
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$3221225472, %ebx       # imm = 0xC0000000
	leaq	-1(%rbx), %rax
	cmpq	%rax, %rsi
	jbe	.LBB8_2
# BB#1:
	movq	%rsi, %rbx
	jmp	.LBB8_6
.LBB8_2:                                # %if.end.i
	movq	16(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %r15
	movq	%r15, %rdx
	callq	names_index_ref
	movq	72(%r14), %rdi
	addq	$64, %rdi
	leaq	8(%rsp), %rdx
	movq	%r15, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB8_6
# BB#3:                                 # %land.lhs.true.i
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB8_6
# BB#4:                                 # %if.then.6.i
	movq	8(%rax), %rax
	movabsq	$-3221225472, %rcx      # imm = 0xFFFFFFFF40000000
	cmpq	%rcx, %rax
	jae	.LBB8_6
# BB#5:
	addq	%rax, %rbx
.LBB8_6:                                # %glyph_to_index.exit
	addl	$1073741824, %ebx       # imm = 0x40000000
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	z42_get_glyph_index, .Lfunc_end8-z42_get_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	z42_encode_char,@function
z42_encode_char:                        # @z42_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp52:
	.cfi_def_cfa_offset 64
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	callq	zfont_encode_char
	cmpl	$1, %ebp
	jne	.LBB9_9
# BB#1:                                 # %entry
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB9_9
# BB#2:                                 # %cond.true
	movl	$3221225472, %ebp       # imm = 0xC0000000
	leaq	-1(%rbp), %rcx
	cmpq	%rcx, %rax
	jbe	.LBB9_4
# BB#3:
	movq	%rax, %rbp
	jmp	.LBB9_8
.LBB9_4:                                # %if.end.i
	movq	16(%rbx), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	leaq	16(%rsp), %r14
	movl	%eax, %esi
	movq	%r14, %rdx
	callq	names_index_ref
	movq	72(%rbx), %rdi
	addq	$64, %rdi
	leaq	8(%rsp), %rdx
	movq	%r14, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB9_8
# BB#5:                                 # %land.lhs.true.i
	movq	8(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB9_8
# BB#6:                                 # %if.then.6.i
	movq	8(%rax), %rax
	movabsq	$-3221225472, %rcx      # imm = 0xFFFFFFFF40000000
	cmpq	%rcx, %rax
	jae	.LBB9_8
# BB#7:
	addq	%rax, %rbp
.LBB9_8:                                # %glyph_to_index.exit
	movq	%rbp, %rax
.LBB9_9:                                # %cond.end
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	z42_encode_char, .Lfunc_end9-z42_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	z42_glyph_info,@function
z42_glyph_info:                         # @z42_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp56:
	.cfi_def_cfa_offset 16
	movl	148(%rdi), %eax
	movl	%eax, (%rsp)
	movl	$gs_type42_glyph_info, %r9d
	callq	z1_glyph_info_generic
	popq	%rdx
	retq
.Lfunc_end10:
	.size	z42_glyph_info, .Lfunc_end10-z42_glyph_info
	.cfi_endproc

	.align	16, 0x90
	.type	z42_glyph_outline,@function
z42_glyph_outline:                      # @z42_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 96
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%r8, %r15
	movq	%rcx, %r12
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movl	$3221225472, %ebp       # imm = 0xC0000000
	leaq	-1(%rbp), %rax
	cmpq	%rax, %rdx
	jbe	.LBB11_2
# BB#1:
	movq	%rdx, %rbp
	jmp	.LBB11_7
.LBB11_2:                               # %if.end.i
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	24(%rsp), %r14
	movl	%edx, %esi
	movq	%r14, %rdx
	callq	names_index_ref
	movq	72(%rbx), %rdi
	addq	$64, %rdi
	leaq	16(%rsp), %rdx
	movq	%r14, %rsi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB11_6
# BB#3:                                 # %land.lhs.true.i
	movq	16(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB11_6
# BB#4:                                 # %if.then.6.i
	movq	8(%rax), %rax
	movabsq	$-3221225472, %rcx      # imm = 0xFFFFFFFF40000000
	cmpq	%rcx, %rax
	jae	.LBB11_6
# BB#5:
	addq	%rax, %rbp
.LBB11_6:                               # %if.end.14.i
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB11_7:                               # %glyph_to_index.exit
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movq	%rbp, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	gs_type42_glyph_outline
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	z42_glyph_outline, .Lfunc_end11-z42_glyph_outline
	.cfi_endproc

	.globl	string_array_access_proc
	.align	16, 0x90
	.type	string_array_access_proc,@function
string_array_access_proc:               # @string_array_access_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 112
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r13
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB12_25
# BB#1:                                 # %if.end
	movq	112(%rsp), %rax
	xorl	%r15d, %r15d
	testq	%r9, %r9
	je	.LBB12_2
# BB#3:                                 # %if.end
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	testq	%rax, %rax
	je	.LBB12_4
# BB#5:                                 # %land.lhs.true.2
	movq	(%rax), %rax
	movq	%rax, %rdx
	shrq	%rdx
	cmpq	%rcx, %rdx
	movl	$0, %r12d
	movq	%rcx, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	ja	.LBB12_9
# BB#6:                                 # %if.then.4
	movq	%rax, %r14
	movq	32(%rsp), %rdx          # 8-byte Reload
	subq	%rdx, %r14
	seta	%cl
	movzbl	%cl, %r12d
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %r15d
	jbe	.LBB12_8
# BB#7:                                 # %if.then.7
	decl	%r15d
	jmp	.LBB12_9
.LBB12_2:
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	%r8d, 20(%rsp)          # 4-byte Spill
.LBB12_4:
	xorl	%r12d, %r12d
	movq	%rcx, %r14
	movq	%r14, 32(%rsp)          # 8-byte Spill
	jmp	.LBB12_9
.LBB12_8:                               # %if.else
	movq	%rdx, %r14
	subq	%rax, %r14
.LBB12_9:                               # %for.cond.preheader
	movl	%r15d, %edx
	leaq	40(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	array_get
	testl	%eax, %eax
	js	.LBB12_25
# BB#10:                                # %if.end.17.lr.ph
	negl	%ebp
	.align	16, 0x90
.LBB12_11:                              # %if.end.17
                                        # =>This Inner Loop Header: Depth=1
	movl	$-20, %eax
	movzbl	41(%rsp), %ecx
	cmpl	$18, %ecx
	jne	.LBB12_25
# BB#12:                                # %if.end.22
                                        #   in Loop: Header=BB12_11 Depth=1
	movl	44(%rsp), %ecx
	andl	%ebp, %ecx
	testl	%r12d, %r12d
	je	.LBB12_13
# BB#21:                                # %if.then.26
                                        #   in Loop: Header=BB12_11 Depth=1
	movq	%rcx, %rdx
	subq	%r14, %rdx
	jae	.LBB12_14
# BB#22:                                # %if.else.33
                                        #   in Loop: Header=BB12_11 Depth=1
	decl	%r15d
	jmp	.LBB12_24
	.align	16, 0x90
.LBB12_13:                              #   in Loop: Header=BB12_11 Depth=1
	movq	%r14, %rdx
.LBB12_14:                              # %if.end.37
                                        #   in Loop: Header=BB12_11 Depth=1
	cmpq	%rdx, %rcx
	ja	.LBB12_15
# BB#23:                                # %if.end.58
                                        #   in Loop: Header=BB12_11 Depth=1
	incl	%r15d
	xorl	%r12d, %r12d
	movq	%rdx, %r14
.LBB12_24:                              # %cleanup.thread41
                                        #   in Loop: Header=BB12_11 Depth=1
	subq	%rcx, %r14
	movl	%r15d, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	leaq	40(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	jns	.LBB12_11
	jmp	.LBB12_25
.LBB12_15:                              # %if.then.41
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	movq	120(%rsp), %rsi
	movq	%rax, (%rsi)
	movq	24(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB12_17
# BB#16:                                # %if.then.43
	movl	%r15d, (%rax)
.LBB12_17:                              # %if.end.44
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	movl	20(%rsp), %eax          # 4-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	je	.LBB12_19
# BB#18:                                # %if.then.46
	subq	%rdx, %rsi
	movq	%rsi, (%rdi)
.LBB12_19:                              # %if.end.48
	movl	%eax, %eax
	leaq	(%rax,%rdx), %rsi
	xorl	%eax, %eax
	cmpq	%rcx, %rsi
	jbe	.LBB12_25
# BB#20:                                # %if.then.53
	subl	%edx, %ecx
	movl	%ecx, %eax
.LBB12_25:                              # %cleanup.63
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	string_array_access_proc, .Lfunc_end12-string_array_access_proc
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont42,@function
zbuildfont42:                           # @zbuildfont42
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp84:
	.cfi_def_cfa_offset 48
.Ltmp85:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %rsi
	movl	$0, 8(%rsp)
	movq	$.L.str.4, (%rsp)
	leaq	24(%rsp), %rdx
	movl	$42, %ecx
	movl	$st_gs_font_type42, %r8d
	movl	$.L.str.3, %r9d
	callq	build_gs_TrueType_font
	testl	%eax, %eax
	js	.LBB13_2
# BB#1:                                 # %if.end
	movq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	define_gs_font
.LBB13_2:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end13:
	.size	zbuildfont42, .Lfunc_end13-zbuildfont42
	.cfi_endproc

	.globl	font_gdir_get_outline
	.align	16, 0x90
	.type	font_gdir_get_outline,@function
font_gdir_get_outline:                  # @font_gdir_get_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp87:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp88:
	.cfi_def_cfa_offset 64
.Ltmp89:
	.cfi_offset %rbx, -24
.Ltmp90:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movzbl	1(%rsi), %eax
	cmpl	$2, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	%rdx, 32(%rsp)
	movw	$2816, 24(%rsp)         # imm = 0xB00
	leaq	24(%rsp), %rax
	leaq	(%rsp), %rdx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	dict_find
	decl	%eax
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	leaq	8(%rsp), %rbx
	movq	%rbx, %rcx
	callq	array_get
	movq	%rbx, (%rsp)
.LBB14_3:                               # %if.end
	testl	%eax, %eax
	js	.LBB14_4
# BB#5:                                 # %if.else.8
	movq	(%rsp), %rax
	movl	$-20, %ebx
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB14_7
# BB#6:                                 # %if.else.16
	movq	8(%rax), %rsi
	movl	4(%rax), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
	jmp	.LBB14_7
.LBB14_4:                               # %if.then.7
	movq	%r14, %rdi
	callq	gs_glyph_data_from_null
	xorl	%ebx, %ebx
.LBB14_7:                               # %cleanup
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	font_gdir_get_outline, .Lfunc_end14-font_gdir_get_outline
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sfnts"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GlyphDirectory"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"2.buildfont42"
	.size	.L.str.2, 14

	.type	zfont42_op_defs,@object # @zfont42_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont42_op_defs
	.align	16
zfont42_op_defs:
	.quad	.L.str.2
	.quad	zbuildfont42
	.zero	16
	.size	zfont42_op_defs, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%Type42BuildChar"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%Type42BuildGlyph"
	.size	.L.str.4, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
