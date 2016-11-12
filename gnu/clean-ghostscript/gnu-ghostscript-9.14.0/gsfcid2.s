	.text
	.file	"gsfcid2.bc"
	.globl	gs_font_cid2_from_type42
	.align	16, 0x90
	.type	gs_font_cid2_from_type42,@function
gs_font_cid2_from_type42:               # @gs_font_cid2_from_type42
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$st_gs_font_cid2, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	$656, %edx              # imm = 0x290
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	%r12, 16(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$0, 32(%rbx)
	movq	%rbx, %rdi
	callq	gs_font_notify_init
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_next_ids
	movq	%rax, 56(%rbx)
	movq	%rbx, 64(%rbx)
	movl	$11, 128(%rbx)
	movq	%rbx, %rdi
	addq	$656, %rdi              # imm = 0x290
	callq	cid_system_info_set_null
	movl	592(%r15), %eax
	movl	%eax, 696(%rbx)
	movl	$2, 704(%rbx)
	movl	$0, 712(%rbx)
	movq	$identity_CIDMap_proc, 720(%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	gs_font_cid2_from_type42, .Lfunc_end0-gs_font_cid2_from_type42
	.cfi_endproc

	.align	16, 0x90
	.type	identity_CIDMap_proc,@function
identity_CIDMap_proc:                   # @identity_CIDMap_proc
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movslq	696(%rdi), %rax
	cmpq	%rax, %rsi
	movl	$-15, %eax
	cmovbl	%esi, %eax
	retq
.Lfunc_end1:
	.size	identity_CIDMap_proc, .Lfunc_end1-identity_CIDMap_proc
	.cfi_endproc

	.globl	gs_cmap_from_type42_cmap
	.align	16, 0x90
	.type	gs_cmap_from_type42_cmap,@function
gs_cmap_from_type42_cmap:               # @gs_cmap_from_type42_cmap
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
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 112
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	496(%r13), %r15
	testq	%r15, %r15
	je	.LBB2_1
# BB#2:                                 # %if.end
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	leaq	2(%r15), %rsi
	leaq	48(%rsp), %rcx
	movl	$2, %edx
	movq	%r13, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB2_16
# BB#3:                                 # %do.end
	movzbl	48(%rsp), %ecx
	shll	$8, %ecx
	movzbl	49(%rsp), %eax
	orl	%ecx, %eax
	je	.LBB2_4
# BB#5:                                 # %do.body.9.lr.ph
	leaq	4(%r15), %rbx
	movl	%eax, %r12d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB2_6:                                # %do.body.9
                                        # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	leaq	48(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB2_16
# BB#7:                                 # %do.end.20
                                        #   in Loop: Header=BB2_6 Depth=1
	movzbl	48(%rsp), %eax
	shll	$8, %eax
	movzbl	49(%rsp), %ecx
	orl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB2_11
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_6 Depth=1
	movzbl	50(%rsp), %eax
	shll	$8, %eax
	movzbl	51(%rsp), %ecx
	orl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB2_11
# BB#9:                                 # %if.end.41
                                        #   in Loop: Header=BB2_6 Depth=1
	leaq	52(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %rbp
	addq	%r15, %rbp
	movl	$2, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	leaq	48(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB2_16
# BB#10:                                # %do.end.54
                                        #   in Loop: Header=BB2_6 Depth=1
	movzbl	48(%rsp), %eax
	shll	$8, %eax
	movzbl	49(%rsp), %ecx
	orl	%eax, %ecx
	cmpl	$4, %ecx
	je	.LBB2_13
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=1
	incq	%r14
	addq	$8, %rbx
	cmpq	%r12, %r14
	jb	.LBB2_6
# BB#12:
	movl	$-10, %eax
	jmp	.LBB2_16
.LBB2_1:
	movl	$-10, %eax
	jmp	.LBB2_16
.LBB2_4:
	movl	$-10, %eax
.LBB2_16:                               # %cleanup.106
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_13:                               # %do.body.69
	leaq	6(%rbp), %rsi
	leaq	48(%rsp), %rcx
	movl	$2, %edx
	movq	%r13, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB2_16
# BB#14:                                # %cleanup.cont
	movzbl	48(%rsp), %ebx
	movzbl	49(%rsp), %r14d
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$tt_16bit_format4_procs, 8(%rsp)
	movl	$1, (%rsp)
	movl	$st_cmap_tt_16bit_format4, %esi
	movl	$.L.str.1, %ecx
	movl	$4, %r8d
	movl	$gs_cmap_from_type42_cmap.null_cidsi, %r9d
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	36(%rsp), %edx          # 4-byte Reload
	callq	gs_cmap_alloc
	testl	%eax, %eax
	js	.LBB2_16
# BB#15:                                # %if.end.90
	shll	$8, %ebx
	orl	%r14d, %ebx
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movl	$1, 76(%rax)
	movq	%r13, 112(%rax)
	movl	%ebx, 120(%rax)
	leaq	14(%rbp), %rcx
	movq	%rcx, 128(%rax)
	leaq	16(%rbp,%rbx), %rcx
	addq	%rbx, %rbp
	movq	%rcx, 136(%rax)
	leaq	16(%rbx,%rbp), %rcx
	movq	%rcx, 144(%rax)
	addq	%rbx, %rcx
	movq	%rcx, 152(%rax)
	addq	%rbx, %rcx
	movq	%rcx, 160(%rax)
	xorl	%eax, %eax
	jmp	.LBB2_16
.Lfunc_end2:
	.size	gs_cmap_from_type42_cmap, .Lfunc_end2-gs_cmap_from_type42_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_decode_next,@function
tt_16bit_format4_decode_next:           # @tt_16bit_format4_decode_next
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
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 112
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	8(%rsi), %edi
	movl	(%rdx), %eax
	leal	2(%rax), %ebp
	cmpl	%ebp, %edi
	jae	.LBB3_2
# BB#1:                                 # %if.then
	movq	$2147483647, (%r9)      # imm = 0x7FFFFFFF
	cmpl	%edi, %eax
	movl	$2, %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
	jmp	.LBB3_16
.LBB3_2:                                # %if.end
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	(%rsi), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$8, %edx
	movzbl	1(%rcx,%rax), %r12d
	orl	%edx, %r12d
	xorl	%r15d, %r15d
	cmpl	$0, 120(%rbx)
	je	.LBB3_15
# BB#3:                                 # %for.body.lr.ph
	movq	112(%rbx), %rbp
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, %r13d
	movq	128(%rbx), %rsi
	addq	%r13, %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
	leaq	54(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB3_16
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB3_4 Depth=1
	movzbl	54(%rsp), %eax
	shll	$8, %eax
	movzbl	55(%rsp), %ecx
	orl	%eax, %ecx
	cmpl	%ecx, %r12d
	ja	.LBB3_14
# BB#6:                                 # %do.body.27
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	136(%rbx), %rsi
	addq	%r13, %rsi
	movl	$2, %edx
	movq	%rbp, %rdi
	leaq	54(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB3_16
# BB#7:                                 # %do.end.37
                                        #   in Loop: Header=BB3_4 Depth=1
	movzbl	54(%rsp), %eax
	shll	$8, %eax
	movzbl	55(%rsp), %ecx
	orl	%eax, %ecx
	movl	%r12d, %r14d
	subl	%ecx, %r14d
	jae	.LBB3_8
.LBB3_14:                               # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	addl	$2, %r13d
	cmpl	120(%rbx), %r13d
	jb	.LBB3_4
	jmp	.LBB3_15
.LBB3_8:                                # %do.body.48
	movq	144(%rbx), %rsi
	addq	%r13, %rsi
	leaq	54(%rsp), %rcx
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB3_16
# BB#9:                                 # %do.end.58
	movzbl	54(%rsp), %r15d
	movzbl	55(%rsp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	152(%rbx), %rsi
	addq	%r13, %rsi
	leaq	54(%rsp), %rcx
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB3_16
# BB#10:                                # %do.end.75
	shll	$8, %r15d
	addl	12(%rsp), %r15d         # 4-byte Folded Reload
	movzbl	54(%rsp), %ecx
	shll	$8, %ecx
	movzbl	55(%rsp), %eax
	orl	%ecx, %eax
	je	.LBB3_13
# BB#11:                                # %if.then.82
	movl	%eax, %eax
	addl	%r14d, %r14d
	addq	%r13, %r14
	addq	%rax, %r14
	addq	152(%rbx), %r14
	leaq	54(%rsp), %rcx
	movl	$2, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB3_16
# BB#12:                                # %cleanup.thread
	movzbl	54(%rsp), %eax
	shll	$8, %eax
	movzbl	55(%rsp), %ecx
	movl	%eax, %edx
	orl	%ecx, %edx
	addl	%r15d, %edx
	xorl	%r15d, %r15d
	orl	%ecx, %eax
	cmovnel	%edx, %r15d
	jmp	.LBB3_15
.LBB3_13:                               # %if.else
	addl	%r12d, %r15d
.LBB3_15:                               # %for.end
	movzwl	%r15w, %eax
	movl	$2147483648, %ecx       # imm = 0x80000000
	orq	%rax, %rcx
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	$2, (%rax)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	xorl	%eax, %eax
.LBB3_16:                               # %cleanup.121
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tt_16bit_format4_decode_next, .Lfunc_end3-tt_16bit_format4_decode_next
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_enum_ranges,@function
tt_16bit_format4_enum_ranges:           # @tt_16bit_format4_enum_ranges
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movl	$tt_16bit_format4_range_procs, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	jmp	gs_cmap_ranges_enum_setup # TAILCALL
.Lfunc_end4:
	.size	tt_16bit_format4_enum_ranges, .Lfunc_end4-tt_16bit_format4_enum_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_enum_lookups,@function
tt_16bit_format4_enum_lookups:          # @tt_16bit_format4_enum_lookups
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testl	%esi, %esi
	movl	$gs_cmap_no_lookups_procs, %esi
	movl	$tt_16bit_format4_lookup_procs, %ecx
	cmovneq	%rsi, %rcx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	jmp	gs_cmap_lookups_enum_setup # TAILCALL
.Lfunc_end5:
	.size	tt_16bit_format4_enum_lookups, .Lfunc_end5-tt_16bit_format4_enum_lookups
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_next_range,@function
tt_16bit_format4_next_range:            # @tt_16bit_format4_next_range
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	cmpl	$0, 32(%rdi)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movb	$0, 1(%rdi)
	movb	$0, (%rdi)
	movb	$-1, 5(%rdi)
	movb	$-1, 4(%rdi)
	movl	$2, 8(%rdi)
	movl	$1, 32(%rdi)
	xorl	%eax, %eax
.LBB6_2:                                # %return
	retq
.Lfunc_end6:
	.size	tt_16bit_format4_next_range, .Lfunc_end6-tt_16bit_format4_next_range
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_next_lookup,@function
tt_16bit_format4_next_lookup:           # @tt_16bit_format4_next_lookup
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	cmpl	$0, 64(%rdi)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$2, 8(%rdi)
	movl	$1, 12(%rdi)
	movl	$0, 16(%rdi)
	movl	$2, 32(%rdi)
	movl	$0, 40(%rdi)
	movl	$1, 64(%rdi)
	xorl	%eax, %eax
.LBB7_2:                                # %return
	retq
.Lfunc_end7:
	.size	tt_16bit_format4_next_lookup, .Lfunc_end7-tt_16bit_format4_next_lookup
	.cfi_endproc

	.align	16, 0x90
	.type	tt_16bit_format4_next_entry,@function
tt_16bit_format4_next_entry:            # @tt_16bit_format4_next_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 80
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	68(%rdi), %eax
	movl	%eax, %ebx
	shrl	$16, %ebx
	movq	48(%rdi), %r12
	cmpl	120(%r12), %ebx
	jae	.LBB8_1
# BB#2:                                 # %do.body.lr.ph
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movzwl	%ax, %r13d
	movq	112(%r12), %r14
	leaq	22(%rsp), %r15
	.align	16, 0x90
.LBB8_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebx
	movq	128(%r12), %rsi
	addq	%rbx, %rsi
	movl	$2, %edx
	movq	%r14, %rdi
	movq	%r15, %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB8_15
# BB#4:                                 # %do.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movzbl	22(%rsp), %eax
	shll	$8, %eax
	movzbl	23(%rsp), %ebp
	orl	%eax, %ebp
	cmpl	%ebp, %r13d
	jbe	.LBB8_7
# BB#5:                                 # %if.then.14
                                        #   in Loop: Header=BB8_3 Depth=1
	addl	$2, %ebx
	cmpl	120(%r12), %ebx
	jb	.LBB8_3
# BB#6:
	movl	$1, %eax
	jmp	.LBB8_15
.LBB8_1:
	movl	$1, %eax
.LBB8_15:                               # %cleanup.151
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_7:                                # %do.body.17
	movq	136(%r12), %rsi
	addq	%rbx, %rsi
	leaq	22(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB8_15
# BB#8:                                 # %do.end.27
	movzbl	22(%rsp), %edx
	shll	$8, %edx
	movzbl	23(%rsp), %eax
	orl	%eax, %edx
	cmpl	%edx, %r13d
	cmovael	%r13d, %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	8(%rsp), %rcx           # 8-byte Reload
	movb	%dh, (%rcx)  # NOREX
	cmovbl	%eax, %r13d
	movb	%r13b, 1(%rcx)
	movq	144(%r12), %rsi
	addq	%rbx, %rsi
	leaq	22(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB8_15
# BB#9:                                 # %do.end.61
	movzbl	22(%rsp), %r13d
	movzbl	23(%rsp), %r15d
	movq	152(%r12), %rsi
	addq	%rbx, %rsi
	leaq	22(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB8_15
# BB#10:                                # %do.end.78
	shll	$8, %r13d
	orl	%r15d, %r13d
	movzbl	22(%rsp), %ecx
	shll	$8, %ecx
	movzbl	23(%rsp), %eax
	orl	%ecx, %eax
	je	.LBB8_13
# BB#11:                                # %if.then.85
	movl	%eax, %esi
	addq	%rbx, %rsi
	addq	152(%r12), %rsi
	leaq	22(%rsp), %rcx
	movl	$2, %edx
	movq	%r14, %rdi
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB8_15
# BB#12:                                # %cleanup.thread
	movzbl	22(%rsp), %eax
	shll	$8, %eax
	movzbl	23(%rsp), %ecx
	movl	%eax, %edx
	orl	%ecx, %edx
	addl	%r13d, %edx
	xorl	%r13d, %r13d
	orl	%ecx, %eax
	cmovnel	%edx, %r13d
	movl	%r13d, %eax
	movq	(%rsp), %rdx            # 8-byte Reload
	jmp	.LBB8_14
.LBB8_13:                               # %if.else
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	%r13d, %eax
	addl	%edx, %eax
	orl	$255, %edx
	cmpl	%edx, %ebp
	cmovbl	%ebp, %edx
.LBB8_14:                               # %do.body.117
	movq	8(%rsp), %rcx           # 8-byte Reload
	movb	%dh, 4(%rcx)  # NOREX
	movb	%dl, 5(%rcx)
	leaq	72(%rcx), %rdi
	movb	%ah, 72(%rcx)  # NOREX
	movb	%al, 73(%rcx)
	movq	%rdi, 24(%rcx)
	movl	$2, 32(%rcx)
	shll	$16, %ebx
	leal	1(%rbx,%rdx), %eax
	movl	%eax, 68(%rcx)
	xorl	%eax, %eax
	jmp	.LBB8_15
.Lfunc_end8:
	.size	tt_16bit_format4_next_entry, .Lfunc_end8-tt_16bit_format4_next_entry
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_cid2_from_type42"
	.size	.L.str, 25

	.type	gs_cmap_from_type42_cmap.null_cidsi,@object # @gs_cmap_from_type42_cmap.null_cidsi
	.section	.rodata,"a",@progbits
	.align	8
gs_cmap_from_type42_cmap.null_cidsi:
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.long	0                       # 0x0
	.zero	4
	.size	gs_cmap_from_type42_cmap.null_cidsi, 40

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"none"
	.size	.L.str.1, 5

	.type	st_cmap_tt_16bit_format4,@object # @st_cmap_tt_16bit_format4
	.section	.rodata,"a",@progbits
	.align	8
st_cmap_tt_16bit_format4:
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	cmap_tt_16bit_format4_reloc_ptrs
	.size	st_cmap_tt_16bit_format4, 64

	.type	tt_16bit_format4_procs,@object # @tt_16bit_format4_procs
	.align	8
tt_16bit_format4_procs:
	.quad	tt_16bit_format4_decode_next
	.quad	tt_16bit_format4_enum_ranges
	.quad	tt_16bit_format4_enum_lookups
	.quad	gs_cmap_compute_identity
	.size	tt_16bit_format4_procs, 32

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_cmap_tt_16bit_format4_t"
	.size	.L.str.2, 27

	.type	cmap_tt_16bit_format4_reloc_ptrs,@object # @cmap_tt_16bit_format4_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
cmap_tt_16bit_format4_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_cmap
	.quad	cmap_tt_16bit_format4_enum_ptrs
	.size	cmap_tt_16bit_format4_reloc_ptrs, 24

	.type	cmap_tt_16bit_format4_enum_ptrs,@object # @cmap_tt_16bit_format4_enum_ptrs
	.align	2
cmap_tt_16bit_format4_enum_ptrs:
	.short	0                       # 0x0
	.short	112                     # 0x70
	.size	cmap_tt_16bit_format4_enum_ptrs, 4

	.type	tt_16bit_format4_range_procs,@object # @tt_16bit_format4_range_procs
	.align	8
tt_16bit_format4_range_procs:
	.quad	tt_16bit_format4_next_range
	.size	tt_16bit_format4_range_procs, 8

	.type	tt_16bit_format4_lookup_procs,@object # @tt_16bit_format4_lookup_procs
	.align	8
tt_16bit_format4_lookup_procs:
	.quad	tt_16bit_format4_next_lookup
	.quad	tt_16bit_format4_next_entry
	.size	tt_16bit_format4_lookup_procs, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
