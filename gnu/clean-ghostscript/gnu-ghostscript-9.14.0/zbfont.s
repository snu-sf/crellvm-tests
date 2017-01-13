	.text
	.file	"zbfont.bc"
	.align	16, 0x90
	.type	font_data_clear_marks,@function
font_data_clear_marks:                  # @font_data_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$144, %edx
	jmp	ref_struct_clear_marks  # TAILCALL
.Lfunc_end0:
	.size	font_data_clear_marks, .Lfunc_end0-font_data_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	font_data_enum_ptrs,@function
font_data_enum_ptrs:                    # @font_data_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$144, %edx
	jmp	ref_struct_enum_ptrs    # TAILCALL
.Lfunc_end1:
	.size	font_data_enum_ptrs, .Lfunc_end1-font_data_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_data_reloc_ptrs,@function
font_data_reloc_ptrs:                   # @font_data_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$144, %esi
	jmp	ref_struct_reloc_ptrs   # TAILCALL
.Lfunc_end2:
	.size	font_data_reloc_ptrs, .Lfunc_end2-font_data_reloc_ptrs
	.cfi_endproc

	.globl	zfont_encode_char
	.align	16, 0x90
	.type	zfont_encode_char,@function
zfont_encode_char:                      # @zfont_encode_char
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$88, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 128
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%rbx), %rbp
	leaq	48(%rbp), %rsi
	movq	16(%rbx), %rdi
	leaq	64(%rsp), %rcx
	movq	%r14, %rdx
	callq	array_get
	movl	%eax, %ecx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	testl	%ecx, %ecx
	js	.LBB3_10
# BB#1:                                 # %lor.lhs.false
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movzbl	65(%rsp), %ecx
	cmpl	$13, %ecx
	jne	.LBB3_10
# BB#2:                                 # %if.end
	cmpl	$3, 128(%rbx)
	jne	.LBB3_9
# BB#3:                                 # %land.lhs.true
	movzbl	33(%rbp), %eax
	cmpl	$14, %eax
	jne	.LBB3_9
