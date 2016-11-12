	.text
	.file	"zfcid0.bc"
	.globl	ztype9mapcid
	.align	16, 0x90
	.type	ztype9mapcid,@function
ztype9mapcid:                           # @ztype9mapcid
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
	subq	$72, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 112
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	624(%rdi), %rbx
	leaq	-16(%rbx), %rdi
	leaq	64(%rsp), %rsi
	callq	font_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_7
# BB#1:                                 # %if.end
	movq	64(%rsp), %r14
	movl	$-10, %ebp
	cmpl	$9, 128(%r14)
	jne	.LBB0_7
# BB#2:                                 # %if.end.3
	movzbl	1(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB0_3
# BB#4:                                 # %if.end.8
	movl	$2147483648, %eax       # imm = 0x80000000
	movq	16(%r14), %rcx
	movq	%rcx, 56(%rsp)
	movq	8(%rbx), %rsi
	addq	%rax, %rsi
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	movq	%r14, %rdi
	callq	*528(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB0_6
# BB#5:                                 # %if.then.13
	movq	$0, 8(%rbx)
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	movq	%r14, %rdi
	callq	*528(%r14)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB0_7
.LBB0_6:                                # %if.end.27
	movq	16(%rsp), %rax
	movq	%rax, -8(%rbx)
	movq	64(%rsp), %rax
	movq	16(%rax), %rdi
	callq	imemory_space
	orl	$96, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, -16(%rbx)
	movl	24(%rsp), %eax
	movl	%eax, -12(%rbx)
	movslq	12(%rsp), %rax
	movq	%rax, 8(%rbx)
	movw	$2816, (%rbx)           # imm = 0xB00
	movl	%r15d, %ebp
	jmp	.LBB0_7
.LBB0_3:                                # %if.then.6
	movq	%rbx, %rdi
	callq	check_type_failed
	movl	%eax, %ebp
.LBB0_7:                                # %cleanup.45
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ztype9mapcid, .Lfunc_end0-ztype9mapcid
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont9,@function
zbuildfont9:                            # @zbuildfont9
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
	subq	$904, %rsp              # imm = 0x388
.Ltmp15:
	.cfi_def_cfa_offset 960
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
	movq	%rdi, %r13
	movq	624(%r13), %r14
	movq	8(%r13), %rdi
	leaq	232(%rsp), %rsi
	xorl	%edx, %edx
	movl	$.L.str.2, %ecx
	callq	build_proc_name_refs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#1:                                 # %lor.lhs.false
	leaq	176(%rsp), %rsi
	leaq	160(%rsp), %rdx
	movq	%r14, %rdi
	callq	cid_font_data_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#2:                                 # %lor.lhs.false.3
	leaq	120(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#3:                                 # %lor.lhs.false.6
	leaq	96(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB1_54
# BB#4:                                 # %lor.lhs.false.9
	leaq	76(%rsp), %r9
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	movl	$-1, %r8d
	movq	%r14, %rdi
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#5:                                 # %if.end
	movq	96(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 80(%rsp)
	movzbl	161(%rsp), %eax
	cmpl	$14, %eax
	jne	.LBB1_22
# BB#6:                                 # %if.then.14
	leaq	312(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#7:                                 # %lor.lhs.false.18
	leaq	72(%rsp), %r9
	movl	$.L.str.7, %esi
	xorl	%edx, %edx
	movl	$-2, %ecx
	movl	$-1, %r8d
	movq	%r14, %rdi
	callq	dict_uint_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#8:                                 # %if.end.23
	movq	312(%rsp), %rax
	movzwl	(%rax), %r15d
	movl	%r15d, %ebx
	shrl	$8, %ebx
	movq	2(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, 150(%rsp)
	movq	%rcx, 144(%rsp)
	movw	$3584, %r12w            # imm = 0xE00
	cmpl	$18, %ebx
	je	.LBB1_21
# BB#9:                                 # %if.end.23
	movzwl	%bx, %eax
	cmpl	$11, %eax
	jne	.LBB1_20
# BB#10:                                # %if.then.30
	leaq	856(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	dict_find_string
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#11:                                # %do.body
	movq	856(%rsp), %rdi
	movzwl	(%rdi), %r12d
	movl	%r12d, %eax
	andl	$16160, %eax            # imm = 0x3F20
	cmpl	$800, %eax              # imm = 0x320
	jne	.LBB1_12
# BB#14:                                # %do.body.50
	movq	8(%rdi), %rax
	movzwl	264(%rax), %edx
	testl	%edx, %edx
	jne	.LBB1_19
# BB#15:                                # %do.body.50
	movl	4(%rdi), %ecx
	cmpl	%ecx, %edx
	je	.LBB1_19
# BB#16:                                # %land.lhs.true
	movzwl	266(%rax), %eax
	cmpl	%ecx, %eax
	jne	.LBB1_19
# BB#17:                                # %if.then.65
	callq	file_switch_to_read
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_54
# BB#18:                                # %if.then.65.cleanup.75_crit_edge
	movq	856(%rsp), %rdi
	movzwl	(%rdi), %r12d
.LBB1_19:                               # %cleanup.75
	movq	2(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 134(%rsp)
	movq	%rax, 128(%rsp)
	jmp	.LBB1_21
.LBB1_22:                               # %if.else.101
	movl	$0, 72(%rsp)
	movw	$3584, %r12w            # imm = 0xE00
	xorl	%edx, %edx
	movw	$3584, %bx              # imm = 0xE00
	jmp	.LBB1_23
.LBB1_20:                               # %land.lhs.true.86
	movl	%r15d, %eax
	andl	$15360, %eax            # imm = 0x3C00
	movl	$-20, %ebp
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_54
.LBB1_21:                               # %cleanup.98
	movzwl	%bx, %ebx
	shll	$8, %ebx
	movzbl	%r15b, %edx
.LBB1_23:                               # %if.end.106
	movq	120(%rsp), %rax
	movzwl	(%rax), %ecx
	andl	$15360, %ecx            # imm = 0x3C00
	movl	$-10, %ebp
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB1_54
# BB#24:                                # %if.end.114
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movl	4(%rax), %r15d
	testq	%r15, %r15
	je	.LBB1_54
# BB#25:                                # %if.end.120
	movq	8(%r13), %rdi
	movl	$st_gs_font_type1_ptr_element, %edx
	movl	$.L.str.9, %ecx
	movl	%r15d, %esi
	callq	*104(%rdi)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB1_54
# BB#26:                                # %for.body.lr.ph
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	%r12d, 32(%rsp)         # 4-byte Spill
	leaq	(,%r15,8), %rdx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	callq	memset
	leaq	48(%rsp), %r12
.LBB1_28:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rdi
	movq	120(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	callq	array_get
	movl	$1, 268(%rsp)
	movq	%r12, %rdi
	leaq	856(%rsp), %rsi
	callq	charstring_font_get_refs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#29:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	$.L.str.10, %esi
	movl	$1, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movq	%r12, %rdi
	leaq	268(%rsp), %r9
	callq	dict_int_param
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#30:                                # %if.end.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	268(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB1_31
# BB#34:                                # %sw.bb.10.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	%r12, %rdi
	leaq	856(%rsp), %rsi
	leaq	312(%rsp), %rdx
	callq	type2_font_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#35:                                # %if.end.14.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	8(%r13), %rdi
	movq	%r12, %rsi
	leaq	856(%rsp), %rdx
	leaq	312(%rsp), %rcx
	callq	charstring_font_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#36:                                # %if.end.20.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	8(%r13), %rdi
	movl	$.L.str.13, %edx
	movl	$.L.str.14, %ecx
	jmp	.LBB1_37
.LBB1_31:                               # %if.end.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	$-100, %ebp
	cmpl	$1, %eax
	jne	.LBB1_40
# BB#32:                                # %sw.bb.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	$gs_type1_interpret, 352(%rsp)
	movq	$4, 376(%rsp)
	movq	8(%r13), %rdi
	movq	%r12, %rsi
	leaq	856(%rsp), %rdx
	leaq	312(%rsp), %rcx
	callq	charstring_font_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#33:                                # %if.end.6.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	8(%r13), %rdi
	movl	$.L.str.11, %edx
	movl	$.L.str.12, %ecx
.LBB1_37:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_28 Depth=1
	leaq	280(%rsp), %rsi
	callq	build_proc_name_refs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#38:                                # %if.end.26.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	268(%rsp), %ecx
	movl	$st_gs_font_type1, %r8d
	movq	%r13, %rdi
	movq	%r12, %rsi
	leaq	272(%rsp), %rdx
	leaq	280(%rsp), %r9
	callq	build_gs_FDArray_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_40
# BB#39:                                # %if.end.30.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movq	272(%rsp), %rbp
	movq	$0, 424(%rbp)
	movq	272(%rsp), %rax
	movq	$0, 432(%rax)
	movq	%rbp, %rdi
	leaq	856(%rsp), %rsi
	leaq	312(%rsp), %rdx
	callq	charstring_font_init
	movq	$z9_FDArray_glyph_data, 448(%rbp)
	movq	$z9_FDArray_seac_data, 464(%rbp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax,%rbx,8)
	xorl	%ebp, %ebp
.LBB1_40:                               # %fd_array_element.exit
                                        #   in Loop: Header=BB1_28 Depth=1
	testl	%ebp, %ebp
	js	.LBB1_41
# BB#27:                                # %for.cond
                                        #   in Loop: Header=BB1_28 Depth=1
	incq	%rbx
	cmpq	%r15, %rbx
	jb	.LBB1_28
# BB#42:                                # %for.end
	movq	$build_gs_simple_font, 8(%rsp)
	movl	$5, (%rsp)
	leaq	64(%rsp), %rdx
	leaq	232(%rsp), %r9
	movl	$9, %ecx
	movl	$st_gs_font_cid0, %r8d
	movq	%r14, %rsi
	movq	%r13, %rdi
	callq	build_gs_outline_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_41
# BB#43:                                # %if.end.151
	cmpl	$1, %ebp
	jne	.LBB1_45
# BB#44:                                # %if.then.154
	movq	8(%r13), %rdi
	movl	$.L.str.9, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%ebp, %ebp
	jmp	.LBB1_54
.LBB1_45:                               # %if.end.160
	movq	64(%rsp), %rax
	movq	$gs_font_cid0_enumerate_glyph, 216(%rax)
	movq	64(%rsp), %rax
	movq	$z9_glyph_outline, 232(%rax)
	movq	64(%rsp), %rax
	movq	$z9_glyph_info, 224(%rax)
	movq	64(%rsp), %rbx
	movq	224(%rsp), %rax
	movq	%rax, 496(%rbx)
	movups	176(%rsp), %xmm0
	movups	192(%rsp), %xmm1
	movups	208(%rsp), %xmm2
	movups	%xmm2, 480(%rbx)
	movups	%xmm1, 464(%rbx)
	movups	%xmm0, 448(%rbx)
	movl	72(%rsp), %eax
	movq	%rax, 504(%rbx)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 512(%rbx)
	movl	%r15d, 520(%rbx)
	movl	76(%rsp), %eax
	movl	%eax, 524(%rbx)
	movq	$z9_glyph_data, 528(%rbx)
	movq	$0, 536(%rbx)
	cmpl	$0, 372(%rbx)
	jne	.LBB1_47
# BB#46:                                # %if.then.178
	addq	$324, %rbx              # imm = 0x144
	movq	8(%r13), %rdi
	leaq	104(%rsp), %rbp
	leaq	80(%rsp), %rdx
	movq	%rbp, %rsi
	callq	get_font_name
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	copy_font_name
.LBB1_47:                               # %if.end.182
	movq	64(%rsp), %rax
	movq	72(%rax), %rcx
	movups	160(%rsp), %xmm0
	movups	%xmm0, 96(%rcx)
	movq	72(%rax), %rax
	movl	36(%rsp), %ecx          # 4-byte Reload
	movzwl	%cx, %ecx
	orl	28(%rsp), %ecx          # 4-byte Folded Reload
	movw	%cx, 112(%rax)
	movq	144(%rsp), %rcx
	movq	150(%rsp), %rdx
	movq	%rdx, 120(%rax)
	movq	%rcx, 114(%rax)
	movq	64(%rsp), %rax
	movq	72(%rax), %rax
	movl	32(%rsp), %ecx          # 4-byte Reload
	movw	%cx, 128(%rax)
	movq	128(%rsp), %rcx
	movq	134(%rsp), %rdx
	movq	%rdx, 136(%rax)
	movq	%rcx, 130(%rax)
	movq	64(%rsp), %rsi
	movq	%r13, %rdi
	callq	define_gs_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_41
# BB#48:                                # %if.end.197
	movq	64(%rsp), %rdx
	leaq	40(%rdx), %rdi
	movl	$notify_remove_font_type9, %esi
	callq	gs_notify_register
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_41
# BB#49:                                # %for.body.204.lr.ph
	xorl	%eax, %eax
	testb	$1, %r15b
	movq	40(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_51
# BB#50:                                # %for.body.204.prol
	movq	64(%rsp), %rax
	movq	24(%rax), %rax
	movq	(%rdx), %rcx
	movq	%rax, 24(%rcx)
	movq	64(%rsp), %rax
	movq	(%rdx), %rcx
	movq	%rax, 504(%rcx)
	movl	$1, %eax
.LBB1_51:                               # %for.body.204.lr.ph.split
	cmpl	$1, %r15d
	je	.LBB1_54
# BB#52:                                # %for.body.204.lr.ph.split.split
	subl	%eax, %r15d
	leaq	8(%rdx,%rax,8), %rax
.LBB1_53:                               # %for.body.204
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rcx
	movq	24(%rcx), %rcx
	movq	-8(%rax), %rdx
	movq	%rcx, 24(%rdx)
	movq	64(%rsp), %rcx
	movq	-8(%rax), %rdx
	movq	%rcx, 504(%rdx)
	movq	64(%rsp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 24(%rdx)
	movq	64(%rsp), %rcx
	movq	(%rax), %rdx
	movq	%rcx, 504(%rdx)
	addq	$16, %rax
	addl	$-2, %r15d
	jne	.LBB1_53
	jmp	.LBB1_54
.LBB1_41:                               # %fail
	movq	8(%r13), %rdi
	movl	$.L.str.9, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB1_54:                               # %cleanup.220
	movl	%ebp, %eax
	addq	$904, %rsp              # imm = 0x388
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_12:                               # %if.then.41
	movzbl	1(%rdi), %eax
	movl	$-7, %ebp
	cmpl	$3, %eax
	je	.LBB1_54
# BB#13:                                # %cond.true
	callq	check_type_failed
	movl	%eax, %ebp
	jmp	.LBB1_54
.Lfunc_end1:
	.size	zbuildfont9, .Lfunc_end1-zbuildfont9
	.cfi_endproc

	.align	16, 0x90
	.type	z9_glyph_outline,@function
z9_glyph_outline:                       # @z9_glyph_outline
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
	subq	$88, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 144
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
	movq	%r9, %r12
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movq	%rax, 64(%rsp)
	leaq	24(%rsp), %rdx
	leaq	20(%rsp), %rcx
	movq	%rbp, %rsi
	callq	*528(%rbx)
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_2
# BB#1:                                 # %if.end
	movq	16(%rbx), %rdi
	leaq	72(%rsp), %r14
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	glyph_ref
	movslq	20(%rsp), %rax
	movq	512(%rbx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%r12, (%rsp)
	leaq	24(%rsp), %rbx
	movl	%r13d, %esi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	zcharstring_outline
	movl	%eax, %r14d
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
.LBB2_2:                                # %cleanup
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	z9_glyph_outline, .Lfunc_end2-z9_glyph_outline
	.cfi_endproc

	.align	16, 0x90
	.type	z9_glyph_info,@function
z9_glyph_info:                          # @z9_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
	notl	%eax
	andl	$1, %eax
	movl	%eax, (%rsp)
	movl	$gs_default_glyph_info, %r9d
	callq	z1_glyph_info_generic
	popq	%rdx
	retq
.Lfunc_end3:
	.size	z9_glyph_info, .Lfunc_end3-z9_glyph_info
	.cfi_endproc

	.align	16, 0x90
	.type	z9_glyph_data,@function
z9_glyph_data:                          # @z9_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 192
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rax
	movq	%rdi, %r12
	movq	72(%r12), %rsi
	addq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	16(%r12), %rdi
	movq	%rdi, 128(%rsp)
	movzbl	97(%rsi), %ecx
	cmpl	$14, %ecx
	jne	.LBB4_1
# BB#15:                                # %if.end.27
	testq	%rax, %rax
	js	.LBB4_17
# BB#16:                                # %lor.lhs.false
	movslq	488(%r12), %rcx
	cmpq	%rcx, %rax
	jge	.LBB4_17
# BB#20:                                # %if.end.38
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	496(%r12), %edx
	addl	524(%r12), %edx
	imulq	%rdx, %rax
	addq	504(%r12), %rax
	addl	%edx, %edx
	leaq	64(%rsp), %rcx
	leaq	88(%rsp), %r8
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	cid0_read_bytes
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_51
# BB#21:                                # %if.end.53
	movups	88(%rsp), %xmm0
	movups	104(%rsp), %xmm1
	movups	120(%rsp), %xmm2
	movaps	%xmm2, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movslq	524(%r12), %r11
	movl	96(%rsp), %r10d
	cmpl	%r11d, %r10d
	jb	.LBB4_52
# BB#22:                                # %if.end.i.50
	movq	88(%rsp), %rdx
	xorl	%r14d, %r14d
	testl	%r11d, %r11d
	jle	.LBB4_29
# BB#23:                                # %for.body.i.59.preheader
	leal	-1(%r11), %esi
	xorl	%r14d, %r14d
	testb	$3, %r11b
	movl	$0, %edi
	je	.LBB4_26
# BB#24:                                # %for.body.i.59.prol.preheader
	movl	%r11d, %ecx
	andl	$3, %ecx
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB4_25:                               # %for.body.i.59.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r14
	movzbl	(%rdx,%rdi), %ebp
	orq	%rbp, %r14
	incq	%rdi
	cmpl	%edi, %ecx
	jne	.LBB4_25
.LBB4_26:                               # %for.body.i.59.preheader.split
	cmpl	$3, %esi
	jb	.LBB4_29
# BB#27:                                # %for.body.i.59.preheader.split.split
	movl	%r11d, %esi
	subl	%edi, %esi
	leaq	3(%rdi,%rdx), %rdi
	.align	16, 0x90
.LBB4_28:                               # %for.body.i.59
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r14
	movzbl	-3(%rdi), %ecx
	orq	%r14, %rcx
	shlq	$8, %rcx
	movzbl	-2(%rdi), %ebp
	orq	%rcx, %rbp
	shlq	$8, %rbp
	movzbl	-1(%rdi), %ecx
	orq	%rbp, %rcx
	shlq	$8, %rcx
	movzbl	(%rdi), %r14d
	orq	%rcx, %r14
	addq	$4, %rdi
	addl	$-4, %esi
	jne	.LBB4_28
.LBB4_29:                               # %lor.lhs.false.59
	leaq	(%rdx,%r11), %rsi
	movq	%rsi, 88(%rsp)
	subl	%r11d, %r10d
	movl	%r10d, 96(%rsp)
	movslq	496(%r12), %r8
	cmpl	%r8d, %r10d
	jb	.LBB4_52
# BB#30:                                # %if.end.i.113
	xorl	%ebx, %ebx
	testl	%r8d, %r8d
	jle	.LBB4_37
# BB#31:                                # %for.body.i.122.preheader
	leal	-1(%r8), %r9d
	xorl	%ebx, %ebx
	testb	$3, %r8b
	movl	$0, %edi
	je	.LBB4_34
# BB#32:                                # %for.body.i.122.prol.preheader
	movl	%r8d, %ecx
	andl	$3, %ecx
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB4_33:                               # %for.body.i.122.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbx
	movzbl	(%rsi,%rdi), %ebp
	orq	%rbp, %rbx
	incq	%rdi
	cmpl	%edi, %ecx
	jne	.LBB4_33
.LBB4_34:                               # %for.body.i.122.preheader.split
	cmpl	$3, %r9d
	jb	.LBB4_37
# BB#35:                                # %for.body.i.122.preheader.split.split
	movl	%r8d, %ebp
	subl	%edi, %ebp
	addq	%r11, %rdi
	leaq	3(%rdx,%rdi), %rdi
	.align	16, 0x90
.LBB4_36:                               # %for.body.i.122
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rbx
	movzbl	-3(%rdi), %ecx
	orq	%rbx, %rcx
	shlq	$8, %rcx
	movzbl	-2(%rdi), %ebx
	orq	%rcx, %rbx
	shlq	$8, %rbx
	movzbl	-1(%rdi), %ecx
	orq	%rbx, %rcx
	shlq	$8, %rcx
	movzbl	(%rdi), %ebx
	orq	%rcx, %rbx
	addq	$4, %rdi
	addl	$-4, %ebp
	jne	.LBB4_36
.LBB4_37:                               # %lor.lhs.false.66
	addq	%r8, %rsi
	movq	%rsi, 88(%rsp)
	subl	%r8d, %r10d
	movl	%r10d, 96(%rsp)
	cmpl	%r11d, %r10d
	jb	.LBB4_52
# BB#38:                                # %lor.lhs.false.72
	addq	%r11, %rsi
	movq	%rsi, 88(%rsp)
	subl	%r11d, %r10d
	movl	%r10d, 96(%rsp)
	cmpl	%r8d, %r10d
	jae	.LBB4_39
.LBB4_52:                               # %if.end.80.thread
	leaq	16(%rsp), %rdi
	movl	$.L.str.16, %esi
	callq	gs_glyph_data_free
	movl	$-15, %ebp
	jmp	.LBB4_51
.LBB4_1:                                # %if.then
	addq	$96, %rsi
	leaq	88(%rsp), %rcx
	movq	%rax, %rdx
	callq	font_gdir_get_outline
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_51
# BB#2:                                 # %if.end
	movq	88(%rsp), %rax
	movl	$-15, %ebp
	testq	%rax, %rax
	je	.LBB4_51
# BB#3:                                 # %if.end.11
	movslq	524(%r12), %rdx
	movl	96(%rsp), %r8d
	cmpl	%edx, %r8d
	jb	.LBB4_51
# BB#4:                                 # %if.end.i
	xorl	%esi, %esi
	testl	%edx, %edx
	jle	.LBB4_11
# BB#5:                                 # %for.body.i.preheader
	leal	-1(%rdx), %r9d
	xorl	%esi, %esi
	testb	$3, %dl
	movl	$0, %ebx
	je	.LBB4_8
# BB#6:                                 # %for.body.i.prol.preheader
	movl	%edx, %ecx
	andl	$3, %ecx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_7:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	(%rax,%rbx), %edi
	orq	%rdi, %rsi
	incq	%rbx
	cmpl	%ebx, %ecx
	jne	.LBB4_7
.LBB4_8:                                # %for.body.i.preheader.split
	cmpl	$3, %r9d
	jb	.LBB4_11
# BB#9:                                 # %for.body.i.preheader.split.split
	movl	%edx, %edi
	subl	%ebx, %edi
	leaq	3(%rbx,%rax), %rbx
	.align	16, 0x90
.LBB4_10:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %rsi
	movzbl	-3(%rbx), %ecx
	orq	%rsi, %rcx
	shlq	$8, %rcx
	movzbl	-2(%rbx), %esi
	orq	%rcx, %rsi
	shlq	$8, %rsi
	movzbl	-1(%rbx), %ecx
	orq	%rsi, %rcx
	shlq	$8, %rcx
	movzbl	(%rbx), %esi
	orq	%rcx, %rsi
	addq	$4, %rbx
	addl	$-4, %edi
	jne	.LBB4_10
.LBB4_11:                               # %if.end.16
	addq	%rdx, %rax
	movq	%rax, 88(%rsp)
	subl	%edx, %r8d
	movl	%r8d, 96(%rsp)
	movl	520(%r12), %eax
	cmpq	%rax, %rsi
	jae	.LBB4_51
# BB#12:                                # %if.end.22
	testq	%r15, %r15
	je	.LBB4_14
# BB#13:                                # %if.then.24
	movups	88(%rsp), %xmm0
	movups	104(%rsp), %xmm1
	movups	120(%rsp), %xmm2
	movups	%xmm2, 32(%r15)
	movups	%xmm1, 16(%r15)
	movups	%xmm0, (%r15)
.LBB4_14:                               # %if.end.25
	movl	%esi, (%r14)
	xorl	%ebp, %ebp
	jmp	.LBB4_51
.LBB4_17:                               # %if.then.34
	movl	$0, (%r14)
	movl	$-15, %ebp
.LBB4_18:                               # %if.then.34
	testq	%r15, %r15
	je	.LBB4_51
# BB#19:                                # %if.then.36
	movq	%r15, %rdi
	callq	gs_glyph_data_from_null
.LBB4_51:                               # %cleanup.114
	movl	%ebp, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_39:                               # %if.end.i.71
	xorl	%r13d, %r13d
	testl	%r8d, %r8d
	jle	.LBB4_46
# BB#40:                                # %for.body.i.80.preheader
	leal	-1(%r8), %r9d
	xorl	%r13d, %r13d
	testb	$3, %r8b
	movl	$0, %edi
	je	.LBB4_43
# BB#41:                                # %for.body.i.80.prol.preheader
	leaq	(%r8,%r11,2), %rcx
	leaq	(%rcx,%rdx), %rbp
	movl	%r8d, %ecx
	andl	$3, %ecx
	xorl	%r13d, %r13d
	xorl	%edi, %edi
.LBB4_42:                               # %for.body.i.80.prol
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r13
	movzbl	(%rbp,%rdi), %eax
	orq	%rax, %r13
	incq	%rdi
	cmpl	%edi, %ecx
	jne	.LBB4_42
.LBB4_43:                               # %for.body.i.80.preheader.split
	cmpl	$3, %r9d
	jb	.LBB4_46
# BB#44:                                # %for.body.i.80.preheader.split.split
	movl	%r8d, %ebp
	subl	%edi, %ebp
	leaq	(%rdi,%r11,2), %rax
	addq	%r8, %rax
	leaq	3(%rdx,%rax), %rcx
.LBB4_45:                               # %for.body.i.80
                                        # =>This Inner Loop Header: Depth=1
	shlq	$8, %r13
	movzbl	-3(%rcx), %eax
	orq	%r13, %rax
	shlq	$8, %rax
	movzbl	-2(%rcx), %edx
	orq	%rax, %rdx
	shlq	$8, %rdx
	movzbl	-1(%rcx), %eax
	orq	%rdx, %rax
	shlq	$8, %rax
	movzbl	(%rcx), %r13d
	orq	%rax, %r13
	addq	$4, %rcx
	addl	$-4, %ebp
	jne	.LBB4_45
.LBB4_46:                               # %if.end.84
	addq	%r8, %rsi
	movq	%rsi, 88(%rsp)
	subl	%r8d, %r10d
	movl	%r10d, 96(%rsp)
	leaq	16(%rsp), %rdi
	movl	$.L.str.16, %esi
	callq	gs_glyph_data_free
	cmpq	%rbx, %r13
	jbe	.LBB4_47
# BB#48:                                # %if.end.91
	movl	520(%r12), %eax
	movl	$-15, %ebp
	cmpq	%rax, %r14
	jae	.LBB4_51
# BB#49:                                # %if.end.98
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%r14d, (%rax)
	xorl	%ebp, %ebp
	testq	%r15, %r15
	je	.LBB4_51
# BB#50:                                # %if.end.103
	subl	%ebx, %r13d
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	movq	%r15, %r8
	callq	cid0_read_bytes
	movl	%eax, %ebp
	jmp	.LBB4_51
.LBB4_47:                               # %if.then.87
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	$0, (%rax)
	movl	$-21, %ebp
	jmp	.LBB4_18
.Lfunc_end4:
	.size	z9_glyph_data, .Lfunc_end4-z9_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	notify_remove_font_type9,@function
notify_remove_font_type9:               # @notify_remove_font_type9
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	jne	.LBB5_11
# BB#1:                                 # %for.cond.preheader
	movl	520(%rdi), %eax
	testl	%eax, %eax
	je	.LBB5_11
# BB#2:                                 # %for.body.lr.ph
	movq	512(%rdi), %rcx
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB5_5
# BB#3:                                 # %for.body.prol
	movq	(%rcx), %rsi
	movl	$1, %edx
	cmpq	%rdi, 504(%rsi)
	jne	.LBB5_5
# BB#4:                                 # %if.then.4.prol
	movq	$0, 504(%rsi)
	movl	$1, %edx
.LBB5_5:                                # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB5_11
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpq	%rdi, 504(%rsi)
	jne	.LBB5_8
# BB#7:                                 # %if.then.4
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	$0, 504(%rsi)
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	8(%rcx,%rdx,8), %rsi
	cmpq	%rdi, 504(%rsi)
	jne	.LBB5_10
# BB#9:                                 # %if.then.4.1
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	$0, 504(%rsi)
.LBB5_10:                               # %for.inc.1
                                        #   in Loop: Header=BB5_6 Depth=1
	addq	$2, %rdx
	cmpl	%eax, %edx
	jb	.LBB5_6
.LBB5_11:                               # %if.end.11
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	notify_remove_font_type9, .Lfunc_end5-notify_remove_font_type9
	.cfi_endproc

	.align	16, 0x90
	.type	z9_FDArray_glyph_data,@function
z9_FDArray_glyph_data:                  # @z9_FDArray_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-10, %eax
	retq
.Lfunc_end6:
	.size	z9_FDArray_glyph_data, .Lfunc_end6-z9_FDArray_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	z9_FDArray_seac_data,@function
z9_FDArray_seac_data:                   # @z9_FDArray_seac_data
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-10, %eax
	retq
.Lfunc_end7:
	.size	z9_FDArray_seac_data, .Lfunc_end7-z9_FDArray_seac_data
	.cfi_endproc

	.align	16, 0x90
	.type	cid0_read_bytes,@function
cid0_read_bytes:                        # @cid0_read_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 128
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %rdx
	movl	%ebx, %eax
	movl	$-15, %r14d
	movq	%rax, %rsi
	addq	%r13, %rsi
	jb	.LBB8_35
# BB#1:                                 # %if.end
	movq	72(%rdx), %rbp
	movzbl	129(%rbp), %esi
	cmpl	$14, %esi
	jne	.LBB8_21
# BB#2:                                 # %if.then.6
	movzbl	113(%rbp), %esi
	cmpl	$18, %esi
	jne	.LBB8_6
# BB#3:                                 # %if.then.15
	movl	116(%rbp), %ecx
	subq	%r13, %rcx
	jbe	.LBB8_35
# BB#4:                                 # %if.then.15
	cmpq	%rcx, %rax
	ja	.LBB8_35
# BB#5:                                 # %cleanup.thread
	addq	120(%rbp), %r13
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	movq	%r13, %rbp
	jmp	.LBB8_31
.LBB8_21:                               # %if.else.128
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	16(%rdx), %rdi
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	callq	get_minst_from_memory
	movq	136(%rbp), %r15
	movzwl	264(%r15), %edx
	movl	132(%rbp), %ecx
	cmpl	%ecx, %edx
	je	.LBB8_26
# BB#22:                                # %if.then.144
	movq	160(%rax), %rax
	testw	%dx, %dx
	jne	.LBB8_25
# BB#23:                                # %land.lhs.true
	movzwl	266(%r15), %edx
	cmpl	%ecx, %edx
	jne	.LBB8_25
# BB#24:                                # %if.then.157
	subq	$-128, %rbp
	movq	%rbp, %rdi
	callq	file_switch_to_read
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB8_26
	jmp	.LBB8_35
.LBB8_6:                                # %if.else
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	addq	$112, %rbp
	movq	16(%rdx), %rdi
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	leaq	56(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	callq	array_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB8_35
	.align	16, 0x90
.LBB8_7:                                # %if.end.33
                                        # =>This Inner Loop Header: Depth=1
	movl	$-20, %r14d
	movzbl	57(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB8_35
# BB#8:                                 # %cleanup.49
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	60(%rsp), %r12d
	movq	%r13, %rbx
	subq	%r12, %rbx
	jb	.LBB8_10
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB8_7 Depth=1
	incl	%r15d
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	leaq	56(%rsp), %rcx
	callq	array_get
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movq	%rbx, %r13
	jns	.LBB8_7
	jmp	.LBB8_35
.LBB8_25:                               # %if.else.169
	movq	256(%rax), %r15
.LBB8_26:                               # %do.end
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	spseek
	movl	$-12, %r14d
	testl	%eax, %eax
	js	.LBB8_35
# BB#27:                                # %if.end.176
	xorl	%r13d, %r13d
	movq	40(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	$0, %edx
	movq	%rax, %rbp
	jne	.LBB8_30
# BB#28:                                # %if.then.179
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$.L.str.17, %edx
	movl	%ebx, %esi
	callq	*136(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB8_35
# BB#29:                                # %if.end.188
	movq	48(%rsp), %rdx          # 8-byte Reload
	xorl	%r13d, %r13d
.LBB8_30:                               # %cleanup.198
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	leaq	56(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	sgets
	testl	%eax, %eax
	setns	%al
	cmpl	%ebx, 56(%rsp)
	sete	%cl
	andb	%al, %cl
	movl	$-12, %r14d
	cmovnel	%r13d, %r14d
	testb	%cl, %cl
	movq	24(%rsp), %rcx          # 8-byte Reload
	je	.LBB8_33
	jmp	.LBB8_31
.LBB8_10:                               # %for.end
	subq	%r13, %r12
	cmpl	36(%rsp), %r12d         # 4-byte Folded Reload
	jae	.LBB8_11
# BB#12:                                # %if.else.63
	xorl	%ecx, %ecx
	movq	40(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movq	%rax, %rdi
	jne	.LBB8_15
# BB#13:                                # %if.then.66
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$.L.str.17, %edx
	movl	36(%rsp), %esi          # 4-byte Reload
	callq	*136(%rdi)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB8_35
# BB#14:                                # %if.end.73
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, %rdi
.LBB8_15:                               # %while.body.lr.ph
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	addq	64(%rsp), %r13
	movl	%r12d, %edx
	movq	%r13, %rsi
	callq	memcpy
	incl	%r15d
	leaq	56(%rsp), %r14
	movl	36(%rsp), %r13d         # 4-byte Reload
.LBB8_16:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	movl	%r15d, %edx
	movq	%rbp, %rsi
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB8_32
# BB#17:                                # %if.end.90
                                        #   in Loop: Header=BB8_16 Depth=1
	movzbl	57(%rsp), %eax
	cmpl	$18, %eax
	jne	.LBB8_32
# BB#18:                                # %cleanup.113
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	60(%rsp), %eax
	movl	%r13d, %ebx
	subl	%r12d, %ebx
	cmpl	%ebx, %eax
	cmovbel	%eax, %ebx
	movl	%r12d, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	64(%rsp), %rsi
	movl	%ebx, %edx
	callq	memcpy
	addl	%ebx, %r12d
	incl	%r15d
	cmpl	%r13d, %r12d
	jb	.LBB8_16
# BB#19:
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB8_20
.LBB8_11:                               # %if.then.59
	addq	64(%rsp), %r13
	xorl	%ecx, %ecx
	movq	%r13, %rbp
.LBB8_20:                               # %cleanup.117.thread112
	xorl	%r14d, %r14d
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
.LBB8_31:                               # %if.end.203
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	gs_glyph_data_from_string
	jmp	.LBB8_35
.LBB8_32:                               # %cleanup.117.thread
	xorl	%r14d, %r14d
	movl	36(%rsp), %ebx          # 4-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB8_33:                               # %err
	cmpq	40(%rsp), %rbp          # 8-byte Folded Reload
	je	.LBB8_35
# BB#34:                                # %if.then.206
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$.L.str.17, %ecx
	movq	%rbp, %rsi
	movl	%ebx, %edx
	callq	*160(%rdi)
.LBB8_35:                               # %cleanup.211
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	cid0_read_bytes, .Lfunc_end8-cid0_read_bytes
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.buildfont9"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.type9mapcid"
	.size	.L.str.1, 14

	.type	zfcid0_op_defs,@object  # @zfcid0_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfcid0_op_defs
	.align	16
zfcid0_op_defs:
	.quad	.L.str
	.quad	zbuildfont9
	.quad	.L.str.1
	.quad	ztype9mapcid
	.zero	16
	.size	zfcid0_op_defs, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%Type9BuildGlyph"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FDArray"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CIDFontName"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FDBytes"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GlyphData"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"CIDMapOffset"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DataSource"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"buildfont9(FDarray)"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"FontType"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%Type1BuildChar"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%Type1BuildGlyph"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%Type2BuildChar"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%Type2BuildGlyph"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"z9_glyph_outline"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"z9_glyph_data"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"cid0_read_bytes"
	.size	.L.str.17, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
