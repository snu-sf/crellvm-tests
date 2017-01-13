	.text
	.file	"gdevpdtf.bc"
	.align	16, 0x90
	.type	pdf_font_resource_enum_ptrs,@function
pdf_font_resource_enum_ptrs:            # @pdf_font_resource_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%r8, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movl	%ecx, %esi
	cmpl	$11, %ecx
	jbe	.LBB0_1
# BB#2:                                 # %sw.default
	addl	$-12, %ecx
	movl	$st_pdf_resource, %r9d
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %r8
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_pdf_resource+32(%rip) # TAILCALL
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_3:                                # %sw.bb
	movq	88(%rbx), %rax
	movq	%rax, (%r14)
	movl	96(%rbx), %eax
	movl	%eax, 8(%r14)
	movl	$ptr_string_procs, %eax
	jmp	.LBB0_38
.LBB0_4:                                # %sw.bb.4
	movq	104(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_6:                                # %sw.bb.6
	movq	112(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_7:                                # %sw.bb.8
	movq	128(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_8:                                # %sw.bb.10
	movq	136(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_9:                                # %sw.bb.12
	movq	144(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_10:                               # %sw.bb.14
	movq	152(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_11:                               # %sw.bb.16
	movl	72(%rbx), %ecx
	cmpl	$11, %ecx
	je	.LBB0_15
# BB#12:                                # %sw.bb.16
	cmpl	$9, %ecx
	jne	.LBB0_13
.LBB0_15:                               # %sw.bb.19
	movq	208(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_17:                               # %sw.bb.25
	movl	72(%rbx), %eax
	cmpq	$11, %rax
	jbe	.LBB0_39
# BB#18:                                # %sw.bb.25
	movl	%eax, %ecx
	cmpl	$54, %eax
	ja	.LBB0_36
# BB#19:                                # %sw.bb.25
	movabsq	$33781395251789824, %rax # imm = 0x78040000000000
	btq	%rcx, %rax
	jb	.LBB0_20
	jmp	.LBB0_36
.LBB0_24:                               # %sw.bb.51
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB0_36
# BB#25:                                # %sw.bb.51
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB0_26
# BB#40:                                # %sw.bb.53
	movq	272(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_28:                               # %sw.bb.63
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB0_36
# BB#29:                                # %sw.bb.63
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB0_30
# BB#41:                                # %sw.bb.65
	movq	296(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_32:                               # %sw.bb.77
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB0_36
# BB#33:                                # %sw.bb.77
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB0_34
# BB#42:                                # %sw.bb.79
	movq	288(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_39:                               # %sw.bb.25
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_20:                               # %sw.bb.40
	movq	200(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_13:                               # %sw.bb.16
	testl	%ecx, %ecx
	jne	.LBB0_16
# BB#14:                                # %sw.bb.17
	movq	176(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_16:                               # %sw.default.22
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	pdf_mark_glyph_names
	movq	192(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_26:                               # %sw.bb.51
	movl	$2560, %ecx             # imm = 0xA00
	btq	%rax, %rcx
	jae	.LBB0_36
# BB#27:                                # %sw.bb.57
	movq	184(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_30:                               # %sw.bb.63
	movl	$2560, %ecx             # imm = 0xA00
	btq	%rax, %rcx
	jae	.LBB0_36
# BB#31:                                # %sw.bb.71
	movq	232(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_34:                               # %sw.bb.77
	movl	$2560, %ecx             # imm = 0xA00
	btq	%rax, %rcx
	jae	.LBB0_36
# BB#35:                                # %sw.bb.85
	movq	224(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_23:                               # %sw.bb.44
	movq	216(%rbx), %rax
	movq	%rax, (%r14)
	jmp	.LBB0_37
.LBB0_21:                               # %sw.bb.27
	cmpl	$0, 236(%rbx)
	je	.LBB0_22
.LBB0_36:                               # %sw.default.89
	movq	$0, (%r14)
.LBB0_37:                               # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB0_38:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB0_22:                               # %cond.false
	movq	216(%rbx), %rax
	movq	%rax, (%r14)
	movl	224(%rbx), %eax
	movl	%eax, 8(%r14)
	movl	$ptr_const_string_procs, %eax
	jmp	.LBB0_38
.Lfunc_end0:
	.size	pdf_font_resource_enum_ptrs, .Lfunc_end0-pdf_font_resource_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_17
	.quad	.LBB0_24
	.quad	.LBB0_28
	.quad	.LBB0_32
.LJTI0_1:
	.quad	.LBB0_21
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_20
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_23
	.quad	.LBB0_36
	.quad	.LBB0_23

	.text
	.align	16, 0x90
	.type	pdf_font_resource_reloc_ptrs,@function
pdf_font_resource_reloc_ptrs:           # @pdf_font_resource_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_pdf_resource, %edx
	callq	*st_pdf_resource+40(%rip)
	movq	(%rbx), %rax
	leaq	88(%r14), %rdi
	movq	%rbx, %rsi
	callq	*8(%rax)
	movq	(%rbx), %rax
	movq	104(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 104(%r14)
	movq	(%rbx), %rax
	movq	112(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 112(%r14)
	movq	(%rbx), %rax
	movq	128(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 128(%r14)
	movq	(%rbx), %rax
	movq	136(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 136(%r14)
	movq	(%rbx), %rax
	movq	144(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 144(%r14)
	movq	(%rbx), %rax
	movq	152(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 152(%r14)
	movl	72(%r14), %eax
	cmpq	$54, %rax
	ja	.LBB1_9
# BB#1:                                 # %entry
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB1_2
# BB#7:                                 # %sw.bb.26
	movq	(%rbx), %rax
	movq	192(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 192(%r14)
	movq	(%rbx), %rax
	movq	200(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 200(%r14)
	movq	(%rbx), %rax
	movq	272(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 272(%r14)
	movq	(%rbx), %rax
	movq	296(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 296(%r14)
	movq	(%rbx), %rax
	movq	288(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 288(%r14)
	jmp	.LBB1_10
.LBB1_2:                                # %entry
	movl	$2560, %ecx             # imm = 0xA00
	btq	%rax, %rcx
	jae	.LBB1_3
# BB#8:                                 # %sw.bb.71
	movq	(%rbx), %rax
	movq	208(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 208(%r14)
	movq	(%rbx), %rax
	movq	216(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 216(%r14)
	movq	(%rbx), %rax
	movq	184(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 184(%r14)
	movq	(%rbx), %rax
	movq	232(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 232(%r14)
	movq	(%rbx), %rax
	movq	224(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 224(%r14)
	jmp	.LBB1_10
.LBB1_3:                                # %entry
	testq	%rax, %rax
	jne	.LBB1_9
# BB#4:                                 # %sw.bb
	cmpl	$0, 236(%r14)
	jne	.LBB1_6
# BB#5:                                 # %if.then
	movq	(%rbx), %rax
	leaq	216(%r14), %rdi
	movq	%rbx, %rsi
	callq	*16(%rax)
.LBB1_6:                                # %if.end
	movq	(%rbx), %rax
	movq	176(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 176(%r14)
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	movq	(%rbx), %rax
	movq	192(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 192(%r14)
	movq	(%rbx), %rax
	movq	200(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 200(%r14)
.LBB1_10:                               # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	pdf_font_resource_reloc_ptrs, .Lfunc_end1-pdf_font_resource_reloc_ptrs
	.cfi_endproc

	.globl	pdf_outline_fonts_alloc
	.align	16, 0x90
	.type	pdf_outline_fonts_alloc,@function
pdf_outline_fonts_alloc:                # @pdf_outline_fonts_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$st_pdf_outline_fonts, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$14, %esi
	movl	$st_pdf_standard_font_element, %edx
	movl	$.L.str.2, %ecx
	movq	%rbx, %rdi
	callq	*104(%rbx)
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB2_3
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB2_3
# BB#2:                                 # %if.end
	xorl	%esi, %esi
	movl	$448, %edx              # imm = 0x1C0
	movq	%r14, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	memset
	movq	%r14, (%r15)
	movq	%r15, %rax
.LBB2_3:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	pdf_outline_fonts_alloc, .Lfunc_end2-pdf_outline_fonts_alloc
	.cfi_endproc

	.globl	pdf_standard_fonts
	.align	16, 0x90
	.type	pdf_standard_fonts,@function
pdf_standard_fonts:                     # @pdf_standard_fonts
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	retq
.Lfunc_end3:
	.size	pdf_standard_fonts, .Lfunc_end3-pdf_standard_fonts
	.cfi_endproc

	.globl	pdf_clean_standard_fonts
	.align	16, 0x90
	.type	pdf_clean_standard_fonts,@function
pdf_clean_standard_fonts:               # @pdf_clean_standard_fonts
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	xorl	%esi, %esi
	movl	$448, %edx              # imm = 0x1C0
	jmp	memset                  # TAILCALL
.Lfunc_end4:
	.size	pdf_clean_standard_fonts, .Lfunc_end4-pdf_clean_standard_fonts
	.cfi_endproc

	.globl	font_resource_free
	.align	16, 0x90
	.type	font_resource_free,@function
font_resource_free:                     # @font_resource_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	96(%rbx), %edx
	testl	%edx, %edx
	je	.LBB5_4
# BB#1:                                 # %land.lhs.true
	movq	112(%rbx), %rax
	testq	%rax, %rax
	je	.LBB5_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$0, 20(%rax)
	jne	.LBB5_4
.LBB5_3:                                # %if.then
	movq	1728(%r14), %rdi
	movq	88(%rbx), %rsi
	movl	$.L.str.3, %ecx
	callq	*160(%rdi)
	movq	$0, 88(%rbx)
	movl	$0, 96(%rbx)
.LBB5_4:                                # %if.end
	movq	128(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_6
# BB#5:                                 # %if.then.12
	movq	1728(%r14), %rdi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
	movq	$0, 128(%rbx)
.LBB5_6:                                # %if.end.18
	movq	136(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_8
# BB#7:                                 # %if.then.20
	movq	1728(%r14), %rdi
	movl	$.L.str.5, %edx
	callq	*24(%rdi)
	movq	$0, 136(%rbx)
.LBB5_8:                                # %if.end.27
	cmpq	$0, 144(%rbx)
	je	.LBB5_10
# BB#9:                                 # %if.then.29
	movq	$0, 144(%rbx)
.LBB5_10:                               # %if.end.31
	movq	152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_12
# BB#11:                                # %if.then.33
	movq	1728(%r14), %rdi
	callq	gs_cmap_ToUnicode_free
	movq	$0, 152(%rbx)
.LBB5_12:                               # %if.end.37
	movl	72(%rbx), %eax
	cmpq	$54, %rax
	ja	.LBB5_16
# BB#13:                                # %if.end.37
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jae	.LBB5_14
# BB#20:                                # %sw.bb
	movq	192(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_22
# BB#21:                                # %if.then.39
	movq	1728(%r14), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 192(%rbx)
.LBB5_22:                               # %if.end.50
	movq	200(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_24
# BB#23:                                # %if.then.54
	movq	1728(%r14), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	$0, 200(%rbx)
.LBB5_24:                               # %if.end.65
	movq	272(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_30
# BB#25:                                # %if.then.69
	movq	%r14, %rdi
	callq	pdf_free_charproc_ownership
	movq	$0, 272(%rbx)
	jmp	.LBB5_30
.LBB5_14:                               # %if.end.37
	movl	$2560, %ecx             # imm = 0xA00
	btq	%rax, %rcx
	jae	.LBB5_15
# BB#26:                                # %sw.bb.82
	movq	224(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_28
# BB#27:                                # %if.then.85
	movq	1728(%r14), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movq	$0, 224(%rbx)
.LBB5_28:                               # %if.end.96
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_30
# BB#29:                                # %if.then.100
	movq	1728(%r14), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	$0, 184(%rbx)
	jmp	.LBB5_30
.LBB5_15:                               # %if.end.37
	testq	%rax, %rax
	je	.LBB5_30
.LBB5_16:                               # %sw.default
	movq	192(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_18
# BB#17:                                # %if.then.116
	movq	1728(%r14), %rdi
	movl	$.L.str.6, %edx
	callq	*24(%rdi)
	movq	$0, 192(%rbx)
.LBB5_18:                               # %if.end.127
	movq	200(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_30
# BB#19:                                # %if.then.132
	movq	1728(%r14), %rdi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	$0, 200(%rbx)
.LBB5_30:                               # %sw.epilog
	movq	64(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_32
# BB#31:                                # %if.then.145
	movq	1728(%r14), %rdi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	$0, 64(%rbx)
.LBB5_32:                               # %if.end.152
	cmpq	$0, 104(%rbx)
	je	.LBB5_34
# BB#33:                                # %if.then.154
	movq	$0, 104(%rbx)
.LBB5_34:                               # %if.end.156
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	font_resource_free, .Lfunc_end5-font_resource_free
	.cfi_endproc

	.globl	pdf_assign_font_object_id
	.align	16, 0x90
	.type	pdf_assign_font_object_id,@function
pdf_assign_font_object_id:              # @pdf_assign_font_object_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 32
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
.Ltmp26:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	pdf_resource_id
	xorl	%r15d, %r15d
	cmpq	$-1, %rax
	jne	.LBB6_6
# BB#1:                                 # %if.then
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_reserve_object_id
	movq	104(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_mark_font_descriptor_used
	testl	%eax, %eax
	js	.LBB6_5
# BB#2:                                 # %if.end
	cmpl	$0, 72(%rbx)
	jne	.LBB6_6
# BB#3:                                 # %if.then.5
	movq	176(%rbx), %rbx
	movq	%rbx, %rdi
	callq	pdf_resource_id
	cmpq	$-1, %rax
	jne	.LBB6_6
# BB#4:                                 # %if.then.8
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_reserve_object_id
	movq	104(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_mark_font_descriptor_used
	testl	%eax, %eax
	jns	.LBB6_6
.LBB6_5:                                # %cleanup.16.thread21
	movl	%eax, %r15d
.LBB6_6:                                # %return
	movl	%r15d, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	pdf_assign_font_object_id, .Lfunc_end6-pdf_assign_font_object_id
	.cfi_endproc

	.globl	pdf_font_id
	.align	16, 0x90
	.type	pdf_font_id,@function
pdf_font_id:                            # @pdf_font_id
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	pdf_resource_id         # TAILCALL
.Lfunc_end7:
	.size	pdf_font_id, .Lfunc_end7-pdf_font_id
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	256                     # 0x100
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.text
	.globl	font_resource_encoded_alloc
	.align	16, 0x90
	.type	font_resource_encoded_alloc,@function
font_resource_encoded_alloc:            # @font_resource_encoded_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp30:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp33:
	.cfi_def_cfa_offset 80
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %ebp
	movq	%rdx, %r13
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r12
	movq	1728(%r12), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$st_pdf_encoding_element, %edx
	movl	$.L.str.11, %ecx
	callq	*104(%rdi)
	movq	%rax, %rbx
	movq	1728(%r12), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$16, %edx
	movl	$.L.str.12, %ecx
	callq	*88(%rdi)
	movq	%rax, %r15
	testq	%rbx, %rbx
	je	.LBB8_2
# BB#1:                                 # %entry
	testq	%r15, %r15
	je	.LBB8_2
# BB#3:                                 # %if.end
	movq	%r14, (%rsp)
	leaq	16(%rsp), %rsi
	movl	$6, %edx
	movl	$256, %r9d              # imm = 0x100
	movl	%ebp, %r8d
	movq	%r12, %rdi
	movq	%r13, %rcx
	callq	font_resource_alloc
	testl	%eax, %eax
	js	.LBB8_2
# BB#4:                                 # %if.end.25
	movq	16(%rsp), %rbp
	movaps	.LCPI8_0(%rip), %xmm0   # xmm0 = [256,4294967295,4294967295,4294967295]
	movups	%xmm0, 176(%rbp)
	movl	$-1, 208(%rbp)
	xorl	%esi, %esi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r15, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rbx, %rdi
	callq	memset
	movl	$224, %eax
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$2147483647, -224(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -192(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -160(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -128(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -96(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -64(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, -32(%rbx,%rax) # imm = 0x7FFFFFFF
	movq	$2147483647, (%rbx,%rax) # imm = 0x7FFFFFFF
	addq	$256, %rax              # imm = 0x100
	cmpq	$8416, %rax             # imm = 0x20E0
	jne	.LBB8_5
# BB#6:                                 # %for.end
	movq	%rbx, 192(%rbp)
	movq	%r15, 200(%rbp)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rbp, (%rax)
	xorl	%eax, %eax
	jmp	.LBB8_7
.LBB8_2:                                # %if.then
	movq	1728(%r12), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movq	1728(%r12), %rdi
	movl	$.L.str.11, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movl	$-25, %eax
.LBB8_7:                                # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	font_resource_encoded_alloc, .Lfunc_end8-font_resource_encoded_alloc
	.cfi_endproc

	.globl	pdf_resize_resource_arrays
	.align	16, 0x90
	.type	pdf_resize_resource_arrays,@function
pdf_resize_resource_arrays:             # @pdf_resize_resource_arrays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 80
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r12
	movl	120(%r12), %r14d
	xorl	%r13d, %r13d
	cmpl	%ebx, %r14d
	ja	.LBB9_21
# BB#1:                                 # %if.end
	movq	1728(%rdi), %r15
	cmpq	$0, 128(%r12)
	je	.LBB9_4
# BB#2:                                 # %if.then.2
	movl	$8, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
	movq	%rbx, %rcx
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB9_21
# BB#3:                                 # %pdf_resize_array.exit
	movslq	%r14d, %rbx
	leaq	(%rbp,%rbx,8), %rdi
	shlq	$3, %rbx
	movl	%ecx, %eax
	subl	%r14d, %eax
	shll	$3, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	movq	%rcx, %r14
	callq	memset
	movq	128(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	128(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%r14, %rbx
	movq	%rbp, 128(%r12)
	movl	120(%r12), %r14d
.LBB9_4:                                # %if.end.8
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %ebx
	sarl	$3, %ebx
	movl	$1, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB9_21
# BB#5:                                 # %if.end.15
	addl	$7, %r14d
	shrl	$3, %r14d
	movl	%ebx, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%r14d, %ebx
	movq	%rbp, %rdi
	addq	%rbx, %rdi
	subl	%r14d, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	136(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	136(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%rbp, 136(%r12)
	movl	72(%r12), %eax
	movl	%eax, %ecx
	orl	$2, %ecx
	cmpl	$11, %ecx
	movq	16(%rsp), %rbx          # 8-byte Reload
	jne	.LBB9_16
# BB#6:                                 # %if.then.19
	cmpq	$0, 216(%r12)
	je	.LBB9_9
# BB#7:                                 # %if.then.21
	movl	120(%r12), %r14d
	leal	(%rbx,%rbx), %ebp
	movl	$8, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	*88(%r15)
	testq	%rax, %rax
	je	.LBB9_21
# BB#8:                                 # %pdf_resize_array.exit78
	leal	(%r14,%r14), %ecx
	shll	$4, %r14d
	movslq	%r14d, %rbx
	movq	%rax, %rdi
	addq	%rbx, %rdi
	subl	%ecx, %ebp
	shll	$3, %ebp
	movslq	%ebp, %rdx
	xorl	%esi, %esi
	movq	%rax, %rbp
	callq	memset
	movq	216(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	216(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%rbp, 216(%r12)
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB9_9:                                # %if.end.31
	cmpq	$0, 208(%r12)
	je	.LBB9_12
# BB#10:                                # %if.then.35
	movslq	120(%r12), %r14
	movl	$8, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB9_21
# BB#11:                                # %pdf_resize_array.exit93
	leaq	(%rbp,%r14,8), %rdi
	movq	%rbx, %rax
	movq	%r14, %rbx
	shlq	$3, %rbx
	subl	%r14d, %eax
	shll	$3, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	208(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	208(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%rbp, 208(%r12)
	movq	16(%rsp), %rbx          # 8-byte Reload
.LBB9_12:                               # %if.end.45
	movl	72(%r12), %eax
	cmpl	$11, %eax
	jne	.LBB9_16
# BB#13:                                # %if.then.48
	cmpq	$0, 184(%r12)
	je	.LBB9_17
# BB#14:                                # %if.then.52
	movslq	120(%r12), %r14
	movl	$2, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB9_21
# BB#15:                                # %if.end.60
	leaq	(%rbp,%r14,2), %rdi
	movq	%rbx, %rax
	movq	%r14, %rbx
	addq	%rbx, %rbx
	subl	%r14d, %eax
	addl	%eax, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	184(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	184(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%rbp, 184(%r12)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 192(%r12)
	movl	72(%r12), %eax
	movq	%rcx, %rbx
.LBB9_16:                               # %if.end.64
	orl	$2, %eax
	cmpl	$11, %eax
	jne	.LBB9_20
.LBB9_17:                               # %if.then.70
	cmpq	$0, 224(%r12)
	je	.LBB9_20
# BB#18:                                # %if.then.74
	movl	120(%r12), %r14d
	movl	$1, %edx
	movl	$.L.str.26, %ecx
	movq	%r15, %rdi
	movl	12(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	callq	*88(%r15)
	movq	%rbx, %rcx
	testq	%rax, %rax
	je	.LBB9_21
# BB#19:                                # %pdf_resize_array.exit121
	addl	$7, %r14d
	shrl	$3, %r14d
	movl	%r14d, %ebx
	movq	%rax, %rdi
	addq	%rbx, %rdi
	subl	%r14d, %ebp
	movslq	%ebp, %rdx
	xorl	%esi, %esi
	movq	%rcx, %r14
	movq	%rax, %rbp
	callq	memset
	movq	224(%r12), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movq	224(%r12), %rsi
	movl	$.L.str.26, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	%r14, %rbx
	movq	%rbp, 224(%r12)
.LBB9_20:                               # %if.end.88
	movl	%ebx, 120(%r12)
	xorl	%r13d, %r13d
.LBB9_21:                               # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pdf_resize_resource_arrays, .Lfunc_end9-pdf_resize_resource_arrays
	.cfi_endproc

	.globl	pdf_font_resource_font
	.align	16, 0x90
	.type	pdf_font_resource_font,@function
pdf_font_resource_font:                 # @pdf_font_resource_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	112(%rdi), %rax
	testq	%rax, %rax
	je	.LBB10_1
# BB#3:                                 # %if.then
	movq	%rax, %rdi
	jmp	pdf_base_font_font      # TAILCALL
.LBB10_1:                               # %if.end
	movq	104(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB10_2
# BB#4:                                 # %if.end.4
	jmp	pdf_font_descriptor_font # TAILCALL
.LBB10_2:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	pdf_font_resource_font, .Lfunc_end10-pdf_font_resource_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4608533498688228557     # double 1.3
	.text
	.globl	pdf_font_embed_status
	.align	16, 0x90
	.type	pdf_font_embed_status,@function
pdf_font_embed_status:                  # @pdf_font_embed_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp59:
	.cfi_def_cfa_offset 336
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r13
	leaq	324(%r14), %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	372(%r14), %r15d
	movl	%r15d, %esi
	callq	pdf_find_standard_font_name
	movl	%eax, 28(%rsp)          # 4-byte Spill
	leaq	40(%rsp), %rbx
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%rbx, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$16384, %edx            # imm = 0x4000
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	*184(%r14)
	testl	%eax, %eax
	jne	.LBB11_6
# BB#1:                                 # %land.lhs.true
	testb	$64, 41(%rsp)
	je	.LBB11_6
# BB#2:                                 # %if.then
	movl	192(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then
	andl	$512, %eax              # imm = 0x200
	je	.LBB11_6
.LBB11_4:                               # %land.lhs.true.9
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%r15d, %esi
	callq	IsInWhiteList
	testl	%eax, %eax
	je	.LBB11_5
.LBB11_6:                               # %if.end.28
	testq	%rbp, %rbp
	je	.LBB11_8
# BB#7:                                 # %if.then.30
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rbp)
.LBB11_8:                               # %if.end.31
	cmpl	$0, 9560(%r13)
	je	.LBB11_10
# BB#9:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_10:                              # %lor.lhs.false.33
	cmpl	$0, 9564(%r13)
	je	.LBB11_12
# BB#11:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_12:                              # %if.end.37
	xorl	%ebx, %ebx
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	js	.LBB11_27
# BB#13:                                # %if.end.37
	movsd	.LCPI11_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	9368(%r13), %xmm0
	jbe	.LBB11_27
# BB#14:                                # %land.lhs.true.43
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	%r12d, %r8d
	callq	embed_as_standard
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB11_27
# BB#15:                                # %if.then.46
	xorl	%r12d, %r12d
	cmpl	$0, 9524(%r13)
	je	.LBB11_53
# BB#16:                                # %land.lhs.true.48
	movl	$gx_extendeg_glyph_name_separator, %edi
	callq	strlen
	movq	%rax, %r15
	movq	%r15, 32(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	224(%rsp), %rbp
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	psf_enumerate_list_begin
	movq	$2147483647, 216(%rsp)  # imm = 0x7FFFFFFF
	leaq	216(%rsp), %rsi
	movq	%rbp, %rdi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	je	.LBB11_25
# BB#17:                                # %for.body.lr.ph.i
	movslq	%r15d, %rbp
	leaq	200(%rsp), %rdx
.LBB11_19:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_23 Depth 2
	movq	216(%rsp), %rsi
	movq	%r14, %rdi
	callq	*240(%r14)
	testl	%eax, %eax
	js	.LBB11_26
# BB#20:                                # %if.end.i
                                        #   in Loop: Header=BB11_19 Depth=1
	movl	208(%rsp), %eax
	subl	%r15d, %eax
	testl	%eax, %eax
	jle	.LBB11_18
# BB#21:                                # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB11_19 Depth=1
	movq	200(%rsp), %r13
	movslq	%eax, %r15
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB11_23:                              # %for.body.9.i
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r13,%rbx), %rsi
	movl	$gx_extendeg_glyph_name_separator, %edi
	movq	%rbp, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB11_24
# BB#22:                                # %for.cond.6.i
                                        #   in Loop: Header=BB11_23 Depth=2
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB11_23
.LBB11_18:                              # %for.cond.loopexit.i
                                        #   in Loop: Header=BB11_19 Depth=1
	leaq	224(%rsp), %rdi
	leaq	216(%rsp), %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	movq	32(%rsp), %r15          # 8-byte Reload
	leaq	200(%rsp), %rdx
	jne	.LBB11_19
.LBB11_25:                              # %has_extension_glyphs.exit.thread
	leaq	224(%rsp), %rdi
	callq	psf_enumerate_glyphs_reset
	jmp	.LBB11_53
.LBB11_27:                              # %if.end.54
	cmpl	$0, 9304(%r13)
	je	.LBB11_28
# BB#31:                                # %for.body.lr.ph.i.53
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB11_32:                              # %for.body.i.57
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	9296(%r13), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdi
	movl	8(%rcx,%rax), %esi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB11_33
# BB#29:                                # %for.cond.i
                                        #   in Loop: Header=BB11_32 Depth=1
	incl	%ebp
	cmpl	9304(%r13), %ebp
	jb	.LBB11_32
# BB#30:
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB11_36
.LBB11_5:                               # %if.then.12
	movslq	372(%r14), %rax
	cmpq	$47, %rax
	movl	$47, %ebx
	cmovbeq	%rax, %rbx
	leaq	224(%rsp), %r14
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 224(%rsp,%rbx)
	movq	1728(%r13), %rbx
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	1728(%r13), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	errprintf
	jmp	.LBB11_52
.LBB11_28:
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB11_36
.LBB11_33:                              # %lor.lhs.false.57
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	js	.LBB11_52
# BB#34:                                # %land.lhs.true.60
	testl	%ebx, %ebx
	jne	.LBB11_36
# BB#35:                                # %cond.false.64
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	embed_as_standard
	xorl	%r12d, %r12d
	movl	$1, %ebx
	testl	%eax, %eax
	jne	.LBB11_53
.LBB11_36:                              # %if.then.67
	cmpl	$0, 9316(%r13)
	je	.LBB11_38
# BB#37:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_38:                              # %lor.lhs.false.70
	cmpl	$0, 128(%r14)
	je	.LBB11_39
# BB#40:                                # %if.end.i.60
	movslq	444(%r14), %rax
	cmpq	$5, %rax
	ja	.LBB11_41
# BB#42:                                # %font_is_symbolic.exit
	andq	$-2, %rax
	cmpq	$2, %rax
	jne	.LBB11_44
# BB#43:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_24:                              # %has_extension_glyphs.exit.thread98
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_39:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_41:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_44:                              # %lor.lhs.false.73
	cmpl	$0, 9288(%r13)
	je	.LBB11_49
# BB#45:                                # %for.body.lr.ph.i.65
	xorl	%ebp, %ebp
.LBB11_47:                              # %for.body.i.75
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	9280(%r13), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rdi
	movl	8(%rcx,%rax), %esi
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB11_48
# BB#46:                                # %for.cond.i.67
                                        #   in Loop: Header=BB11_47 Depth=1
	incl	%ebp
	cmpl	9288(%r13), %ebp
	jb	.LBB11_47
.LBB11_49:                              # %if.end.79
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	js	.LBB11_52
# BB#50:                                # %if.end.79
	testl	%ebx, %ebx
	jne	.LBB11_52
# BB#51:                                # %cond.false.86
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	28(%rsp), %edx          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	embed_as_standard
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.LBB11_53
.LBB11_52:                              # %if.end.90
	movl	$1, %r12d
.LBB11_53:                              # %cleanup
	movl	%r12d, %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_48:
	movl	$2, %r12d
	jmp	.LBB11_53
.LBB11_26:                              # %has_extension_glyphs.exit
	movl	$2, %r12d
	jmp	.LBB11_53
.Lfunc_end11:
	.size	pdf_font_embed_status, .Lfunc_end11-pdf_font_embed_status
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_find_standard_font_name,@function
pdf_find_standard_font_name:            # @pdf_find_standard_font_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 48
.Ltmp71:
	.cfi_offset %rbx, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r15
	movl	%ebp, %r14d
	xorl	%ebx, %ebx
	leal	-6(%rbp), %eax
	cmpl	$15, %eax
	ja	.LBB12_17
# BB#1:                                 # %entry
	jmpq	*.LJTI12_0(,%rax,8)
.LBB12_12:                              # %land.lhs.true.8
	movl	$.L.str.37, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+128, %ecx
	jmp	.LBB12_3
.LBB12_2:                               # %land.lhs.true
	movl	$.L.str.29, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$standard_font_info, %ecx
	movl	$-1, %ebp
	jmp	.LBB12_3
.LBB12_8:                               # %land.lhs.true.4
	movl	$.L.str.33, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+64, %ecx
	jmp	.LBB12_3
.LBB12_14:                              # %land.lhs.true.10
	movl	$.L.str.39, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+160, %ecx
	jmp	.LBB12_3
.LBB12_13:                              # %land.lhs.true.9
	movl	$.L.str.38, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+144, %ecx
	jmp	.LBB12_3
.LBB12_15:                              # %land.lhs.true.1
	movl	$.L.str.30, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$standard_font_info+16, %ecx
	testl	%eax, %eax
	je	.LBB12_4
# BB#16:                                # %land.lhs.true.11
	movl	$.L.str.40, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movb	$1, %bl
	movl	$standard_font_info+176, %ecx
	testl	%eax, %eax
	je	.LBB12_4
.LBB12_17:                              # %for.inc.11
	cmpl	$16, %ebp
	jne	.LBB12_19
# BB#18:                                # %land.lhs.true.12
	movl	$.L.str.41, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$standard_font_info+192, %ecx
	testl	%eax, %eax
	je	.LBB12_4
.LBB12_19:                              # %for.inc.12
	movl	$-1, %ebp
	testb	%bl, %bl
	je	.LBB12_5
# BB#20:                                # %land.lhs.true.13
	movl	$.L.str.42, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$standard_font_info+208, %ecx
.LBB12_3:                               # %land.lhs.true
	testl	%eax, %eax
	jne	.LBB12_5
.LBB12_4:                               # %if.then
	movl	$standard_font_info, %eax
	subq	%rax, %rcx
	shrq	$4, %rcx
	movl	%ecx, %ebp
.LBB12_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_9:                               # %land.lhs.true.5
	movl	$.L.str.34, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+80, %ecx
	jmp	.LBB12_3
.LBB12_6:                               # %land.lhs.true.2
	movl	$.L.str.31, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+32, %ecx
	jmp	.LBB12_3
.LBB12_10:                              # %land.lhs.true.6
	movl	$.L.str.35, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+96, %ecx
	jmp	.LBB12_3
.LBB12_7:                               # %land.lhs.true.3
	movl	$.L.str.32, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+48, %ecx
	jmp	.LBB12_3
.LBB12_11:                              # %land.lhs.true.7
	movl	$.L.str.36, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcmp
	movl	$-1, %ebp
	movl	$standard_font_info+112, %ecx
	jmp	.LBB12_3
.Lfunc_end12:
	.size	pdf_find_standard_font_name, .Lfunc_end12-pdf_find_standard_font_name
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_12
	.quad	.LBB12_2
	.quad	.LBB12_17
	.quad	.LBB12_8
	.quad	.LBB12_14
	.quad	.LBB12_13
	.quad	.LBB12_15
	.quad	.LBB12_17
	.quad	.LBB12_9
	.quad	.LBB12_6
	.quad	.LBB12_17
	.quad	.LBB12_10
	.quad	.LBB12_17
	.quad	.LBB12_7
	.quad	.LBB12_17
	.quad	.LBB12_11

	.text
	.align	16, 0x90
	.type	embed_as_standard,@function
embed_as_standard:                      # @embed_as_standard
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp77:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp78:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 80
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
.Ltmp87:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movl	$1, %r14d
	cmpl	$0, 32(%rbp)
	jne	.LBB13_13
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	find_std_appearance
	cmpl	%ebx, %eax
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	je	.LBB13_13
# BB#2:                                 # %if.end.2
	movq	24(%rbp), %rax
	movq	(%rax), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB13_13
# BB#3:                                 # %for.body.lr.ph.i
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	movl	$1, %r14d
	.align	16, 0x90
.LBB13_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 128(%rbx)
	je	.LBB13_10
# BB#5:                                 # %lor.lhs.false.i
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpl	$0, 32(%rbx)
	je	.LBB13_10
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB13_4 Depth=1
	cmpq	$16777215, 408(%rbx)    # imm = 0xFFFFFF
	ja	.LBB13_10
# BB#7:                                 # %if.then.3.i
                                        #   in Loop: Header=BB13_4 Depth=1
	leaq	272(%rbx), %rdi
	movl	320(%rbx), %esi
	callq	pdf_find_standard_font_name
	testl	%eax, %eax
	js	.LBB13_10
# BB#8:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movslq	%eax, %rcx
	movq	26592(%r13), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx), %rdx
	shlq	$5, %rcx
	cmpq	$0, (%rdx,%rcx)
	jne	.LBB13_10
# BB#9:                                 # %if.then.8.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	56(%rbx), %rcx
	movl	$1, %edx
	movq	%r13, %rdi
	leaq	16(%rsp), %rsi
	movq	%rbx, %r8
	movl	%eax, %r9d
	callq	pdf_font_std_alloc
	testl	%eax, %eax
	movl	12(%rsp), %eax          # 4-byte Reload
	cmovnsl	%r14d, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB13_10:                              # %cleanup.21.i
                                        #   in Loop: Header=BB13_4 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_4
# BB#11:                                # %scan_for_standard_fonts.exit
	xorl	%r14d, %r14d
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB13_13
# BB#12:                                # %if.end.6
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	find_std_appearance
	cmpl	8(%rsp), %eax           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %r14d
.LBB13_13:                              # %return
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	embed_as_standard, .Lfunc_end13-embed_as_standard
	.cfi_endproc

	.globl	pdf_compute_BaseFont
	.align	16, 0x90
	.type	pdf_compute_BaseFont,@function
pdf_compute_BaseFont:                   # @pdf_compute_BaseFont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp89:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp90:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp91:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp92:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 96
.Ltmp95:
	.cfi_offset %rbx, -56
.Ltmp96:
	.cfi_offset %r12, -48
.Ltmp97:
	.cfi_offset %r13, -40
.Ltmp98:
	.cfi_offset %r14, -32
.Ltmp99:
	.cfi_offset %r15, -24
.Ltmp100:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	%rdi, %r15
	cmpl	$0, 72(%r12)
	je	.LBB14_1
# BB#3:                                 # %if.else
	movq	104(%r12), %rdi
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB14_59
# BB#4:                                 # %if.else.5
	callq	pdf_font_descriptor_base_name
	movups	(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
	movq	%r12, 8(%rsp)           # 8-byte Spill
	jmp	.LBB14_5
.LBB14_1:                               # %if.then
	movq	176(%r12), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rdi
	movl	%r14d, %edx
	callq	pdf_compute_BaseFont
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB14_59
# BB#2:                                 # %if.end
	movq	8(%rsp), %rax           # 8-byte Reload
	movups	88(%rax), %xmm0
	movaps	%xmm0, 16(%rsp)
.LBB14_5:                               # %if.end.9
	movl	24(%rsp), %r13d
	movq	1728(%r15), %rdi
	movl	$.L.str.14, %edx
	movl	%r13d, %esi
	callq	*136(%rdi)
	movq	%rax, %rbp
	movl	$-25, %ebx
	testq	%rbp, %rbp
	je	.LBB14_59
# BB#6:                                 # %if.end.15
	movq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	movl	72(%r12), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB14_7
# BB#26:                                # %sw.bb
	cmpl	$0, 216(%r12)
	je	.LBB14_27
# BB#28:                                # %land.lhs.true
	movq	104(%r12), %rdi
	callq	pdf_font_descriptor_embedding
	movl	%r14d, %ebx
	testl	%eax, %eax
	jne	.LBB14_17
# BB#29:                                # %for.cond.preheader
	testl	%r13d, %r13d
	je	.LBB14_30
# BB#31:                                # %for.body.preheader
	xorl	%ecx, %ecx
	testb	$1, %r13b
	je	.LBB14_34
# BB#32:                                # %for.body.prol
	movl	$1, %ecx
	movzbl	(%rbp), %eax
	cmpl	$32, %eax
	jne	.LBB14_34
# BB#33:                                # %if.then.29.prol
	movb	$95, (%rbp)
	movl	$1, %ecx
.LBB14_34:                              # %for.body.preheader.split
	cmpl	$1, %r13d
	je	.LBB14_17
# BB#35:                                # %for.body.preheader.split.split
	movl	%r13d, %eax
	subl	%ecx, %eax
	leaq	1(%rcx,%rbp), %rcx
	.align	16, 0x90
.LBB14_36:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %edx
	cmpl	$32, %edx
	jne	.LBB14_38
# BB#37:                                # %if.then.29
                                        #   in Loop: Header=BB14_36 Depth=1
	movb	$95, -1(%rcx)
.LBB14_38:                              # %for.inc
                                        #   in Loop: Header=BB14_36 Depth=1
	movzbl	(%rcx), %edx
	cmpl	$32, %edx
	jne	.LBB14_40
# BB#39:                                # %if.then.29.1
                                        #   in Loop: Header=BB14_36 Depth=1
	movb	$95, (%rcx)
.LBB14_40:                              # %for.inc.1
                                        #   in Loop: Header=BB14_36 Depth=1
	addq	$2, %rcx
	addl	$-2, %eax
	jne	.LBB14_36
	jmp	.LBB14_17
.LBB14_7:                               # %if.end.15
	cmpl	$42, %eax
	je	.LBB14_10
# BB#8:                                 # %if.end.15
	cmpl	$11, %eax
	jne	.LBB14_9
.LBB14_10:                              # %for.cond.36.preheader
	movl	%r14d, %ebx
	xorl	%r14d, %r14d
	testl	%r13d, %r13d
	movl	$0, %edx
	je	.LBB14_16
# BB#11:                                # %for.body.39.preheader
	xorl	%ecx, %ecx
	testb	$1, %r13b
	movl	$0, %r14d
	je	.LBB14_14
# BB#12:                                # %for.body.39.prol
	movzbl	(%rbp), %eax
	xorl	%r14d, %r14d
	movl	$1, %ecx
	cmpl	$32, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.45.prol
	movb	%al, (%rbp)
	movl	$1, %r14d
	movl	$1, %ecx
.LBB14_14:                              # %for.body.39.preheader.split
	cmpl	$1, %r13d
	je	.LBB14_15
# BB#41:                                # %for.body.39.preheader.split.split
	movl	%r13d, %eax
	subl	%ecx, %eax
	leaq	1(%rcx,%rbp), %rcx
	.align	16, 0x90
.LBB14_42:                              # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rcx), %edx
	cmpl	$32, %edx
	je	.LBB14_44
# BB#43:                                # %if.then.45
                                        #   in Loop: Header=BB14_42 Depth=1
	movl	%r14d, %esi
	incl	%r14d
	movb	%dl, (%rbp,%rsi)
.LBB14_44:                              # %for.inc.52
                                        #   in Loop: Header=BB14_42 Depth=1
	movzbl	(%rcx), %edx
	cmpl	$32, %edx
	je	.LBB14_46
# BB#45:                                # %if.then.45.1
                                        #   in Loop: Header=BB14_42 Depth=1
	movl	%r14d, %esi
	incl	%r14d
	movb	%dl, (%rbp,%rsi)
.LBB14_46:                              # %for.inc.52.1
                                        #   in Loop: Header=BB14_42 Depth=1
	addq	$2, %rcx
	addl	$-2, %eax
	jne	.LBB14_42
.LBB14_15:
	movl	%r13d, %edx
.LBB14_16:                              # %for.end.54
	movq	1728(%r15), %rdi
	movl	$.L.str.14, %r8d
	movq	%rbp, %rsi
	movl	%r14d, %ecx
	callq	*152(%rdi)
	movq	%rax, %rbp
	movl	%r14d, %r13d
	jmp	.LBB14_17
.LBB14_27:
	movl	%r14d, %ebx
	jmp	.LBB14_17
.LBB14_9:
	movl	%r14d, %ebx
	jmp	.LBB14_17
.LBB14_30:
	xorl	%r13d, %r13d
.LBB14_17:                              # %sw.epilog
	leaq	88(%r12), %r14
	movl	96(%r12), %edx
	testl	%edx, %edx
	je	.LBB14_19
# BB#18:                                # %if.then.64
	movq	1728(%r15), %rdi
	movq	(%r14), %rsi
	movl	$.L.str.15, %ecx
	callq	*160(%rdi)
.LBB14_19:                              # %if.end.72
	movq	%rbp, 16(%rsp)
	movq	%rbp, 88(%r12)
	movl	%r13d, 24(%rsp)
	movl	%r13d, 96(%r12)
	testl	%ebx, %ebx
	je	.LBB14_56
# BB#20:                                # %land.lhs.true.80
	movq	104(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB14_56
# BB#21:                                # %land.lhs.true.84
	callq	pdf_font_descriptor_is_subset
	testl	%eax, %eax
	je	.LBB14_56
# BB#22:                                # %land.lhs.true.88
	movq	%rbp, %rdi
	movl	%r13d, %esi
	callq	pdf_has_subset_prefix
	testl	%eax, %eax
	jne	.LBB14_56
# BB#23:                                # %land.lhs.true.93
	movq	104(%r12), %rdi
	callq	pdf_font_descriptor_embedding
	testl	%eax, %eax
	je	.LBB14_56
# BB#24:                                # %if.then.97
	movq	104(%r12), %rdi
	testq	%rdi, %rdi
	movq	136(%r12), %rbp
	movl	120(%r12), %ebx
	je	.LBB14_47
# BB#25:                                # %if.then.101
	callq	pdf_fontfile_hash
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	movq	%rax, %r8
	jmp	.LBB14_48
.LBB14_47:                              # %if.else.105
	leaq	16(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
.LBB14_48:                              # %if.end.109
	callq	pdf_add_subset_prefix
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB14_59
# BB#49:                                # %if.end.113
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%r14)
	movq	112(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB14_51
# BB#50:                                # %if.then.i.71
	xorl	%esi, %esi
	callq	pdf_base_font_font
	jmp	.LBB14_52
.LBB14_51:                              # %if.end.i.74
	movq	104(%r12), %rdi
	xorl	%esi, %esi
	callq	pdf_font_descriptor_font
.LBB14_52:                              # %pdf_font_resource_font.exit78
	movabsq	$9223372036854775807, %rcx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rcx, 408(%rax)
	movq	112(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB14_54
# BB#53:                                # %if.then.i
	xorl	%esi, %esi
	callq	pdf_base_font_font
	jmp	.LBB14_55
.LBB14_54:                              # %if.end.i
	movq	104(%r12), %rdi
	xorl	%esi, %esi
	callq	pdf_font_descriptor_font
.LBB14_55:                              # %cleanup.118.thread
	movq	$0, 416(%rax)
.LBB14_56:                              # %if.end.121
	xorl	%ebx, %ebx
	cmpl	$0, 72(%r12)
	je	.LBB14_59
# BB#57:                                # %land.lhs.true.125
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	104(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB14_59
# BB#58:                                # %if.then.128
	callq	pdf_font_descriptor_name
	movaps	16(%rsp), %xmm0
	movups	%xmm0, (%rax)
.LBB14_59:                              # %cleanup.132
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_compute_BaseFont, .Lfunc_end14-pdf_compute_BaseFont
	.cfi_endproc

	.globl	pdf_font_type0_alloc
	.align	16, 0x90
	.type	pdf_font_type0_alloc,@function
pdf_font_type0_alloc:                   # @pdf_font_type0_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 48
.Ltmp106:
	.cfi_offset %rbx, -40
.Ltmp107:
	.cfi_offset %r12, -32
.Ltmp108:
	.cfi_offset %r14, -24
.Ltmp109:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	$pdf_write_contents_type0, (%rsp)
	movl	$6, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, %rcx
	callq	font_resource_alloc
	testl	%eax, %eax
	js	.LBB15_1
# BB#2:                                 # %if.then
	movq	(%rbx), %rax
	movq	%r12, 176(%rax)
	movq	(%rbx), %rax
	movups	(%r14), %xmm0
	movups	%xmm0, 216(%rax)
	movq	(%rbx), %rsi
	movl	$0, 232(%rsi)
	xorl	%edx, %edx
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	pdf_compute_BaseFont    # TAILCALL
.LBB15_1:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	pdf_font_type0_alloc, .Lfunc_end15-pdf_font_type0_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	font_resource_alloc,@function
font_resource_alloc:                    # @font_resource_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp113:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp114:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp116:
	.cfi_def_cfa_offset 128
.Ltmp117:
	.cfi_offset %rbx, -56
.Ltmp118:
	.cfi_offset %r12, -48
.Ltmp119:
	.cfi_offset %r13, -40
.Ltmp120:
	.cfi_offset %r14, -32
.Ltmp121:
	.cfi_offset %r15, -24
.Ltmp122:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %r14d
	movq	%rcx, %rbp
	movq	%rsi, %r13
	movq	1728(%rdi), %r15
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	movl	$0, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	je	.LBB16_9
# BB#1:                                 # %if.then
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	%r14d, %r13d
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	andl	$-3, %r13d
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %r14d
	sarl	$3, %r14d
	xorl	%eax, %eax
	cmpl	$9, %r13d
	je	.LBB16_3
# BB#2:                                 # %if.then.3
	movl	$8, %edx
	movl	$.L.str.27, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	*88(%r15)
.LBB16_3:                               # %if.end
	movl	$.L.str.28, %edx
	movq	%r15, %rdi
	movq	%rax, %rbp
	movl	%r14d, %esi
	callq	*64(%r15)
	movq	%rbp, %rdx
	movq	%rax, %rbp
	cmpl	$9, %r13d
	setne	%al
	testq	%rdx, %rdx
	sete	%cl
	movl	$-25, %r12d
	testb	%al, %cl
	jne	.LBB16_4
# BB#5:                                 # %if.end
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB16_11
# BB#6:                                 # %if.end.10
	cmpl	$9, %r13d
	je	.LBB16_8
# BB#7:                                 # %if.then.12
	movslq	%ebx, %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	memset
.LBB16_8:                               # %cleanup.thread
	movl	%r14d, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	callq	memset
	movq	32(%rsp), %r13          # 8-byte Reload
	movl	28(%rsp), %r14d         # 4-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB16_9:                               # %if.end.17
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	leaq	64(%rsp), %rcx
	movq	$-1, %r8
	movl	%edx, %esi
	movq	%rbp, %rdx
	callq	pdf_alloc_resource
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB16_10
# BB#13:                                # %if.end.22
	movq	128(%rsp), %r15
	movq	64(%rsp), %rdi
	addq	$72, %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$232, %edx
	callq	memset
	movq	64(%rsp), %rax
	movl	%r14d, 72(%rax)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 120(%rax)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 128(%rax)
	movq	64(%rsp), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 136(%rax)
	movq	64(%rsp), %rax
	movq	%r15, 80(%rax)
	movq	64(%rsp), %rax
	movq	$0, 144(%rax)
	movq	64(%rsp), %rax
	movq	$0, 152(%rax)
	movq	64(%rsp), %rax
	movq	$0, 160(%rax)
	movq	64(%rsp), %rax
	movq	$0, 168(%rax)
	movq	64(%rsp), %rax
	movq	%rax, (%r13)
	jmp	.LBB16_12
.LBB16_10:
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB16_11
.LBB16_4:
	movq	%rdx, 56(%rsp)          # 8-byte Spill
.LBB16_11:                              # %fail
	movl	$.L.str.28, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*24(%r15)
	movl	$.L.str.27, %edx
	movq	%r15, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%r15)
.LBB16_12:                              # %cleanup.29
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	font_resource_alloc, .Lfunc_end16-font_resource_alloc
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_0:
	.long	256                     # 0x100
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.text
	.globl	pdf_font_type3_alloc
	.align	16, 0x90
	.type	pdf_font_type3_alloc,@function
pdf_font_type3_alloc:                   # @pdf_font_type3_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp124:
	.cfi_def_cfa_offset 32
.Ltmp125:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	%rdx, (%rsp)
	leaq	8(%rsp), %rsi
	movl	$6, %edx
	xorl	%ecx, %ecx
	movl	$3, %r8d
	movl	$256, %r9d              # imm = 0x100
	callq	font_resource_alloc
	testl	%eax, %eax
	js	.LBB17_2
# BB#1:                                 # %if.end.i
	movq	8(%rsp), %rax
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [256,4294967295,4294967295,4294967295]
	movups	%xmm0, 176(%rax)
	movl	$-1, 208(%rax)
	movq	%rax, (%rbx)
	xorl	%eax, %eax
.LBB17_2:                               # %font_resource_simple_alloc.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end17:
	.size	pdf_font_type3_alloc, .Lfunc_end17-pdf_font_type3_alloc
	.cfi_endproc

	.globl	pdf_font_std_alloc
	.align	16, 0x90
	.type	pdf_font_std_alloc,@function
pdf_font_std_alloc:                     # @pdf_font_std_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 96
.Ltmp133:
	.cfi_offset %rbx, -56
.Ltmp134:
	.cfi_offset %r12, -48
.Ltmp135:
	.cfi_offset %r13, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%r8, %rbx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movl	128(%rbx), %eax
	leaq	32(%rsp), %rsi
	movl	$pdf_write_contents_std, %r8d
	movq	%rcx, %rdx
	movl	%eax, %ecx
	callq	font_resource_encoded_alloc
	testl	%eax, %eax
	js	.LBB18_7
# BB#1:                                 # %lor.lhs.false
	movslq	%r12d, %r13
	movq	26592(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %r12
	movq	%r13, %r14
	shlq	$5, %r14
	leaq	80(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	8(%r12,%r14), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	cmovneq	%rax, %rcx
	movq	32(%rsp), %r15
	leaq	112(%r15), %rsi
	movl	$1, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	pdf_base_font_alloc
	testl	%eax, %eax
	js	.LBB18_7
# BB#2:                                 # %if.end
	movl	28(%rsp), %ebp          # 4-byte Reload
	shlq	$4, %r13
	movq	standard_font_info(%r13), %rdi
	movq	%rdi, 88(%r15)
	callq	strlen
	movl	%eax, 96(%r15)
	movq	24(%rbx), %rax
	movq	128(%rax), %rax
	movq	%rax, 160(%r15)
	movl	128(%rbx), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB18_4
# BB#3:                                 # %sw.bb.i
	cmpl	$0, 900(%rbx)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 216(%r15)
.LBB18_4:                               # %set_is_MM_instance.exit
	testl	%ebp, %ebp
	je	.LBB18_6
# BB#5:                                 # %if.then.12
	addq	%r14, %r12
	movq	%r15, (%r12)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	16(%rcx), %rax
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%rax, 16(%rdx)
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
.LBB18_6:                               # %if.end.16
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	xorl	%eax, %eax
.LBB18_7:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_font_std_alloc, .Lfunc_end18-pdf_font_std_alloc
	.cfi_endproc

	.globl	pdf_font_simple_alloc
	.align	16, 0x90
	.type	pdf_font_simple_alloc,@function
pdf_font_simple_alloc:                  # @pdf_font_simple_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp143:
	.cfi_def_cfa_offset 48
.Ltmp144:
	.cfi_offset %rbx, -40
.Ltmp145:
	.cfi_offset %r12, -32
.Ltmp146:
	.cfi_offset %r14, -24
.Ltmp147:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rbx, %rdi
	callq	pdf_font_descriptor_FontType
	leaq	(%rsp), %rsi
	movl	$pdf_write_contents_simple, %r8d
	movq	%r15, %rdi
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	font_resource_encoded_alloc
	testl	%eax, %eax
	js	.LBB19_4
# BB#1:                                 # %if.end
	movq	(%rsp), %r12
	movq	%rbx, 104(%r12)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	pdf_font_descriptor_font
	movl	128(%rax), %ecx
	decl	%ecx
	cmpl	$1, %ecx
	ja	.LBB19_3
# BB#2:                                 # %sw.bb.i
	cmpl	$0, 900(%rax)
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 216(%r12)
.LBB19_3:                               # %set_is_MM_instance.exit
	movq	%r12, (%r14)
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	pdf_compute_BaseFont
.LBB19_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	pdf_font_simple_alloc, .Lfunc_end19-pdf_font_simple_alloc
	.cfi_endproc

	.globl	pdf_font_cidfont_alloc
	.align	16, 0x90
	.type	pdf_font_cidfont_alloc,@function
pdf_font_cidfont_alloc:                 # @pdf_font_cidfont_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 96
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %r15
	movq	%r13, %rdi
	callq	pdf_font_descriptor_FontType
	movl	%eax, %ebp
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	pdf_font_descriptor_font
	movq	%rax, %r12
	cmpl	$11, %ebp
	jne	.LBB20_1
# BB#3:                                 # %sw.bb.4
	movl	696(%r12), %ebx
	movq	1728(%r15), %rdi
	movl	$2, %edx
	movl	$.L.str.16, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB20_9
# BB#4:                                 # %if.end
	addq	$656, %r12              # imm = 0x290
	movslq	%ebx, %rdx
	addq	%rdx, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movl	$pdf_write_contents_cid2, %eax
	jmp	.LBB20_5
.LBB20_1:                               # %entry
	movl	$-15, %eax
	cmpl	$9, %ebp
	jne	.LBB20_9
# BB#2:                                 # %sw.bb
	movq	%r12, %rax
	addq	$448, %rax              # imm = 0x1C0
	movl	488(%r12), %ebx
	movq	%rax, %r12
	movl	$pdf_write_contents_cid0, %eax
	xorl	%r14d, %r14d
.LBB20_5:                               # %sw.epilog
	movq	%rax, (%rsp)
	leaq	32(%rsp), %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	font_resource_alloc
	testl	%eax, %eax
	js	.LBB20_9
# BB#6:                                 # %if.end.18
	movq	32(%rsp), %rbp
	movq	%r13, 104(%rbp)
	movq	%r14, 184(%rbp)
	movl	%ebx, 192(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%rbp)
	movq	$0, 232(%rbp)
	movq	1728(%r15), %rdi
	leal	7(%rbx), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbx,%rax), %ebx
	sarl	$3, %ebx
	movl	$.L.str.17, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 224(%rbp)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB20_9
# BB#7:                                 # %if.end.39
	movslq	%ebx, %rdx
	xorl	%esi, %esi
	movq	%rcx, %rdi
	callq	memset
	leaq	176(%rbp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	pdf_write_cid_systemInfo_separate
	testl	%eax, %eax
	js	.LBB20_9
# BB#8:                                 # %if.end.53
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	pdf_compute_BaseFont
.LBB20_9:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	pdf_font_cidfont_alloc, .Lfunc_end20-pdf_font_cidfont_alloc
	.cfi_endproc

	.globl	pdf_obtain_cidfont_widths_arrays
	.align	16, 0x90
	.type	pdf_obtain_cidfont_widths_arrays,@function
pdf_obtain_cidfont_widths_arrays:       # @pdf_obtain_cidfont_widths_arrays
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 96
.Ltmp168:
	.cfi_offset %rbx, -56
.Ltmp169:
	.cfi_offset %r12, -48
.Ltmp170:
	.cfi_offset %r13, -40
.Ltmp171:
	.cfi_offset %r14, -32
.Ltmp172:
	.cfi_offset %r15, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	1728(%rdi), %r13
	movslq	120(%rbx), %rsi
	testl	%r12d, %r12d
	je	.LBB21_2
# BB#1:                                 # %cond.true
	movq	%rbx, %r14
	subq	$-128, %r14
	movq	128(%rbx), %rax
	movq	%rax, (%r8)
	movq	216(%rbx), %rax
	jmp	.LBB21_3
.LBB21_2:                               # %cond.end.5.critedge
	movq	$0, (%r8)
	movq	%rbx, %r14
	subq	$-128, %r14
	xorl	%eax, %eax
.LBB21_3:                               # %cond.end.5
	leaq	208(%rbx), %rdx
	testl	%r12d, %r12d
	movq	%rax, (%r9)
	cmoveq	%r14, %rdx
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	xorl	%ebp, %ebp
	testq	%rax, %rax
	jne	.LBB21_17
# BB#4:                                 # %if.then
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movl	$8, %edx
	movl	$.L.str.18, %ecx
	movq	%r13, %rdi
	movq	%rsi, %rbp
	callq	*88(%r13)
	xorl	%edi, %edi
	testl	%r12d, %r12d
	movl	$0, %r15d
	je	.LBB21_10
# BB#5:                                 # %if.then.16
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$16, %edx
	movl	$.L.str.18, %ecx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	*88(%r13)
	movq	%rax, %rdi
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB21_6
# BB#9:                                 # %if.else
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	movq	8(%rsp), %rax           # 8-byte Reload
	jmp	.LBB21_10
.LBB21_6:                               # %if.then.22
	movq	%rdi, (%rsp)            # 8-byte Spill
	movl	$8, %edx
	movl	$.L.str.18, %ecx
	movq	%r13, %rdi
	movl	%ebp, %esi
	callq	*88(%r13)
	movq	%rax, %r15
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	movq	%r15, (%r14)
	testq	%r15, %r15
	je	.LBB21_7
# BB#8:                                 # %if.then.28
	leaq	(,%rbp,8), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	memset
.LBB21_7:
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB21_10:                              # %if.end.32
	testl	%r12d, %r12d
	setne	%cl
	testq	%rdi, %rdi
	sete	%dl
	testq	%r15, %r15
	sete	%sil
	testq	%rax, %rax
	je	.LBB21_13
# BB#11:                                # %if.end.32
	andb	%cl, %dl
	jne	.LBB21_13
# BB#12:                                # %if.end.32
	andb	%sil, %cl
	jne	.LBB21_13
# BB#14:                                # %if.end.49
	movq	%rax, %r15
	testl	%r12d, %r12d
	je	.LBB21_16
# BB#15:                                # %if.then.51
	movq	%rbp, %r14
	movq	%r14, %rdx
	shlq	$4, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rdi, %r12
	callq	memset
	shlq	$3, %r14
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	memset
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	movq	%r15, 208(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	movq	%r12, 216(%rbx)
	jmp	.LBB21_17
.LBB21_13:                              # %if.then.43
	movl	$.L.str.18, %edx
	movq	%rdi, %rbx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	*24(%r13)
	movl	$.L.str.18, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
	movl	$.L.str.18, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*24(%r13)
	movl	$-25, %ebp
	jmp	.LBB21_17
.LBB21_16:                              # %if.else.68.critedge
	movq	%rbp, %rdx
	shlq	$3, %rdx
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r15, %rbx
	movq	%rbx, %rdi
	callq	memset
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbx, (%rax)
	movq	%rbx, (%r14)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	$0, (%rax)
.LBB21_17:                              # %cleanup
	movl	%ebp, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pdf_obtain_cidfont_widths_arrays, .Lfunc_end21-pdf_obtain_cidfont_widths_arrays
	.cfi_endproc

	.globl	pdf_convert_truetype_font
	.align	16, 0x90
	.type	pdf_convert_truetype_font,@function
pdf_convert_truetype_font:              # @pdf_convert_truetype_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp179:
	.cfi_def_cfa_offset 64
.Ltmp180:
	.cfi_offset %rbx, -48
.Ltmp181:
	.cfi_offset %r12, -40
.Ltmp182:
	.cfi_offset %r14, -32
.Ltmp183:
	.cfi_offset %r15, -24
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpl	$0, 9564(%rbx)
	je	.LBB22_11
# BB#1:                                 # %if.else
	cmpl	$42, 72(%r14)
	jne	.LBB22_11
# BB#2:                                 # %if.else.3
	movq	%r14, %rdi
	callq	pdf_resource_id
	cmpq	$-1, %rax
	je	.LBB22_11
# BB#3:                                 # %if.else.6
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	pdf_different_encoding_index
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_11
# BB#4:                                 # %if.end
	cmpl	$256, %ebp              # imm = 0x100
	jne	.LBB22_6
# BB#5:                                 # %land.lhs.true
	xorl	%ebp, %ebp
	cmpl	$-1, 184(%r14)
	jne	.LBB22_11
.LBB22_6:                               # %if.end.13
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_convert_truetype_font_descriptor
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_11
# BB#7:                                 # %if.end.17
	movq	16(%r14), %rcx
	incq	%rcx
	movq	$pdf_write_contents_type0, (%rsp)
	leaq	8(%rsp), %rsi
	movl	$6, %edx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	callq	font_resource_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_11
# BB#8:                                 # %pdf_font_type0_alloc.exit
	movq	8(%rsp), %r15
	movq	%r14, 176(%r15)
	movups	.Lpdf_convert_truetype_font.CMapName(%rip), %xmm0
	movups	%xmm0, 216(%r15)
	movl	$0, 232(%r15)
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_compute_BaseFont
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_11
# BB#9:                                 # %if.end.21
	movq	%r14, %rdi
	callq	pdf_resource_id
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	pdf_reserve_object_id
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_reserve_object_id
	movq	%rbx, %rdi
	callq	pdf_write_OneByteIdentityH
	testl	%eax, %eax
	movl	$0, %ebp
	js	.LBB22_11
# BB#10:                                # %if.end.26
	movq	28664(%rbx), %rax
	movq	%rax, 176(%r14)
	leaq	184(%r15), %r12
	movq	28656(%rbx), %rdi
	callq	pdf_resource_id
	movq	%rax, %rcx
	xorl	%ebp, %ebp
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	gs_sprintf
	movups	144(%r14), %xmm0
	movups	%xmm0, 144(%r15)
	movq	$0, 144(%r14)
	movq	$0, 152(%r14)
	movl	$11, 72(%r14)
	movq	$pdf_write_contents_cid2, 80(%r14)
.LBB22_11:                              # %return
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pdf_convert_truetype_font, .Lfunc_end22-pdf_convert_truetype_font
	.cfi_endproc

	.globl	pdf_cmap_alloc
	.align	16, 0x90
	.type	pdf_cmap_alloc,@function
pdf_cmap_alloc:                         # @pdf_cmap_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	pdf_write_cmap          # TAILCALL
.Lfunc_end23:
	.size	pdf_cmap_alloc, .Lfunc_end23-pdf_cmap_alloc
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_std_font_elt_enum_ptrs,@function
pdf_std_font_elt_enum_ptrs:             # @pdf_std_font_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	shrl	$5, %r9d
	je	.LBB24_1
# BB#2:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	shlq	$5, %rdx
	addq	%rdx, %rsi
	movl	$32, %edx
	movl	$st_pdf_standard_font, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.LBB24_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	pdf_std_font_elt_enum_ptrs, .Lfunc_end24-pdf_std_font_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_std_font_elt_reloc_ptrs,@function
pdf_std_font_elt_reloc_ptrs:            # @pdf_std_font_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp185:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 32
.Ltmp188:
	.cfi_offset %rbx, -32
.Ltmp189:
	.cfi_offset %r14, -24
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-32, %ebp
	je	.LBB25_3
# BB#1:                                 # %for.body.preheader
	shrl	$5, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB25_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movl	$st_pdf_standard_font, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$32, %rbx
	incl	%ebp
	jne	.LBB25_2
.LBB25_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	pdf_std_font_elt_reloc_ptrs, .Lfunc_end25-pdf_std_font_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_encoding_elt_enum_ptrs,@function
pdf_encoding_elt_enum_ptrs:             # @pdf_encoding_elt_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r9d
	shrl	$5, %r9d
	je	.LBB26_1
# BB#2:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	shlq	$5, %rdx
	addq	%rdx, %rsi
	movl	$32, %edx
	movl	$st_pdf_encoding1, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.LBB26_1:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	pdf_encoding_elt_enum_ptrs, .Lfunc_end26-pdf_encoding_elt_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	pdf_encoding_elt_reloc_ptrs,@function
pdf_encoding_elt_reloc_ptrs:            # @pdf_encoding_elt_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 32
.Ltmp194:
	.cfi_offset %rbx, -32
.Ltmp195:
	.cfi_offset %r14, -24
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-32, %ebp
	je	.LBB27_3
# BB#1:                                 # %for.body.preheader
	shrl	$5, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB27_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$32, %esi
	movl	$st_pdf_encoding1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$32, %rbx
	incl	%ebp
	jne	.LBB27_2
.LBB27_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end27:
	.size	pdf_encoding_elt_reloc_ptrs, .Lfunc_end27-pdf_encoding_elt_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	find_std_appearance,@function
find_std_appearance:                    # @find_std_appearance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp197:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp198:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp199:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp200:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp201:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp202:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp203:
	.cfi_def_cfa_offset 80
.Ltmp204:
	.cfi_offset %rbx, -56
.Ltmp205:
	.cfi_offset %r12, -48
.Ltmp206:
	.cfi_offset %r13, -40
.Ltmp207:
	.cfi_offset %r14, -32
.Ltmp208:
	.cfi_offset %r15, -24
.Ltmp209:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movl	128(%rbp), %eax
	cmpq	$42, %rax
	ja	.LBB28_15
# BB#1:                                 # %entry
	movabsq	$4398046511110, %rsi    # imm = 0x40000000006
	btq	%rax, %rsi
	jae	.LBB28_15
# BB#2:                                 # %for.cond.preheader
	movl	%ecx, %r12d
	leaq	408(%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	408(%rbp), %r13
	decq	%r13
	movq	26592(%rdi), %rax
	movq	(%rax), %rax
	movq	(%rax), %r15
	addq	$8, %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB28_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_14
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	112(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB28_6
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB28_3 Depth=1
	xorl	%esi, %esi
	callq	pdf_base_font_font
	jmp	.LBB28_8
	.align	16, 0x90
.LBB28_6:                               # %if.end.i
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	104(%rax), %rdi
	testq	%rdi, %rdi
	movl	$0, %ebx
	je	.LBB28_9
# BB#7:                                 # %if.end.4.i
                                        #   in Loop: Header=BB28_3 Depth=1
	xorl	%esi, %esi
	callq	pdf_font_descriptor_font
.LBB28_8:                               # %pdf_font_resource_font.exit
                                        #   in Loop: Header=BB28_3 Depth=1
	movq	%rax, %rbx
.LBB28_9:                               # %pdf_font_resource_font.exit
                                        #   in Loop: Header=BB28_3 Depth=1
	cmpq	$16777214, %r13         # imm = 0xFFFFFE
	ja	.LBB28_11
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB28_3 Depth=1
	leaq	408(%rbx), %rsi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	uid_equal
	testl	%eax, %eax
	je	.LBB28_14
.LBB28_11:                              # %if.end.15
                                        #   in Loop: Header=BB28_3 Depth=1
	movl	$16, %r8d
	movl	$1, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%r12d, %ecx
	callq	gs_copied_can_copy_glyphs
	movl	%eax, %ecx
	movl	$-28, %eax
	cmpl	$-28, %ecx
	je	.LBB28_16
# BB#12:                                # %cleanup
                                        #   in Loop: Header=BB28_3 Depth=1
	testl	%ecx, %ecx
	jg	.LBB28_13
.LBB28_14:                              # %for.inc
                                        #   in Loop: Header=BB28_3 Depth=1
	addq	$32, %r15
	incl	%r14d
	cmpl	$14, %r14d
	jl	.LBB28_3
.LBB28_15:
	movl	$-1, %eax
.LBB28_16:                              # %cleanup.24
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_13:
	movl	%r14d, %eax
	jmp	.LBB28_16
.Lfunc_end28:
	.size	find_std_appearance, .Lfunc_end28-find_std_appearance
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_font_resource_t"
	.size	.L.str, 20

	.type	st_pdf_font_resource,@object # @st_pdf_font_resource
	.section	.rodata,"a",@progbits
	.globl	st_pdf_font_resource
	.align	8
st_pdf_font_resource:
	.long	304                     # 0x130
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	pdf_font_resource_enum_ptrs
	.quad	pdf_font_resource_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_font_resource, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pdf_outline_fonts_alloc(outline_fonts)"
	.size	.L.str.1, 39

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"pdf_outline_fonts_alloc(standard_fonts)"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Free BaseFont string"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Free Widths array"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Free used array"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Free simple Encoding"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Free simple v"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Free CIDFont used2"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Free CIDToGID map"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Free font resource object"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"font_resource_encoded_alloc"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pdf_font_simple_alloc"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\nWarning: %s cannot be embedded because of licensing restrictions\n"
	.size	.L.str.13, 67

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"pdf_compute_BaseFont"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Replacing BaseFont string"
	.size	.L.str.15, 26

	.type	standard_font_info,@object # @standard_font_info
	.section	.rodata,"a",@progbits
	.align	16
standard_font_info:
	.quad	.L.str.29
	.long	7                       # 0x7
	.long	0                       # 0x0
	.quad	.L.str.30
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.31
	.long	15                      # 0xf
	.long	0                       # 0x0
	.quad	.L.str.32
	.long	19                      # 0x13
	.long	0                       # 0x0
	.quad	.L.str.33
	.long	9                       # 0x9
	.long	0                       # 0x0
	.quad	.L.str.34
	.long	14                      # 0xe
	.long	0                       # 0x0
	.quad	.L.str.35
	.long	17                      # 0x11
	.long	0                       # 0x0
	.quad	.L.str.36
	.long	21                      # 0x15
	.long	0                       # 0x0
	.quad	.L.str.37
	.long	6                       # 0x6
	.long	2                       # 0x2
	.quad	.L.str.38
	.long	11                      # 0xb
	.long	0                       # 0x0
	.quad	.L.str.39
	.long	10                      # 0xa
	.long	0                       # 0x0
	.quad	.L.str.40
	.long	12                      # 0xc
	.long	0                       # 0x0
	.quad	.L.str.41
	.long	16                      # 0x10
	.long	0                       # 0x0
	.quad	.L.str.42
	.long	12                      # 0xc
	.long	3                       # 0x3
	.zero	16
	.size	standard_font_info, 240

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"CIDToGIDMap"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"pdf_font_cidfont_alloc"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"pdf_obtain_cidfont_widths_arrays"
	.size	.L.str.18, 33

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"OneByteIdentityH"
	.size	.L.str.19, 17

	.type	.Lpdf_convert_truetype_font.CMapName,@object # @pdf_convert_truetype_font.CMapName
	.section	.rodata,"a",@progbits
	.align	8
.Lpdf_convert_truetype_font.CMapName:
	.quad	.L.str.19
	.long	16                      # 0x10
	.zero	4
	.size	.Lpdf_convert_truetype_font.CMapName, 16

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"%ld 0 R"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pdf_outline_fonts_t"
	.size	.L.str.21, 20

	.type	pdf_outline_fonts_reloc_ptrs,@object # @pdf_outline_fonts_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_outline_fonts_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_outline_fonts_enum_ptrs
	.size	pdf_outline_fonts_reloc_ptrs, 24

	.type	st_pdf_outline_fonts,@object # @st_pdf_outline_fonts
	.align	8
st_pdf_outline_fonts:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.21
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_outline_fonts_reloc_ptrs
	.size	st_pdf_outline_fonts, 64

	.type	pdf_outline_fonts_enum_ptrs,@object # @pdf_outline_fonts_enum_ptrs
	.align	2
pdf_outline_fonts_enum_ptrs:
	.zero	4
	.size	pdf_outline_fonts_enum_ptrs, 4

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"pdf_standard_font_t[]"
	.size	.L.str.22, 22

	.type	st_pdf_standard_font_element,@object # @st_pdf_standard_font_element
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_standard_font_element:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	pdf_std_font_elt_enum_ptrs
	.quad	pdf_std_font_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_standard_font_element, 64

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"pdf_standard_font_t"
	.size	.L.str.23, 20

	.type	pdf_std_font_reloc_ptrs,@object # @pdf_std_font_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_std_font_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_std_font_enum_ptrs
	.size	pdf_std_font_reloc_ptrs, 24

	.type	st_pdf_standard_font,@object # @st_pdf_standard_font
	.align	8
st_pdf_standard_font:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_std_font_reloc_ptrs
	.size	st_pdf_standard_font, 64

	.type	pdf_std_font_enum_ptrs,@object # @pdf_std_font_enum_ptrs
	.align	2
pdf_std_font_enum_ptrs:
	.zero	4
	.size	pdf_std_font_enum_ptrs, 4

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"pdf_encoding_element_t[]"
	.size	.L.str.24, 25

	.type	st_pdf_encoding_element,@object # @st_pdf_encoding_element
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_encoding_element:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.24
	.quad	0
	.quad	0
	.quad	pdf_encoding_elt_enum_ptrs
	.quad	pdf_encoding_elt_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_pdf_encoding_element, 64

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"pdf_encoding_element_t"
	.size	.L.str.25, 23

	.type	pdf_encoding1_reloc_ptrs,@object # @pdf_encoding1_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_encoding1_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_encoding1_enum_ptrs
	.size	pdf_encoding1_reloc_ptrs, 24

	.type	st_pdf_encoding1,@object # @st_pdf_encoding1
	.align	8
st_pdf_encoding1:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_encoding1_reloc_ptrs
	.size	st_pdf_encoding1, 64

	.type	pdf_encoding1_enum_ptrs,@object # @pdf_encoding1_enum_ptrs
	.align	2
pdf_encoding1_enum_ptrs:
	.short	2                       # 0x2
	.short	8                       # 0x8
	.size	pdf_encoding1_enum_ptrs, 4

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"pdf_resize_array"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"font_resource_alloc(Widths)"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"font_resource_alloc(used)"
	.size	.L.str.28, 26

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Courier"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Courier-Bold"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Courier-Oblique"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Courier-BoldOblique"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Helvetica"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Helvetica-Bold"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Helvetica-Oblique"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Helvetica-BoldOblique"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Symbol"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Times-Roman"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Times-Bold"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Times-Italic"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Times-BoldItalic"
	.size	.L.str.41, 17

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"ZapfDingbats"
	.size	.L.str.42, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