# BB#4:                                 # %if.then.11
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	64(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	names_string_ref
	cmpl	$7, 52(%rsp)
	jne	.LBB3_9
# BB#5:                                 # %land.lhs.true.16
	movq	56(%rsp), %rdi
	movl	$.L.str.1, %esi
	movl	$7, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB3_9
# BB#6:                                 # %if.then.21
	cmpl	$2, %r15d
	jne	.LBB3_7
# BB#11:                                # %cleanup.42
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	jmp	.LBB3_10
.LBB3_7:                                # %if.end.26
	leaq	(%rsp), %rbp
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	gs_sprintf
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbx
	movq	%rbp, %rdi
	callq	strlen
	leaq	32(%rsp), %rcx
	movl	$1, %r8d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB3_9
# BB#8:                                 # %if.else
	movups	32(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
.LBB3_9:                                # %if.end.46
	movq	72(%rsp), %rcx
	movl	68(%rsp), %eax
	movl	%eax, %edx
	andl	$511, %edx              # imm = 0x1FF
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addl	4096(%rcx), %eax
.LBB3_10:                               # %cleanup.53
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zfont_encode_char, .Lfunc_end3-zfont_encode_char
	.cfi_endproc

	.globl	gs_font_map_glyph_to_unicode
	.align	16, 0x90
	.type	gs_font_map_glyph_to_unicode,@function
gs_font_map_glyph_to_unicode:           # @gs_font_map_glyph_to_unicode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 80
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	72(%r15), %rbx
	movzbl	81(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB4_14
# BB#1:                                 # %if.then
	addq	$80, %rbx
	movq	16(%r15), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	gs_font_map_glyph_by_dict
	movq	%rax, %r12
	cmpq	$-1, %r12
	jne	.LBB4_18
# BB#2:                                 # %if.end
	cmpl	$-1, %ebp
	je	.LBB4_14
# BB#3:                                 # %if.then.8
	movslq	%ebp, %rax
	movq	%rax, 16(%rsp)
	movw	$2816, 8(%rsp)          # imm = 0xB00
	leaq	8(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB4_14
# BB#4:                                 # %if.then.16
	movq	24(%rsp), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB4_5
# BB#13:                                # %if.then.38
	movq	8(%rcx), %r12
	jmp	.LBB4_18
.LBB4_5:                                # %if.then.16
	movzbl	%al, %eax
	cmpl	$18, %eax
	jne	.LBB4_14
# BB#6:                                 # %if.then.23
	movl	4(%rcx), %eax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB4_18
# BB#7:                                 # %for.body.lr.ph
	movq	8(%rcx), %rcx
	leal	-1(%rax), %edx
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %r12d
	je	.LBB4_10
# BB#8:                                 # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_9:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r12
	movzbl	(%rcx,%rsi), %ebp
	orq	%rbp, %r12
	incq	%rsi
	cmpl	%esi, %edi
	jne	.LBB4_9
.LBB4_10:                               # %for.body.lr.ph.split
	cmpl	$3, %edx
	jb	.LBB4_18
# BB#11:                                # %for.body.lr.ph.split.split
	subl	%esi, %eax
	leaq	3(%rsi,%rcx), %rcx
.LBB4_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r12
	movzbl	-3(%rcx), %edx
	orq	%r12, %rdx
	shlq	$8, %rdx
	movzbl	-2(%rcx), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rcx), %edx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	movzbl	(%rcx), %r12d
	orq	%rdx, %r12
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB4_12
	jmp	.LBB4_18
.LBB4_14:                               # %if.end.48
	movq	$-1, %r12
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %r14
	ja	.LBB4_18
# BB#15:                                # %if.then.51
	movq	24(%r15), %rdi
	callq	zfont_get_to_unicode_map
	testq	%rax, %rax
	je	.LBB4_18
# BB#16:                                # %land.lhs.true
	movzbl	1(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB4_18
# BB#17:                                # %if.then.61
	movq	16(%r15), %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	gs_font_map_glyph_by_dict
	movq	%rax, %r12
.LBB4_18:                               # %cleanup.66
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gs_font_map_glyph_to_unicode, .Lfunc_end4-gs_font_map_glyph_to_unicode
	.cfi_endproc

	.align	16, 0x90
	.type	gs_font_map_glyph_by_dict,@function
gs_font_map_glyph_by_dict:              # @gs_font_map_glyph_by_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 80
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r12, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	$-2147483648, %r14      # imm = 0xFFFFFFFF80000000
	je	.LBB5_7
# BB#1:                                 # %if.then
	movl	$2147483648, %r12d      # imm = 0x80000000
	subq	$-2147483648, %r14      # imm = 0xFFFFFFFF80000000
	leaq	32(%rsp), %rdx
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB5_6
# BB#2:                                 # %if.then.3
	movq	%r14, %rax
	shrq	$8, %rax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	movq	%rax, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%rbx, %rdi
	callq	dict_find
	movq	$-1, %rbx
	testl	%eax, %eax
	jle	.LBB5_19
# BB#3:                                 # %if.then.8
	movq	32(%rsp), %rsi
	movzbl	%r14b, %edx
	leaq	(%rsp), %rcx
	movq	%r15, %rdi
	callq	array_get
	testl	%eax, %eax
	jne	.LBB5_19
# BB#4:                                 # %land.lhs.true
	movzbl	1(%rsp), %eax
	cmpl	$11, %eax
	jne	.LBB5_19
# BB#5:                                 # %cleanup
	movq	8(%rsp), %rbx
	jmp	.LBB5_19
.LBB5_7:                                # %if.else
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	leaq	16(%rsp), %rdx
	movl	%r14d, %esi
	callq	names_index_ref
	jmp	.LBB5_8
.LBB5_6:                                # %cleanup.28
	addq	$2147483647, %r12       # imm = 0x7FFFFFFF
	andq	%r12, %r14
	movq	%r14, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
.LBB5_8:                                # %if.end.32
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%rbx, %rdi
	callq	dict_find
	movq	$-1, %rbx
	testl	%eax, %eax
	jle	.LBB5_19
# BB#9:                                 # %if.then.36
	movq	32(%rsp), %rcx
	movzbl	1(%rcx), %eax
	cmpl	$11, %eax
	jne	.LBB5_10
# BB#18:                                # %if.then.60
	movq	8(%rcx), %rbx
	jmp	.LBB5_19
.LBB5_10:                               # %if.then.36
	movzbl	%al, %eax
	cmpl	$18, %eax
	jne	.LBB5_19
# BB#11:                                # %if.then.43
	movl	4(%rcx), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jle	.LBB5_19
# BB#12:                                # %for.body.lr.ph
	movq	8(%rcx), %rcx
	leal	-1(%rax), %r8d
	xorl	%esi, %esi
	testb	$3, %al
	movl	$0, %ebx
	je	.LBB5_15
# BB#13:                                # %for.body.prol.preheader
	movl	%eax, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_14:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbx
	movzbl	(%rcx,%rsi), %edx
	orq	%rdx, %rbx
	incq	%rsi
	cmpl	%esi, %edi
	jne	.LBB5_14
.LBB5_15:                               # %for.body.lr.ph.split
	cmpl	$3, %r8d
	jb	.LBB5_19
# BB#16:                                # %for.body.lr.ph.split.split
	subl	%esi, %eax
	leaq	3(%rsi,%rcx), %rcx
	.align	16, 0x90
.LBB5_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbx
	movzbl	-3(%rcx), %edx
	orq	%rbx, %rdx
	shlq	$8, %rdx
	movzbl	-2(%rcx), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rcx), %edx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	movzbl	(%rcx), %ebx
	orq	%rdx, %rbx
	addq	$4, %rcx
	addl	$-4, %eax
	jne	.LBB5_17
.LBB5_19:                               # %cleanup.65
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	gs_font_map_glyph_by_dict, .Lfunc_end5-gs_font_map_glyph_by_dict
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont3,@function
zbuildfont3:                            # @zbuildfont3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 80
.Ltmp32:
	.cfi_offset %rbx, -24
.Ltmp33:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB6_1
# BB#2:                                 # %if.end
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	build_gs_font_procs
	testl	%eax, %eax
	js	.LBB6_7
# BB#3:                                 # %if.end.6
	movl	$0, (%rsp)
	leaq	16(%rsp), %rdx
	leaq	24(%rsp), %r9
	movl	$3, %ecx
	movl	$st_gs_font_base, %r8d
	movq	%rbx, %rsi
	movq	%r14, %rdi
	callq	build_gs_simple_font
	testl	%eax, %eax
	js	.LBB6_7
# BB#4:                                 # %if.end.11
	movq	16(%rsp), %rbx
	xorl	%eax, %eax
	cmpq	%rbx, 64(%rbx)
	jne	.LBB6_7
# BB#5:                                 # %land.lhs.true.i
	cmpq	$0, 24(%rbx)
	jne	.LBB6_7
# BB#6:                                 # %cond.true.i
	movq	8(%r14), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movq	%rbx, %rsi
	callq	gs_definefont
	jmp	.LBB6_7
.LBB6_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB6_7:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	zbuildfont3, .Lfunc_end6-zbuildfont3
	.cfi_endproc

	.globl	build_proc_name_refs
	.align	16, 0x90
	.type	build_proc_name_refs,@function
build_proc_name_refs:                   # @build_proc_name_refs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 48
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r13, -32
.Ltmp42:
	.cfi_offset %r14, -24
.Ltmp43:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	testq	%rbx, %rbx
	je	.LBB7_1
# BB#2:                                 # %if.else
	movq	192(%r15), %rax
	movq	120(%rax), %r13
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r12, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB7_9
# BB#3:                                 # %if.end
	orb	$-128, (%r12)
	jmp	.LBB7_4
.LBB7_1:                                # %if.then
	movw	$3584, (%r12)           # imm = 0xE00
.LBB7_4:                                # %if.end.10
	testq	%r14, %r14
	je	.LBB7_5
# BB#6:                                 # %if.else.15
	movq	192(%r15), %rax
	movq	120(%rax), %rbx
	movq	%r14, %rdi
	callq	strlen
	addq	$16, %r12
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r12, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB7_9
# BB#7:                                 # %if.end.25
	orb	$-128, (%r12)
	jmp	.LBB7_8
.LBB7_5:                                # %if.then.12
	movw	$3584, 16(%r12)         # imm = 0xE00
.LBB7_8:                                # %cleanup
	xorl	%eax, %eax
.LBB7_9:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	build_proc_name_refs, .Lfunc_end7-build_proc_name_refs
	.cfi_endproc

	.globl	build_gs_font_procs
	.align	16, 0x90
	.type	build_gs_font_procs,@function
build_gs_font_procs:                    # @build_gs_font_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 48
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	1(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB8_1
# BB#2:                                 # %if.end
	leaq	8(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	leaq	(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	%eax, %ecx
	testl	%ebp, %ebp
	jle	.LBB8_3
# BB#7:                                 # %do.body
	movq	8(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB8_8
# BB#9:                                 # %if.end.22
	movups	(%rdi), %xmm0
	movups	%xmm0, (%r14)
	testl	%ecx, %ecx
	jg	.LBB8_5
# BB#10:                                # %if.then.25
	movw	$3584, 16(%r14)         # imm = 0xE00
	jmp	.LBB8_12
.LBB8_1:                                # %if.then
	movq	%rbx, %rdi
	callq	check_type_failed
	jmp	.LBB8_13
.LBB8_3:                                # %if.then.6
	movl	$-10, %eax
	testl	%ecx, %ecx
	jle	.LBB8_13
# BB#4:                                 # %if.end.22.thread
	movw	$3584, (%r14)           # imm = 0xE00
.LBB8_5:                                # %do.body.29
	movq	(%rsp), %rdi
	movzwl	(%rdi), %eax
	andl	$15552, %eax            # imm = 0x3CC0
	cmpl	$1216, %eax             # imm = 0x4C0
	jne	.LBB8_6
# BB#11:                                # %do.end.40
	movups	(%rdi), %xmm0
	movups	%xmm0, 16(%r14)
.LBB8_12:                               # %cleanup
	xorl	%eax, %eax
	jmp	.LBB8_13
.LBB8_8:                                # %if.then.18
	callq	check_proc_failed
	jmp	.LBB8_13
.LBB8_6:                                # %if.then.36
	callq	check_proc_failed
.LBB8_13:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	build_gs_font_procs, .Lfunc_end8-build_gs_font_procs
	.cfi_endproc

	.globl	build_gs_primitive_font
	.align	16, 0x90
	.type	build_gs_primitive_font,@function
build_gs_primitive_font:                # @build_gs_primitive_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 144
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %r12d
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movl	144(%rsp), %r13d
	movq	$0, 72(%rsp)
	leaq	72(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB9_1
# BB#2:                                 # %if.else
	movq	72(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB9_21
# BB#3:                                 # %if.end.5
	testb	$16, %r13b
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	leaq	40(%rsp), %rdx
	movl	$.L.str.1, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB9_21
# BB#5:                                 # %land.lhs.true.if.end.13_crit_edge
	movq	72(%rsp), %rdi
.LBB9_6:                                # %if.end.13
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movups	(%rdi), %xmm0
	movaps	%xmm0, 48(%rsp)
	jmp	.LBB9_7
.LBB9_1:                                # %if.then
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movl	$-10, %r14d
	testb	$8, %r13b
	je	.LBB9_20
.LBB9_7:                                # %if.end.14
	leaq	40(%rsp), %r9
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB9_20
# BB#8:                                 # %if.end.i
	leaq	84(%rsp), %rdx
	movl	$.L.str.8, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB9_20
# BB#9:                                 # %if.end.4.i
	movl	%r13d, (%rsp)
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	movq	24(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	movq	%r15, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	build_gs_simple_font
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jne	.LBB9_20
# BB#10:                                # %if.end.19
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbp
	movl	40(%rsp), %eax
	movl	%eax, 152(%rbp)
	movl	84(%rsp), %eax
	movl	%eax, 156(%rbp)
	movq	72(%rbp), %rax
	addq	$64, %rax
	cmpq	$0, 72(%rsp)
	je	.LBB9_12
# BB#11:                                # %if.then.21
	movaps	48(%rsp), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB9_13
.LBB9_21:                               # %cleanup
	movl	$-10, %r14d
.LBB9_20:                               # %cleanup.61
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_12:                               # %if.else.23
	movw	$3584, (%rax)           # imm = 0xE00
.LBB9_13:                               # %if.end.27
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
	xorl	%r14d, %r14d
	cmpq	%r12, 408(%rbp)
	je	.LBB9_20
# BB#14:                                # %land.lhs.true.30
	leaq	408(%rbp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	dict_check_uid_param
	testl	%eax, %eax
	je	.LBB9_15
# BB#16:                                # %if.end.38
	cmpq	%r12, (%r15)
	je	.LBB9_20
# BB#17:                                # %if.then.43
	movq	%rbp, 40(%rsp)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	leaq	40(%rsp), %rsi
	movl	$font_with_same_UID_and_another_metrics, %edx
	callq	gs_font_find_similar
	testl	%eax, %eax
	js	.LBB9_19
# BB#18:                                # %if.end.49
	je	.LBB9_20
.LBB9_15:                               # %if.end.38.thread
	movq	%r12, 408(%rbp)
	movq	$0, 416(%rbp)
	jmp	.LBB9_20
.LBB9_19:                               # %cleanup.57
	movl	%eax, %r14d
	jmp	.LBB9_20
.Lfunc_end9:
	.size	build_gs_primitive_font, .Lfunc_end9-build_gs_primitive_font
	.cfi_endproc

	.globl	build_gs_outline_font
	.align	16, 0x90
	.type	build_gs_outline_font,@function
build_gs_outline_font:                  # @build_gs_outline_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 80
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	20(%rsp), %r9
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB10_4
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rdx
	movl	$.L.str.8, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	js	.LBB10_4
# BB#2:                                 # %if.end.4
	movq	88(%rsp), %rax
	movl	80(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	movq	%r12, %r8
	movq	%r14, %r9
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB10_4
# BB#3:                                 # %if.end.8
	movq	(%r15), %rax
	movl	20(%rsp), %ecx
	movl	%ecx, 152(%rax)
	movl	16(%rsp), %ecx
	movl	%ecx, 156(%rax)
	xorl	%eax, %eax
.LBB10_4:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	build_gs_outline_font, .Lfunc_end10-build_gs_outline_font
	.cfi_endproc

	.globl	build_gs_simple_font
	.align	16, 0x90
	.type	build_gs_simple_font,@function
build_gs_simple_font:                   # @build_gs_simple_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp83:
	.cfi_def_cfa_offset 160
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	56(%r12), %ebp
	movq	8(%r12), %rdi
	leaq	48(%rsp), %rdx
	callq	font_bbox_param
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB11_12
# BB#1:                                 # %if.end
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rbx
	leaq	8(%r12), %r15
	movzwl	(%r14), %esi
	andl	$12, %esi
	movq	%r15, %rdi
	callq	ialloc_set_space
	movq	8(%r12), %rcx
	leaq	32(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%r12, %r8
	callq	dict_uid_param
	movl	%eax, %r13d
	movq	%r15, %rdi
	movq	%rbx, %r15
	movq	8(%rsp), %rbx           # 8-byte Reload
	movl	%ebp, %esi
	callq	ialloc_set_space
	testl	%r13d, %r13d
	js	.LBB11_12
# BB#2:                                 # %if.end.10
	movl	160(%rsp), %eax
	testb	$4, %al
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	cmpq	$16777215, 32(%rsp)     # imm = 0xFFFFFF
	ja	.LBB11_5
# BB#4:                                 # %if.then.15
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rcx, 32(%rsp)
	movq	$0, 40(%rsp)
.LBB11_5:                               # %if.end.17
	movl	%eax, (%rsp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r15, %r9
	callq	build_gs_font
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jne	.LBB11_12
# BB#6:                                 # %if.end.22
	movq	(%rbx), %rbp
	movq	$gs_default_init_fstack, 248(%rbp)
	movq	$gs_no_define_font, 168(%rbp)
	movq	$gs_font_map_glyph_to_unicode, 208(%rbp)
	movq	$zbase_make_font, 176(%rbp)
	movq	$gs_default_next_char_glyph, 256(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 424(%rbp)
	movq	48(%rsp), %rax
	movq	%rax, 376(%rbp)
	movq	56(%rsp), %rax
	movq	%rax, 384(%rbp)
	movq	64(%rsp), %rax
	movq	%rax, 392(%rbp)
	movq	72(%rsp), %rax
	movq	%rax, 400(%rbp)
	movups	32(%rsp), %xmm0
	movups	%xmm0, 408(%rbp)
	movq	%rbp, %rdi
	callq	lookup_gs_simple_font_encoding
	movq	$0, 96(%rsp)
	movq	$0, 88(%rsp)
	leaq	96(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_11
# BB#7:                                 # %lor.lhs.false.i
	movq	96(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB11_11
# BB#8:                                 # %lor.lhs.false.3.i
	leaq	88(%rsp), %rdx
	movl	$.L.str.10, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB11_11
# BB#9:                                 # %lor.lhs.false.7.i
	movq	96(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB11_11
# BB#10:                                # %if.end.i
	movq	72(%rbp), %rax
	movq	88(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movzwl	80(%rax), %ecx
	orl	76(%r12), %ecx
	movw	%cx, 80(%rax)
.LBB11_11:                              # %get_GlyphNames2Unicode.exit
	xorl	%r13d, %r13d
.LBB11_12:                              # %cleanup
	movl	%r13d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	build_gs_simple_font, .Lfunc_end11-build_gs_simple_font
	.cfi_endproc

	.align	16, 0x90
	.type	font_with_same_UID_and_another_metrics,@function
font_with_same_UID_and_another_metrics: # @font_with_same_UID_and_another_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp94:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 64
.Ltmp96:
	.cfi_offset %rbx, -48
.Ltmp97:
	.cfi_offset %r12, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	408(%rbx), %rdi
	leaq	408(%rbp), %rsi
	callq	uid_equal
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB12_22
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	gs_font_parent
	movq	72(%rax), %r15
	movq	%rbp, %rdi
	callq	gs_font_parent
	movq	72(%rax), %r14
	cmpl	$0, 148(%rbx)
	jne	.LBB12_3
# BB#2:                                 # %lor.lhs.false
	leaq	8(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB12_4
.LBB12_3:                               # %if.then.8
	movq	$0, 8(%rsp)
.LBB12_4:                               # %if.end
	cmpl	$0, 148(%rbp)
	jne	.LBB12_7
# BB#5:                                 # %lor.lhs.false.11
	leaq	(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_7
# BB#6:                                 # %lor.lhs.false.11.if.end.15_crit_edge
	movq	(%rsp), %rdx
	jmp	.LBB12_8
.LBB12_7:                               # %if.then.14
	movq	$0, (%rsp)
	xorl	%edx, %edx
.LBB12_8:                               # %if.end.15
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	sete	%al
	movzbl	%al, %eax
	testq	%rdx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_21
# BB#9:                                 # %if.end.22
	testq	%rsi, %rsi
	je	.LBB12_11
# BB#10:                                # %land.lhs.true
	movq	16(%rbx), %rdi
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB12_21
.LBB12_11:                              # %if.end.27
	cmpl	$0, 148(%rbx)
	je	.LBB12_13
# BB#12:                                # %lor.lhs.false.30
	leaq	8(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB12_14
.LBB12_13:                              # %if.then.33
	movq	$0, 8(%rsp)
.LBB12_14:                              # %if.end.34
	cmpl	$0, 148(%rbx)
	je	.LBB12_17
# BB#15:                                # %lor.lhs.false.37
	leaq	(%rsp), %rdx
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB12_17
# BB#16:                                # %lor.lhs.false.37.if.end.41_crit_edge
	movq	(%rsp), %rdx
	jmp	.LBB12_18
.LBB12_17:                              # %if.then.40
	movq	$0, (%rsp)
	xorl	%edx, %edx
.LBB12_18:                              # %if.end.41
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	sete	%al
	movzbl	%al, %eax
	testq	%rdx, %rdx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_21
# BB#19:                                # %if.end.50
	testq	%rsi, %rsi
	je	.LBB12_22
# BB#20:                                # %land.lhs.true.52
	movq	16(%rbx), %rdi
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB12_22
.LBB12_21:                              # %cleanup
	movl	$1, %r12d
.LBB12_22:                              # %cleanup.62
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	font_with_same_UID_and_another_metrics, .Lfunc_end12-font_with_same_UID_and_another_metrics
	.cfi_endproc

	.globl	build_gs_FDArray_font
	.align	16, 0x90
	.type	build_gs_FDArray_font,@function
build_gs_FDArray_font:                  # @build_gs_FDArray_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp105:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp107:
	.cfi_def_cfa_offset 96
.Ltmp108:
	.cfi_offset %rbx, -56
.Ltmp109:
	.cfi_offset %r12, -48
.Ltmp110:
	.cfi_offset %r13, -40
.Ltmp111:
	.cfi_offset %r14, -32
.Ltmp112:
	.cfi_offset %r15, -24
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	leaq	28(%rsp), %r9
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB13_6
# BB#1:                                 # %if.end.i
	leaq	24(%rsp), %rdx
	movl	$.L.str.8, %esi
	xorps	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	dict_float_param
	testl	%eax, %eax
	js	.LBB13_6
# BB#2:                                 # %if.end.4.i
	movq	%rbx, 8(%rsp)
	movq	$0, (%rsp)
	leaq	32(%rsp), %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %ecx
	movq	%r12, %r8
	movq	%r15, %r9
	callq	build_gs_sub_font
	testl	%eax, %eax
	js	.LBB13_6
# BB#3:                                 # %build_FDArray_sub_font.exit
	movq	32(%rsp), %rax
	jne	.LBB13_5
# BB#4:                                 # %if.end.8.i
	movl	28(%rsp), %ecx
	movl	%ecx, 152(%rax)
	movl	24(%rsp), %ecx
	movl	%ecx, 156(%rax)
.LBB13_5:                               # %if.end
	movq	72(%rax), %rcx
	movw	$3584, 64(%rcx)         # imm = 0xE00
	xorps	%xmm0, %xmm0
	movups	%xmm0, 376(%rax)
	movups	%xmm0, 392(%rax)
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rcx, 408(%rax)
	movq	$0, 416(%rax)
	movq	$-1, 440(%rax)
	movl	372(%rax), %ecx
	movl	%ecx, 320(%rax)
	movups	324(%rax), %xmm0
	movups	340(%rax), %xmm1
	movups	356(%rax), %xmm2
	movups	%xmm2, 304(%rax)
	movups	%xmm1, 288(%rax)
	movups	%xmm0, 272(%rax)
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB13_6:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	build_gs_FDArray_font, .Lfunc_end13-build_gs_FDArray_font
	.cfi_endproc

	.globl	init_gs_simple_font
	.align	16, 0x90
	.type	init_gs_simple_font,@function
init_gs_simple_font:                    # @init_gs_simple_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	%rax, 376(%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 384(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 392(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 400(%rdi)
	movups	(%rdx), %xmm0
	movups	%xmm0, 408(%rdi)
	retq
.Lfunc_end14:
	.size	init_gs_simple_font, .Lfunc_end14-init_gs_simple_font
	.cfi_endproc

	.globl	get_GlyphNames2Unicode
	.align	16, 0x90
	.type	get_GlyphNames2Unicode,@function
get_GlyphNames2Unicode:                 # @get_GlyphNames2Unicode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 48
.Ltmp117:
	.cfi_offset %rbx, -24
.Ltmp118:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	16(%rsp), %rax
	movl	$.L.str.9, %esi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_5
# BB#1:                                 # %lor.lhs.false
	movq	16(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB15_5
# BB#2:                                 # %lor.lhs.false.3
	leaq	8(%rsp), %rdx
	movl	$.L.str.10, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB15_5
# BB#3:                                 # %lor.lhs.false.7
	movq	16(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB15_5
# BB#4:                                 # %if.end
	movq	72(%rbx), %rax
	movq	8(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	%xmm0, 80(%rax)
	movzwl	80(%rax), %ecx
	orl	76(%r14), %ecx
	movw	%cx, 80(%rax)
.LBB15_5:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	get_GlyphNames2Unicode, .Lfunc_end15-get_GlyphNames2Unicode
	.cfi_endproc

	.globl	build_gs_font
	.align	16, 0x90
	.type	build_gs_font,@function
build_gs_font:                          # @build_gs_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp120:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp121:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp122:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp123:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp124:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp125:
	.cfi_def_cfa_offset 288
.Ltmp126:
	.cfi_offset %rbx, -56
.Ltmp127:
	.cfi_offset %r12, -48
.Ltmp128:
	.cfi_offset %r13, -40
.Ltmp129:
	.cfi_offset %r14, -32
.Ltmp130:
	.cfi_offset %r15, -24
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movq	%rdi, %r13
	movq	$0, 192(%rsp)
	movq	8(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	8(%r13), %r14
	movq	8(%r13), %rdi
	callq	gs_currentcpsimode
	movl	%eax, %r12d
	leaq	-16(%rbx), %rsi
	movzbl	-15(%rbx), %eax
	cmpl	$13, %eax
	jne	.LBB16_1
# BB#3:                                 # %sw.bb.1.i
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	208(%rsp), %rdx
	callq	names_string_ref
	jmp	.LBB16_5
.LBB16_1:                               # %entry
	cmpl	$18, %eax
	jne	.LBB16_4
# BB#2:                                 # %sw.bb.i
	movups	(%rsi), %xmm0
	movaps	%xmm0, 208(%rsp)
	jmp	.LBB16_5
.LBB16_4:                               # %sw.default.i
	movq	$0, 216(%rsp)
	movw	$4704, 208(%rsp)        # imm = 0x1260
	movl	$0, 212(%rsp)
.LBB16_5:                               # %get_font_name.exit
	leaq	200(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	movl	$-10, %r15d
	testl	%eax, %eax
	jle	.LBB16_54
# BB#6:                                 # %lor.lhs.false
	movq	200(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB16_54
# BB#7:                                 # %lor.lhs.false.6
	movslq	68(%rsp), %rcx          # 4-byte Folded Reload
	cmpq	%rcx, 8(%rax)
	jne	.LBB16_54
# BB#8:                                 # %if.end
	leaq	192(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB16_9
# BB#11:                                # %if.else
	movq	192(%rsp), %rsi
	movzwl	(%rsi), %eax
	andl	$15360, %eax            # imm = 0x3C00
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB16_54
# BB#12:                                # %if.end.25
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB16_35
# BB#13:                                # %if.then.27
	movslq	4(%rsi), %r15
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	setne	%al
	testq	%r15, %r15
	movzbl	%al, %ebp
	je	.LBB16_35
# BB#14:                                # %while.body.lr.ph
	leaq	-1(%r15), %rdx
	movq	(%r14), %rdi
	leaq	96(%rsp), %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB16_22
# BB#15:                                # %lor.lhs.false.37.preheader
	leal	11(%rbp,%rbp), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leal	-2(%r15), %eax
	movslq	%eax, %rbp
	movq	%r15, %rax
	movl	$1, %r15d
	subl	%eax, %r15d
.LBB16_16:                              # %lor.lhs.false.37
                                        # =>This Inner Loop Header: Depth=1
	movzbl	97(%rsp), %eax
	cmpl	$14, %eax
	je	.LBB16_18
# BB#17:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB16_16 Depth=1
	cmpl	24(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB16_20
.LBB16_18:                              # %cleanup.thread88
                                        #   in Loop: Header=BB16_16 Depth=1
	testl	%r15d, %r15d
	je	.LBB16_35
# BB#19:                                # %cleanup.thread88.while.body_crit_edge
                                        #   in Loop: Header=BB16_16 Depth=1
	movq	192(%rsp), %rsi
	movq	(%r14), %rdi
	movq	%rbp, %rdx
	leaq	96(%rsp), %rcx
	callq	array_get
	decq	%rbp
	incl	%r15d
	testl	%eax, %eax
	jns	.LBB16_16
	jmp	.LBB16_22
.LBB16_9:                               # %if.then.14
	movl	288(%rsp), %eax
	testb	$1, %al
	je	.LBB16_54
# BB#10:                                # %if.end.25.thread
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	$0, 192(%rsp)
.LBB16_35:                              # %if.end.159
	leaq	172(%rsp), %r9
	movl	$.L.str.14, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#36:                                # %lor.lhs.false.163
	leaq	188(%rsp), %rcx
	movl	$.L.str.15, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	dict_bool_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#37:                                # %lor.lhs.false.167
	leaq	184(%rsp), %r9
	movl	$.L.str.16, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#38:                                # %lor.lhs.false.171
	leaq	180(%rsp), %r9
	movl	$.L.str.17, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#39:                                # %lor.lhs.false.175
	leaq	176(%rsp), %r9
	movl	$.L.str.18, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	dict_int_param
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#40:                                # %if.end.180
	leaq	152(%rsp), %rdx
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB16_48
# BB#41:                                # %land.lhs.true.184
	movq	152(%rsp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB16_48
# BB#42:                                # %if.then.191
	movq	8(%rax), %rbp
	movq	%rbp, 160(%rsp)
	movq	16(%rbp), %rdi
	movq	72(%rbp), %rsi
	movq	%rbx, %rdx
	callq	obj_eq
	testl	%eax, %eax
	je	.LBB16_48
# BB#43:                                # %if.then.196
	cmpq	%rbp, 64(%rbp)
	je	.LBB16_44
# BB#46:                                # %if.else.204
	movq	(%r14), %rdi
	leaq	96(%rsp), %rdx
	leaq	136(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	callq	sub_font_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#47:                                # %cleanup.212.thread
	movl	140(%rsp), %eax
	cmpl	$47, %eax
	movl	$47, %ebx
	cmovbel	%eax, %ebx
	leaq	324(%rbp), %rdi
	movq	144(%rsp), %rsi
	movl	%ebx, %r14d
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 324(%rbp,%r14)
	movl	%ebx, 372(%rbp)
	movl	$1, %r15d
	jmp	.LBB16_53
.LBB16_48:                              # %if.end.215
	movl	$-7, %r15d
	movq	56(%rsp), %rax          # 8-byte Reload
	testb	$16, (%rax)
	je	.LBB16_54
# BB#49:                                # %if.end.222
	movq	192(%rsp), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB16_51
# BB#50:                                # %if.then.224
	movups	(%rcx), %xmm0
	movaps	%xmm0, 96(%rsp)
	leaq	96(%rsp), %rax
	movq	%rax, 192(%rsp)
.LBB16_51:                              # %if.end.225
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	160(%rsp), %rdx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	build_gs_sub_font
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_54
# BB#52:                                # %cleanup.cont.233
	movl	188(%rsp), %eax
	movq	160(%rsp), %rbp
	movl	%eax, 132(%rbp)
	movl	184(%rsp), %eax
	movl	%eax, 136(%rbp)
	movl	180(%rsp), %eax
	movl	%eax, 140(%rbp)
	movl	176(%rsp), %eax
	movl	%eax, 144(%rbp)
	movl	172(%rsp), %eax
	movl	%eax, 148(%rbp)
	movq	$zfont_info, 184(%rbp)
	xorl	%r15d, %r15d
.LBB16_53:                              # %set_name
	movl	212(%rsp), %eax
	cmpl	$47, %eax
	movl	$47, %ebx
	cmovbel	%eax, %ebx
	leaq	272(%rbp), %rdi
	movq	216(%rsp), %rsi
	movl	%ebx, %r14d
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 272(%rbp,%r14)
	movl	%ebx, 320(%rbp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	jmp	.LBB16_54
.LBB16_20:                              # %if.then.51
	cmpl	$3, 68(%rsp)            # 4-byte Folded Reload
	jne	.LBB16_22
# BB#21:                                # %if.then.51
	testl	%r12d, %r12d
	jne	.LBB16_22
# BB#23:                                # %if.then.70
	movl	$0, 132(%rsp)
	movl	56(%r13), %r12d
	movq	192(%rsp), %rax
	movzwl	(%rax), %eax
	andl	$12, %eax
	cmpl	$12, %eax
	sete	%al
	movzbl	%al, %eax
	leal	8(,%rax,4), %esi
	movq	%r14, %rdi
	callq	ialloc_set_space
	movq	192(%rsp), %rax
	movl	4(%rax), %ebp
	movq	8(%r13), %rdi
	movzwl	(%rax), %edx
	andl	$96, %edx
	leaq	136(%rsp), %rsi
	movl	$.L.str.13, %r8d
	movl	%ebp, %ecx
	callq	gs_alloc_ref_array
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_33
# BB#24:                                # %while.cond.93.preheader
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	je	.LBB16_29
# BB#25:                                # %while.body.96.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movslq	%eax, %r12
	movq	%r12, %rbp
	shlq	$4, %rbp
.LBB16_26:                              # %while.body.96
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	192(%rsp), %rsi
	movq	%r12, %rdx
	leaq	72(%rsp), %rcx
	callq	array_get
	movl	$-20, %r15d
	testl	%eax, %eax
	js	.LBB16_33
# BB#27:                                # %if.end.105
                                        #   in Loop: Header=BB16_26 Depth=1
	movzbl	73(%rsp), %eax
	cmpl	$13, %eax
	je	.LBB16_28
# BB#31:                                # %if.else.115
                                        #   in Loop: Header=BB16_26 Depth=1
	movq	(%r14), %rdi
	movl	$32, %ecx
	leaq	72(%rsp), %rsi
	leaq	96(%rsp), %rdx
	leaq	132(%rsp), %r8
	leaq	88(%rsp), %r9
	callq	obj_cvs
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_33
# BB#32:                                # %if.end.122
                                        #   in Loop: Header=BB16_26 Depth=1
	movq	(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	88(%rsp), %rsi
	movl	132(%rsp), %edx
	movl	$1, %r8d
	leaq	72(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_33
.LBB16_28:                              # %if.then.112
                                        #   in Loop: Header=BB16_26 Depth=1
	movq	144(%rsp), %rax
	movups	72(%rsp), %xmm0
	movups	%xmm0, (%rax,%rbp)
	movq	24(%rsp), %rax          # 8-byte Reload
	decl	%eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	addq	$-16, %rbp
	decq	%r12
	testl	%eax, %eax
	jne	.LBB16_26
.LBB16_29:                              # %while.end.138
	movq	624(%r13), %rdi
	xorl	%ebp, %ebp
	leaq	136(%rsp), %rdx
	movl	$.L.str.12, %esi
	xorl	%ecx, %ecx
	callq	dict_put_string
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_34
# BB#30:                                # %if.end.143
	movq	%r14, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movl	$-20, %r15d
	movb	$1, %bpl
	jmp	.LBB16_34
.LBB16_22:                              # %cleanup.thread
	movl	$-20, %r15d
.LBB16_54:                              # %cleanup.235
	movl	%r15d, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_33:                              # %cleanup.135.thread
	xorl	%ebp, %ebp
.LBB16_34:                              # %cleanup.145
	testb	%bpl, %bpl
	je	.LBB16_54
	jmp	.LBB16_35
.LBB16_44:                              # %if.then.199
	cmpl	$2, 80(%r13)
	movl	$-10, %r15d
	jl	.LBB16_54
# BB#45:                                # %if.end.203
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	$1, %r15d
	jmp	.LBB16_54
.Lfunc_end16:
	.size	build_gs_font, .Lfunc_end16-build_gs_font
	.cfi_endproc

	.globl	lookup_gs_simple_font_encoding
	.align	16, 0x90
	.type	lookup_gs_simple_font_encoding,@function
lookup_gs_simple_font_encoding:         # @lookup_gs_simple_font_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp133:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp134:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp135:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp136:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 56
	subq	$4168, %rsp             # imm = 0x1048
.Ltmp138:
	.cfi_def_cfa_offset 4224
.Ltmp139:
	.cfi_offset %rbx, -56
.Ltmp140:
	.cfi_offset %r12, -48
.Ltmp141:
	.cfi_offset %r13, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	72(%rdi), %r14
	movl	$-1, 440(%rdi)
	movl	$-1, %edx
	movzbl	49(%r14), %eax
	cmpl	$4, %eax
	jne	.LBB17_23
# BB#1:                                 # %land.lhs.true
	movl	52(%r14), %ecx
	cmpq	$256, %rcx              # imm = 0x100
	ja	.LBB17_23
# BB#2:                                 # %if.then
	movl	%ecx, %eax
	movl	$2863311531, %edx       # imm = 0xAAAAAAAB
	imulq	%rax, %rdx
	shrq	$33, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	testl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	je	.LBB17_9
# BB#3:                                 # %for.body.lr.ph
	addq	$48, %r14
	leaq	64(%rsp), %rbx
	xorl	%ebp, %ebp
	leaq	48(%rsp), %r15
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB17_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB17_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_4 Depth=1
	movzbl	49(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB17_6
# BB#7:                                 # %if.else
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	16(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	names_string_ref
	movq	40(%rsp), %rax
	movq	%rax, (%rbx)
	movl	36(%rsp), %eax
	movl	%eax, 8(%rbx)
	jmp	.LBB17_8
	.align	16, 0x90
.LBB17_6:                               # %if.then.18
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
.LBB17_8:                               # %if.end
                                        #   in Loop: Header=BB17_4 Depth=1
	incq	%rbp
	addq	$16, %rbx
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%ebp, %eax
	jne	.LBB17_4
.LBB17_9:                               # %for.cond.31.preheader
	xorl	%ebp, %ebp
	movl	$-1, 4(%rsp)            # 4-byte Folded Spill
	leaq	48(%rsp), %r15
	.align	16, 0x90
.LBB17_10:                              # %for.cond.35.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_11 Depth 2
                                        #       Child Loop BB17_13 Depth 3
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	movl	%eax, %r14d
.LBB17_11:                              # %for.cond.35.outer
                                        #   Parent Loop BB17_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_13 Depth 3
	testl	%ebx, %ebx
	jle	.LBB17_17
# BB#12:                                # %for.body.38.lr.ph
                                        #   in Loop: Header=BB17_11 Depth=2
	movslq	%ebx, %rax
	leaq	1(%rax), %r13
	shlq	$4, %rax
	leaq	56(%rsp), %rcx
	leaq	(%rax,%rcx), %r12
	.align	16, 0x90
.LBB17_13:                              # %for.body.38
                                        #   Parent Loop BB17_10 Depth=1
                                        #     Parent Loop BB17_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	-2(%r13), %rbx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	gs_c_known_encode
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	gs_c_glyph_name
	movl	56(%rsp), %edx
	cmpl	(%r12), %edx
	jne	.LBB17_16
# BB#14:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB17_13 Depth=3
	movq	48(%rsp), %rdi
	movq	-8(%r12), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB17_16
# BB#15:                                # %cleanup.thread
                                        #   in Loop: Header=BB17_13 Depth=3
	decq	%r13
	addq	$-16, %r12
	cmpq	$1, %r13
	jg	.LBB17_13
	jmp	.LBB17_17
	.align	16, 0x90
.LBB17_16:                              # %cleanup
                                        #   in Loop: Header=BB17_11 Depth=2
	decl	%r14d
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	ja	.LBB17_11
	.align	16, 0x90
.LBB17_17:                              # %for.end.63
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	jbe	.LBB17_20
# BB#18:                                # %if.then.66
                                        #   in Loop: Header=BB17_10 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r14d
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movl	%r14d, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	je	.LBB17_19
.LBB17_20:                              # %for.inc.75
                                        #   in Loop: Header=BB17_10 Depth=1
	incl	%ebp
	cmpl	$7, %ebp
	jl	.LBB17_10
# BB#21:                                # %for.end.77
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	movl	4(%rsp), %edx           # 4-byte Reload
	jne	.LBB17_23
	jmp	.LBB17_22
.LBB17_19:
	movl	%ebp, %edx
.LBB17_22:                              # %if.then.80
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%edx, 440(%rax)
.LBB17_23:                              # %if.end.83
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%edx, 444(%rax)
	addq	$4168, %rsp             # imm = 0x1048
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	lookup_gs_simple_font_encoding, .Lfunc_end17-lookup_gs_simple_font_encoding
	.cfi_endproc

	.globl	get_font_name
	.align	16, 0x90
	.type	get_font_name,@function
get_font_name:                          # @get_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movzbl	1(%rdx), %ecx
	cmpl	$13, %ecx
	jne	.LBB18_1
# BB#3:                                 # %sw.bb.1
	movq	192(%rdi), %rcx
	movq	120(%rcx), %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	jmp	names_string_ref        # TAILCALL
.LBB18_1:                               # %entry
	cmpl	$18, %ecx
	jne	.LBB18_4
# BB#2:                                 # %sw.bb
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rax)
	retq
.LBB18_4:                               # %sw.epilog
	movq	$0, 8(%rax)
	movw	$4704, (%rax)           # imm = 0x1260
	movl	$0, 4(%rax)
	retq
.Lfunc_end18:
	.size	get_font_name, .Lfunc_end18-get_font_name
	.cfi_endproc

	.align	16, 0x90
	.type	sub_font_params,@function
sub_font_params:                        # @sub_font_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 128
.Ltmp152:
	.cfi_offset %rbx, -56
.Ltmp153:
	.cfi_offset %r12, -48
.Ltmp154:
	.cfi_offset %r13, -40
.Ltmp155:
	.cfi_offset %r14, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r15
	leaq	64(%rsp), %rdx
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	dict_find_string
	movl	$-10, %ebp
	testl	%eax, %eax
	jle	.LBB19_23
# BB#1:                                 # %lor.lhs.false
	movq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	read_matrix
	testl	%eax, %eax
	js	.LBB19_23
# BB#2:                                 # %if.end
	leaq	40(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB19_4
# BB#3:                                 # %if.then.5
	movq	$0, 40(%rsp)
.LBB19_4:                               # %if.end.6
	testq	%r12, %r12
	je	.LBB19_9
# BB#5:                                 # %if.then.8
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_8
# BB#6:                                 # %lor.lhs.false.10
	leaq	64(%rsp), %rdx
	movl	$.L.str.25, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_8
# BB#7:                                 # %lor.lhs.false.13
	movq	64(%rsp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	read_matrix
	testl	%eax, %eax
	jns	.LBB19_9
.LBB19_8:                               # %if.then.16
	xorl	%esi, %esi
	movl	$24, %edx
	movq	%r12, %rdi
	callq	memset
.LBB19_9:                               # %if.end.19
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	cmoveq	%r13, %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.9, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_19
# BB#10:                                # %land.lhs.true
	movq	32(%rsp), %rdi
	movzbl	1(%rdi), %eax
	cmpl	$2, %eax
	jne	.LBB19_19
# BB#11:                                # %land.lhs.true.25
	leaq	56(%rsp), %rdx
	movl	$.L.str.27, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_19
# BB#12:                                # %if.then.29
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rdx
	movl	$.L.str.28, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_16
# BB#13:                                # %land.lhs.true.33
	movq	48(%rsp), %rax
	movslq	4(%rax), %r12
	testq	%r12, %r12
	je	.LBB19_16
# BB#14:                                # %if.then.37
	movq	56(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	4(%rcx), %r13
	leal	1(%r12,%r13), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	$.L.str.29, %edx
	movq	%r15, %rdi
	callq	*136(%r15)
	movq	%rax, %rbx
	movl	$-25, %ebp
	testq	%rbx, %rbx
	je	.LBB19_23
# BB#15:                                # %if.end.49
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy
	movb	$44, (%rbx,%r13)
	leaq	1(%rbx,%r13), %rdi
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy
	movq	%rbx, 8(%r14)
	movw	$4704, (%r14)           # imm = 0x1260
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 4(%r14)
	jmp	.LBB19_22
.LBB19_19:                              # %if.else.67
	movq	40(%rsp), %rdi
	testq	%rdi, %rdi
	cmoveq	%r13, %rdi
	leaq	56(%rsp), %rdx
	movl	$.L.str.30, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB19_16
# BB#20:                                # %if.else.78
	movq	40(%rsp), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r13
	leaq	56(%rsp), %rdx
	movl	$.L.str.31, %esi
	movq	%r13, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB19_21
.LBB19_16:                              # %if.else
	movq	56(%rsp), %rsi
	movzbl	1(%rsi), %eax
	cmpl	$13, %eax
	jne	.LBB19_17
# BB#24:                                # %sw.bb.1.i
	movq	192(%r15), %rax
	movq	120(%rax), %rdi
	movq	%r14, %rdx
	callq	names_string_ref
	jmp	.LBB19_22
.LBB19_17:                              # %if.else
	cmpl	$18, %eax
	jne	.LBB19_21
# BB#18:                                # %sw.bb.i
	movups	(%rsi), %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB19_22
.LBB19_21:                              # %if.else.89
	movq	$0, 8(%r14)
	movw	$4704, (%r14)           # imm = 0x1260
	movl	$0, 4(%r14)
.LBB19_22:                              # %cleanup.99
	xorl	%ebp, %ebp
.LBB19_23:                              # %cleanup.99
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	sub_font_params, .Lfunc_end19-sub_font_params
	.cfi_endproc

	.globl	copy_font_name
	.align	16, 0x90
	.type	copy_font_name,@function
copy_font_name:                         # @copy_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 32
.Ltmp161:
	.cfi_offset %rbx, -32
.Ltmp162:
	.cfi_offset %r14, -24
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	4(%rsi), %eax
	cmpl	$47, %eax
	movl	$47, %ebp
	cmovbel	%eax, %ebp
	movq	8(%rsi), %rsi
	movl	%ebp, %r14d
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, (%rbx,%r14)
	movl	%ebp, 48(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	copy_font_name, .Lfunc_end20-copy_font_name
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI21_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.text
	.globl	build_gs_sub_font
	.align	16, 0x90
	.type	build_gs_sub_font,@function
build_gs_sub_font:                      # @build_gs_sub_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp167:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp170:
	.cfi_def_cfa_offset 144
.Ltmp171:
	.cfi_offset %rbx, -56
.Ltmp172:
	.cfi_offset %r12, -48
.Ltmp173:
	.cfi_offset %r13, -40
.Ltmp174:
	.cfi_offset %r14, -32
.Ltmp175:
	.cfi_offset %r15, -24
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	56(%r13), %ebp
	movq	8(%r13), %rdi
	leaq	64(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	24(%rsp), %r8
	callq	sub_font_params
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB21_9
# BB#1:                                 # %if.end
	movq	%rbx, (%rsp)            # 8-byte Spill
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	leaq	8(%r13), %rbx
	movzwl	(%r12), %esi
	andl	$12, %esi
	movq	%rbx, %rdi
	callq	ialloc_set_space
	movq	(%rbx), %rdi
	movl	$gs_font_procs_default, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r8d
	movq	%r15, %rsi
	callq	gs_font_alloc
	movq	%rax, %rbp
	movq	(%rbx), %rdi
	movl	$st_font_data, %esi
	movl	$.L.str.21, %edx
	callq	*72(%rdi)
	movq	%rax, %r15
	testq	%rbp, %rbp
	movl	$-25, %r14d
	je	.LBB21_5
# BB#2:                                 # %if.end
	testq	%r15, %r15
	je	.LBB21_5
# BB#3:                                 # %if.else
	movq	152(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB21_6
# BB#4:                                 # %if.end.21
	movq	8(%r13), %rcx
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	add_FID
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB21_5
.LBB21_6:                               # %if.end.37
	movq	144(%rsp), %r14
	movl	76(%r13), %edx
	movl	$10, %esi
	movq	%r15, %rdi
	callq	refset_null_new
	movups	(%r12), %xmm0
	movups	%xmm0, (%r15)
	movzwl	(%r15), %eax
	orl	76(%r13), %eax
	movw	%ax, (%r15)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movups	(%rcx), %xmm0
	movups	%xmm0, 16(%r15)
	movzwl	16(%r15), %eax
	orl	76(%r13), %eax
	movw	%ax, 16(%r15)
	movups	16(%rcx), %xmm0
	movups	%xmm0, 32(%r15)
	movzwl	32(%r15), %eax
	orl	76(%r13), %eax
	movw	%ax, 32(%r15)
	testq	%r14, %r14
	je	.LBB21_8
# BB#7:                                 # %if.then.65
	movups	(%r14), %xmm0
	movups	%xmm0, 48(%r15)
	movzwl	48(%r15), %eax
	orl	76(%r13), %eax
	movw	%ax, 48(%r15)
.LBB21_8:                               # %if.end.74
	movq	%r15, 72(%rbp)
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 128(%rbp)
	movq	80(%rsp), %rax
	movq	%rax, 96(%rbp)
	movups	64(%rsp), %xmm0
	movups	%xmm0, 80(%rbp)
	movq	56(%rsp), %rax
	movq	%rax, 120(%rbp)
	movups	40(%rsp), %xmm0
	movups	%xmm0, 104(%rbp)
	movaps	.LCPI21_0(%rip), %xmm0  # xmm0 = [0,1,0,0]
	movups	%xmm0, 132(%rbp)
	movl	$0, 148(%rbp)
	movq	$zfont_encode_char, 200(%rbp)
	movq	$zfont_glyph_name, 240(%rbp)
	movq	%rbx, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
	movl	28(%rsp), %eax
	cmpl	$47, %eax
	movl	$47, %ebx
	cmovbel	%eax, %ebx
	movq	%rbp, %rdi
	addq	$324, %rdi              # imm = 0x144
	movq	32(%rsp), %rsi
	movl	%ebx, %r14d
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 324(%rbp,%r14)
	movl	%ebx, 372(%rbp)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbp, (%rax)
	xorl	%r14d, %r14d
	jmp	.LBB21_9
.LBB21_5:                               # %if.then.24
	movq	(%rbx), %rdi
	movl	$.L.str.21, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	(%rbx), %rdi
	movl	$.L.str.20, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	%rbx, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	ialloc_set_space
.LBB21_9:                               # %cleanup
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	build_gs_sub_font, .Lfunc_end21-build_gs_sub_font
	.cfi_endproc

	.align	16, 0x90
	.type	zfont_glyph_name,@function
zfont_glyph_name:                       # @zfont_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp179:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp180:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp181:
	.cfi_def_cfa_offset 112
.Ltmp182:
	.cfi_offset %rbx, -40
.Ltmp183:
	.cfi_offset %r12, -32
.Ltmp184:
	.cfi_offset %r14, -24
.Ltmp185:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rcx
	movq	%rdi, %rbx
	testq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	je	.LBB22_3
# BB#1:                                 # %if.then
	leaq	(%rsp), %r15
	movl	$.L.str.32, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
	movq	16(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %r12
	movq	%r15, %rdi
	callq	strlen
	leaq	56(%rsp), %rcx
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB22_5
# BB#2:
	addq	$16, %rbx
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movq	16(%rbx), %rax
	addq	$16, %rbx
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	56(%rsp), %rdx
	movl	%ecx, %esi
	callq	names_index_ref
.LBB22_4:                               # %if.end.13
	movq	(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	56(%rsp), %rsi
	leaq	40(%rsp), %rdx
	callq	names_string_ref
	movq	48(%rsp), %rax
	movq	%rax, (%r14)
	movl	44(%rsp), %eax
	movl	%eax, 8(%r14)
	xorl	%eax, %eax
.LBB22_5:                               # %cleanup.17
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	zfont_glyph_name, .Lfunc_end22-zfont_glyph_name
	.cfi_endproc

	.globl	define_gs_font
	.align	16, 0x90
	.type	define_gs_font,@function
define_gs_font:                         # @define_gs_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpq	%rbx, 64(%rbx)
	jne	.LBB23_2
# BB#1:                                 # %land.lhs.true
	cmpq	$0, 24(%rbx)
	je	.LBB23_3
.LBB23_2:                               # %cond.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.LBB23_3:                               # %cond.true
	movq	8(%rdi), %rdi
	callq	gs_lib_ctx_get_interp_instance
	movq	168(%rax), %rdi
	movq	%rbx, %rsi
	popq	%rbx
	jmp	gs_definefont           # TAILCALL
.Lfunc_end23:
	.size	define_gs_font, .Lfunc_end23-define_gs_font
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"font_data"
	.size	.L.str, 10

	.type	st_font_data,@object    # @st_font_data
	.section	.rodata,"a",@progbits
	.globl	st_font_data
	.align	8
st_font_data:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	font_data_clear_marks
	.quad	font_data_enum_ptrs
	.quad	font_data_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_font_data, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	".notdef"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"j%ld"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"2.buildfont3"
	.size	.L.str.3, 13

	.type	zbfont_op_defs,@object  # @zbfont_op_defs
	.section	.rodata,"a",@progbits
	.globl	zbfont_op_defs
	.align	16
zbfont_op_defs:
	.quad	.L.str.3
	.quad	zbuildfont3
	.zero	16
	.size	zbfont_op_defs, 32

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"BuildChar"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BuildGlyph"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"CharStrings"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"PaintType"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"StrokeWidth"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"FontInfo"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GlyphNames2Unicode"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FontType"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Encoding"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"build_gs_font"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"WMode"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"BitmapWidths"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ExactSize"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"InBetweenSize"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"TransformedChar"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FID"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"buildfont(font)"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"buildfont(data)"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"CIDCount"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Metrics"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Metrics2"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FontMatrix"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"OrigFont"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"OrigFontName"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"OrigFontStyle"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"sub_font_params"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	".Alias"
	.size	.L.str.30, 7

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FontName"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%lu"
	.size	.L.str.32, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
