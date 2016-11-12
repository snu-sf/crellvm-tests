	.text
	.file	"zfont2.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1132462080              # float 256
	.text
	.globl	type2_font_params
	.align	16, 0x90
	.type	type2_font_params,@function
type2_font_params:                      # @type2_font_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 48
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	$gs_type2_interpret, 40(%r14)
	movl	$-1, 64(%r14)
	movq	32(%rbx), %rax
	movl	4(%rax), %eax
	cmpl	$33900, %eax            # imm = 0x846C
	movl	$1131, %ecx             # imm = 0x46B
	movl	$32768, %edx            # imm = 0x8000
	cmovbl	%ecx, %edx
	cmpl	$1240, %eax             # imm = 0x4D8
	movl	$107, %eax
	cmovael	%edx, %eax
	movl	%eax, 68(%r14)
	movq	(%rbx), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_1
# BB#2:                                 # %if.then
	movq	8(%rsp), %rcx
	movzwl	(%rcx), %edx
	andl	$15360, %edx            # imm = 0x3C00
	movl	$-20, %eax
	cmpl	$1024, %edx             # imm = 0x400
	jne	.LBB0_12
# BB#3:                                 # %if.end
	movq	%rcx, 40(%rbx)
	jmp	.LBB0_4
.LBB0_1:                                # %entry.if.end.5_crit_edge
	movq	40(%rbx), %rcx
.LBB0_4:                                # %if.end.5
	movl	4(%rcx), %eax
	cmpl	$33900, %eax            # imm = 0x846C
	movl	$1131, %ecx             # imm = 0x46B
	movl	$32768, %edx            # imm = 0x8000
	cmovbl	%ecx, %edx
	cmpl	$1240, %eax             # imm = 0x4D8
	movl	$107, %r8d
	cmovael	%edx, %r8d
	leaq	72(%r14), %r9
	movl	%r8d, 72(%r14)
	movq	(%rbx), %rdi
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	movl	$-1, %ecx
	callq	dict_uint_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#5:                                 # %lor.lhs.false
	movq	(%rbx), %rdi
	leaq	20(%rsp), %rdx
	movl	$.L.str.2, %esi
	xorps	%xmm0, %xmm0
	callq	dict_float_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#6:                                 # %lor.lhs.false.18
	movq	(%rbx), %rdi
	leaq	16(%rsp), %rdx
	movl	$.L.str.3, %esi
	xorps	%xmm0, %xmm0
	callq	dict_float_param
	testl	%eax, %eax
	js	.LBB0_12
# BB#7:                                 # %if.end.24
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvttss2si	%xmm1, %eax
	movl	%eax, 88(%r14)
	mulss	16(%rsp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, 92(%r14)
	movq	(%rbx), %rdi
	leaq	(%rsp), %rdx
	movl	$.L.str.4, %esi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_8
# BB#9:                                 # %if.else
	movq	(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB0_12
# BB#10:                                # %if.else.39
	movq	8(%rcx), %rax
	movq	%rax, 80(%r14)
	jmp	.LBB0_11
.LBB0_8:                                # %if.then.32
	movq	$0, 80(%r14)
.LBB0_11:                               # %cleanup
	xorl	%eax, %eax
.LBB0_12:                               # %cleanup.43
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	type2_font_params, .Lfunc_end0-type2_font_params
	.cfi_endproc

	.align	16, 0x90
	.type	zbuildfont2,@function
zbuildfont2:                            # @zbuildfont2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	subq	$632, %rsp              # imm = 0x278
.Ltmp7:
	.cfi_def_cfa_offset 656
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	624(%rbx), %r14
	movq	8(%rbx), %rdi
	leaq	552(%rsp), %rsi
	movl	$.L.str.7, %edx
	movl	$.L.str.8, %ecx
	callq	build_proc_name_refs
	testl	%eax, %eax
	js	.LBB1_4
# BB#1:                                 # %if.end
	leaq	584(%rsp), %rsi
	movq	%r14, %rdi
	callq	charstring_font_get_refs
	testl	%eax, %eax
	js	.LBB1_4
# BB#2:                                 # %if.end.4
	leaq	584(%rsp), %rsi
	leaq	8(%rsp), %rdx
	callq	type2_font_params
	testl	%eax, %eax
	js	.LBB1_4
# BB#3:                                 # %if.end.8
	movl	$16, (%rsp)
	leaq	552(%rsp), %rdx
	leaq	584(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	$2, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	build_charstring_font
.LBB1_4:                                # %cleanup
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	zbuildfont2, .Lfunc_end1-zbuildfont2
	.cfi_endproc

	.align	16, 0x90
	.type	zparsecff,@function
zparsecff:                              # @zparsecff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$1080, %rsp             # imm = 0x438
.Ltmp16:
	.cfi_def_cfa_offset 1136
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	624(%r15), %rax
	movl	$-7, %r12d
	testb	$32, (%rax)
	je	.LBB2_312
# BB#1:                                 # %do.end
	movzbl	1(%rax), %ecx
	cmpl	$18, %ecx
	jne	.LBB2_2
# BB#17:                                # %if.then.80
	leaq	368(%rsp), %r8
	movq	%r8, 392(%rsp)
	movups	(%rax), %xmm0
	movaps	%xmm0, 368(%rsp)
	movl	4(%rax), %r14d
	movl	%r14d, 400(%rsp)
	movl	$65535, 408(%rsp)       # imm = 0xFFFF
	movl	$16, 404(%rsp)
.LBB2_18:                               # %if.end.90
	movl	$16, %ecx
	movl	$2, %esi
.LBB2_19:                               # %if.end.90
	leaq	-16(%rax), %rbx
	movzbl	-15(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB2_20
# BB#21:                                # %if.end.101
	movl	$-15, %r12d
	cmpl	$8, %r14d
	jb	.LBB2_312
# BB#22:                                # %if.end.115
	movq	8(%r8), %rdx
	movzbl	(%rdx), %edx
	cmpl	$1, %edx
	jne	.LBB2_312
# BB#23:                                # %if.end.119
	leal	-1(%r14), %ebp
	cmpl	$2, %ebp
	jb	.LBB2_312
# BB#24:                                # %if.end.131
	movzwl	-8(%rax), %r13d
	movl	$2, %eax
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%r8,%rax), %rax
	movzbl	(%rax,%rsi), %edx
	leaq	520(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#25:                                # %if.end.137
	movl	524(%rsp), %edx
	leaq	496(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#26:                                # %if.end.142
	movl	500(%rsp), %edx
	leaq	472(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#27:                                # %if.end.148
	movl	476(%rsp), %edx
	leaq	448(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#28:                                # %if.end.154
	cmpl	$0, 464(%rsp)
	je	.LBB2_30
# BB#29:                                # %if.then.156
	leaq	432(%rsp), %rsi
	leaq	448(%rsp), %rdx
	leaq	392(%rsp), %rcx
	movq	%r15, %rdi
	callq	make_stringarray_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
.LBB2_30:                               # %if.end.162
	movl	536(%rsp), %esi
	movl	$-13, %r12d
	cmpl	$65534, %esi            # imm = 0xFFFE
	ja	.LBB2_312
# BB#31:                                # %if.end.167
	movq	8(%r15), %rdi
	leaq	416(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#32:                                # %for.cond.174.preheader
	movl	536(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_311
# BB#33:                                # %for.body.178.lr.ph
	leaq	368(%r15), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leal	-2(%r14), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
	leaq	392(%rsp), %rsi
	jmp	.LBB2_34
.LBB2_2:                                # %do.end
	movl	$-20, %r12d
	movzbl	%cl, %ecx
	cmpl	$4, %ecx
	jne	.LBB2_312
# BB#3:                                 # %if.then.6
	movq	8(%rax), %r8
	movq	%r8, 392(%rsp)
	movslq	4(%rax), %rsi
	testq	%rsi, %rsi
	movl	4(%r8), %ecx
	movl	$0, 400(%rsp)
	movl	$-15, %r12d
	jle	.LBB2_312
# BB#4:                                 # %for.body.lr.ph
	leaq	-1(%rsi), %rbp
	xorl	%r14d, %r14d
	movq	%r8, %rdi
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %edx
	andl	$16160, %edx            # imm = 0x3F20
	cmpl	$4640, %edx             # imm = 0x1220
	jne	.LBB2_6
# BB#8:                                 # %if.end.34
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	4(%rdi), %edx
	cmpl	%ecx, %edx
	jg	.LBB2_312
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpq	%rbp, %rbx
	jge	.LBB2_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_5 Depth=1
	cmpl	%ecx, %edx
	jl	.LBB2_312
.LBB2_11:                               # %for.inc
                                        #   in Loop: Header=BB2_5 Depth=1
	addl	%edx, %r14d
	movl	%r14d, 400(%rsp)
	incq	%rbx
	addq	$16, %rdi
	cmpq	%rsi, %rbx
	jl	.LBB2_5
# BB#12:                                # %for.end
	testl	%r14d, %r14d
	je	.LBB2_312
# BB#13:                                # %if.end.53
	cmpl	$1, %esi
	jne	.LBB2_15
# BB#14:                                # %if.then.56
	movabsq	$281470681743376, %rcx  # imm = 0xFFFF00000010
	movq	%rcx, 404(%rsp)
	jmp	.LBB2_18
.LBB2_20:                               # %if.then.98
	movq	%rbx, %rdi
.LBB2_7:                                # %cond.true
	callq	check_type_failed
	movl	%eax, %r12d
.LBB2_312:                              # %cleanup.258
	movl	%r12d, %eax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_6:                                # %if.then.21
	movzbl	1(%rdi), %eax
	cmpl	$18, %eax
	movl	$-7, %r12d
	je	.LBB2_312
	jmp	.LBB2_7
.LBB2_15:                               # %if.else
	leal	-1(%rcx), %esi
	movl	%esi, 408(%rsp)
	testl	%ecx, %esi
	jne	.LBB2_312
# BB#16:                                # %if.end.63
	movslq	%ecx, %rdx
	imulq	$-580400985, %rdx, %rdx # imm = 0xFFFFFFFFDD67C8A7
	shrq	$32, %rdx
	addl	%ecx, %edx
	movl	%edx, %edi
	shrl	$31, %edi
	sarl	$5, %edx
	addl	%edi, %edx
	imull	$37, %edx, %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movl	zparsecff.mod2shift(,%rcx,4), %ecx
	movl	%ecx, 404(%rsp)
	andl	$2, %esi
	jmp	.LBB2_19
.LBB2_36:                               # %if.end.i.120
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%r13d, 112(%rsp)        # 4-byte Spill
	movl	532(%rsp), %eax
	movl	%eax, %edx
	imull	%ecx, %edx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movl	520(%rsp), %edi
	movl	524(%rsp), %ecx
	leal	3(%rdx,%rdi), %edx
	leaq	592(%rsp), %rdi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#37:                                # %if.end.5.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	532(%rsp), %eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	1(%rcx), %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	%eax, %edx
	imull	%ecx, %edx
	movl	520(%rsp), %esi
	movl	524(%rsp), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	544(%rsp), %rdi
	leaq	392(%rsp), %rsi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#38:                                # %if.end.19.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	544(%rsp), %esi
	movl	592(%rsp), %eax
	cmpl	%eax, %esi
	jb	.LBB2_39
# BB#40:                                # %if.end.22.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	528(%rsp), %r13d
	leal	(%r13,%rsi), %edx
	cmpl	524(%rsp), %edx
	movl	$-15, %r12d
	ja	.LBB2_312
# BB#41:                                # %if.end.183
                                        #   in Loop: Header=BB2_34 Depth=1
	subl	%eax, %esi
	je	.LBB2_313
# BB#42:                                # %if.end.187
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movl	$-13, %r12d
	cmpl	$200, %esi
	ja	.LBB2_312
# BB#43:                                # %if.end.192
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	400(%rsp), %rcx
	movl	$-15, %r12d
	cmpl	%ecx, %edx
	ja	.LBB2_312
# BB#44:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB2_34 Depth=1
	addl	%eax, %r13d
	shrq	$32, %rcx
	movl	%esi, %r15d
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	leaq	128(%rsp), %r12
	jmp	.LBB2_45
.LBB2_46:                               # %while.body.i.while.body.i_crit_edge
                                        #   in Loop: Header=BB2_45 Depth=2
	leal	(%r13,%rbp), %r13d
	subl	%ebp, %r15d
	addq	%rbp, %r12
	movl	404(%rsp), %ecx
.LBB2_45:                               # %while.body.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	408(%rsp), %esi
	leal	1(%rsi), %ebx
	andl	%r13d, %esi
	subl	%esi, %ebx
	movl	%r13d, %eax
	shrl	%cl, %eax
	movq	392(%rsp), %rcx
	shlq	$4, %rax
	addq	8(%rcx,%rax), %rsi
	cmpl	%r15d, %ebx
	cmoval	%r15d, %ebx
	movl	%ebx, %ebp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	cmpl	%ebx, %r15d
	jne	.LBB2_46
# BB#47:                                # %if.end.198
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpb	$0, 128(%rsp)
	movq	88(%rsp), %r15          # 8-byte Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	je	.LBB2_313
# BB#48:                                # %if.end.204
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%r15), %rax
	movq	%r15, %rbx
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$1, %r8d
	leaq	128(%rsp), %rsi
	leaq	352(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#49:                                # %if.end.212
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	120(%rsp), %rsi         # 8-byte Reload
	cmpl	%esi, 512(%rsp)
	jbe	.LBB2_50
# BB#51:                                # %if.end.i.158
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	508(%rsp), %eax
	imull	%eax, %esi
	movl	496(%rsp), %edx
	movl	500(%rsp), %ecx
	leal	3(%rsi,%rdx), %edx
	leaq	592(%rsp), %rdi
	leaq	392(%rsp), %rsi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#52:                                # %if.end.5.i.167
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	508(%rsp), %eax
	movl	%eax, %edx
	imull	116(%rsp), %edx         # 4-byte Folded Reload
	movl	496(%rsp), %esi
	movl	500(%rsp), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	544(%rsp), %rdi
	leaq	392(%rsp), %rsi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#53:                                # %if.end.19.i.169
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	544(%rsp), %eax
	movl	592(%rsp), %r13d
	cmpl	%r13d, %eax
	jb	.LBB2_54
# BB#55:                                # %if.end.22.i.173
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	504(%rsp), %ebp
	leal	(%rax,%rbp), %r15d
	cmpl	500(%rsp), %r15d
	movl	$-15, %r12d
	ja	.LBB2_312
# BB#56:                                # %if.end.217
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	$20, %esi
	leaq	336(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#57:                                # %if.end.224
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	416(%rsp), %rdi
	leaq	352(%rsp), %rsi
	leaq	336(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_312
# BB#58:                                # %if.end.229
                                        #   in Loop: Header=BB2_34 Depth=1
	addl	%r13d, %ebp
	movl	464(%rsp), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	$0, %ecx
	leaq	432(%rsp), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	$0, 1056(%rsp)
	movq	$0, 1048(%rsp)
	xorl	%esi, %esi
	movl	$36, %edx
	movq	%rbp, %r12
	leaq	960(%rsp), %rbp
	movq	%rbp, %rdi
	callq	memset
	movl	%r15d, (%rsp)
	movq	%rbx, %r15
	movq	%r15, %rdi
	leaq	336(%rsp), %r13
	movq	%r13, %rsi
	movq	%rbp, %rdx
	leaq	472(%rsp), %r13
	movq	%r13, %rcx
	leaq	392(%rsp), %rbx
	movq	%rbx, %r8
	movl	%r12d, %r9d
	callq	parse_dict
	movl	$1, %r12d
	testl	%eax, %eax
	js	.LBB2_59
# BB#60:                                # %if.end.i.76
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	976(%rsp), %r9d
	movl	988(%rsp), %eax
	addl	%r9d, %eax
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	leaq	336(%rsp), %rsi
	movq	%rbp, %rdx
	movq	%r13, %rcx
	movq	%rbx, %r8
	callq	parse_dict
	testl	%eax, %eax
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
	js	.LBB2_309
# BB#61:                                # %if.end.9.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	984(%rsp), %eax
	movl	976(%rsp), %edx
	addl	%eax, %edx
	testl	%eax, %eax
	cmovel	%eax, %edx
	leaq	1024(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#62:                                # %if.end.18.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$.L.str.11, %ecx
	movq	%r15, %rdi
	leaq	336(%rsp), %rsi
	leaq	1056(%rsp), %rdx
	callq	find_font_dict
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#63:                                # %if.end.23.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$.L.str.12, %ecx
	movq	%r15, %rdi
	leaq	336(%rsp), %rsi
	leaq	1048(%rsp), %rdx
	callq	find_font_dict
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#64:                                # %if.end.28.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$0, 1040(%rsp)
                                        # implicit-def: EAX
	movl	%eax, 64(%rsp)          # 4-byte Spill
	je	.LBB2_68
# BB#65:                                # %if.then.30.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%r15, %rdi
	leaq	544(%rsp), %rsi
	leaq	1024(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_stringarray_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#66:                                # %if.end.35.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	1056(%rsp), %r13
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.13, %esi
	movl	$5, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#67:                                # %cleanup.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%r13, %rdi
	leaq	592(%rsp), %rsi
	leaq	544(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, 64(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	%eax, %r12d
	js	.LBB2_309
.LBB2_68:                               # %if.end.41.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	je	.LBB2_73
# BB#69:                                # %if.end.41.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	992(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB2_73
# BB#70:                                # %if.then.44.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	movq	1056(%rsp), %rbp
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str, %esi
	movl	$11, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_71
# BB#72:                                # %idict_put_c_name.exit19.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%rbp, %rdi
	leaq	592(%rsp), %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	movl	104(%rsp), %ebp         # 4-byte Reload
	js	.LBB2_309
.LBB2_73:                               # %if.end.50.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	980(%rsp), %edx
	movl	$-10, %r12d
	testl	%edx, %edx
	je	.LBB2_309
# BB#74:                                # %if.end.54.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	1000(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_309
# BB#75:                                # %if.end.61.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%ebp, 104(%rsp)         # 4-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	%r15, %rbx
	movslq	968(%rsp), %rax
	cmpq	$3, %rax
	jae	.LBB2_76
# BB#81:                                # %switch.lookup.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	.Lswitch.table.1(,%rax,8), %rax
	jmp	.LBB2_82
.LBB2_313:                              # %cleanup.242.thread215
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	112(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB2_310
.LBB2_71:                               # %idict_put_c_name.exit19.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	104(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB2_309
.LBB2_76:                               # %sw.default.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	movl	$-15, %r12d
	jb	.LBB2_77
# BB#78:                                # %sw.default.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	400(%rsp), %rcx
	cmpl	%r14d, %ecx
	jb	.LBB2_77
# BB#79:                                # %if.end.70.i
                                        #   in Loop: Header=BB2_34 Depth=1
	shrq	$32, %rcx
	movl	408(%rsp), %edx
	andl	%eax, %edx
	shrl	%cl, %eax
	movq	392(%rsp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	movzbl	(%rax,%rdx), %eax
	cmpq	$2, %rax
	movq	%rbx, %r15
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
	ja	.LBB2_309
# BB#80:                                # %cleanup.75.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%r15, %rbx
	leaq	.Lswitch.table(,%rax,8), %rax
.LBB2_82:                               # %sw.epilog.78.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	(%rax), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpl	$0, 992(%rsp)
	je	.LBB2_154
# BB#83:                                # %if.then.81.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	964(%rsp), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	movl	$-10, %r12d
	je	.LBB2_153
# BB#84:                                # %if.then.81.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	960(%rsp), %edx
	testl	%edx, %edx
	je	.LBB2_153
# BB#85:                                # %if.end.88.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	592(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_86
# BB#87:                                # %if.end.95.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	608(%rsp), %ecx
	movl	$96, %edx
	movl	$.L.str.14, %r8d
	leaq	912(%rsp), %rsi
	callq	gs_alloc_ref_array
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_88
# BB#89:                                # %if.end.101.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.15, %esi
	movl	$7, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_90
# BB#91:                                # %idict_put_c_name.exit33.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	912(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_92
# BB#93:                                # %if.end.106.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	1016(%rsp), %esi
	incl	%esi
	leaq	896(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_94
# BB#95:                                # %if.end.115.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.16, %esi
	movl	$14, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_96
# BB#97:                                # %idict_put_c_name.exit44.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	896(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_98
# BB#99:                                # %if.end.120.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.21, %esi
	movl	$10, %edx
	xorl	%r8d, %r8d
	leaq	872(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_153
# BB#100:                               # %if.end.128.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	872(%rsp), %rsi
	leaq	888(%rsp), %rdx
	callq	dict_find
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	608(%rsp), %ecx
	testl	%ecx, %ecx
	movl	$0, %eax
	je	.LBB2_127
.LBB2_101:                              # %for.body.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, 864(%rsp)
	movl	%ebp, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	920(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$0, 976(%rsp)
	movl	$0, 984(%rsp)
	cmpl	%ebp, %ecx
	jbe	.LBB2_102
# BB#103:                               # %if.end.i.48.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	604(%rsp), %eax
	movl	%eax, %edx
	imull	%ebp, %edx
	movl	592(%rsp), %esi
	movl	596(%rsp), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	1064(%rsp), %rdi
	leaq	392(%rsp), %rsi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#104:                               # %if.end.5.i.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	604(%rsp), %eax
	incl	%ebp
	movl	%eax, %edx
	imull	%ebp, %edx
	movl	592(%rsp), %esi
	movl	596(%rsp), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	848(%rsp), %rdi
	leaq	392(%rsp), %rsi
	callq	*offset_procs(,%rax,8)
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#105:                               # %if.end.19.i.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	848(%rsp), %eax
	movl	1064(%rsp), %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	cmpl	%ecx, %eax
	jb	.LBB2_106
# BB#107:                               # %if.end.22.i.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	600(%rsp), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx), %r15d
	cmpl	596(%rsp), %r15d
	movl	$-15, %r12d
	ja	.LBB2_125
# BB#108:                               # %if.end.141.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	shlq	$4, %rax
	movq	56(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rdi
	movl	$5, %esi
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#109:                               # %if.end.148.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	32(%rsp), %r9           # 8-byte Reload
	addl	44(%rsp), %r9d          # 4-byte Folded Reload
	movl	%r15d, (%rsp)
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	960(%rsp), %rdx
	leaq	472(%rsp), %rcx
	leaq	392(%rsp), %r8
	callq	parse_dict
	movl	$1, %r12d
	testl	%eax, %eax
	js	.LBB2_125
# BB#110:                               # %if.end.154.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	976(%rsp), %r9d
	movl	988(%rsp), %eax
	addl	%r9d, %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	960(%rsp), %rdx
	leaq	472(%rsp), %rcx
	leaq	392(%rsp), %r8
	callq	parse_dict
	testl	%eax, %eax
	js	.LBB2_125
# BB#111:                               # %if.end.165.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	$.L.str.11, %ecx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	leaq	864(%rsp), %rdx
	callq	find_font_dict
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#112:                               # %if.end.170.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	984(%rsp), %edx
	testl	%edx, %edx
	je	.LBB2_118
# BB#113:                               # %if.then.173.i
                                        #   in Loop: Header=BB2_101 Depth=2
	addl	976(%rsp), %edx
	leaq	544(%rsp), %rdi
	leaq	392(%rsp), %rsi
	movl	%r14d, %ecx
	callq	parse_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#114:                               # %if.end.182.i
                                        #   in Loop: Header=BB2_101 Depth=2
	cmpl	$0, 560(%rsp)
	je	.LBB2_118
# BB#115:                               # %if.then.185.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	%rbx, %rdi
	leaq	848(%rsp), %rsi
	leaq	544(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_stringarray_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#116:                               # %if.end.191.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	864(%rsp), %r15
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.13, %esi
	movl	$5, %edx
	xorl	%r8d, %r8d
	leaq	1064(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#117:                               # %idict_put_c_name.exit61.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	%r15, %rdi
	leaq	1064(%rsp), %rsi
	leaq	848(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
.LBB2_118:                              # %if.end.201.i
                                        #   in Loop: Header=BB2_101 Depth=2
	cmpl	$0, 120(%rsp)           # 4-byte Folded Reload
	je	.LBB2_121
# BB#119:                               # %if.then.203.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	864(%rsp), %r15
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str, %esi
	movl	$11, %edx
	xorl	%r8d, %r8d
	leaq	1064(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#120:                               # %idict_put_c_name.exit72.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	%r15, %rdi
	leaq	1064(%rsp), %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
.LBB2_121:                              # %if.end.209.i
                                        #   in Loop: Header=BB2_101 Depth=2
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_124
# BB#122:                               # %if.then.211.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movq	56(%rsp), %rdi          # 8-byte Reload
	leaq	872(%rsp), %rsi
	leaq	888(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB2_124
# BB#123:                               # %if.then.215.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	$set_unit_matrix, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	set_defaults
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
.LBB2_124:                              # %if.end.222.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	$fd_font_defaults, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	set_defaults
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_125
# BB#126:                               # %for.inc.i
                                        #   in Loop: Header=BB2_101 Depth=2
	movl	608(%rsp), %ecx
	cmpl	%ecx, %ebp
	movl	%ecx, %eax
	jb	.LBB2_101
.LBB2_127:                              # %for.end.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	cmpl	%r13d, 104(%rsp)        # 4-byte Folded Reload
	movl	$-15, %r12d
	jb	.LBB2_153
# BB#128:                               # %for.end.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	400(%rsp), %rcx
	cmpl	%r14d, %ecx
	jb	.LBB2_153
# BB#129:                               # %if.end.240.i
                                        #   in Loop: Header=BB2_34 Depth=1
	shrq	$32, %rcx
	movl	408(%rsp), %edx
	andl	%r13d, %edx
	movl	%r13d, %esi
	movl	%r13d, %r15d
	shrl	%cl, %esi
	movq	392(%rsp), %rcx
	shlq	$4, %rsi
	movq	8(%rcx,%rsi), %rcx
	movzbl	(%rcx,%rdx), %ecx
	testl	%ecx, %ecx
	movl	$format0_fdselect_proc, %r13d
	je	.LBB2_133
# BB#130:                               # %if.end.240.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$3, %ecx
	jne	.LBB2_131
# BB#132:                               # %if.then.246.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$format3_fdselect_proc, %r13d
.LBB2_133:                              # %if.end.249.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	$0, 952(%rsp)
	movw	$2816, 944(%rsp)        # imm = 0xB00
	cmpl	$0, 1016(%rsp)
	je	.LBB2_148
# BB#134:                               # %for.body.255.lr.ph.i
                                        #   in Loop: Header=BB2_34 Depth=1
	incl	%r15d
	xorl	%ebp, %ebp
.LBB2_136:                              # %for.body.255.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$-1, %r12d
	cmpl	$2, %eax
	jb	.LBB2_139
# BB#137:                               # %if.else.260.i
                                        #   in Loop: Header=BB2_136 Depth=2
	leaq	392(%rsp), %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	*%r13
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_138
.LBB2_139:                              # %if.end.268.i
                                        #   in Loop: Header=BB2_136 Depth=2
	movq	%rbx, %rdi
	leaq	928(%rsp), %rsi
	leaq	1000(%rsp), %rdx
	leaq	392(%rsp), %rcx
	movl	%ebp, %r8d
	movl	%r12d, %r9d
	callq	make_string_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_140
# BB#141:                               # %if.end.273.i
                                        #   in Loop: Header=BB2_136 Depth=2
	testl	%ebp, %ebp
	je	.LBB2_143
# BB#142:                               # %if.then.276.i
                                        #   in Loop: Header=BB2_136 Depth=2
	movl	968(%rsp), %esi
	incl	%esi
	leal	-1(%rbp), %ecx
	leaq	392(%rsp), %rdi
	movl	%r14d, %edx
	callq	*88(%rsp)               # 8-byte Folded Reload
	movslq	%eax, %r12
	movq	%r12, 952(%rsp)
	jmp	.LBB2_144
.LBB2_143:                              # %if.end.284thread-pre-split.i
                                        #   in Loop: Header=BB2_136 Depth=2
	movq	952(%rsp), %r12
.LBB2_144:                              # %if.end.284.i
                                        #   in Loop: Header=BB2_136 Depth=2
	testq	%r12, %r12
	js	.LBB2_145
# BB#146:                               # %if.end.293.i
                                        #   in Loop: Header=BB2_136 Depth=2
	leaq	896(%rsp), %rdi
	leaq	944(%rsp), %rsi
	leaq	928(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_147
# BB#135:                               # %for.cond.251.i
                                        #   in Loop: Header=BB2_136 Depth=2
	incl	%ebp
	movl	608(%rsp), %eax
	cmpl	1016(%rsp), %ebp
	jb	.LBB2_136
.LBB2_148:                              # %for.end.304.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$1, %eax
	seta	%al
	movzbl	%al, %eax
	movq	%rax, 952(%rsp)
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.17, %esi
	movl	$7, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_149
# BB#150:                               # %idict_put_c_name.exit102.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	944(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_151
# BB#152:                               # %if.end.315.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$cid_font_defaults, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	leaq	336(%rsp), %rsi
	callq	set_defaults
	testl	%eax, %eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	setns	%bpl
	movl	%ecx, %r12d
.LBB2_153:                              # %cleanup.321.i
                                        #   in Loop: Header=BB2_34 Depth=1
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_77:                               #   in Loop: Header=BB2_34 Depth=1
	movq	%rbx, %r15
.LBB2_59:                               #   in Loop: Header=BB2_34 Depth=1
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
.LBB2_309:                              # %cleanup.242
                                        #   in Loop: Header=BB2_34 Depth=1
	testl	%r12d, %r12d
	movl	112(%rsp), %r13d        # 4-byte Reload
	js	.LBB2_312
.LBB2_310:                              # %for.inc.251
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	536(%rsp), %eax
	movl	116(%rsp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	leaq	392(%rsp), %rsi
	jb	.LBB2_34
	jmp	.LBB2_311
.LBB2_154:                              # %if.else.335.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	112(%rsp), %eax         # 4-byte Reload
	testw	%ax, %ax
	je	.LBB2_222
# BB#155:                               # %if.then.337.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.18, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_156
# BB#157:                               # %if.end.i.113.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	dict_undef
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB2_160
# BB#158:                               # %if.end.i.113.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$-21, %r12d
	je	.LBB2_160
# BB#159:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_222:                              # %if.else.531.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	xorl	%ebp, %ebp
	movl	$.L.str.31, %esi
	movl	$7, %edx
	xorl	%r8d, %r8d
	leaq	896(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_306
# BB#223:                               # %if.end.541.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	xorl	%r8d, %r8d
	movl	$-1, %r9d
	movq	%rbx, %rdi
	leaq	944(%rsp), %rsi
	leaq	1000(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_string_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_306
# BB#224:                               # %if.end.546.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	1016(%rsp), %esi
	incl	%esi
	leaq	928(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_225
# BB#226:                               # %if.end.555.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.32, %esi
	movl	$11, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_227
# BB#228:                               # %idict_put_c_name.exit228.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	928(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_229
# BB#230:                               # %if.end.560.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	928(%rsp), %rdi
	leaq	896(%rsp), %rsi
	leaq	944(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_231
# BB#232:                               # %if.end.566.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	972(%rsp), %ebp
	movq	8(%rbx), %rdi
	movl	$96, %edx
	movl	$256, %ecx              # imm = 0x100
	movl	$.L.str.33, %r8d
	leaq	912(%rsp), %rsi
	callq	gs_alloc_ref_array
	movl	%eax, %r12d
	cmpl	$1, %ebp
	ja	.LBB2_239
# BB#233:                               # %if.then.569.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	movl	$0, %r15d
	js	.LBB2_306
.LBB2_235:                              # %for.body.580.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	920(%rsp), %rsi
	cmpl	$0, 972(%rsp)
	movl	$expert_encoding, %eax
	jne	.LBB2_237
# BB#236:                               # %select.mid
                                        #   in Loop: Header=BB2_235 Depth=2
	movl	$standard_encoding, %eax
.LBB2_237:                              # %select.end
                                        #   in Loop: Header=BB2_235 Depth=2
	movzwl	(%rax,%r15,2), %r8d
	addq	%rbp, %rsi
	movq	%rbx, %rdi
	leaq	472(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_name_from_sid
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_238
# BB#234:                               # %for.cond.577.i
                                        #   in Loop: Header=BB2_235 Depth=2
	incq	%r15
	addq	$16, %rbp
	cmpq	$255, %r15
                                        # implicit-def: EAX
	movl	%eax, 120(%rsp)         # 4-byte Spill
                                        # implicit-def: EAX
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jbe	.LBB2_235
	jmp	.LBB2_270
.LBB2_86:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_156:                              # %idict_undef_c_name.exit.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_88:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_160:                              # %if.end.345.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.19, %esi
	movl	$4, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_161
# BB#162:                               # %if.end.i.127.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	dict_undef
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB2_165
# BB#163:                               # %if.end.i.127.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$-21, %r12d
	je	.LBB2_165
# BB#164:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_90:                               # %idict_put_c_name.exit33.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_92:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_161:                              # %idict_undef_c_name.exit129.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_165:                              # %if.end.350.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	$96, %edx
	movl	$1, %ecx
	movl	$.L.str.20, %r8d
	leaq	928(%rsp), %rsi
	callq	gs_alloc_ref_array
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_166
# BB#167:                               # %if.end.357.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.15, %esi
	movl	$7, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_168
# BB#169:                               # %idict_put_c_name.exit140.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	928(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_170
# BB#171:                               # %if.end.362.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movq	936(%rsp), %rdx
	movl	$4, %esi
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_172
# BB#173:                               # %if.end.372.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	936(%rsp), %rsi
	movl	$.L.str.21, %ecx
	movl	$10, %r8d
	movq	%rbx, %rdi
	leaq	336(%rsp), %rdx
	callq	idict_move_c_name
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_174
# BB#175:                               # %if.end.380.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	936(%rsp), %rsi
	movl	$.L.str.11, %ecx
	movl	$7, %r8d
	movq	%rbx, %rdi
	leaq	336(%rsp), %rdx
	callq	idict_move_c_name
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_176
# BB#177:                               # %if.end.388.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	936(%rsp), %rsi
	movl	$.L.str.22, %ecx
	movl	$8, %r8d
	movq	%rbx, %rdi
	leaq	336(%rsp), %rdx
	callq	idict_move_c_name
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_178
# BB#179:                               # %if.end.396.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	936(%rsp), %rsi
	movl	$.L.str.23, %ecx
	movl	$9, %r8d
	movq	%rbx, %rdi
	leaq	336(%rsp), %rdx
	callq	idict_move_c_name
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_180
# BB#181:                               # %if.end.404.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	936(%rsp), %rsi
	movl	$fd_font_defaults, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	callq	set_defaults
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_182
# BB#183:                               # %if.end.412.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	$3, %esi
	leaq	912(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_184
# BB#185:                               # %if.end.419.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	$.L.str.24, 1072(%rsp)
	movw	$4704, 1064(%rsp)       # imm = 0x1260
	movl	$5, 1068(%rsp)
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.25, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_186
# BB#187:                               # %idict_put_c_name.exit151.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	912(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	1064(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_188
# BB#189:                               # %if.end.428.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	$.L.str.26, 1072(%rsp)
	movw	$4704, 1064(%rsp)       # imm = 0x1260
	movl	$8, 1068(%rsp)
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.27, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_190
# BB#191:                               # %idict_put_c_name.exit162.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	912(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	1064(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_192
# BB#193:                               # %if.end.439.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	$0, 552(%rsp)
	movw	$2816, 544(%rsp)        # imm = 0xB00
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.28, %esi
	movl	$10, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_194
# BB#195:                               # %idict_put_c_name.exit173.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	912(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	544(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_196
# BB#197:                               # %if.end.448.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.29, %esi
	movl	$13, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_198
# BB#199:                               # %idict_put_c_name.exit184.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	912(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_200
# BB#201:                               # %if.end.453.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.17, %esi
	movl	$7, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_202
# BB#203:                               # %idict_put_c_name.exit195.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	544(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_204
# BB#205:                               # %if.end.458.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rdi
	movl	1016(%rsp), %esi
	incl	%esi
	leaq	944(%rsp), %rdx
	callq	dict_alloc
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_206
# BB#207:                               # %if.end.467.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.16, %esi
	movl	$14, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_208
# BB#209:                               # %idict_put_c_name.exit206.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	944(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_210
# BB#211:                               # %if.end.472.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	$0, 552(%rsp)
	movw	$2816, 544(%rsp)        # imm = 0xB00
	movl	1016(%rsp), %eax
	testl	%eax, %eax
	movl	$0, %r8d
	jle	.LBB2_216
.LBB2_212:                              # %for.body.484.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$-1, %r9d
	movq	%rbx, %rdi
	leaq	592(%rsp), %rsi
	leaq	1000(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_string_from_index
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_214
# BB#213:                               # %if.end.493.i
                                        #   in Loop: Header=BB2_212 Depth=2
	leaq	944(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	592(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_214
# BB#215:                               # %for.inc.503.i
                                        #   in Loop: Header=BB2_212 Depth=2
	movq	552(%rsp), %r8
	incq	%r8
	movq	%r8, 552(%rsp)
	movslq	1016(%rsp), %rax
	cmpq	%rax, %r8
	jl	.LBB2_212
.LBB2_216:                              # %for.end.507.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%eax, %eax
	movq	%rax, 552(%rsp)
	movw	$2816, 544(%rsp)        # imm = 0xB00
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.30, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	leaq	592(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_217
# BB#218:                               # %idict_put_c_name.exit217.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	592(%rsp), %rsi
	leaq	544(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_219
# BB#220:                               # %if.end.518.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$cid_font_defaults, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	leaq	336(%rsp), %rsi
	callq	set_defaults
	testl	%eax, %eax
	movl	64(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	setns	%al
	movl	%ecx, %r12d
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_225:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_94:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_227:                              # %idict_put_c_name.exit228.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_96:                               # %idict_put_c_name.exit44.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_166:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_229:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_98:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_168:                              # %idict_put_c_name.exit140.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_231:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_239:                              # %if.else.599.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	js	.LBB2_306
.LBB2_240:                              # %for.body.610.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	920(%rsp), %rax
	movups	896(%rsp), %xmm0
	movups	%xmm0, (%rax,%rbp)
	movq	920(%rsp), %rax
	movups	896(%rsp), %xmm0
	movups	%xmm0, 16(%rax,%rbp)
	movq	920(%rsp), %rax
	movups	896(%rsp), %xmm0
	movups	%xmm0, 32(%rax,%rbp)
	movq	920(%rsp), %rax
	movups	896(%rsp), %xmm0
	movups	%xmm0, 48(%rax,%rbp)
	addq	$64, %rbp
	cmpq	$4096, %rbp             # imm = 0x1000
	jne	.LBB2_240
# BB#241:                               # %for.end.617.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	972(%rsp), %r11d
	xorl	%ebp, %ebp
	cmpl	%r11d, 104(%rsp)        # 4-byte Folded Reload
	movl	$-15, %r12d
	jb	.LBB2_306
# BB#242:                               # %for.end.617.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	400(%rsp), %rcx
	cmpl	%r14d, %ecx
	jb	.LBB2_306
# BB#243:                               # %if.end.624.i
                                        #   in Loop: Header=BB2_34 Depth=1
	shrq	$32, %rcx
	movl	408(%rsp), %r10d
	movl	%r10d, %eax
	andl	%r11d, %eax
	movl	%r11d, %edx
	shrl	%cl, %edx
	movq	392(%rsp), %r9
	shlq	$4, %rdx
	movq	8(%r9,%rdx), %rdx
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	andl	$127, %eax
	cmpl	$1, %eax
	jne	.LBB2_244
# BB#255:                               # %if.then.676.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leal	1(%r11), %eax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jae	.LBB2_257
# BB#256:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_125:                              # %cleanup.228.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_170:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_172:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_238:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_174:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_176:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_244:                              # %if.end.624.i
                                        #   in Loop: Header=BB2_34 Depth=1
	testl	%eax, %eax
	jne	.LBB2_245
# BB#246:                               # %if.then.627.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leal	1(%r11), %eax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jae	.LBB2_248
# BB#247:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_178:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_102:                              #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_131:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_106:                              #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_257:                              # %if.end.684.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%r10d, %edx
	andl	%eax, %edx
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%r9,%rax), %rax
	movzbl	(%rax,%rdx), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movb	$0, 592(%rsp)
	movl	$1, %edx
	je	.LBB2_268
# BB#258:                               # %for.body.689.i.preheader
                                        #   in Loop: Header=BB2_34 Depth=1
	leal	2(%r11), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	addl	$3, %r11d
	xorl	%r15d, %r15d
	movl	$1, %edx
.LBB2_259:                              # %for.body.689.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_265 Depth 3
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r15,2), %eax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jb	.LBB2_260
# BB#261:                               # %if.end.698.i
                                        #   in Loop: Header=BB2_259 Depth=2
	leal	(%r15,%r15), %esi
	movl	%eax, %edi
	andl	%r10d, %edi
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%r9,%rax), %rax
	movzbl	(%rax,%rdi), %edi
	leal	(%rsi,%r11), %eax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jb	.LBB2_262
# BB#263:                               # %card8.exit342.i
                                        #   in Loop: Header=BB2_259 Depth=2
	movl	%eax, %esi
	andl	%r10d, %esi
	shrl	%cl, %eax
	cmpl	$255, %edx
	ja	.LBB2_267
# BB#264:                               # %for.body.714.lr.ph.i
                                        #   in Loop: Header=BB2_259 Depth=2
	shlq	$4, %rax
	movq	8(%r9,%rax), %rax
	movzbl	(%rax,%rsi), %r8d
	movl	%edx, %esi
	leaq	592(%rsp,%rsi), %rax
	xorl	%ebp, %ebp
.LBB2_265:                              # %for.body.714.i
                                        #   Parent Loop BB2_34 Depth=1
                                        #     Parent Loop BB2_259 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rbp), %edx
	movb	%dl, (%rax,%rbp)
	leaq	1(%rsi,%rbp), %rdx
	cmpq	$255, %rdx
	ja	.LBB2_267
# BB#266:                               # %for.body.714.i
                                        #   in Loop: Header=BB2_265 Depth=3
	leal	1(%rbp), %r13d
	incq	%rbp
	cmpl	%r8d, %r13d
	jbe	.LBB2_265
.LBB2_267:                              # %for.inc.723.i
                                        #   in Loop: Header=BB2_259 Depth=2
	incl	%r15d
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r15d
	jb	.LBB2_259
.LBB2_268:                              # %cleanup.737.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%edx, %eax
	leaq	592(%rsp,%rax), %rdi
	movl	$256, %edx              # imm = 0x100
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	972(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	2(%rax,%rcx,2), %eax
	jmp	.LBB2_269
.LBB2_245:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_180:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_149:                              # %idict_put_c_name.exit102.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_182:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_248:                              # %if.end.635.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	%r10d, %edx
	andl	%eax, %edx
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%r9,%rax), %rax
	movzbl	(%rax,%rdx), %ebp
	testl	%ebp, %ebp
	movb	$0, 592(%rsp)
	movl	$0, %edx
	je	.LBB2_254
# BB#249:                               # %for.body.640.lr.ph.i
                                        #   in Loop: Header=BB2_34 Depth=1
	addl	$2, %r11d
	xorl	%edx, %edx
.LBB2_250:                              # %for.body.640.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r11,%rdx), %rax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jb	.LBB2_251
# BB#252:                               # %for.inc.657.i
                                        #   in Loop: Header=BB2_250 Depth=2
	movl	%eax, %esi
	andl	%r10d, %esi
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%r9,%rax), %rax
	movb	(%rax,%rsi), %al
	movb	%al, 593(%rsp,%rdx)
	incq	%rdx
	cmpq	%rbp, %rdx
	jb	.LBB2_250
# BB#253:                               #   in Loop: Header=BB2_34 Depth=1
	movq	%rbp, %rdx
.LBB2_254:                              # %cleanup.669.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	593(%rsp,%rdx), %rdi
	xorq	$255, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	972(%rsp), %eax
	leal	2(%rbp,%rax), %eax
.LBB2_269:                              # %if.end.747.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB2_270:                              # %if.end.747.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	8(%rbx), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movl	$.L.str.34, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	leaq	544(%rsp), %rcx
	callq	names_ref
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_271
# BB#272:                               # %idict_put_c_name.exit353.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leaq	336(%rsp), %rdi
	leaq	544(%rsp), %rsi
	leaq	912(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB2_273
# BB#274:                               # %for.cond.753.preheader.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$1, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$2, 1016(%rsp)
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r12d
	jb	.LBB2_286
.LBB2_275:                              # %for.body.757.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$-1, %r9d
	movq	%rbx, %rdi
	leaq	944(%rsp), %rsi
	leaq	1000(%rsp), %rdx
	leaq	392(%rsp), %rcx
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	make_string_from_index
	testl	%eax, %eax
	js	.LBB2_276
# BB#277:                               # %if.end.762.i
                                        #   in Loop: Header=BB2_275 Depth=2
	movl	968(%rsp), %esi
	incl	%esi
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	leaq	392(%rsp), %rdi
	movl	%r14d, %edx
	callq	*88(%rsp)               # 8-byte Folded Reload
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB2_278
# BB#279:                               # %if.end.771.i
                                        #   in Loop: Header=BB2_275 Depth=2
	movq	%rbx, %rdi
	leaq	1064(%rsp), %rsi
	leaq	472(%rsp), %rdx
	leaq	392(%rsp), %rcx
	movl	%r13d, %r8d
	callq	make_name_from_sid
	testl	%eax, %eax
	jns	.LBB2_281
# BB#280:                               # %if.then.775.i
                                        #   in Loop: Header=BB2_275 Depth=2
	xorl	%ebp, %ebp
	movl	$.L.str.35, %esi
	xorl	%eax, %eax
	leaq	544(%rsp), %r15
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	gs_sprintf
	movq	8(%rbx), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	movl	$1, %r8d
	movq	%r15, %rsi
	movl	%eax, %edx
	leaq	1064(%rsp), %rcx
	callq	names_ref
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	js	.LBB2_306
.LBB2_281:                              # %if.end.793.i
                                        #   in Loop: Header=BB2_275 Depth=2
	leaq	928(%rsp), %rdi
	leaq	1064(%rsp), %rsi
	leaq	944(%rsp), %rdx
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB2_276
# BB#282:                               # %if.end.799.i
                                        #   in Loop: Header=BB2_275 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	incl	%eax
	cmpl	$255, %eax
	movl	%eax, %edx
	ja	.LBB2_285
# BB#283:                               # %if.end.799.i
                                        #   in Loop: Header=BB2_275 Depth=2
	cmpl	$2, 972(%rsp)
	jb	.LBB2_285
# BB#284:                               # %if.then.806.i
                                        #   in Loop: Header=BB2_275 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, %eax
	movzbl	592(%rsp,%rax), %eax
	movq	920(%rsp), %rcx
	shlq	$4, %rax
	movups	1064(%rsp), %xmm0
	movups	%xmm0, (%rcx,%rax)
.LBB2_285:                              # %for.inc.814.i
                                        #   in Loop: Header=BB2_275 Depth=2
	incl	%edx
	cmpl	1016(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jb	.LBB2_275
.LBB2_286:                              # %for.end.816.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	120(%rsp), %eax         # 4-byte Reload
	testb	$-128, %al
	je	.LBB2_303
# BB#287:                               # %for.end.816.i
                                        #   in Loop: Header=BB2_34 Depth=1
	cmpl	$2, 972(%rsp)
	jb	.LBB2_303
# BB#288:                               # %if.then.823.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jb	.LBB2_289
# BB#290:                               # %if.then.823.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	400(%rsp), %rcx
	cmpl	%r14d, %ecx
	jb	.LBB2_291
# BB#292:                               # %card8.exit372.i
                                        #   in Loop: Header=BB2_34 Depth=1
	shrq	$32, %rcx
	movl	408(%rsp), %eax
	movq	80(%rsp), %rsi          # 8-byte Reload
	andl	%esi, %eax
	movl	%esi, %edx
	movq	%rsi, %rdi
	shrl	%cl, %edx
	movq	392(%rsp), %rsi
	shlq	$4, %rdx
	movq	8(%rsi,%rdx), %rdx
	movzbl	(%rdx,%rax), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	je	.LBB2_303
# BB#293:                               # %for.body.834.lr.ph.i
                                        #   in Loop: Header=BB2_34 Depth=1
	leal	1(%rdi), %eax
	cmpl	%eax, 104(%rsp)         # 4-byte Folded Reload
	jb	.LBB2_294
# BB#300:                               # %if.end.842.i.preheader
                                        #   in Loop: Header=BB2_34 Depth=1
	addl	$4, %edi
	movl	$1, %r13d
.LBB2_301:                              # %if.end.842.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-2(%rdi), %esi
	cmpl	%esi, 68(%rsp)          # 4-byte Folded Reload
	jb	.LBB2_294
# BB#302:                               # %if.end.850.i
                                        #   in Loop: Header=BB2_301 Depth=2
	movq	%rdi, %rdx
	leal	-3(%rdx), %eax
	movq	392(%rsp), %r8
	movl	%eax, %edi
	shrl	%cl, %edi
	shlq	$4, %rdi
	movq	8(%r8,%rdi), %r9
	movl	408(%rsp), %edi
	andl	%edi, %eax
	movl	%edi, %ebp
	andl	%esi, %ebp
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r8,%rsi), %rsi
	movzbl	(%rsi,%rbp), %esi
	shll	$8, %esi
	leal	-1(%rdx), %ebp
	movq	%rdx, %r15
	andl	%ebp, %edi
	shrl	%cl, %ebp
	shlq	$4, %rbp
	movq	8(%r8,%rbp), %rcx
	movzbl	(%rcx,%rdi), %r8d
	orl	%esi, %r8d
	movzbl	(%r9,%rax), %esi
	shlq	$4, %rsi
	addq	920(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	472(%rsp), %rdx
	leaq	392(%rsp), %rcx
	callq	make_name_from_sid
	testl	%eax, %eax
	js	.LBB2_276
# BB#295:                               # %for.cond.831.i
                                        #   in Loop: Header=BB2_301 Depth=2
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jae	.LBB2_303
# BB#296:                               # %for.cond.831.for.body.834_crit_edge.i
                                        #   in Loop: Header=BB2_301 Depth=2
	movq	400(%rsp), %rcx
	xorl	%ebp, %ebp
	cmpl	%r14d, %ecx
	jb	.LBB2_297
# BB#298:                               # %for.cond.831.for.body.834_crit_edge.i
                                        #   in Loop: Header=BB2_301 Depth=2
	shrq	$32, %rcx
	incl	%r13d
	cmpl	%r15d, 104(%rsp)        # 4-byte Folded Reload
	leal	3(%r15), %eax
	movl	%eax, %edi
	jae	.LBB2_301
# BB#299:                               #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	jmp	.LBB2_306
.LBB2_271:                              # %idict_put_c_name.exit353.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_273:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_303:                              # %if.end.868.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	1048(%rsp), %rsi
	movl	$fontinfo_font_defaults, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	callq	set_defaults
	testl	%eax, %eax
	js	.LBB2_276
# BB#304:                               # %if.end.873.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	1056(%rsp), %rsi
	movl	$private_font_defaults, %edx
	movl	$9, %ecx
	movq	%rbx, %rdi
	callq	set_defaults
	testl	%eax, %eax
	js	.LBB2_276
# BB#305:                               # %if.end.878.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movl	$simple_font_defaults, %edx
	movl	$5, %ecx
	movq	%rbx, %rdi
	leaq	336(%rsp), %rsi
	callq	set_defaults
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	setns	%bpl
	jmp	.LBB2_306
.LBB2_276:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	movl	%eax, %r12d
	jmp	.LBB2_306
.LBB2_140:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_145:                              # %if.then.289.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_147:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_151:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_184:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_138:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	testb	%bpl, %bpl
	jmp	.LBB2_307
.LBB2_186:                              # %idict_put_c_name.exit151.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_278:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	movl	%r13d, %r12d
	jmp	.LBB2_306
.LBB2_260:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_262:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_251:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_306
.LBB2_188:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_289:                              #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	jmp	.LBB2_306
.LBB2_291:                              #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	jmp	.LBB2_306
.LBB2_294:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%ebp, %ebp
	movl	$-15, %r12d
.LBB2_306:                              # %cleanup.884.i
                                        #   in Loop: Header=BB2_34 Depth=1
	testb	%bpl, %bpl
.LBB2_307:                              # %cleanup.884.i
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	%rbx, %r15
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	104(%rsp), %ebp         # 4-byte Reload
	je	.LBB2_309
# BB#308:                               # %if.end.898.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB2_309
.LBB2_190:                              # %idict_put_c_name.exit162.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_192:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_194:                              # %idict_put_c_name.exit173.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_196:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_198:                              # %idict_put_c_name.exit184.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_297:                              #   in Loop: Header=BB2_34 Depth=1
	movl	$-15, %r12d
	jmp	.LBB2_306
.LBB2_200:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_202:                              # %idict_put_c_name.exit195.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_204:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_206:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_208:                              # %idict_put_c_name.exit206.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_210:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_214:                              # %cleanup.500.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_217:                              # %idict_put_c_name.exit217.thread.i
                                        #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_219:                              #   in Loop: Header=BB2_34 Depth=1
	xorl	%eax, %eax
	testb	%al, %al
	jmp	.LBB2_307
.LBB2_34:                               # %for.body.178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_45 Depth 2
                                        #     Child Loop BB2_101 Depth 2
                                        #     Child Loop BB2_136 Depth 2
                                        #     Child Loop BB2_212 Depth 2
                                        #     Child Loop BB2_240 Depth 2
                                        #     Child Loop BB2_250 Depth 2
                                        #     Child Loop BB2_259 Depth 2
                                        #       Child Loop BB2_265 Depth 3
                                        #     Child Loop BB2_235 Depth 2
                                        #     Child Loop BB2_275 Depth 2
                                        #     Child Loop BB2_301 Depth 2
	cmpl	%ecx, %eax
	ja	.LBB2_36
# BB#35:
	movl	$-15, %r12d
	jmp	.LBB2_312
.LBB2_311:                              # %for.end.253
	movups	416(%rsp), %xmm0
	movups	%xmm0, (%rbx)
	addq	$-16, 624(%r15)
	xorl	%r12d, %r12d
	jmp	.LBB2_312
.LBB2_39:
	movl	$-15, %r12d
	jmp	.LBB2_312
.LBB2_50:
	movl	$-15, %r12d
	jmp	.LBB2_312
.LBB2_54:
	movl	$-15, %r12d
	jmp	.LBB2_312
.Lfunc_end2:
	.size	zparsecff, .Lfunc_end2-zparsecff
	.cfi_endproc

	.align	16, 0x90
	.type	card8,@function
card8:                                  # @card8
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-1(%rcx), %eax
	cmpl	%edx, %eax
	movl	$-15, %eax
	jb	.LBB3_3
# BB#1:                                 # %entry
	cmpl	%ecx, 8(%rsi)
	jb	.LBB3_3
# BB#2:                                 # %if.end
	movl	16(%rsi), %eax
	andl	%edx, %eax
	movb	12(%rsi), %cl
	shrl	%cl, %edx
	movq	(%rsi), %rcx
	shlq	$4, %rdx
	movq	8(%rcx,%rdx), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, (%rdi)
	xorl	%eax, %eax
.LBB3_3:                                # %return
	retq
.Lfunc_end3:
	.size	card8, .Lfunc_end3-card8
	.cfi_endproc

	.align	16, 0x90
	.type	parse_index,@function
parse_index:                            # @parse_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%ecx, %eax
	movq	%rdi, %r14
	testl	%edx, %edx
	je	.LBB4_1
# BB#2:                                 # %if.end
	movl	%edx, (%r14)
	leal	-2(%rax), %ecx
	cmpl	%edx, %ecx
	movl	$-15, %ebp
	jb	.LBB4_15
# BB#3:                                 # %if.end
	cmpl	%eax, 8(%rsi)
	jb	.LBB4_15
# BB#4:                                 # %if.end.4
	movl	16(%rsi), %ebp
	movl	%ebp, %edi
	andl	%edx, %edi
	movb	12(%rsi), %cl
	movl	%edx, %ebx
	shrl	%cl, %ebx
	movq	(%rsi), %r8
	shlq	$4, %rbx
	movq	8(%r8,%rbx), %rbx
	movzbl	(%rbx,%rdi), %ebx
	shll	$8, %ebx
	leal	1(%rdx), %edi
	andl	%edi, %ebp
	shrl	%cl, %edi
	shlq	$4, %rdi
	movq	8(%r8,%rdi), %rcx
	movzbl	(%rcx,%rbp), %edi
	orl	%ebx, %edi
	movl	%edi, 16(%r14)
	testl	%edi, %edi
	je	.LBB4_12
# BB#5:                                 # %if.then.6
	leal	2(%rdx), %r9d
	leal	-1(%rax), %ecx
	cmpl	%r9d, %ecx
	movl	$-15, %ebp
	jb	.LBB4_15
# BB#6:                                 # %if.then.6
	cmpl	%eax, 8(%rsi)
	jb	.LBB4_15
# BB#7:                                 # %if.end.10
	movl	16(%rsi), %r10d
	andl	%r9d, %r10d
	movb	12(%rsi), %cl
	movl	%r9d, %ebx
	shrl	%cl, %ebx
	shlq	$4, %rbx
	movq	8(%r8,%rbx), %rcx
	movzbl	(%rcx,%r10), %r8d
	testl	%r8d, %r8d
	movl	%r8d, 12(%r14)
	je	.LBB4_8
# BB#9:                                 # %if.else
	cmpl	$4, %r8d
	ja	.LBB4_15
# BB#10:                                # %if.else.20
	leal	1(%rdi), %ecx
	imull	%r8d, %ecx
	addl	%r9d, %ecx
	movl	%ecx, 8(%r14)
	imull	%r8d, %edi
	leal	3(%rdx,%rdi), %edx
	leaq	12(%rsp), %rdi
	movl	%eax, %ecx
	callq	*offset_procs(,%r8,8)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB4_15
# BB#11:                                # %if.end.36
	movl	12(%rsp), %eax
	addl	8(%r14), %eax
	movl	%eax, 4(%r14)
	jmp	.LBB4_14
.LBB4_1:                                # %if.then
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$20, %edx
	movq	%r14, %rdi
	callq	memset
	jmp	.LBB4_15
.LBB4_12:                               # %if.else.42
	movl	$0, 12(%r14)
	movl	$0, 8(%r14)
	addl	$2, %edx
	jmp	.LBB4_13
.LBB4_8:                                # %if.then.13
	movl	$0, 16(%r14)
	movl	$0, 8(%r14)
	addl	$3, %edx
.LBB4_13:                               # %cleanup.48
	movl	%edx, 4(%r14)
.LBB4_14:                               # %cleanup.48
	xorl	%ebp, %ebp
.LBB4_15:                               # %cleanup.48
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	parse_index, .Lfunc_end4-parse_index
	.cfi_endproc

	.align	16, 0x90
	.type	make_stringarray_from_index,@function
make_stringarray_from_index:            # @make_stringarray_from_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 64
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	8(%r12), %rdi
	movl	16(%rbx), %ecx
	movl	$96, %edx
	movl	$.L.str.9, %r8d
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB5_12
# BB#1:                                 # %for.cond.preheader
	movl	16(%rbx), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB5_12
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %ecx
	jbe	.LBB5_5
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	12(%rbx), %eax
	movl	%eax, %edx
	imull	%ebp, %edx
	movl	(%rbx), %esi
	movl	4(%rbx), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	4(%rsp), %rdi
	movq	%r14, %rsi
	callq	*offset_procs(,%rax,8)
	testl	%eax, %eax
	js	.LBB5_12
# BB#7:                                 # %if.end.5.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	12(%rbx), %eax
	leal	1(%rbp), %r13d
	movl	%eax, %edx
	imull	%r13d, %edx
	movl	(%rbx), %esi
	movl	4(%rbx), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	(%rsp), %rdi
	movq	%r14, %rsi
	callq	*offset_procs(,%rax,8)
	testl	%eax, %eax
	js	.LBB5_12
# BB#8:                                 # %if.end.19.i
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	(%rsp), %eax
	cmpl	4(%rsp), %eax
	jb	.LBB5_9
# BB#10:                                # %if.end.22.i
                                        #   in Loop: Header=BB5_4 Depth=1
	addl	8(%rbx), %eax
	cmpl	4(%rbx), %eax
	movl	$-15, %eax
	ja	.LBB5_12
# BB#11:                                # %cleanup
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	%ebp, %esi
	shlq	$4, %rsi
	addq	8(%r15), %rsi
	movl	$-1, %r9d
	movq	%r12, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	%ebp, %r8d
	callq	make_string_from_index
	testl	%eax, %eax
	js	.LBB5_12
# BB#3:                                 # %for.cond
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	16(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %r13d
	movl	%r13d, %ebp
	jb	.LBB5_4
	jmp	.LBB5_12
.LBB5_5:
	movl	$-15, %eax
	jmp	.LBB5_12
.LBB5_9:
	movl	$-15, %eax
.LBB5_12:                               # %cleanup.12
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	make_stringarray_from_index, .Lfunc_end5-make_stringarray_from_index
	.cfi_endproc

	.align	16, 0x90
	.type	card16,@function
card16:                                 # @card16
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-2(%rcx), %eax
	cmpl	%edx, %eax
	movl	$-15, %eax
	jb	.LBB6_3
# BB#1:                                 # %entry
	cmpl	%ecx, 8(%rsi)
	jb	.LBB6_3
# BB#2:                                 # %if.end
	movl	16(%rsi), %r8d
	movl	%r8d, %r9d
	andl	%edx, %r9d
	movb	12(%rsi), %cl
	movl	%edx, %eax
	shrl	%cl, %eax
	movq	(%rsi), %rsi
	shlq	$4, %rax
	movq	8(%rsi,%rax), %rax
	movzbl	(%rax,%r9), %eax
	shll	$8, %eax
	incl	%edx
	andl	%edx, %r8d
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%rsi,%rdx), %rcx
	movzbl	(%rcx,%r8), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rdi)
	xorl	%eax, %eax
.LBB6_3:                                # %return
	retq
.Lfunc_end6:
	.size	card16, .Lfunc_end6-card16
	.cfi_endproc

	.align	16, 0x90
	.type	card24,@function
card24:                                 # @card24
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-3(%rcx), %eax
	cmpl	%edx, %eax
	movl	$-15, %eax
	jb	.LBB7_3
# BB#1:                                 # %entry
	cmpl	%ecx, 8(%rsi)
	jb	.LBB7_3
# BB#2:                                 # %if.end
	movl	16(%rsi), %r8d
	movl	%r8d, %r9d
	andl	%edx, %r9d
	movb	12(%rsi), %cl
	movl	%edx, %eax
	shrl	%cl, %eax
	movq	(%rsi), %r10
	shlq	$4, %rax
	movq	8(%r10,%rax), %rax
	movzbl	(%rax,%r9), %r9d
	shll	$16, %r9d
	leal	1(%rdx), %esi
	movl	%r8d, %eax
	andl	%esi, %eax
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r10,%rsi), %rsi
	movzbl	(%rsi,%rax), %eax
	shll	$8, %eax
	orl	%r9d, %eax
	addl	$2, %edx
	andl	%edx, %r8d
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%r10,%rdx), %rcx
	movzbl	(%rcx,%r8), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rdi)
	xorl	%eax, %eax
.LBB7_3:                                # %return
	retq
.Lfunc_end7:
	.size	card24, .Lfunc_end7-card24
	.cfi_endproc

	.align	16, 0x90
	.type	card32,@function
card32:                                 # @card32
	.cfi_startproc
# BB#0:                                 # %entry
	leal	-4(%rcx), %eax
	cmpl	%edx, %eax
	movl	$-15, %eax
	jb	.LBB8_3
# BB#1:                                 # %entry
	cmpl	%ecx, 8(%rsi)
	jb	.LBB8_3
# BB#2:                                 # %if.end
	movl	16(%rsi), %r8d
	movl	%r8d, %r9d
	andl	%edx, %r9d
	movb	12(%rsi), %cl
	movl	%edx, %eax
	shrl	%cl, %eax
	movq	(%rsi), %r10
	shlq	$4, %rax
	movq	8(%r10,%rax), %rax
	movzbl	(%rax,%r9), %r9d
	shll	$24, %r9d
	leal	1(%rdx), %esi
	movl	%r8d, %eax
	andl	%esi, %eax
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r10,%rsi), %rsi
	movzbl	(%rsi,%rax), %eax
	shll	$16, %eax
	orl	%r9d, %eax
	leal	2(%rdx), %esi
	movl	%r8d, %r9d
	andl	%esi, %r9d
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r10,%rsi), %rsi
	movzbl	(%rsi,%r9), %esi
	shll	$8, %esi
	orl	%eax, %esi
	addl	$3, %edx
	andl	%edx, %r8d
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%r10,%rdx), %rax
	movzbl	(%rax,%r8), %eax
	orl	%esi, %eax
	movl	%eax, (%rdi)
	xorl	%eax, %eax
.LBB8_3:                                # %return
	retq
.Lfunc_end8:
	.size	card32, .Lfunc_end8-card32
	.cfi_endproc

	.align	16, 0x90
	.type	make_string_from_index,@function
make_string_from_index:                 # @make_string_from_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movq	%rdi, %r13
	cmpl	%ebx, 16(%rbp)
	jbe	.LBB9_1
# BB#2:                                 # %if.end.i
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%r9d, 44(%rsp)          # 4-byte Spill
	movl	12(%rbp), %eax
	movl	%eax, %edx
	imull	%ebx, %edx
	movl	(%rbp), %esi
	movl	4(%rbp), %ecx
	leal	3(%rdx,%rsi), %edx
	leaq	52(%rsp), %rdi
	movq	%r12, %rsi
	callq	*offset_procs(,%rax,8)
	testl	%eax, %eax
	js	.LBB9_15
# BB#3:                                 # %if.end.5.i
	movl	12(%rbp), %eax
	incl	%ebx
	imull	%eax, %ebx
	movl	(%rbp), %edx
	movl	4(%rbp), %ecx
	leal	3(%rbx,%rdx), %edx
	leaq	48(%rsp), %rdi
	movq	%r12, %rsi
	callq	*offset_procs(,%rax,8)
	testl	%eax, %eax
	js	.LBB9_15
# BB#4:                                 # %if.end.19.i
	movl	48(%rsp), %ebx
	movl	52(%rsp), %ecx
	movl	%ebx, %r14d
	subl	%ecx, %r14d
	jae	.LBB9_6
# BB#5:
	movl	$-15, %eax
	jmp	.LBB9_15
.LBB9_1:
	movl	$-15, %eax
.LBB9_15:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_6:                                # %if.end.22.i
	movl	8(%rbp), %r15d
	leal	(%r15,%rbx), %edx
	cmpl	4(%rbp), %edx
	movl	$-15, %eax
	ja	.LBB9_15
# BB#7:                                 # %if.end
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ecx
	shrl	$31, %ecx
	xorl	$1, %ecx
	leal	(%r14,%rcx), %ebp
	movl	$-13, %eax
	cmpl	$65535, %ebp            # imm = 0xFFFF
	ja	.LBB9_15
# BB#8:                                 # %if.end.6
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	8(%r13), %rdi
	movl	$.L.str.10, %edx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%ebp, %esi
	callq	*136(%rdi)
	movl	12(%rsp), %edi          # 4-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	movl	$-25, %eax
	testq	%rdx, %rdx
	je	.LBB9_15
# BB#9:                                 # %if.end.14
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rdx, 8(%rcx)
	movl	56(%r13), %eax
	orl	$96, %eax
	addl	$4608, %eax             # imm = 0x1200
	movw	%ax, (%rcx)
	movl	%ebp, 4(%rcx)
	movl	$-15, %eax
	cmpl	8(%r12), %edi
	ja	.LBB9_15
# BB#10:                                # %while.cond.preheader.i
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movl	28(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %ebx
	je	.LBB9_13
# BB#11:                                # %while.body.lr.ph.i
	addl	%eax, %r15d
	movq	32(%rsp), %rbp          # 8-byte Reload
	addq	%rsi, %rbp
.LBB9_12:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%r12), %esi
	leal	1(%rsi), %ebx
	andl	%r15d, %esi
	subl	%esi, %ebx
	movb	12(%r12), %cl
	movl	%r15d, %eax
	shrl	%cl, %eax
	movq	(%r12), %rcx
	shlq	$4, %rax
	addq	8(%rcx,%rax), %rsi
	cmpl	%r14d, %ebx
	cmoval	%r14d, %ebx
	movl	%ebx, %r13d
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, %rbp
	leal	(%r15,%rbx), %r15d
	subl	%ebx, %r14d
	jne	.LBB9_12
.LBB9_13:                               # %get_cff_string.exit
	xorl	%eax, %eax
	movl	44(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	js	.LBB9_15
# BB#14:                                # %if.then.25
	movq	32(%rsp), %rdx          # 8-byte Reload
	movb	%cl, (%rdx)
	jmp	.LBB9_15
.Lfunc_end9:
	.size	make_string_from_index, .Lfunc_end9-make_string_from_index
	.cfi_endproc

	.align	16, 0x90
	.type	parse_dict,@function
parse_dict:                             # @parse_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	subq	$1016, %rsp             # imm = 0x3F8
.Ltmp62:
	.cfi_def_cfa_offset 1072
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movl	1072(%rsp), %r9d
	movq	$0, 920(%rsp)
	movq	$0, 912(%rsp)
	xorl	%eax, %eax
	cmpl	%r9d, %r14d
	jae	.LBB10_181
# BB#1:                                 # %while.body.lr.ph
	leal	-1(%r9), %r11d
	movl	%r11d, 44(%rsp)         # 4-byte Spill
	leal	-2(%r9), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	-4(%r9), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	368(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	jmp	.LBB10_2
.LBB10_96:                              # %sw.bb.300
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-13, %eax
	cmpl	$49, %r10d
	jg	.LBB10_181
# BB#97:                                # %if.end.304
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r10, 8(%rsp)           # 8-byte Spill
	movq	%r9, %r15
	cmpl	%r13d, %r11d
	leaq	1007(%rsp), %r9
	jb	.LBB10_115
# BB#98:                                #   in Loop: Header=BB10_2 Depth=1
	leaq	928(%rsp), %rsi
	movq	8(%rsp), %rax           # 8-byte Reload
	cltq
	shlq	$4, %rax
	leaq	96(%rsp,%rax), %r10
	movl	%r13d, %r12d
	jmp	.LBB10_99
	.align	16, 0x90
.LBB10_114:                             # %cleanup.31.i.card8.exit.i_crit_edge
                                        #   in Loop: Header=BB10_99 Depth=2
	movl	16(%r8), %ebp
	movl	12(%r8), %ecx
	movq	(%r8), %rdi
.LBB10_99:                              # %card8.exit.i
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_101 Depth 3
	andl	%r12d, %ebp
	movl	%r12d, %eax
	shrl	%cl, %eax
	cmpq	%r9, %rsi
	jae	.LBB10_112
# BB#100:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB10_99 Depth=2
	shlq	$4, %rax
	movq	8(%rdi,%rax), %rax
	movzbl	(%rax,%rbp), %ebx
	movl	%ebx, %edx
	andl	$15, %edx
	shrl	$4, %ebx
	movl	$1, %edi
	jmp	.LBB10_101
.LBB10_104:                             # %sw.bb.6.i
                                        #   in Loop: Header=BB10_101 Depth=3
	movb	$46, (%rsi)
	jmp	.LBB10_108
.LBB10_105:                             # %sw.bb.8.i
                                        #   in Loop: Header=BB10_101 Depth=3
	movb	$101, (%rsi)
	jmp	.LBB10_108
.LBB10_106:                             # %sw.bb.10.i
                                        #   in Loop: Header=BB10_101 Depth=3
	movw	$11621, (%rsi)          # imm = 0x2D65
	addq	$2, %rsi
	jmp	.LBB10_109
.LBB10_107:                             # %sw.bb.13.i
                                        #   in Loop: Header=BB10_101 Depth=3
	movb	$45, (%rsi)
	jmp	.LBB10_108
	.align	16, 0x90
.LBB10_101:                             # %for.body.i
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$1, %edi
	movl	%ebx, %ecx
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	cmpl	$15, %ecx
	ja	.LBB10_109
# BB#102:                               # %for.body.i
                                        #   in Loop: Header=BB10_101 Depth=3
	jmpq	*.LJTI10_1(,%rax,8)
.LBB10_103:                             # %sw.bb.i
                                        #   in Loop: Header=BB10_101 Depth=3
	orl	$48, %ecx
	movb	%cl, (%rsi)
.LBB10_108:                             # %for.inc.i
                                        #   in Loop: Header=BB10_101 Depth=3
	incq	%rsi
.LBB10_109:                             # %for.inc.i
                                        #   in Loop: Header=BB10_101 Depth=3
	cmpl	$1, %edi
	ja	.LBB10_111
# BB#110:                               # %for.inc.i
                                        #   in Loop: Header=BB10_101 Depth=3
	incl	%edi
	cmpq	%r9, %rsi
	jb	.LBB10_101
.LBB10_111:                             # %for.cond.1.cleanup.31_crit_edge.i
                                        #   in Loop: Header=BB10_99 Depth=2
	movl	8(%r8), %ebx
.LBB10_112:                             # %cleanup.31.i
                                        #   in Loop: Header=BB10_99 Depth=2
	incl	%r12d
	cmpl	%r12d, %r11d
	jb	.LBB10_115
# BB#113:                               # %cleanup.31.i
                                        #   in Loop: Header=BB10_99 Depth=2
	cmpl	%r15d, %ebx
	jae	.LBB10_114
	jmp	.LBB10_115
.LBB10_116:                             # %get_float.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r11d, %ebp
	movq	%r8, %rbx
	movzbl	928(%rsp), %eax
	xorl	%ecx, %ecx
	cmpl	$45, %eax
	movl	$-1, %edx
	cmovnel	%ecx, %edx
	leaq	928(%rsp), %rdi
	leaq	929(%rsp), %rax
	cmoveq	%rax, %rdi
	leaq	80(%rsp), %r8
	xorl	%r9d, %r9d
	movq	%r10, %rcx
	callq	scan_number
	subl	%r14d, %r12d
	testl	%eax, %eax
	cmovsl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB10_117
# BB#118:                               # %if.end.311
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rsp), %r10           # 8-byte Reload
	incl	%r10d
	addl	%r13d, %r12d
	movq	%rbx, %r8
	movq	%r15, %r9
	movl	%ebp, %r11d
	jmp	.LBB10_69
.LBB10_23:                              # %sw.bb.24
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$69121, %r15d           # imm = 0x10E01
	jmp	.LBB10_143
.LBB10_24:                              # %sw.bb.25
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$69377, %r15d           # imm = 0x10F01
	jmp	.LBB10_143
.LBB10_25:                              # %sw.bb.26
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$69633, %r15d           # imm = 0x11001
	jmp	.LBB10_143
.LBB10_26:                              # %sw.bb.27
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$69889, %r15d           # imm = 0x11101
	jmp	.LBB10_143
.LBB10_27:                              # %sw.bb.28
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2167297, %r15d         # imm = 0x211201
	jmp	.LBB10_143
.LBB10_28:                              # %sw.bb.29
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$529158, %r15d          # imm = 0x81306
	jmp	.LBB10_143
.LBB10_29:                              # %sw.bb.30
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$5121, %r15d            # imm = 0x1401
	jmp	.LBB10_143
.LBB10_30:                              # %sw.bb.31
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$136449, %r15d          # imm = 0x21501
	jmp	.LBB10_143
.LBB10_31:                              # %sw.bb.32
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$136705, %r15d          # imm = 0x21601
	jmp	.LBB10_143
.LBB10_32:                              # %sw.bb.33
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$136961, %r15d          # imm = 0x21701
	jmp	.LBB10_143
.LBB10_33:                              # %sw.bb.35
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1710336, %eax          # imm = 0x1A1900
	jmp	.LBB10_140
.LBB10_34:                              # %sw.bb.36
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$6429185, %r15d         # imm = 0x621A01
	jmp	.LBB10_143
.LBB10_35:                              # %sw.bb.37
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2235137, %r15d         # imm = 0x221B01
	jmp	.LBB10_143
.LBB10_36:                              # %sw.bb.38
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$138241, %r15d          # imm = 0x21C01
	jmp	.LBB10_143
.LBB10_37:                              # %sw.bb.39
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2235649, %r15d         # imm = 0x221D01
	jmp	.LBB10_143
.LBB10_38:                              # %sw.bb.40
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2235905, %r15d         # imm = 0x221E01
	jmp	.LBB10_143
.LBB10_39:                              # %sw.bb.41
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2367233, %r15d         # imm = 0x241F01
	jmp	.LBB10_143
.LBB10_40:                              # %sw.bb.42
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2367489, %r15d         # imm = 0x242001
	jmp	.LBB10_143
.LBB10_41:                              # %sw.bb.43
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1581312, %eax          # imm = 0x182100
	jmp	.LBB10_140
.LBB10_42:                              # %sw.bb.44
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r11d, %r15d
	movq	%r9, %r14
	movq	%r8, %rbx
	movl	$-17, %eax
	cmpl	$3, %r10d
	movq	%r10, %rbp
	jl	.LBB10_181
# BB#43:                                # %if.end.47
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	80(%rsp), %rdx
	movl	$3, %esi
	callq	dict_alloc
	testl	%eax, %eax
	js	.LBB10_181
# BB#44:                                # %if.end.51
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%rbp, %rdx
	leal	-3(%rdx), %ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#46:                                # %if.end.59
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%rdx, %r13
	movq	104(%rsp,%rax), %rax
	cmpl	$390, %eax              # imm = 0x186
	ja	.LBB10_48
# BB#47:                                # %make_string_from_sid.exit.thread
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	movq	standard_strings(,%rax,8), %rdi
	movq	%rdi, 904(%rsp)
	movw	$4704, 896(%rsp)        # imm = 0x1260
	callq	strlen
	movl	%eax, 900(%rsp)
	jmp	.LBB10_49
.LBB10_61:                              # %sw.bb.101
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$8705, %r15d            # imm = 0x2201
	jmp	.LBB10_143
.LBB10_62:                              # %sw.bb.102
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$8961, %r15d            # imm = 0x2301
	jmp	.LBB10_143
.LBB10_63:                              # %sw.bb.103
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2106369, %r15d         # imm = 0x202401
	jmp	.LBB10_143
.LBB10_64:                              # %sw.bb.104
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2106625, %r15d         # imm = 0x202501
	jmp	.LBB10_143
.LBB10_65:                              # %sw.bb.105
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2106881, %r15d         # imm = 0x202601
	jmp	.LBB10_143
.LBB10_66:                              # %sw.bb.106
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#67:                                # %if.end.110
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#68:                                # %if.end.123
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB10_69
.LBB10_70:                              # %sw.bb.129
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#71:                                # %if.end.134
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#72:                                # %if.end.147
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 4(%rcx)
	jmp	.LBB10_69
.LBB10_73:                              # %sw.bb.153
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2369793, %r15d         # imm = 0x242901
	jmp	.LBB10_143
.LBB10_48:                              # %make_string_from_sid.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-391(%rax), %r8d
	leaq	896(%rsp), %rsi
	movl	$-1, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	make_string_from_index
	testl	%eax, %eax
	js	.LBB10_181
.LBB10_49:                              # %if.end.67
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	928(%rsp), %rcx
	movl	$.L.str.25, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB10_181
# BB#50:                                # %idict_put_c_name.exit170
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	80(%rsp), %rdi
	leaq	928(%rsp), %rsi
	leaq	896(%rsp), %rdx
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB10_181
# BB#51:                                # %if.end.72
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-2(%r13), %eax
	cltq
	shlq	$4, %rax
	movq	104(%rsp,%rax), %rax
	cmpl	$390, %eax              # imm = 0x186
	ja	.LBB10_53
# BB#52:                                # %make_string_from_sid.exit184.thread
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	movq	standard_strings(,%rax,8), %rdi
	movq	%rdi, 904(%rsp)
	movw	$4704, 896(%rsp)        # imm = 0x1260
	callq	strlen
	movl	%eax, 900(%rsp)
	jmp	.LBB10_54
.LBB10_53:                              # %make_string_from_sid.exit184
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-391(%rax), %r8d
	leaq	896(%rsp), %rsi
	movl	$-1, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	make_string_from_index
	testl	%eax, %eax
	js	.LBB10_181
.LBB10_54:                              # %if.end.82
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	928(%rsp), %rcx
	movl	$.L.str.27, %esi
	movl	$8, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB10_181
# BB#55:                                # %idict_put_c_name.exit195
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	80(%rsp), %rdi
	leaq	928(%rsp), %rsi
	leaq	896(%rsp), %rdx
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB10_181
# BB#56:                                # %if.end.87
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	928(%rsp), %rcx
	movl	$.L.str.28, %esi
	movl	$10, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB10_181
# BB#57:                                # %idict_put_c_name.exit206
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r13d
	movslq	%r13d, %rax
	shlq	$4, %rax
	leaq	96(%rsp,%rax), %rdx
	leaq	80(%rsp), %rdi
	leaq	928(%rsp), %rsi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB10_181
# BB#58:                                # %if.end.95
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	928(%rsp), %rcx
	movl	$.L.str.29, %esi
	movl	$13, %edx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB10_181
# BB#59:                                # %idict_put_c_name.exit217
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	928(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB10_181
# BB#60:                                # %cleanup
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$1, 32(%rax)
	movl	%ebp, %r10d
	movq	%rbx, %r8
	movq	%r14, %r9
	movl	%r15d, %r11d
	jmp	.LBB10_69
	.align	16, 0x90
.LBB10_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_99 Depth 2
                                        #       Child Loop BB10_101 Depth 3
                                        #     Child Loop BB10_151 Depth 2
                                        #     Child Loop BB10_161 Depth 2
	cmpl	%r14d, %r11d
	jb	.LBB10_3
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	8(%r8), %ebx
	cmpl	%r9d, %ebx
	jb	.LBB10_5
# BB#6:                                 # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	1(%r14), %r13d
	movl	16(%r8), %ebp
	movl	%ebp, %eax
	andl	%r14d, %eax
	movl	12(%r8), %ecx
	movl	%r14d, %esi
	shrl	%cl, %esi
	movq	(%r8), %rdi
	shlq	$4, %rsi
	movq	8(%rdi,%rsi), %rsi
	movzbl	(%rsi,%rax), %esi
	cmpq	$31, %rsi
	jbe	.LBB10_9
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$255, %esi
	je	.LBB10_8
.LBB10_119:                             # %sw.default.315
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-13, %eax
	cmpl	$49, %r10d
	jg	.LBB10_181
# BB#120:                               # %if.end.i.238
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$29, %esi
	jne	.LBB10_121
# BB#124:                               # %if.then.10.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r13d, 60(%rsp)         # 4-byte Folded Reload
	movl	$-15, %eax
	jb	.LBB10_181
# BB#125:                               # %if.end.15.i
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%ebp, %eax
	andl	%r13d, %eax
	shrl	%cl, %r13d
	shlq	$4, %r13
	movq	8(%rdi,%r13), %rsi
	movzbl	(%rsi,%rax), %eax
	shll	$24, %eax
	leal	2(%r14), %esi
	movl	%ebp, %edx
	andl	%esi, %edx
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%rdi,%rsi), %rsi
	movzbl	(%rsi,%rdx), %edx
	shll	$16, %edx
	orl	%eax, %edx
	leal	3(%r14), %eax
	movl	%ebp, %esi
	andl	%eax, %esi
	shrl	%cl, %eax
	shlq	$4, %rax
	movq	8(%rdi,%rax), %rax
	movzbl	(%rax,%rsi), %eax
	shll	$8, %eax
	orl	%edx, %eax
	leal	4(%r14), %edx
	andl	%edx, %ebp
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%rdi,%rdx), %rcx
	movzbl	(%rcx,%rbp), %esi
	orl	%eax, %esi
	movl	$5, %r12d
	jmp	.LBB10_137
	.align	16, 0x90
.LBB10_9:                               # %if.end
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1705472, %eax          # imm = 0x1A0600
	movl	$327681, %r15d          # imm = 0x50001
	movl	%r13d, %r12d
	jmpq	*.LJTI10_0(,%rsi,8)
.LBB10_11:                              # %sw.bb.5
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$328449, %r15d          # imm = 0x50301
	jmp	.LBB10_142
	.align	16, 0x90
.LBB10_121:                             # %if.end.i.238
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$28, %esi
	jne	.LBB10_126
# BB#122:                               # %if.then.2.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r13d, 20(%rsp)         # 4-byte Folded Reload
	movl	$-15, %eax
	jb	.LBB10_181
# BB#123:                               # %if.end.6.i
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%ebp, %eax
	andl	%r13d, %eax
	shrl	%cl, %r13d
	shlq	$4, %r13
	movq	8(%rdi,%r13), %rsi
	movzbl	(%rsi,%rax), %eax
	shll	$8, %eax
	leal	2(%r14), %esi
	andl	%esi, %ebp
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%rdi,%rsi), %rcx
	movzbl	(%rcx,%rbp), %esi
	orl	%eax, %esi
	addl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	xorl	$-32768, %esi           # imm = 0xFFFFFFFFFFFF8000
	movl	$3, %r12d
	jmp	.LBB10_137
.LBB10_126:                             # %if.end.18.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$32, %esi
	jb	.LBB10_127
# BB#128:                               # %if.end.21.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$246, %esi
	ja	.LBB10_130
# BB#129:                               # %if.then.23.i
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-139(%rsi), %esi
	movl	$1, %r12d
	jmp	.LBB10_137
.LBB10_130:                             # %if.end.24.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$250, %esi
	ja	.LBB10_133
# BB#131:                               # %if.then.26.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r13d, %r11d
	movl	$-15, %eax
	jb	.LBB10_181
# BB#132:                               # %if.end.31.i
                                        #   in Loop: Header=BB10_2 Depth=1
	andl	%r13d, %ebp
	shrl	%cl, %r13d
	shlq	$4, %r13
	movq	8(%rdi,%r13), %rax
	movzbl	(%rax,%rbp), %eax
	shll	$8, %esi
	addl	$-63232, %esi           # imm = 0xFFFFFFFFFFFF0900
	orl	%eax, %esi
	addl	$108, %esi
	movl	$2, %r12d
	jmp	.LBB10_137
.LBB10_133:                             # %if.end.35.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r13d, %r11d
	jb	.LBB10_134
# BB#135:                               # %if.end.35.i
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	%sil, %eax
	cmpl	$255, %eax
	movl	$-15, %eax
	je	.LBB10_181
# BB#136:                               # %if.end.42.i
                                        #   in Loop: Header=BB10_2 Depth=1
	andl	%r13d, %ebp
	shrl	%cl, %r13d
	shlq	$4, %r13
	movq	8(%rdi,%r13), %rax
	movzbl	(%rax,%rbp), %eax
	movl	$251, %ecx
	subl	%esi, %ecx
	shll	$8, %ecx
	addl	$-108, %ecx
	subl	%eax, %ecx
	movl	$2, %r12d
	movl	%ecx, %esi
	.align	16, 0x90
.LBB10_137:                             # %cleanup.338
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%esi, %rax
	movslq	%r10d, %rcx
	shlq	$4, %rcx
	movq	%rax, 104(%rsp,%rcx)
	movw	$2816, 96(%rsp,%rcx)    # imm = 0xB00
	incl	%r10d
	addl	%r14d, %r12d
	jmp	.LBB10_69
.LBB10_8:                               #   in Loop: Header=BB10_2 Depth=1
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_141:                             # %sw.bb.2
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$327937, %r15d          # imm = 0x50101
	jmp	.LBB10_142
.LBB10_10:                              # %sw.bb.3
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$328193, %r15d          # imm = 0x50201
	jmp	.LBB10_142
.LBB10_12:                              # %sw.bb.6
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$525572, %r15d          # imm = 0x80504
	jmp	.LBB10_142
.LBB10_138:                             # %sw.bb.8
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1705728, %eax          # imm = 0x1A0700
	jmp	.LBB10_139
.LBB10_13:                              # %sw.bb.9
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1705984, %eax          # imm = 0x1A0800
	jmp	.LBB10_139
.LBB10_14:                              # %sw.bb.10
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1706240, %eax          # imm = 0x1A0900
	jmp	.LBB10_139
.LBB10_15:                              # %sw.bb.11
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$657921, %r15d          # imm = 0xA0A01
	jmp	.LBB10_142
.LBB10_16:                              # %sw.bb.12
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$658177, %r15d          # imm = 0xA0B01
	jmp	.LBB10_142
.LBB10_17:                              # %sw.bb.13
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r9d, %r13d
	jae	.LBB10_18
# BB#19:                                # %if.end.16
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	%r13d, %r11d
	movl	$-15, %eax
	jb	.LBB10_181
# BB#20:                                # %if.end.21
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r14d, %r12d
	addl	$2, %r12d
	andl	%r13d, %ebp
	shrl	%cl, %r13d
	shlq	$4, %r13
	movq	8(%rdi,%r13), %rax
	movzbl	(%rax,%rbp), %ecx
	cmpq	$38, %rcx
	ja	.LBB10_69
# BB#21:                                # %if.end.21
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1710080, %eax          # imm = 0x1A1800
	movl	$330753, %r15d          # imm = 0x50C01
	jmpq	*.LJTI10_2(,%rcx,8)
.LBB10_22:                              # %sw.bb.23
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$6360321, %r15d         # imm = 0x610D01
	jmp	.LBB10_143
.LBB10_74:                              # %sw.bb.154
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$2107905, %r15d         # imm = 0x202A01
	jmp	.LBB10_142
.LBB10_75:                              # %sw.bb.155
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$535296, %eax           # imm = 0x82B00
.LBB10_139:                             # %sw.epilog.341.thread310
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r13d, %r12d
.LBB10_140:                             # %sw.epilog.341.thread310
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r8, %r13
	movl	%eax, %r15d
	movl	%r10d, %r14d
	jmp	.LBB10_144
.LBB10_76:                              # %sw.bb.156
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#77:                                # %if.end.161
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#78:                                # %if.end.174
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 8(%rcx)
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_79:                              # %sw.bb.180
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#80:                                # %if.end.185
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#81:                                # %if.end.198
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 12(%rcx)
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_82:                              # %sw.bb.204
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#83:                                # %if.end.209
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#84:                                # %if.end.222
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 20(%rcx)
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_85:                              # %sw.bb.228
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	cmpl	$2, %r10d
	jl	.LBB10_181
# BB#86:                                # %if.end.233
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-2(%r10), %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	movzbl	97(%rsp,%rcx), %edx
	cmpl	$11, %edx
	jne	.LBB10_87
# BB#88:                                # %if.end.246
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rdx
	shlq	$4, %rdx
	movzbl	97(%rsp,%rdx), %esi
	cmpl	$11, %esi
	jne	.LBB10_89
# BB#90:                                # %if.end.261
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rcx), %ecx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%ecx, 28(%rsi)
	movl	104(%rsp,%rdx), %ecx
	movl	%ecx, 16(%rsi)
	movl	%eax, %r10d
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_91:                              # %sw.bb.273
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$-17, %eax
	testl	%r10d, %r10d
	jle	.LBB10_181
# BB#92:                                # %if.end.278
                                        #   in Loop: Header=BB10_2 Depth=1
	decl	%r10d
	movslq	%r10d, %rax
	shlq	$4, %rax
	movzbl	97(%rsp,%rax), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_45
# BB#93:                                # %if.end.291
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	104(%rsp,%rax), %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 24(%rcx)
	movl	%r13d, %r12d
	jmp	.LBB10_69
.LBB10_94:                              # %sw.bb.297
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$142337, %r15d          # imm = 0x22C01
	jmp	.LBB10_142
.LBB10_95:                              # %sw.bb.298
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$142593, %r15d          # imm = 0x22D01
.LBB10_142:                             # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r13d, %r12d
.LBB10_143:                             # %if.else
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r8, %r13
	movl	%r15d, %r14d
	andl	$7, %r14d
	movl	$-17, %eax
	cmpl	%r14d, %r10d
	jb	.LBB10_181
.LBB10_144:                             # %if.end.351
                                        #   in Loop: Header=BB10_2 Depth=1
	testl	$1048576, %r15d         # imm = 0x100000
	je	.LBB10_162
# BB#145:                               # %if.then.353
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r14d, %edx
	testl	%r14d, %r14d
	je	.LBB10_162
# BB#146:                               # %for.body.i.245.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%r10d, %r8
	movq	%r8, %rax
	shlq	$4, %rax
	leaq	96(%rsp,%rax), %rsi
	movq	%rdx, %rdi
	negq	%rdi
	movq	%rdx, %rcx
	shlq	$4, %rcx
	movq	%rsi, %rax
	subq	%rcx, %rax
	xorl	%ebx, %ebx
	testb	$1, %r14b
	je	.LBB10_149
# BB#147:                               # %for.body.i.245.prol
                                        #   in Loop: Header=BB10_2 Depth=1
	movzbl	1(%rax), %ecx
	movl	$1, %ebx
	cmpl	$16, %ecx
	je	.LBB10_149
# BB#148:                               # %if.then.i.248.prol
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%rdi, %rcx
	shlq	$4, %rcx
	cvtsi2ssq	8(%rsi,%rcx), %xmm0
	movss	%xmm0, 8(%rsi,%rcx)
	movw	$4096, (%rax)           # imm = 0x1000
	movl	$1, %ebx
.LBB10_149:                             # %for.body.i.245.preheader.split
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$1, %r14d
	je	.LBB10_156
# BB#150:                               # %for.body.i.245.preheader.split.split
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r14d, %ebp
	subl	%ebx, %ebp
	addq	%r8, %rbx
	subq	%rdx, %rbx
	shlq	$4, %rbx
	leaq	96(%rsp,%rbx), %rbx
	.align	16, 0x90
.LBB10_151:                             # %for.body.i.245
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rbx), %ecx
	cmpl	$16, %ecx
	je	.LBB10_153
# BB#152:                               # %if.then.i.248
                                        #   in Loop: Header=BB10_151 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	8(%rbx), %xmm0
	movss	%xmm0, 8(%rbx)
	movw	$4096, (%rbx)           # imm = 0x1000
.LBB10_153:                             # %for.inc.i.249
                                        #   in Loop: Header=BB10_151 Depth=2
	movzbl	17(%rbx), %ecx
	cmpl	$16, %ecx
	je	.LBB10_155
# BB#154:                               # %if.then.i.248.1
                                        #   in Loop: Header=BB10_151 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssq	24(%rbx), %xmm0
	movss	%xmm0, 24(%rbx)
	movw	$4096, 16(%rbx)         # imm = 0x1000
.LBB10_155:                             # %for.inc.i.249.1
                                        #   in Loop: Header=BB10_151 Depth=2
	addq	$32, %rbx
	addl	$-2, %ebp
	jne	.LBB10_151
.LBB10_156:                             # %for.cond.14.preheader.i
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$2, %r14d
	jb	.LBB10_162
# BB#157:                               # %for.body.17.i.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %ebx
	movl	$1, %ebp
	testb	$1, %r14b
	jne	.LBB10_159
# BB#158:                               # %for.body.17.i.prol
                                        #   in Loop: Header=BB10_2 Depth=1
	movss	24(%rax), %xmm0         # xmm0 = mem[0],zero,zero,zero
	shlq	$4, %rdi
	addss	8(%rsi,%rdi), %xmm0
	movss	%xmm0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movl	$2, %ebx
	movl	$2, %ebp
.LBB10_159:                             # %for.body.17.i.preheader.split
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$2, %r14d
	je	.LBB10_162
# BB#160:                               # %for.body.17.i.preheader.split.split
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r14d, %esi
	subl	%ebp, %esi
	addq	%r8, %r8
	leaq	(%r8,%rbp,2), %rcx
	addq	%rdx, %rdx
	subq	%rdx, %rcx
	leaq	120(%rsp), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	16, 0x90
.LBB10_161:                             # %for.body.17.i
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-16(%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	leal	-1(%rbx), %edx
	shlq	$4, %rdx
	addss	8(%rax,%rdx), %xmm0
	movss	%xmm0, -16(%rcx)
	movw	$4096, -24(%rcx)        # imm = 0x1000
	movss	(%rcx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movl	%ebx, %edx
	shlq	$4, %rdx
	addss	8(%rax,%rdx), %xmm0
	movss	%xmm0, (%rcx)
	movw	$4096, -8(%rcx)         # imm = 0x1000
	addl	$2, %ebx
	addq	$32, %rcx
	addl	$-2, %esi
	jne	.LBB10_161
	.align	16, 0x90
.LBB10_162:                             # %if.end.356
                                        #   in Loop: Header=BB10_2 Depth=1
	subl	%r14d, %r10d
	testl	$6553600, %r15d         # imm = 0x640000
	je	.LBB10_164
# BB#163:                               # %if.then.360
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%r10d, %rcx
	shlq	$4, %rcx
	movl	$-20, %eax
	movzbl	97(%rsp,%rcx), %ecx
	cmpl	$11, %ecx
	jne	.LBB10_181
.LBB10_164:                             # %if.end.371
                                        #   in Loop: Header=BB10_2 Depth=1
	testl	$4194304, %r15d         # imm = 0x400000
	je	.LBB10_166
# BB#165:                               # %if.then.374
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%r10d, %rax
	shlq	$4, %rax
	cmpq	$0, 104(%rsp,%rax)
	setne	%al
	movzbl	%al, %eax
	movw	%ax, 88(%rsp)
	movw	$256, 80(%rsp)          # imm = 0x100
.LBB10_166:                             # %if.end.385
                                        #   in Loop: Header=BB10_2 Depth=1
	testl	$262144, %r15d          # imm = 0x40000
	je	.LBB10_170
# BB#167:                               # %if.then.388
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%r10d, %rax
	movq	%r10, %rbx
	shlq	$4, %rax
	movq	104(%rsp,%rax), %rax
	cmpl	$390, %eax              # imm = 0x186
	ja	.LBB10_169
# BB#168:                               # %make_string_from_sid.exit265.thread
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	movq	standard_strings(,%rax,8), %rdi
	movq	%rdi, 88(%rsp)
	movw	$4704, 80(%rsp)         # imm = 0x1260
	callq	strlen
	movl	%eax, 84(%rsp)
	movq	%rbx, %r10
	jmp	.LBB10_170
.LBB10_169:                             # %make_string_from_sid.exit265
                                        #   in Loop: Header=BB10_2 Depth=1
	leal	-391(%rax), %r8d
	leaq	80(%rsp), %rsi
	movl	$-1, %r9d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	callq	make_string_from_index
	testl	%eax, %eax
	movq	%rbx, %r10
	js	.LBB10_181
.LBB10_170:                             # %if.end.399
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	%r10, %rbx
	testl	$524288, %r15d          # imm = 0x80000
	je	.LBB10_173
# BB#171:                               # %if.then.402
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdi
	leaq	80(%rsp), %rsi
	movl	$96, %edx
	movl	$.L.str.36, %r8d
	movl	%r14d, %ecx
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB10_181
# BB#172:                               # %if.end.409
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	88(%rsp), %rdi
	movslq	%ebx, %rax
	shlq	$4, %rax
	leaq	96(%rsp,%rax), %rsi
	movl	%r14d, %edx
	shlq	$4, %rdx
	callq	memcpy
.LBB10_173:                             # %if.end.416
                                        #   in Loop: Header=BB10_2 Depth=1
	testl	$131072, %r15d          # imm = 0x20000
	jne	.LBB10_174
# BB#176:                               # %if.else.425
                                        #   in Loop: Header=BB10_2 Depth=1
	testl	$65536, %r15d           # imm = 0x10000
	movq	64(%rsp), %rbp          # 8-byte Reload
	je	.LBB10_179
# BB#177:                               # %if.then.428
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	920(%rsp), %rdx
	movl	$.L.str.12, %ecx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	find_font_dict
	testl	%eax, %eax
	js	.LBB10_181
# BB#178:                               # %if.end.433
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	920(%rsp), %rbp
	jmp	.LBB10_179
.LBB10_174:                             # %if.then.419
                                        #   in Loop: Header=BB10_2 Depth=1
	leaq	912(%rsp), %rdx
	movl	$.L.str.11, %ecx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	find_font_dict
	testl	%eax, %eax
	js	.LBB10_181
# BB#175:                               # %if.end.424
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	912(%rsp), %rbp
.LBB10_179:                             # %if.end.436
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%r15d, %eax
	shrl	$8, %eax
	andl	$63, %eax
	movl	%eax, %eax
	movq	font_keys(,%rax,8), %rsi
	movswl	font_keys_sz(%rax,%rax), %edx
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	928(%rsp), %rcx
	xorl	%r8d, %r8d
	callq	names_ref
	testl	%eax, %eax
	js	.LBB10_181
# BB#180:                               # %cleanup.452
                                        #   in Loop: Header=BB10_2 Depth=1
	movslq	%ebx, %rax
	shlq	$4, %rax
	testl	$4980736, %r15d         # imm = 0x4C0000
	leaq	96(%rsp,%rax), %rax
	leaq	80(%rsp), %rdx
	cmoveq	%rax, %rdx
	leaq	928(%rsp), %rsi
	movq	%rbp, %rdi
	movq	48(%rsp), %rcx          # 8-byte Reload
	callq	dict_put
	movq	%rbx, %r10
	testl	%eax, %eax
	movq	%r13, %r8
	movl	1072(%rsp), %r9d
	movl	44(%rsp), %r11d         # 4-byte Reload
	js	.LBB10_181
.LBB10_69:                              # %while.cond.backedge
                                        #   in Loop: Header=BB10_2 Depth=1
	xorl	%eax, %eax
	cmpl	%r9d, %r12d
	movl	%r12d, %r14d
	jb	.LBB10_2
	jmp	.LBB10_181
.LBB10_3:
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_5:
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_127:
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_115:                             # %get_float.exit.thread
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_45:                              # %if.then.55
	leaq	96(%rsp,%rax), %rdi
	callq	check_type_failed
	jmp	.LBB10_181
.LBB10_18:
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_87:                              # %if.then.242
	leaq	96(%rsp,%rcx), %rdi
	callq	check_type_failed
	jmp	.LBB10_181
.LBB10_89:                              # %if.then.256
	leaq	96(%rsp,%rdx), %rdi
	callq	check_type_failed
	jmp	.LBB10_181
.LBB10_134:
	movl	$-15, %eax
	jmp	.LBB10_181
.LBB10_117:
	movl	%r12d, %eax
.LBB10_181:                             # %cleanup.458
	addq	$1016, %rsp             # imm = 0x3F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	parse_dict, .Lfunc_end10-parse_dict
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_143
	.quad	.LBB10_141
	.quad	.LBB10_10
	.quad	.LBB10_11
	.quad	.LBB10_11
	.quad	.LBB10_12
	.quad	.LBB10_140
	.quad	.LBB10_138
	.quad	.LBB10_13
	.quad	.LBB10_14
	.quad	.LBB10_15
	.quad	.LBB10_16
	.quad	.LBB10_17
	.quad	.LBB10_74
	.quad	.LBB10_75
	.quad	.LBB10_76
	.quad	.LBB10_79
	.quad	.LBB10_82
	.quad	.LBB10_85
	.quad	.LBB10_91
	.quad	.LBB10_94
	.quad	.LBB10_95
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_119
	.quad	.LBB10_119
	.quad	.LBB10_96
	.quad	.LBB10_69
.LJTI10_1:
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_103
	.quad	.LBB10_104
	.quad	.LBB10_105
	.quad	.LBB10_106
	.quad	.LBB10_109
	.quad	.LBB10_107
	.quad	.LBB10_116
.LJTI10_2:
	.quad	.LBB10_143
	.quad	.LBB10_22
	.quad	.LBB10_23
	.quad	.LBB10_24
	.quad	.LBB10_25
	.quad	.LBB10_26
	.quad	.LBB10_27
	.quad	.LBB10_28
	.quad	.LBB10_29
	.quad	.LBB10_30
	.quad	.LBB10_31
	.quad	.LBB10_32
	.quad	.LBB10_140
	.quad	.LBB10_33
	.quad	.LBB10_34
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_35
	.quad	.LBB10_36
	.quad	.LBB10_37
	.quad	.LBB10_38
	.quad	.LBB10_39
	.quad	.LBB10_40
	.quad	.LBB10_41
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_69
	.quad	.LBB10_42
	.quad	.LBB10_61
	.quad	.LBB10_62
	.quad	.LBB10_63
	.quad	.LBB10_64
	.quad	.LBB10_65
	.quad	.LBB10_66
	.quad	.LBB10_70
	.quad	.LBB10_73

	.text
	.align	16, 0x90
	.type	find_font_dict,@function
find_font_dict:                         # @find_font_dict
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 80
.Ltmp75:
	.cfi_offset %rbx, -48
.Ltmp76:
	.cfi_offset %r12, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorl	%ebp, %ebp
	cmpq	$0, (%rbx)
	jne	.LBB11_6
# BB#1:                                 # %if.end
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	jg	.LBB11_6
# BB#2:                                 # %if.end.2
	movq	8(%r12), %rdi
	leaq	(%rsp), %rdx
	movl	$8, %esi
	callq	dict_alloc
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#3:                                 # %if.end.6
	movq	%r14, %rdi
	callq	strlen
	movq	8(%r12), %rcx
	movq	192(%rcx), %rcx
	movq	120(%rcx), %rdi
	leaq	16(%rsp), %rcx
	xorl	%r8d, %r8d
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	names_ref
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#4:                                 # %idict_put_c_name.exit
	addq	$368, %r12              # imm = 0x170
	leaq	16(%rsp), %rsi
	leaq	(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	dict_put
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_6
# BB#5:                                 # %if.end.12
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dict_find_string
	testl	%eax, %eax
	movl	$-21, %ebp
	cmovnel	%eax, %ebp
.LBB11_6:                               # %cleanup
	movl	%ebp, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	find_font_dict, .Lfunc_end11-find_font_dict
	.cfi_endproc

	.align	16, 0x90
	.type	iso_adobe_charset_proc,@function
iso_adobe_charset_proc:                 # @iso_adobe_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	leal	1(%rcx), %edx
	cmpl	$228, %ecx
	movl	$-15, %eax
	cmovbl	%edx, %eax
	retq
.Lfunc_end12:
	.size	iso_adobe_charset_proc, .Lfunc_end12-iso_adobe_charset_proc
	.cfi_endproc

	.align	16, 0x90
	.type	expert_charset_proc,@function
expert_charset_proc:                    # @expert_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$164, %ecx
	ja	.LBB13_2
# BB#1:                                 # %if.then
	movl	%ecx, %eax
	movzwl	expert_charset(%rax,%rax), %eax
.LBB13_2:                               # %return
	retq
.Lfunc_end13:
	.size	expert_charset_proc, .Lfunc_end13-expert_charset_proc
	.cfi_endproc

	.align	16, 0x90
	.type	expert_subset_charset_proc,@function
expert_subset_charset_proc:             # @expert_subset_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$85, %ecx
	ja	.LBB14_2
# BB#1:                                 # %if.then
	movl	%ecx, %eax
	movzwl	expert_subset_charset(%rax,%rax), %eax
.LBB14_2:                               # %return
	retq
.Lfunc_end14:
	.size	expert_subset_charset_proc, .Lfunc_end14-expert_subset_charset_proc
	.cfi_endproc

	.align	16, 0x90
	.type	format0_charset_proc,@function
format0_charset_proc:                   # @format0_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	leal	(%rsi,%rcx,2), %esi
	leal	-2(%rdx), %eax
	cmpl	%esi, %eax
	movl	$-15, %ecx
	jb	.LBB15_3
# BB#1:                                 # %entry
	cmpl	%edx, 8(%rdi)
                                        # implicit-def: EAX
	jb	.LBB15_3
# BB#2:                                 # %if.end.i
	movl	16(%rdi), %r8d
	movl	%r8d, %edx
	andl	%esi, %edx
	movb	12(%rdi), %cl
	movl	%esi, %eax
	shrl	%cl, %eax
	movq	(%rdi), %rdi
	shlq	$4, %rax
	movq	8(%rdi,%rax), %rax
	movzbl	(%rax,%rdx), %edx
	shll	$8, %edx
	incl	%esi
	andl	%esi, %r8d
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%rdi,%rsi), %rax
	movzbl	(%rax,%r8), %eax
	orl	%edx, %eax
	xorl	%ecx, %ecx
.LBB15_3:                               # %card16.exit
	testl	%ecx, %ecx
	cmovsl	%ecx, %eax
	retq
.Lfunc_end15:
	.size	format0_charset_proc, .Lfunc_end15-format0_charset_proc
	.cfi_endproc

	.align	16, 0x90
	.type	format1_charset_proc,@function
format1_charset_proc:                   # @format1_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movl	%ecx, %r8d
	leal	-3(%rdx), %r10d
	movl	$-15, %eax
	cmpl	%esi, %r10d
	jbe	.LBB16_8
# BB#1:                                 # %while.body.lr.ph
	movl	8(%rdi), %r11d
	leal	-2(%rdx), %r15d
	leal	-1(%rdx), %r14d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB16_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, %r15d
	jb	.LBB16_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB16_3 Depth=1
	cmpl	%edx, %r11d
	jb	.LBB16_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB16_3 Depth=1
	leal	2(%rsi), %ebx
	cmpl	%ebx, %r14d
	jb	.LBB16_8
# BB#6:                                 # %if.end.5
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	16(%rdi), %r12d
	movl	%r12d, %ebp
	andl	%ebx, %ebp
	movl	12(%rdi), %ecx
	shrl	%cl, %ebx
	movq	(%rdi), %r13
	shlq	$4, %rbx
	movq	8(%r13,%rbx), %rbx
	movzbl	(%rbx,%rbp), %ebx
	leal	1(%r9,%rbx), %ebx
	cmpl	%r8d, %ebx
	ja	.LBB16_7
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB16_3 Depth=1
	addl	$3, %esi
	cmpl	%r10d, %esi
	movl	%ebx, %r9d
	jb	.LBB16_3
	jmp	.LBB16_8
.LBB16_7:                               # %if.then.8
	movl	%r12d, %eax
	andl	%esi, %eax
	movl	%esi, %edx
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%r13,%rdx), %rdx
	movzbl	(%rdx,%rax), %eax
	shll	$8, %eax
	incl	%esi
	andl	%esi, %r12d
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r13,%rsi), %rcx
	movzbl	(%rcx,%r12), %ecx
	orl	%eax, %ecx
	subl	%r9d, %r8d
	addl	%ecx, %r8d
	movl	%r8d, %eax
.LBB16_8:                               # %cleanup.15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	format1_charset_proc, .Lfunc_end16-format1_charset_proc
	.cfi_endproc

	.align	16, 0x90
	.type	format2_charset_proc,@function
format2_charset_proc:                   # @format2_charset_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movl	%ecx, %r8d
	leal	-4(%rdx), %r10d
	movl	$-15, %eax
	cmpl	%esi, %r10d
	jbe	.LBB17_8
# BB#1:                                 # %while.body.lr.ph
	movl	8(%rdi), %r11d
	leal	-2(%rdx), %r14d
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB17_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, %r14d
	jb	.LBB17_8
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB17_3 Depth=1
	cmpl	%edx, %r11d
	jb	.LBB17_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB17_3 Depth=1
	leal	2(%rsi), %ebx
	cmpl	%ebx, %r14d
	jb	.LBB17_8
# BB#6:                                 # %if.end.5
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	16(%rdi), %r15d
	movl	%r15d, %ebp
	andl	%ebx, %ebp
	movl	12(%rdi), %ecx
	shrl	%cl, %ebx
	movq	(%rdi), %r12
	shlq	$4, %rbx
	movq	8(%r12,%rbx), %rbx
	movzbl	(%rbx,%rbp), %r13d
	shll	$8, %r13d
	leal	3(%rsi), %ebp
	movl	%r15d, %ebx
	andl	%ebp, %ebx
	shrl	%cl, %ebp
	shlq	$4, %rbp
	movq	8(%r12,%rbp), %rbp
	movzbl	(%rbp,%rbx), %ebx
	orl	%r13d, %ebx
	leal	1(%r9,%rbx), %ebx
	cmpl	%r8d, %ebx
	ja	.LBB17_7
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB17_3 Depth=1
	addl	$4, %esi
	cmpl	%r10d, %esi
	movl	%ebx, %r9d
	jb	.LBB17_3
	jmp	.LBB17_8
.LBB17_7:                               # %if.then.8
	movl	%r15d, %eax
	andl	%esi, %eax
	movl	%esi, %edx
	shrl	%cl, %edx
	shlq	$4, %rdx
	movq	8(%r12,%rdx), %rdx
	movzbl	(%rdx,%rax), %eax
	shll	$8, %eax
	incl	%esi
	andl	%esi, %r15d
	shrl	%cl, %esi
	shlq	$4, %rsi
	movq	8(%r12,%rsi), %rcx
	movzbl	(%rcx,%r15), %ecx
	orl	%eax, %ecx
	subl	%r9d, %r8d
	addl	%ecx, %r8d
	movl	%r8d, %eax
.LBB17_8:                               # %cleanup.15
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	format2_charset_proc, .Lfunc_end17-format2_charset_proc
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_0:
	.long	981668463               # float 0.00100000005
.LCPI18_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	set_defaults,@function
set_defaults:                           # @set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 112
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB18_24
# BB#1:                                 # %for.body.lr.ph
	leaq	368(%r15), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movslq	%ecx, %r12
	xorl	%ebp, %ebp
	leaq	40(%rsp), %r13
	.align	16, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	movzwl	(%rbx,%rbp,4), %eax
	movq	font_keys(,%rax,8), %rsi
	movswl	font_keys_sz(%rax,%rax), %edx
	xorl	%r8d, %r8d
	movq	%r13, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB18_24
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	leaq	32(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jg	.LBB18_23
# BB#4:                                 # %if.then.13
                                        #   in Loop: Header=BB18_2 Depth=1
	movzwl	2(%rbx,%rbp,4), %eax
	decl	%eax
	cmpl	$12, %eax
	jbe	.LBB18_5
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$0, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
.LBB18_22:                              # %sw.epilog
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	leaq	16(%rsp), %rdx
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	dict_put
	testl	%eax, %eax
	js	.LBB18_24
.LBB18_23:                              # %for.inc
                                        #   in Loop: Header=BB18_2 Depth=1
	incq	%rbp
	xorl	%eax, %eax
	cmpq	%r12, %rbp
	jl	.LBB18_2
	jmp	.LBB18_24
.LBB18_5:                               # %if.then.13
                                        #   in Loop: Header=BB18_2 Depth=1
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_7:                               # %sw.bb.19
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$1, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_8:                               # %sw.bb.24
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$2, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_9:                               # %sw.bb.29
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$7, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_10:                              # %sw.bb.34
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$50, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_11:                              # %sw.bb.39
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$-100, 24(%rsp)
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_12:                              # %sw.bb.44
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	$8720, 24(%rsp)         # imm = 0x2210
	movw	$2816, 16(%rsp)         # imm = 0xB00
	jmp	.LBB18_22
.LBB18_13:                              # %sw.bb.49
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1025658323, 24(%rsp)   # imm = 0x3D224DD3
	movw	$4096, 16(%rsp)         # imm = 0x1000
	jmp	.LBB18_22
.LBB18_14:                              # %sw.bb.53
                                        #   in Loop: Header=BB18_2 Depth=1
	movl	$1031127695, 24(%rsp)   # imm = 0x3D75C28F
	movw	$4096, 16(%rsp)         # imm = 0x1000
	jmp	.LBB18_22
.LBB18_15:                              # %sw.bb.58
                                        #   in Loop: Header=BB18_2 Depth=1
	movw	$0, 24(%rsp)
	movw	$256, 16(%rsp)          # imm = 0x100
	jmp	.LBB18_22
.LBB18_16:                              # %sw.bb.62
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r15), %rdi
	movl	$96, %edx
	movl	$4, %ecx
	movl	$.L.str.464, %r8d
	leaq	16(%rsp), %rsi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB18_24
# BB#17:                                # %if.end.69
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	24(%rsp), %rax
	movq	$0, 8(%rax)
	movw	$2816, (%rax)           # imm = 0xB00
	movups	(%rax), %xmm0
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	jmp	.LBB18_22
.LBB18_18:                              # %sw.bb.92
                                        #   in Loop: Header=BB18_2 Depth=1
	movss	.LCPI18_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
.LBB18_19:                              # %make_matrix
                                        #   in Loop: Header=BB18_2 Depth=1
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	8(%r15), %rdi
	movl	$96, %edx
	movl	$6, %ecx
	movl	$.L.str.464, %r8d
	leaq	16(%rsp), %rsi
	callq	gs_alloc_ref_array
	testl	%eax, %eax
	js	.LBB18_24
# BB#20:                                # %if.end.99
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	24(%rsp), %rax
	movss	4(%rsp), %xmm0          # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 8(%rax)
	movw	$4096, (%rax)           # imm = 0x1000
	movups	(%rax), %xmm0
	movups	%xmm0, 48(%rax)
	movq	24(%rsp), %rax
	movl	$0, 24(%rax)
	movw	$4096, 16(%rax)         # imm = 0x1000
	movups	16(%rax), %xmm0
	movups	%xmm0, 80(%rax)
	movups	%xmm0, 64(%rax)
	movups	%xmm0, 32(%rax)
	jmp	.LBB18_22
.LBB18_21:                              # %sw.bb.138
                                        #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r15), %rdi
	xorl	%esi, %esi
	leaq	16(%rsp), %rdx
	callq	dict_alloc
	testl	%eax, %eax
	jns	.LBB18_22
.LBB18_24:                              # %cleanup.156
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	set_defaults, .Lfunc_end18-set_defaults
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_7
	.quad	.LBB18_8
	.quad	.LBB18_9
	.quad	.LBB18_10
	.quad	.LBB18_11
	.quad	.LBB18_12
	.quad	.LBB18_13
	.quad	.LBB18_14
	.quad	.LBB18_15
	.quad	.LBB18_16
	.quad	.LBB18_19
	.quad	.LBB18_18
	.quad	.LBB18_21

	.text
	.align	16, 0x90
	.type	format0_fdselect_proc,@function
format0_fdselect_proc:                  # @format0_fdselect_proc
	.cfi_startproc
# BB#0:                                 # %entry
	addl	%ecx, %esi
	leal	-1(%rdx), %eax
	cmpl	%esi, %eax
	movl	$-15, %ecx
	jb	.LBB19_3
# BB#1:                                 # %entry
	cmpl	%edx, 8(%rdi)
                                        # implicit-def: EAX
	jb	.LBB19_3
# BB#2:                                 # %if.end.i
	movl	16(%rdi), %eax
	andl	%esi, %eax
	movb	12(%rdi), %cl
	shrl	%cl, %esi
	movq	(%rdi), %rcx
	shlq	$4, %rsi
	movq	8(%rcx,%rsi), %rcx
	movzbl	(%rcx,%rax), %eax
	xorl	%ecx, %ecx
.LBB19_3:                               # %card8.exit
	testl	%ecx, %ecx
	cmovsl	%ecx, %eax
	retq
.Lfunc_end19:
	.size	format0_fdselect_proc, .Lfunc_end19-format0_fdselect_proc
	.cfi_endproc

	.align	16, 0x90
	.type	format3_fdselect_proc,@function
format3_fdselect_proc:                  # @format3_fdselect_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp118:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp120:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp121:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 56
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movl	%ecx, %r8d
	leal	-2(%rdx), %r10d
	cmpl	%esi, %r10d
	movl	$-15, %eax
	jb	.LBB20_13
# BB#1:                                 # %entry
	cmpl	%edx, 8(%rdi)
	jb	.LBB20_13
# BB#2:                                 # %if.end
	movl	16(%rdi), %r9d
	movl	%r9d, %ebx
	andl	%esi, %ebx
	movl	12(%rdi), %ecx
	movl	%esi, %ebp
	shrl	%cl, %ebp
	movq	(%rdi), %r11
	shlq	$4, %rbp
	movq	8(%r11,%rbp), %rdi
	movzbl	(%rdi,%rbx), %edi
	shll	$8, %edi
	leal	1(%rsi), %ebx
	movl	%r9d, %ebp
	andl	%ebx, %ebp
	shrl	%cl, %ebx
	shlq	$4, %rbx
	movq	8(%r11,%rbx), %rbx
	movzbl	(%rbx,%rbp), %r14d
	orl	%edi, %r14d
	decl	%esi
	.align	16, 0x90
.LBB20_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	je	.LBB20_13
# BB#4:                                 # %while.cond
                                        #   in Loop: Header=BB20_3 Depth=1
	leal	8(%rsi), %edi
	cmpl	%edx, %edi
	ja	.LBB20_13
# BB#5:                                 # %while.cond
                                        #   in Loop: Header=BB20_3 Depth=1
	leal	3(%rsi), %r15d
	cmpl	%r15d, %r10d
	jb	.LBB20_13
# BB#6:                                 # %if.end.6
                                        #   in Loop: Header=BB20_3 Depth=1
	leal	6(%rsi), %edi
	cmpl	%edi, %r10d
	jb	.LBB20_13
# BB#7:                                 # %if.end.11
                                        #   in Loop: Header=BB20_3 Depth=1
	decl	%r14d
	leal	4(%rsi), %ebx
	movl	%r9d, %ebp
	andl	%ebx, %ebp
	shrl	%cl, %ebx
	shlq	$4, %rbx
	movq	8(%r11,%rbx), %rbx
	movzbl	(%rbx,%rbp), %r12d
	movl	%r15d, %ebp
	shrl	%cl, %ebp
	shlq	$4, %rbp
	movq	8(%r11,%rbp), %rbp
	movl	%r9d, %ebx
	andl	%r15d, %ebx
	movzbl	(%rbp,%rbx), %ebx
	shll	$8, %ebx
	orl	%r12d, %ebx
	movl	%r9d, %r12d
	andl	%edi, %r12d
	shrl	%cl, %edi
	addl	$7, %esi
	movl	%r9d, %r13d
	andl	%esi, %r13d
	movl	%esi, %ebp
	shrl	%cl, %ebp
	cmpl	%r8d, %ebx
	movl	%r15d, %esi
	ja	.LBB20_3
# BB#8:                                 # %if.end.11
                                        #   in Loop: Header=BB20_3 Depth=1
	shlq	$4, %rdi
	movq	8(%r11,%rdi), %rsi
	movzbl	(%rsi,%r12), %esi
	shll	$8, %esi
	shlq	$4, %rbp
	movq	8(%r11,%rbp), %rdi
	movzbl	(%rdi,%r13), %edi
	orl	%esi, %edi
	cmpl	%r8d, %edi
	movl	%r15d, %esi
	jbe	.LBB20_3
# BB#9:                                 # %if.then.14
	addl	$2, %r15d
	decl	%edx
	cmpl	%r15d, %edx
	jae	.LBB20_11
# BB#10:
	movl	$-15, %ecx
                                        # implicit-def: EAX
	jmp	.LBB20_12
.LBB20_11:                              # %if.end.i.36
	andl	%r15d, %r9d
	shrl	%cl, %r15d
	shlq	$4, %r15
	movq	8(%r11,%r15), %rax
	movzbl	(%rax,%r9), %eax
	xorl	%ecx, %ecx
.LBB20_12:                              # %card8.exit
	testl	%ecx, %ecx
	cmovsl	%ecx, %eax
.LBB20_13:                              # %cleanup.23
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	format3_fdselect_proc, .Lfunc_end20-format3_fdselect_proc
	.cfi_endproc

	.align	16, 0x90
	.type	idict_move_c_name,@function
idict_move_c_name:                      # @idict_move_c_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp132:
	.cfi_def_cfa_offset 64
.Ltmp133:
	.cfi_offset %rbx, -32
.Ltmp134:
	.cfi_offset %r14, -24
.Ltmp135:
	.cfi_offset %r15, -16
	movl	%r8d, %eax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	8(%rbx), %rdx
	movq	192(%rdx), %rdx
	movq	120(%rdx), %rdi
	leaq	16(%rsp), %r9
	xorl	%r8d, %r8d
	movq	%rcx, %rsi
	movl	%eax, %edx
	movq	%r9, %rcx
	callq	names_ref
	testl	%eax, %eax
	js	.LBB21_5
# BB#1:                                 # %if.end
	leaq	16(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%r14, %rdi
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB21_4
# BB#2:                                 # %if.then.3
	movq	8(%rsp), %rdx
	addq	$368, %rbx              # imm = 0x170
	leaq	16(%rsp), %rsi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	dict_put
	testl	%eax, %eax
	js	.LBB21_5
# BB#3:                                 # %if.end.7
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	dict_undef
	testl	%eax, %eax
	js	.LBB21_5
.LBB21_4:                               # %if.end.13
	xorl	%eax, %eax
.LBB21_5:                               # %cleanup
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end21:
	.size	idict_move_c_name, .Lfunc_end21-idict_move_c_name
	.cfi_endproc

	.align	16, 0x90
	.type	make_name_from_sid,@function
make_name_from_sid:                     # @make_name_from_sid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp137:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp138:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp139:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp140:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 56
	subq	$248, %rsp
.Ltmp142:
	.cfi_def_cfa_offset 304
.Ltmp143:
	.cfi_offset %rbx, -56
.Ltmp144:
	.cfi_offset %r12, -48
.Ltmp145:
	.cfi_offset %r13, -40
.Ltmp146:
	.cfi_offset %r14, -32
.Ltmp147:
	.cfi_offset %r15, -24
.Ltmp148:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$390, %ebx              # imm = 0x186
	ja	.LBB22_1
# BB#15:                                # %if.then
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rbp
	movl	%ebx, %eax
	movq	standard_strings(,%rax,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	xorl	%r8d, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	%r14, %rcx
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	names_ref               # TAILCALL
.LBB22_1:                               # %if.else
	leal	-391(%rbx), %eax
	cmpl	%eax, 16(%rbp)
	jbe	.LBB22_2
# BB#3:                                 # %if.end.i
	movl	12(%rbp), %r8d
	imull	%r8d, %eax
	movl	(%rbp), %edx
	movl	4(%rbp), %ecx
	leal	3(%rax,%rdx), %edx
	leaq	244(%rsp), %rdi
	movq	%r13, %rsi
	callq	*offset_procs(,%r8,8)
	testl	%eax, %eax
	js	.LBB22_14
# BB#4:                                 # %if.end.5.i
	movl	12(%rbp), %eax
	addl	$-390, %ebx             # imm = 0xFFFFFFFFFFFFFE7A
	imull	%eax, %ebx
	movl	(%rbp), %edx
	movl	4(%rbp), %ecx
	leal	3(%rbx,%rdx), %edx
	leaq	240(%rsp), %rdi
	movq	%r13, %rsi
	callq	*offset_procs(,%rax,8)
	testl	%eax, %eax
	js	.LBB22_14
# BB#5:                                 # %if.end.19.i
	movl	240(%rsp), %edx
	movl	244(%rsp), %ecx
	movl	%edx, %edi
	subl	%ecx, %edi
	jae	.LBB22_7
# BB#6:
	movl	$-15, %eax
	jmp	.LBB22_14
.LBB22_2:
	movl	$-15, %eax
.LBB22_14:                              # %return
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_7:                               # %if.end.22.i
	movl	8(%rbp), %r12d
	leal	(%r12,%rdx), %esi
	cmpl	4(%rbp), %esi
	movl	$-15, %eax
	ja	.LBB22_14
# BB#8:                                 # %if.end
	movl	$-13, %eax
	cmpl	$200, %edi
	ja	.LBB22_14
# BB#9:                                 # %if.end.12
	movl	$-15, %eax
	cmpl	8(%r13), %esi
	ja	.LBB22_14
# BB#10:                                # %while.cond.preheader.i
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	cmpl	%ecx, %edx
	je	.LBB22_13
# BB#11:                                # %while.body.lr.ph.i
	addl	%ecx, %r12d
	leaq	32(%rsp), %rbx
	movl	20(%rsp), %r14d         # 4-byte Reload
.LBB22_12:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	16(%r13), %esi
	leal	1(%rsi), %ebp
	andl	%r12d, %esi
	subl	%esi, %ebp
	movb	12(%r13), %cl
	movl	%r12d, %eax
	shrl	%cl, %eax
	movq	(%r13), %rcx
	shlq	$4, %rax
	addq	8(%rcx,%rax), %rsi
	cmpl	%r14d, %ebp
	cmoval	%r14d, %ebp
	movl	%ebp, %edx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	memcpy
	addq	24(%rsp), %rbx          # 8-byte Folded Reload
	leal	(%r12,%rbp), %r12d
	subl	%ebp, %r14d
	jne	.LBB22_12
.LBB22_13:                              # %if.end.17
	movq	8(%r15), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	32(%rsp), %rsi
	movl	$1, %r8d
	movl	20(%rsp), %edx          # 4-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	callq	names_ref
	jmp	.LBB22_14
.Lfunc_end22:
	.size	make_name_from_sid, .Lfunc_end22-make_name_from_sid
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GlobalSubrs"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gsubrNumberBias"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"defaultWidthX"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"nominalWidthX"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"initialRandomSeed"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"2.buildfont2"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"2.parsecff"
	.size	.L.str.6, 11

	.type	zfont2_op_defs,@object  # @zfont2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zfont2_op_defs
	.align	16
zfont2_op_defs:
	.quad	.L.str.5
	.quad	zbuildfont2
	.quad	.L.str.6
	.quad	zparsecff
	.zero	16
	.size	zfont2_op_defs, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%Type2BuildChar"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%Type2BuildGlyph"
	.size	.L.str.8, 17

	.type	zparsecff.mod2shift,@object # @zparsecff.mod2shift
	.section	.rodata,"a",@progbits
	.align	16
zparsecff.mod2shift:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	26                      # 0x1a
	.long	2                       # 0x2
	.long	23                      # 0x17
	.long	27                      # 0x1b
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	16                      # 0x10
	.long	24                      # 0x18
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	13                      # 0xd
	.long	4                       # 0x4
	.long	7                       # 0x7
	.long	17                      # 0x11
	.long	0                       # 0x0
	.long	25                      # 0x19
	.long	22                      # 0x16
	.long	31                      # 0x1f
	.long	15                      # 0xf
	.long	29                      # 0x1d
	.long	10                      # 0xa
	.long	12                      # 0xc
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	21                      # 0x15
	.long	14                      # 0xe
	.long	9                       # 0x9
	.long	5                       # 0x5
	.long	20                      # 0x14
	.long	8                       # 0x8
	.long	19                      # 0x13
	.long	18                      # 0x12
	.size	zparsecff.mod2shift, 148

	.type	offset_procs,@object    # @offset_procs
	.align	16
offset_procs:
	.quad	0
	.quad	card8
	.quad	card16
	.quad	card24
	.quad	card32
	.size	offset_procs, 40

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"make_stringarray_from_index"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"make_string_from_index"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Private"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"FontInfo"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Subrs"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"parsecff.fdarray"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"FDArray"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GlyphDirectory"
	.size	.L.str.16, 15

	.type	font_keys,@object       # @font_keys
	.section	.rodata,"a",@progbits
	.align	16
font_keys:
	.quad	.L.str.427
	.quad	.L.str.428
	.quad	.L.str.429
	.quad	.L.str.430
	.quad	.L.str.431
	.quad	.L.str.432
	.quad	.L.str.433
	.quad	.L.str.434
	.quad	.L.str.435
	.quad	.L.str.436
	.quad	.L.str.437
	.quad	.L.str.438
	.quad	.L.str.439
	.quad	.L.str.440
	.quad	.L.str.441
	.quad	.L.str.442
	.quad	.L.str.443
	.quad	.L.str.23
	.quad	.L.str.444
	.quad	.L.str.21
	.quad	.L.str.445
	.quad	.L.str.446
	.quad	.L.str.447
	.quad	.L.str.448
	.quad	.L.str.449
	.quad	.L.str.450
	.quad	.L.str.451
	.quad	.L.str.452
	.quad	.L.str.453
	.quad	.L.str.4
	.quad	.L.str.454
	.quad	.L.str.455
	.quad	.L.str.456
	.quad	.L.str.457
	.quad	.L.str.458
	.quad	.L.str.459
	.quad	.L.str.460
	.quad	.L.str.30
	.quad	.L.str.461
	.quad	.L.str.15
	.quad	.L.str.462
	.quad	.L.str.463
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.22
	.quad	.L.str.11
	.size	font_keys, 384

	.type	font_keys_sz,@object    # @font_keys_sz
	.align	16
font_keys_sz:
	.short	7                       # 0x7
	.short	6                       # 0x6
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	6                       # 0x6
	.short	8                       # 0x8
	.short	10                      # 0xa
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	16                      # 0x10
	.short	5                       # 0x5
	.short	5                       # 0x5
	.short	9                       # 0x9
	.short	12                      # 0xc
	.short	11                      # 0xb
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	9                       # 0x9
	.short	14                      # 0xe
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	9                       # 0x9
	.short	13                      # 0xd
	.short	15                      # 0xf
	.short	17                      # 0x11
	.short	13                      # 0xd
	.short	10                      # 0xa
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	11                      # 0xb
	.short	8                       # 0x8
	.short	7                       # 0x7
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	8                       # 0x8
	.short	4                       # 0x4
	.short	13                      # 0xd
	.short	13                      # 0xd
	.short	8                       # 0x8
	.short	7                       # 0x7
	.size	font_keys_sz, 96

	.type	set_unit_matrix,@object # @set_unit_matrix
	.align	2
set_unit_matrix:
	.short	19                      # 0x13
	.short	12                      # 0xc
	.size	set_unit_matrix, 4

	.type	fd_font_defaults,@object # @fd_font_defaults
	.align	16
fd_font_defaults:
	.short	19                      # 0x13
	.short	11                      # 0xb
	.short	17                      # 0x11
	.short	0                       # 0x0
	.short	46                      # 0x2e
	.short	2                       # 0x2
	.short	47                      # 0x2f
	.short	13                      # 0xd
	.size	fd_font_defaults, 16

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"FDBytes"
	.size	.L.str.17, 8

	.type	cid_font_defaults,@object # @cid_font_defaults
	.section	.rodata,"a",@progbits
	.align	16
cid_font_defaults:
	.short	34                      # 0x22
	.short	0                       # 0x0
	.short	35                      # 0x23
	.short	0                       # 0x0
	.short	36                      # 0x24
	.short	0                       # 0x0
	.short	37                      # 0x25
	.short	6                       # 0x6
	.size	cid_font_defaults, 16

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"UniqueID"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"XUID"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"force_cid.fdarray"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FontMatrix"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FontType"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"PaintType"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Adobe"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Registry"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Identity"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Ordering"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Supplement"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"CIDSystemInfo"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"CIDCount"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	".notdef"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"CharStrings"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"cff_parser.encoding"
	.size	.L.str.33, 20

	.type	expert_encoding,@object # @expert_encoding
	.section	.rodata,"a",@progbits
	.align	16
expert_encoding:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	229                     # 0xe5
	.short	230                     # 0xe6
	.short	0                       # 0x0
	.short	231                     # 0xe7
	.short	232                     # 0xe8
	.short	233                     # 0xe9
	.short	234                     # 0xea
	.short	235                     # 0xeb
	.short	236                     # 0xec
	.short	237                     # 0xed
	.short	238                     # 0xee
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	99                      # 0x63
	.short	239                     # 0xef
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	242                     # 0xf2
	.short	243                     # 0xf3
	.short	244                     # 0xf4
	.short	245                     # 0xf5
	.short	246                     # 0xf6
	.short	247                     # 0xf7
	.short	248                     # 0xf8
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	249                     # 0xf9
	.short	250                     # 0xfa
	.short	251                     # 0xfb
	.short	252                     # 0xfc
	.short	0                       # 0x0
	.short	253                     # 0xfd
	.short	254                     # 0xfe
	.short	255                     # 0xff
	.short	256                     # 0x100
	.short	257                     # 0x101
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	258                     # 0x102
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	259                     # 0x103
	.short	260                     # 0x104
	.short	261                     # 0x105
	.short	262                     # 0x106
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	263                     # 0x107
	.short	264                     # 0x108
	.short	265                     # 0x109
	.short	0                       # 0x0
	.short	266                     # 0x10a
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	267                     # 0x10b
	.short	268                     # 0x10c
	.short	269                     # 0x10d
	.short	0                       # 0x0
	.short	270                     # 0x10e
	.short	271                     # 0x10f
	.short	272                     # 0x110
	.short	273                     # 0x111
	.short	274                     # 0x112
	.short	275                     # 0x113
	.short	276                     # 0x114
	.short	277                     # 0x115
	.short	278                     # 0x116
	.short	279                     # 0x117
	.short	280                     # 0x118
	.short	281                     # 0x119
	.short	282                     # 0x11a
	.short	283                     # 0x11b
	.short	284                     # 0x11c
	.short	285                     # 0x11d
	.short	286                     # 0x11e
	.short	287                     # 0x11f
	.short	288                     # 0x120
	.short	289                     # 0x121
	.short	290                     # 0x122
	.short	291                     # 0x123
	.short	292                     # 0x124
	.short	293                     # 0x125
	.short	294                     # 0x126
	.short	295                     # 0x127
	.short	296                     # 0x128
	.short	297                     # 0x129
	.short	298                     # 0x12a
	.short	299                     # 0x12b
	.short	300                     # 0x12c
	.short	301                     # 0x12d
	.short	302                     # 0x12e
	.short	303                     # 0x12f
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	304                     # 0x130
	.short	305                     # 0x131
	.short	306                     # 0x132
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	307                     # 0x133
	.short	308                     # 0x134
	.short	309                     # 0x135
	.short	310                     # 0x136
	.short	311                     # 0x137
	.short	0                       # 0x0
	.short	312                     # 0x138
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	313                     # 0x139
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	314                     # 0x13a
	.short	315                     # 0x13b
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	316                     # 0x13c
	.short	317                     # 0x13d
	.short	318                     # 0x13e
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	158                     # 0x9e
	.short	155                     # 0x9b
	.short	163                     # 0xa3
	.short	319                     # 0x13f
	.short	320                     # 0x140
	.short	321                     # 0x141
	.short	322                     # 0x142
	.short	323                     # 0x143
	.short	324                     # 0x144
	.short	325                     # 0x145
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	326                     # 0x146
	.short	150                     # 0x96
	.short	164                     # 0xa4
	.short	169                     # 0xa9
	.short	327                     # 0x147
	.short	328                     # 0x148
	.short	329                     # 0x149
	.short	330                     # 0x14a
	.short	331                     # 0x14b
	.short	332                     # 0x14c
	.short	333                     # 0x14d
	.short	334                     # 0x14e
	.short	335                     # 0x14f
	.short	336                     # 0x150
	.short	337                     # 0x151
	.short	338                     # 0x152
	.short	339                     # 0x153
	.short	340                     # 0x154
	.short	341                     # 0x155
	.short	342                     # 0x156
	.short	343                     # 0x157
	.short	344                     # 0x158
	.short	345                     # 0x159
	.short	346                     # 0x15a
	.short	347                     # 0x15b
	.short	348                     # 0x15c
	.short	349                     # 0x15d
	.short	350                     # 0x15e
	.short	351                     # 0x15f
	.short	352                     # 0x160
	.short	353                     # 0x161
	.short	354                     # 0x162
	.short	355                     # 0x163
	.short	356                     # 0x164
	.short	357                     # 0x165
	.short	358                     # 0x166
	.short	359                     # 0x167
	.short	360                     # 0x168
	.short	361                     # 0x169
	.short	362                     # 0x16a
	.short	363                     # 0x16b
	.short	364                     # 0x16c
	.short	365                     # 0x16d
	.short	366                     # 0x16e
	.short	367                     # 0x16f
	.short	368                     # 0x170
	.short	369                     # 0x171
	.short	370                     # 0x172
	.short	371                     # 0x173
	.short	372                     # 0x174
	.short	373                     # 0x175
	.short	374                     # 0x176
	.short	375                     # 0x177
	.short	376                     # 0x178
	.short	377                     # 0x179
	.short	378                     # 0x17a
	.size	expert_encoding, 512

	.type	standard_encoding,@object # @standard_encoding
	.align	16
standard_encoding:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.short	17                      # 0x11
	.short	18                      # 0x12
	.short	19                      # 0x13
	.short	20                      # 0x14
	.short	21                      # 0x15
	.short	22                      # 0x16
	.short	23                      # 0x17
	.short	24                      # 0x18
	.short	25                      # 0x19
	.short	26                      # 0x1a
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	29                      # 0x1d
	.short	30                      # 0x1e
	.short	31                      # 0x1f
	.short	32                      # 0x20
	.short	33                      # 0x21
	.short	34                      # 0x22
	.short	35                      # 0x23
	.short	36                      # 0x24
	.short	37                      # 0x25
	.short	38                      # 0x26
	.short	39                      # 0x27
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	42                      # 0x2a
	.short	43                      # 0x2b
	.short	44                      # 0x2c
	.short	45                      # 0x2d
	.short	46                      # 0x2e
	.short	47                      # 0x2f
	.short	48                      # 0x30
	.short	49                      # 0x31
	.short	50                      # 0x32
	.short	51                      # 0x33
	.short	52                      # 0x34
	.short	53                      # 0x35
	.short	54                      # 0x36
	.short	55                      # 0x37
	.short	56                      # 0x38
	.short	57                      # 0x39
	.short	58                      # 0x3a
	.short	59                      # 0x3b
	.short	60                      # 0x3c
	.short	61                      # 0x3d
	.short	62                      # 0x3e
	.short	63                      # 0x3f
	.short	64                      # 0x40
	.short	65                      # 0x41
	.short	66                      # 0x42
	.short	67                      # 0x43
	.short	68                      # 0x44
	.short	69                      # 0x45
	.short	70                      # 0x46
	.short	71                      # 0x47
	.short	72                      # 0x48
	.short	73                      # 0x49
	.short	74                      # 0x4a
	.short	75                      # 0x4b
	.short	76                      # 0x4c
	.short	77                      # 0x4d
	.short	78                      # 0x4e
	.short	79                      # 0x4f
	.short	80                      # 0x50
	.short	81                      # 0x51
	.short	82                      # 0x52
	.short	83                      # 0x53
	.short	84                      # 0x54
	.short	85                      # 0x55
	.short	86                      # 0x56
	.short	87                      # 0x57
	.short	88                      # 0x58
	.short	89                      # 0x59
	.short	90                      # 0x5a
	.short	91                      # 0x5b
	.short	92                      # 0x5c
	.short	93                      # 0x5d
	.short	94                      # 0x5e
	.short	95                      # 0x5f
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	96                      # 0x60
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	99                      # 0x63
	.short	100                     # 0x64
	.short	101                     # 0x65
	.short	102                     # 0x66
	.short	103                     # 0x67
	.short	104                     # 0x68
	.short	105                     # 0x69
	.short	106                     # 0x6a
	.short	107                     # 0x6b
	.short	108                     # 0x6c
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	0                       # 0x0
	.short	111                     # 0x6f
	.short	112                     # 0x70
	.short	113                     # 0x71
	.short	114                     # 0x72
	.short	0                       # 0x0
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	117                     # 0x75
	.short	118                     # 0x76
	.short	119                     # 0x77
	.short	120                     # 0x78
	.short	121                     # 0x79
	.short	122                     # 0x7a
	.short	0                       # 0x0
	.short	123                     # 0x7b
	.short	0                       # 0x0
	.short	124                     # 0x7c
	.short	125                     # 0x7d
	.short	126                     # 0x7e
	.short	127                     # 0x7f
	.short	128                     # 0x80
	.short	129                     # 0x81
	.short	130                     # 0x82
	.short	131                     # 0x83
	.short	0                       # 0x0
	.short	132                     # 0x84
	.short	133                     # 0x85
	.short	0                       # 0x0
	.short	134                     # 0x86
	.short	135                     # 0x87
	.short	136                     # 0x88
	.short	137                     # 0x89
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	138                     # 0x8a
	.short	0                       # 0x0
	.short	139                     # 0x8b
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	140                     # 0x8c
	.short	141                     # 0x8d
	.short	142                     # 0x8e
	.short	143                     # 0x8f
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	144                     # 0x90
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	145                     # 0x91
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	146                     # 0x92
	.short	147                     # 0x93
	.short	148                     # 0x94
	.short	149                     # 0x95
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.size	standard_encoding, 512

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"Encoding"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"sid-%d"
	.size	.L.str.35, 7

	.type	fontinfo_font_defaults,@object # @fontinfo_font_defaults
	.section	.rodata,"a",@progbits
	.align	16
fontinfo_font_defaults:
	.short	13                      # 0xd
	.short	9                       # 0x9
	.short	14                      # 0xe
	.short	0                       # 0x0
	.short	15                      # 0xf
	.short	5                       # 0x5
	.short	16                      # 0x10
	.short	4                       # 0x4
	.size	fontinfo_font_defaults, 16

	.type	private_font_defaults,@object # @private_font_defaults
	.align	16
private_font_defaults:
	.short	21                      # 0x15
	.short	7                       # 0x7
	.short	22                      # 0x16
	.short	3                       # 0x3
	.short	23                      # 0x17
	.short	1                       # 0x1
	.short	26                      # 0x1a
	.short	9                       # 0x9
	.short	27                      # 0x1b
	.short	0                       # 0x0
	.short	28                      # 0x1c
	.short	8                       # 0x8
	.short	29                      # 0x1d
	.short	0                       # 0x0
	.short	44                      # 0x2c
	.short	0                       # 0x0
	.short	45                      # 0x2d
	.short	0                       # 0x0
	.size	private_font_defaults, 36

	.type	simple_font_defaults,@object # @simple_font_defaults
	.align	16
simple_font_defaults:
	.short	17                      # 0x11
	.short	0                       # 0x0
	.short	18                      # 0x12
	.short	2                       # 0x2
	.short	19                      # 0x13
	.short	11                      # 0xb
	.short	5                       # 0x5
	.short	10                      # 0xa
	.short	20                      # 0x14
	.short	0                       # 0x0
	.size	simple_font_defaults, 20

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"parsecff.array"
	.size	.L.str.36, 15

	.type	standard_strings,@object # @standard_strings
	.section	.rodata,"a",@progbits
	.align	16
standard_strings:
	.quad	.L.str.31
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.168
	.quad	.L.str.169
	.quad	.L.str.170
	.quad	.L.str.171
	.quad	.L.str.172
	.quad	.L.str.173
	.quad	.L.str.174
	.quad	.L.str.175
	.quad	.L.str.176
	.quad	.L.str.177
	.quad	.L.str.178
	.quad	.L.str.179
	.quad	.L.str.180
	.quad	.L.str.181
	.quad	.L.str.182
	.quad	.L.str.183
	.quad	.L.str.184
	.quad	.L.str.185
	.quad	.L.str.186
	.quad	.L.str.187
	.quad	.L.str.188
	.quad	.L.str.189
	.quad	.L.str.190
	.quad	.L.str.191
	.quad	.L.str.192
	.quad	.L.str.193
	.quad	.L.str.194
	.quad	.L.str.195
	.quad	.L.str.196
	.quad	.L.str.197
	.quad	.L.str.198
	.quad	.L.str.199
	.quad	.L.str.200
	.quad	.L.str.201
	.quad	.L.str.202
	.quad	.L.str.203
	.quad	.L.str.204
	.quad	.L.str.205
	.quad	.L.str.206
	.quad	.L.str.207
	.quad	.L.str.208
	.quad	.L.str.209
	.quad	.L.str.210
	.quad	.L.str.211
	.quad	.L.str.212
	.quad	.L.str.213
	.quad	.L.str.214
	.quad	.L.str.215
	.quad	.L.str.216
	.quad	.L.str.217
	.quad	.L.str.218
	.quad	.L.str.219
	.quad	.L.str.220
	.quad	.L.str.221
	.quad	.L.str.222
	.quad	.L.str.223
	.quad	.L.str.224
	.quad	.L.str.225
	.quad	.L.str.226
	.quad	.L.str.227
	.quad	.L.str.228
	.quad	.L.str.229
	.quad	.L.str.230
	.quad	.L.str.231
	.quad	.L.str.232
	.quad	.L.str.233
	.quad	.L.str.234
	.quad	.L.str.235
	.quad	.L.str.236
	.quad	.L.str.237
	.quad	.L.str.238
	.quad	.L.str.239
	.quad	.L.str.240
	.quad	.L.str.241
	.quad	.L.str.242
	.quad	.L.str.243
	.quad	.L.str.244
	.quad	.L.str.245
	.quad	.L.str.246
	.quad	.L.str.247
	.quad	.L.str.248
	.quad	.L.str.249
	.quad	.L.str.250
	.quad	.L.str.251
	.quad	.L.str.252
	.quad	.L.str.253
	.quad	.L.str.254
	.quad	.L.str.255
	.quad	.L.str.256
	.quad	.L.str.257
	.quad	.L.str.258
	.quad	.L.str.259
	.quad	.L.str.260
	.quad	.L.str.261
	.quad	.L.str.262
	.quad	.L.str.263
	.quad	.L.str.264
	.quad	.L.str.265
	.quad	.L.str.266
	.quad	.L.str.267
	.quad	.L.str.268
	.quad	.L.str.269
	.quad	.L.str.270
	.quad	.L.str.271
	.quad	.L.str.272
	.quad	.L.str.273
	.quad	.L.str.274
	.quad	.L.str.275
	.quad	.L.str.276
	.quad	.L.str.277
	.quad	.L.str.278
	.quad	.L.str.279
	.quad	.L.str.280
	.quad	.L.str.281
	.quad	.L.str.282
	.quad	.L.str.283
	.quad	.L.str.284
	.quad	.L.str.285
	.quad	.L.str.286
	.quad	.L.str.287
	.quad	.L.str.288
	.quad	.L.str.289
	.quad	.L.str.290
	.quad	.L.str.291
	.quad	.L.str.292
	.quad	.L.str.293
	.quad	.L.str.294
	.quad	.L.str.295
	.quad	.L.str.296
	.quad	.L.str.297
	.quad	.L.str.298
	.quad	.L.str.299
	.quad	.L.str.300
	.quad	.L.str.301
	.quad	.L.str.302
	.quad	.L.str.303
	.quad	.L.str.304
	.quad	.L.str.305
	.quad	.L.str.306
	.quad	.L.str.307
	.quad	.L.str.308
	.quad	.L.str.309
	.quad	.L.str.310
	.quad	.L.str.311
	.quad	.L.str.312
	.quad	.L.str.313
	.quad	.L.str.314
	.quad	.L.str.315
	.quad	.L.str.316
	.quad	.L.str.317
	.quad	.L.str.318
	.quad	.L.str.319
	.quad	.L.str.320
	.quad	.L.str.321
	.quad	.L.str.322
	.quad	.L.str.323
	.quad	.L.str.324
	.quad	.L.str.325
	.quad	.L.str.326
	.quad	.L.str.327
	.quad	.L.str.328
	.quad	.L.str.329
	.quad	.L.str.330
	.quad	.L.str.331
	.quad	.L.str.332
	.quad	.L.str.333
	.quad	.L.str.334
	.quad	.L.str.335
	.quad	.L.str.336
	.quad	.L.str.337
	.quad	.L.str.338
	.quad	.L.str.339
	.quad	.L.str.340
	.quad	.L.str.341
	.quad	.L.str.342
	.quad	.L.str.343
	.quad	.L.str.344
	.quad	.L.str.345
	.quad	.L.str.346
	.quad	.L.str.347
	.quad	.L.str.348
	.quad	.L.str.349
	.quad	.L.str.350
	.quad	.L.str.351
	.quad	.L.str.352
	.quad	.L.str.353
	.quad	.L.str.354
	.quad	.L.str.355
	.quad	.L.str.356
	.quad	.L.str.357
	.quad	.L.str.358
	.quad	.L.str.359
	.quad	.L.str.360
	.quad	.L.str.361
	.quad	.L.str.362
	.quad	.L.str.363
	.quad	.L.str.364
	.quad	.L.str.365
	.quad	.L.str.366
	.quad	.L.str.367
	.quad	.L.str.368
	.quad	.L.str.369
	.quad	.L.str.370
	.quad	.L.str.371
	.quad	.L.str.372
	.quad	.L.str.373
	.quad	.L.str.374
	.quad	.L.str.375
	.quad	.L.str.376
	.quad	.L.str.377
	.quad	.L.str.378
	.quad	.L.str.379
	.quad	.L.str.380
	.quad	.L.str.381
	.quad	.L.str.382
	.quad	.L.str.383
	.quad	.L.str.384
	.quad	.L.str.385
	.quad	.L.str.386
	.quad	.L.str.387
	.quad	.L.str.388
	.quad	.L.str.389
	.quad	.L.str.390
	.quad	.L.str.391
	.quad	.L.str.392
	.quad	.L.str.393
	.quad	.L.str.394
	.quad	.L.str.395
	.quad	.L.str.396
	.quad	.L.str.397
	.quad	.L.str.398
	.quad	.L.str.399
	.quad	.L.str.400
	.quad	.L.str.401
	.quad	.L.str.402
	.quad	.L.str.403
	.quad	.L.str.404
	.quad	.L.str.405
	.quad	.L.str.406
	.quad	.L.str.407
	.quad	.L.str.408
	.quad	.L.str.409
	.quad	.L.str.410
	.quad	.L.str.411
	.quad	.L.str.412
	.quad	.L.str.413
	.quad	.L.str.414
	.quad	.L.str.415
	.quad	.L.str.416
	.quad	.L.str.417
	.quad	.L.str.418
	.quad	.L.str.419
	.quad	.L.str.420
	.quad	.L.str.421
	.quad	.L.str.422
	.quad	.L.str.423
	.quad	.L.str.424
	.quad	.L.str.425
	.quad	.L.str.426
	.size	standard_strings, 3128

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"space"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"exclam"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"quotedbl"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"numbersign"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"dollar"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"percent"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"ampersand"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"quoteright"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"parenleft"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"parenright"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"asterisk"
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"plus"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"comma"
	.size	.L.str.49, 6

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"hyphen"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"period"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"slash"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"zero"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"one"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"two"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"three"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"four"
	.size	.L.str.57, 5

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"five"
	.size	.L.str.58, 5

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"six"
	.size	.L.str.59, 4

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"seven"
	.size	.L.str.60, 6

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"eight"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"nine"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"colon"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"semicolon"
	.size	.L.str.64, 10

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"less"
	.size	.L.str.65, 5

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"equal"
	.size	.L.str.66, 6

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"greater"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"question"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"at"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"A"
	.size	.L.str.70, 2

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"B"
	.size	.L.str.71, 2

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"C"
	.size	.L.str.72, 2

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"D"
	.size	.L.str.73, 2

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"E"
	.size	.L.str.74, 2

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"F"
	.size	.L.str.75, 2

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"G"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"H"
	.size	.L.str.77, 2

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"I"
	.size	.L.str.78, 2

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"J"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"K"
	.size	.L.str.80, 2

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"L"
	.size	.L.str.81, 2

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"M"
	.size	.L.str.82, 2

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"N"
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"O"
	.size	.L.str.84, 2

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"P"
	.size	.L.str.85, 2

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Q"
	.size	.L.str.86, 2

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"R"
	.size	.L.str.87, 2

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"S"
	.size	.L.str.88, 2

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"T"
	.size	.L.str.89, 2

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"U"
	.size	.L.str.90, 2

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"V"
	.size	.L.str.91, 2

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"W"
	.size	.L.str.92, 2

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"X"
	.size	.L.str.93, 2

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Y"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Z"
	.size	.L.str.95, 2

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"bracketleft"
	.size	.L.str.96, 12

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"backslash"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"bracketright"
	.size	.L.str.98, 13

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"asciicircum"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"underscore"
	.size	.L.str.100, 11

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"quoteleft"
	.size	.L.str.101, 10

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"a"
	.size	.L.str.102, 2

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"b"
	.size	.L.str.103, 2

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"c"
	.size	.L.str.104, 2

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"d"
	.size	.L.str.105, 2

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"e"
	.size	.L.str.106, 2

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"f"
	.size	.L.str.107, 2

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"g"
	.size	.L.str.108, 2

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"h"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"i"
	.size	.L.str.110, 2

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"j"
	.size	.L.str.111, 2

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"k"
	.size	.L.str.112, 2

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"l"
	.size	.L.str.113, 2

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"m"
	.size	.L.str.114, 2

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"n"
	.size	.L.str.115, 2

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"o"
	.size	.L.str.116, 2

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"p"
	.size	.L.str.117, 2

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"q"
	.size	.L.str.118, 2

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"r"
	.size	.L.str.119, 2

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"s"
	.size	.L.str.120, 2

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"t"
	.size	.L.str.121, 2

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"u"
	.size	.L.str.122, 2

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"v"
	.size	.L.str.123, 2

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"w"
	.size	.L.str.124, 2

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"x"
	.size	.L.str.125, 2

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"y"
	.size	.L.str.126, 2

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"z"
	.size	.L.str.127, 2

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"braceleft"
	.size	.L.str.128, 10

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"bar"
	.size	.L.str.129, 4

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"braceright"
	.size	.L.str.130, 11

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"asciitilde"
	.size	.L.str.131, 11

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"exclamdown"
	.size	.L.str.132, 11

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"cent"
	.size	.L.str.133, 5

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"sterling"
	.size	.L.str.134, 9

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"fraction"
	.size	.L.str.135, 9

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"yen"
	.size	.L.str.136, 4

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"florin"
	.size	.L.str.137, 7

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"section"
	.size	.L.str.138, 8

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"currency"
	.size	.L.str.139, 9

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"quotesingle"
	.size	.L.str.140, 12

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"quotedblleft"
	.size	.L.str.141, 13

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"guillemotleft"
	.size	.L.str.142, 14

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"guilsinglleft"
	.size	.L.str.143, 14

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"guilsinglright"
	.size	.L.str.144, 15

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"fi"
	.size	.L.str.145, 3

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"fl"
	.size	.L.str.146, 3

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"endash"
	.size	.L.str.147, 7

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"dagger"
	.size	.L.str.148, 7

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"daggerdbl"
	.size	.L.str.149, 10

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"periodcentered"
	.size	.L.str.150, 15

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"paragraph"
	.size	.L.str.151, 10

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"bullet"
	.size	.L.str.152, 7

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"quotesinglbase"
	.size	.L.str.153, 15

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"quotedblbase"
	.size	.L.str.154, 13

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"quotedblright"
	.size	.L.str.155, 14

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"guillemotright"
	.size	.L.str.156, 15

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"ellipsis"
	.size	.L.str.157, 9

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"perthousand"
	.size	.L.str.158, 12

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"questiondown"
	.size	.L.str.159, 13

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"grave"
	.size	.L.str.160, 6

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"acute"
	.size	.L.str.161, 6

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"circumflex"
	.size	.L.str.162, 11

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"tilde"
	.size	.L.str.163, 6

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"macron"
	.size	.L.str.164, 7

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"breve"
	.size	.L.str.165, 6

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"dotaccent"
	.size	.L.str.166, 10

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"dieresis"
	.size	.L.str.167, 9

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"ring"
	.size	.L.str.168, 5

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"cedilla"
	.size	.L.str.169, 8

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"hungarumlaut"
	.size	.L.str.170, 13

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"ogonek"
	.size	.L.str.171, 7

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"caron"
	.size	.L.str.172, 6

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"emdash"
	.size	.L.str.173, 7

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"AE"
	.size	.L.str.174, 3

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"ordfeminine"
	.size	.L.str.175, 12

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Lslash"
	.size	.L.str.176, 7

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Oslash"
	.size	.L.str.177, 7

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"OE"
	.size	.L.str.178, 3

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"ordmasculine"
	.size	.L.str.179, 13

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"ae"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"dotlessi"
	.size	.L.str.181, 9

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"lslash"
	.size	.L.str.182, 7

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"oslash"
	.size	.L.str.183, 7

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"oe"
	.size	.L.str.184, 3

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"germandbls"
	.size	.L.str.185, 11

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"onesuperior"
	.size	.L.str.186, 12

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"logicalnot"
	.size	.L.str.187, 11

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"mu"
	.size	.L.str.188, 3

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"trademark"
	.size	.L.str.189, 10

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Eth"
	.size	.L.str.190, 4

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"onehalf"
	.size	.L.str.191, 8

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"plusminus"
	.size	.L.str.192, 10

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Thorn"
	.size	.L.str.193, 6

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"onequarter"
	.size	.L.str.194, 11

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"divide"
	.size	.L.str.195, 7

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"brokenbar"
	.size	.L.str.196, 10

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"degree"
	.size	.L.str.197, 7

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"thorn"
	.size	.L.str.198, 6

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"threequarters"
	.size	.L.str.199, 14

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"twosuperior"
	.size	.L.str.200, 12

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"registered"
	.size	.L.str.201, 11

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"minus"
	.size	.L.str.202, 6

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"eth"
	.size	.L.str.203, 4

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"multiply"
	.size	.L.str.204, 9

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"threesuperior"
	.size	.L.str.205, 14

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"copyright"
	.size	.L.str.206, 10

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"Aacute"
	.size	.L.str.207, 7

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"Acircumflex"
	.size	.L.str.208, 12

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Adieresis"
	.size	.L.str.209, 10

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"Agrave"
	.size	.L.str.210, 7

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"Aring"
	.size	.L.str.211, 6

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"Atilde"
	.size	.L.str.212, 7

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"Ccedilla"
	.size	.L.str.213, 9

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"Eacute"
	.size	.L.str.214, 7

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Ecircumflex"
	.size	.L.str.215, 12

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"Edieresis"
	.size	.L.str.216, 10

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"Egrave"
	.size	.L.str.217, 7

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"Iacute"
	.size	.L.str.218, 7

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"Icircumflex"
	.size	.L.str.219, 12

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"Idieresis"
	.size	.L.str.220, 10

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"Igrave"
	.size	.L.str.221, 7

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"Ntilde"
	.size	.L.str.222, 7

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"Oacute"
	.size	.L.str.223, 7

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"Ocircumflex"
	.size	.L.str.224, 12

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"Odieresis"
	.size	.L.str.225, 10

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"Ograve"
	.size	.L.str.226, 7

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"Otilde"
	.size	.L.str.227, 7

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"Scaron"
	.size	.L.str.228, 7

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"Uacute"
	.size	.L.str.229, 7

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"Ucircumflex"
	.size	.L.str.230, 12

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"Udieresis"
	.size	.L.str.231, 10

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"Ugrave"
	.size	.L.str.232, 7

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"Yacute"
	.size	.L.str.233, 7

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"Ydieresis"
	.size	.L.str.234, 10

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"Zcaron"
	.size	.L.str.235, 7

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"aacute"
	.size	.L.str.236, 7

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"acircumflex"
	.size	.L.str.237, 12

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"adieresis"
	.size	.L.str.238, 10

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"agrave"
	.size	.L.str.239, 7

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"aring"
	.size	.L.str.240, 6

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"atilde"
	.size	.L.str.241, 7

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"ccedilla"
	.size	.L.str.242, 9

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"eacute"
	.size	.L.str.243, 7

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"ecircumflex"
	.size	.L.str.244, 12

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"edieresis"
	.size	.L.str.245, 10

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"egrave"
	.size	.L.str.246, 7

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"iacute"
	.size	.L.str.247, 7

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"icircumflex"
	.size	.L.str.248, 12

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"idieresis"
	.size	.L.str.249, 10

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"igrave"
	.size	.L.str.250, 7

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"ntilde"
	.size	.L.str.251, 7

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"oacute"
	.size	.L.str.252, 7

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"ocircumflex"
	.size	.L.str.253, 12

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"odieresis"
	.size	.L.str.254, 10

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"ograve"
	.size	.L.str.255, 7

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"otilde"
	.size	.L.str.256, 7

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"scaron"
	.size	.L.str.257, 7

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"uacute"
	.size	.L.str.258, 7

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"ucircumflex"
	.size	.L.str.259, 12

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"udieresis"
	.size	.L.str.260, 10

	.type	.L.str.261,@object      # @.str.261
.L.str.261:
	.asciz	"ugrave"
	.size	.L.str.261, 7

	.type	.L.str.262,@object      # @.str.262
.L.str.262:
	.asciz	"yacute"
	.size	.L.str.262, 7

	.type	.L.str.263,@object      # @.str.263
.L.str.263:
	.asciz	"ydieresis"
	.size	.L.str.263, 10

	.type	.L.str.264,@object      # @.str.264
.L.str.264:
	.asciz	"zcaron"
	.size	.L.str.264, 7

	.type	.L.str.265,@object      # @.str.265
.L.str.265:
	.asciz	"exclamsmall"
	.size	.L.str.265, 12

	.type	.L.str.266,@object      # @.str.266
.L.str.266:
	.asciz	"Hungarumlautsmall"
	.size	.L.str.266, 18

	.type	.L.str.267,@object      # @.str.267
.L.str.267:
	.asciz	"dollaroldstyle"
	.size	.L.str.267, 15

	.type	.L.str.268,@object      # @.str.268
.L.str.268:
	.asciz	"dollarsuperior"
	.size	.L.str.268, 15

	.type	.L.str.269,@object      # @.str.269
.L.str.269:
	.asciz	"ampersandsmall"
	.size	.L.str.269, 15

	.type	.L.str.270,@object      # @.str.270
.L.str.270:
	.asciz	"Acutesmall"
	.size	.L.str.270, 11

	.type	.L.str.271,@object      # @.str.271
.L.str.271:
	.asciz	"parenleftsuperior"
	.size	.L.str.271, 18

	.type	.L.str.272,@object      # @.str.272
.L.str.272:
	.asciz	"parenrightsuperior"
	.size	.L.str.272, 19

	.type	.L.str.273,@object      # @.str.273
.L.str.273:
	.asciz	"twodotenleader"
	.size	.L.str.273, 15

	.type	.L.str.274,@object      # @.str.274
.L.str.274:
	.asciz	"onedotenleader"
	.size	.L.str.274, 15

	.type	.L.str.275,@object      # @.str.275
.L.str.275:
	.asciz	"zerooldstyle"
	.size	.L.str.275, 13

	.type	.L.str.276,@object      # @.str.276
.L.str.276:
	.asciz	"oneoldstyle"
	.size	.L.str.276, 12

	.type	.L.str.277,@object      # @.str.277
.L.str.277:
	.asciz	"twooldstyle"
	.size	.L.str.277, 12

	.type	.L.str.278,@object      # @.str.278
.L.str.278:
	.asciz	"threeoldstyle"
	.size	.L.str.278, 14

	.type	.L.str.279,@object      # @.str.279
.L.str.279:
	.asciz	"fouroldstyle"
	.size	.L.str.279, 13

	.type	.L.str.280,@object      # @.str.280
.L.str.280:
	.asciz	"fiveoldstyle"
	.size	.L.str.280, 13

	.type	.L.str.281,@object      # @.str.281
.L.str.281:
	.asciz	"sixoldstyle"
	.size	.L.str.281, 12

	.type	.L.str.282,@object      # @.str.282
.L.str.282:
	.asciz	"sevenoldstyle"
	.size	.L.str.282, 14

	.type	.L.str.283,@object      # @.str.283
.L.str.283:
	.asciz	"eightoldstyle"
	.size	.L.str.283, 14

	.type	.L.str.284,@object      # @.str.284
.L.str.284:
	.asciz	"nineoldstyle"
	.size	.L.str.284, 13

	.type	.L.str.285,@object      # @.str.285
.L.str.285:
	.asciz	"commasuperior"
	.size	.L.str.285, 14

	.type	.L.str.286,@object      # @.str.286
.L.str.286:
	.asciz	"threequartersemdash"
	.size	.L.str.286, 20

	.type	.L.str.287,@object      # @.str.287
.L.str.287:
	.asciz	"periodsuperior"
	.size	.L.str.287, 15

	.type	.L.str.288,@object      # @.str.288
.L.str.288:
	.asciz	"questionsmall"
	.size	.L.str.288, 14

	.type	.L.str.289,@object      # @.str.289
.L.str.289:
	.asciz	"asuperior"
	.size	.L.str.289, 10

	.type	.L.str.290,@object      # @.str.290
.L.str.290:
	.asciz	"bsuperior"
	.size	.L.str.290, 10

	.type	.L.str.291,@object      # @.str.291
.L.str.291:
	.asciz	"centsuperior"
	.size	.L.str.291, 13

	.type	.L.str.292,@object      # @.str.292
.L.str.292:
	.asciz	"dsuperior"
	.size	.L.str.292, 10

	.type	.L.str.293,@object      # @.str.293
.L.str.293:
	.asciz	"esuperior"
	.size	.L.str.293, 10

	.type	.L.str.294,@object      # @.str.294
.L.str.294:
	.asciz	"isuperior"
	.size	.L.str.294, 10

	.type	.L.str.295,@object      # @.str.295
.L.str.295:
	.asciz	"lsuperior"
	.size	.L.str.295, 10

	.type	.L.str.296,@object      # @.str.296
.L.str.296:
	.asciz	"msuperior"
	.size	.L.str.296, 10

	.type	.L.str.297,@object      # @.str.297
.L.str.297:
	.asciz	"nsuperior"
	.size	.L.str.297, 10

	.type	.L.str.298,@object      # @.str.298
.L.str.298:
	.asciz	"osuperior"
	.size	.L.str.298, 10

	.type	.L.str.299,@object      # @.str.299
.L.str.299:
	.asciz	"rsuperior"
	.size	.L.str.299, 10

	.type	.L.str.300,@object      # @.str.300
.L.str.300:
	.asciz	"ssuperior"
	.size	.L.str.300, 10

	.type	.L.str.301,@object      # @.str.301
.L.str.301:
	.asciz	"tsuperior"
	.size	.L.str.301, 10

	.type	.L.str.302,@object      # @.str.302
.L.str.302:
	.asciz	"ff"
	.size	.L.str.302, 3

	.type	.L.str.303,@object      # @.str.303
.L.str.303:
	.asciz	"ffi"
	.size	.L.str.303, 4

	.type	.L.str.304,@object      # @.str.304
.L.str.304:
	.asciz	"ffl"
	.size	.L.str.304, 4

	.type	.L.str.305,@object      # @.str.305
.L.str.305:
	.asciz	"parenleftinferior"
	.size	.L.str.305, 18

	.type	.L.str.306,@object      # @.str.306
.L.str.306:
	.asciz	"parenrightinferior"
	.size	.L.str.306, 19

	.type	.L.str.307,@object      # @.str.307
.L.str.307:
	.asciz	"Circumflexsmall"
	.size	.L.str.307, 16

	.type	.L.str.308,@object      # @.str.308
.L.str.308:
	.asciz	"hyphensuperior"
	.size	.L.str.308, 15

	.type	.L.str.309,@object      # @.str.309
.L.str.309:
	.asciz	"Gravesmall"
	.size	.L.str.309, 11

	.type	.L.str.310,@object      # @.str.310
.L.str.310:
	.asciz	"Asmall"
	.size	.L.str.310, 7

	.type	.L.str.311,@object      # @.str.311
.L.str.311:
	.asciz	"Bsmall"
	.size	.L.str.311, 7

	.type	.L.str.312,@object      # @.str.312
.L.str.312:
	.asciz	"Csmall"
	.size	.L.str.312, 7

	.type	.L.str.313,@object      # @.str.313
.L.str.313:
	.asciz	"Dsmall"
	.size	.L.str.313, 7

	.type	.L.str.314,@object      # @.str.314
.L.str.314:
	.asciz	"Esmall"
	.size	.L.str.314, 7

	.type	.L.str.315,@object      # @.str.315
.L.str.315:
	.asciz	"Fsmall"
	.size	.L.str.315, 7

	.type	.L.str.316,@object      # @.str.316
.L.str.316:
	.asciz	"Gsmall"
	.size	.L.str.316, 7

	.type	.L.str.317,@object      # @.str.317
.L.str.317:
	.asciz	"Hsmall"
	.size	.L.str.317, 7

	.type	.L.str.318,@object      # @.str.318
.L.str.318:
	.asciz	"Ismall"
	.size	.L.str.318, 7

	.type	.L.str.319,@object      # @.str.319
.L.str.319:
	.asciz	"Jsmall"
	.size	.L.str.319, 7

	.type	.L.str.320,@object      # @.str.320
.L.str.320:
	.asciz	"Ksmall"
	.size	.L.str.320, 7

	.type	.L.str.321,@object      # @.str.321
.L.str.321:
	.asciz	"Lsmall"
	.size	.L.str.321, 7

	.type	.L.str.322,@object      # @.str.322
.L.str.322:
	.asciz	"Msmall"
	.size	.L.str.322, 7

	.type	.L.str.323,@object      # @.str.323
.L.str.323:
	.asciz	"Nsmall"
	.size	.L.str.323, 7

	.type	.L.str.324,@object      # @.str.324
.L.str.324:
	.asciz	"Osmall"
	.size	.L.str.324, 7

	.type	.L.str.325,@object      # @.str.325
.L.str.325:
	.asciz	"Psmall"
	.size	.L.str.325, 7

	.type	.L.str.326,@object      # @.str.326
.L.str.326:
	.asciz	"Qsmall"
	.size	.L.str.326, 7

	.type	.L.str.327,@object      # @.str.327
.L.str.327:
	.asciz	"Rsmall"
	.size	.L.str.327, 7

	.type	.L.str.328,@object      # @.str.328
.L.str.328:
	.asciz	"Ssmall"
	.size	.L.str.328, 7

	.type	.L.str.329,@object      # @.str.329
.L.str.329:
	.asciz	"Tsmall"
	.size	.L.str.329, 7

	.type	.L.str.330,@object      # @.str.330
.L.str.330:
	.asciz	"Usmall"
	.size	.L.str.330, 7

	.type	.L.str.331,@object      # @.str.331
.L.str.331:
	.asciz	"Vsmall"
	.size	.L.str.331, 7

	.type	.L.str.332,@object      # @.str.332
.L.str.332:
	.asciz	"Wsmall"
	.size	.L.str.332, 7

	.type	.L.str.333,@object      # @.str.333
.L.str.333:
	.asciz	"Xsmall"
	.size	.L.str.333, 7

	.type	.L.str.334,@object      # @.str.334
.L.str.334:
	.asciz	"Ysmall"
	.size	.L.str.334, 7

	.type	.L.str.335,@object      # @.str.335
.L.str.335:
	.asciz	"Zsmall"
	.size	.L.str.335, 7

	.type	.L.str.336,@object      # @.str.336
.L.str.336:
	.asciz	"colonmonetary"
	.size	.L.str.336, 14

	.type	.L.str.337,@object      # @.str.337
.L.str.337:
	.asciz	"onefitted"
	.size	.L.str.337, 10

	.type	.L.str.338,@object      # @.str.338
.L.str.338:
	.asciz	"rupiah"
	.size	.L.str.338, 7

	.type	.L.str.339,@object      # @.str.339
.L.str.339:
	.asciz	"Tildesmall"
	.size	.L.str.339, 11

	.type	.L.str.340,@object      # @.str.340
.L.str.340:
	.asciz	"exclamdownsmall"
	.size	.L.str.340, 16

	.type	.L.str.341,@object      # @.str.341
.L.str.341:
	.asciz	"centoldstyle"
	.size	.L.str.341, 13

	.type	.L.str.342,@object      # @.str.342
.L.str.342:
	.asciz	"Lslashsmall"
	.size	.L.str.342, 12

	.type	.L.str.343,@object      # @.str.343
.L.str.343:
	.asciz	"Scaronsmall"
	.size	.L.str.343, 12

	.type	.L.str.344,@object      # @.str.344
.L.str.344:
	.asciz	"Zcaronsmall"
	.size	.L.str.344, 12

	.type	.L.str.345,@object      # @.str.345
.L.str.345:
	.asciz	"Dieresissmall"
	.size	.L.str.345, 14

	.type	.L.str.346,@object      # @.str.346
.L.str.346:
	.asciz	"Brevesmall"
	.size	.L.str.346, 11

	.type	.L.str.347,@object      # @.str.347
.L.str.347:
	.asciz	"Caronsmall"
	.size	.L.str.347, 11

	.type	.L.str.348,@object      # @.str.348
.L.str.348:
	.asciz	"Dotaccentsmall"
	.size	.L.str.348, 15

	.type	.L.str.349,@object      # @.str.349
.L.str.349:
	.asciz	"Macronsmall"
	.size	.L.str.349, 12

	.type	.L.str.350,@object      # @.str.350
.L.str.350:
	.asciz	"figuredash"
	.size	.L.str.350, 11

	.type	.L.str.351,@object      # @.str.351
.L.str.351:
	.asciz	"hypheninferior"
	.size	.L.str.351, 15

	.type	.L.str.352,@object      # @.str.352
.L.str.352:
	.asciz	"Ogoneksmall"
	.size	.L.str.352, 12

	.type	.L.str.353,@object      # @.str.353
.L.str.353:
	.asciz	"Ringsmall"
	.size	.L.str.353, 10

	.type	.L.str.354,@object      # @.str.354
.L.str.354:
	.asciz	"Cedillasmall"
	.size	.L.str.354, 13

	.type	.L.str.355,@object      # @.str.355
.L.str.355:
	.asciz	"questiondownsmall"
	.size	.L.str.355, 18

	.type	.L.str.356,@object      # @.str.356
.L.str.356:
	.asciz	"oneeighth"
	.size	.L.str.356, 10

	.type	.L.str.357,@object      # @.str.357
.L.str.357:
	.asciz	"threeeighths"
	.size	.L.str.357, 13

	.type	.L.str.358,@object      # @.str.358
.L.str.358:
	.asciz	"fiveeighths"
	.size	.L.str.358, 12

	.type	.L.str.359,@object      # @.str.359
.L.str.359:
	.asciz	"seveneighths"
	.size	.L.str.359, 13

	.type	.L.str.360,@object      # @.str.360
.L.str.360:
	.asciz	"onethird"
	.size	.L.str.360, 9

	.type	.L.str.361,@object      # @.str.361
.L.str.361:
	.asciz	"twothirds"
	.size	.L.str.361, 10

	.type	.L.str.362,@object      # @.str.362
.L.str.362:
	.asciz	"zerosuperior"
	.size	.L.str.362, 13

	.type	.L.str.363,@object      # @.str.363
.L.str.363:
	.asciz	"foursuperior"
	.size	.L.str.363, 13

	.type	.L.str.364,@object      # @.str.364
.L.str.364:
	.asciz	"fivesuperior"
	.size	.L.str.364, 13

	.type	.L.str.365,@object      # @.str.365
.L.str.365:
	.asciz	"sixsuperior"
	.size	.L.str.365, 12

	.type	.L.str.366,@object      # @.str.366
.L.str.366:
	.asciz	"sevensuperior"
	.size	.L.str.366, 14

	.type	.L.str.367,@object      # @.str.367
.L.str.367:
	.asciz	"eightsuperior"
	.size	.L.str.367, 14

	.type	.L.str.368,@object      # @.str.368
.L.str.368:
	.asciz	"ninesuperior"
	.size	.L.str.368, 13

	.type	.L.str.369,@object      # @.str.369
.L.str.369:
	.asciz	"zeroinferior"
	.size	.L.str.369, 13

	.type	.L.str.370,@object      # @.str.370
.L.str.370:
	.asciz	"oneinferior"
	.size	.L.str.370, 12

	.type	.L.str.371,@object      # @.str.371
.L.str.371:
	.asciz	"twoinferior"
	.size	.L.str.371, 12

	.type	.L.str.372,@object      # @.str.372
.L.str.372:
	.asciz	"threeinferior"
	.size	.L.str.372, 14

	.type	.L.str.373,@object      # @.str.373
.L.str.373:
	.asciz	"fourinferior"
	.size	.L.str.373, 13

	.type	.L.str.374,@object      # @.str.374
.L.str.374:
	.asciz	"fiveinferior"
	.size	.L.str.374, 13

	.type	.L.str.375,@object      # @.str.375
.L.str.375:
	.asciz	"sixinferior"
	.size	.L.str.375, 12

	.type	.L.str.376,@object      # @.str.376
.L.str.376:
	.asciz	"seveninferior"
	.size	.L.str.376, 14

	.type	.L.str.377,@object      # @.str.377
.L.str.377:
	.asciz	"eightinferior"
	.size	.L.str.377, 14

	.type	.L.str.378,@object      # @.str.378
.L.str.378:
	.asciz	"nineinferior"
	.size	.L.str.378, 13

	.type	.L.str.379,@object      # @.str.379
.L.str.379:
	.asciz	"centinferior"
	.size	.L.str.379, 13

	.type	.L.str.380,@object      # @.str.380
.L.str.380:
	.asciz	"dollarinferior"
	.size	.L.str.380, 15

	.type	.L.str.381,@object      # @.str.381
.L.str.381:
	.asciz	"periodinferior"
	.size	.L.str.381, 15

	.type	.L.str.382,@object      # @.str.382
.L.str.382:
	.asciz	"commainferior"
	.size	.L.str.382, 14

	.type	.L.str.383,@object      # @.str.383
.L.str.383:
	.asciz	"Agravesmall"
	.size	.L.str.383, 12

	.type	.L.str.384,@object      # @.str.384
.L.str.384:
	.asciz	"Aacutesmall"
	.size	.L.str.384, 12

	.type	.L.str.385,@object      # @.str.385
.L.str.385:
	.asciz	"Acircumflexsmall"
	.size	.L.str.385, 17

	.type	.L.str.386,@object      # @.str.386
.L.str.386:
	.asciz	"Atildesmall"
	.size	.L.str.386, 12

	.type	.L.str.387,@object      # @.str.387
.L.str.387:
	.asciz	"Adieresissmall"
	.size	.L.str.387, 15

	.type	.L.str.388,@object      # @.str.388
.L.str.388:
	.asciz	"Aringsmall"
	.size	.L.str.388, 11

	.type	.L.str.389,@object      # @.str.389
.L.str.389:
	.asciz	"AEsmall"
	.size	.L.str.389, 8

	.type	.L.str.390,@object      # @.str.390
.L.str.390:
	.asciz	"Ccedillasmall"
	.size	.L.str.390, 14

	.type	.L.str.391,@object      # @.str.391
.L.str.391:
	.asciz	"Egravesmall"
	.size	.L.str.391, 12

	.type	.L.str.392,@object      # @.str.392
.L.str.392:
	.asciz	"Eacutesmall"
	.size	.L.str.392, 12

	.type	.L.str.393,@object      # @.str.393
.L.str.393:
	.asciz	"Ecircumflexsmall"
	.size	.L.str.393, 17

	.type	.L.str.394,@object      # @.str.394
.L.str.394:
	.asciz	"Edieresissmall"
	.size	.L.str.394, 15

	.type	.L.str.395,@object      # @.str.395
.L.str.395:
	.asciz	"Igravesmall"
	.size	.L.str.395, 12

	.type	.L.str.396,@object      # @.str.396
.L.str.396:
	.asciz	"Iacutesmall"
	.size	.L.str.396, 12

	.type	.L.str.397,@object      # @.str.397
.L.str.397:
	.asciz	"Icircumflexsmall"
	.size	.L.str.397, 17

	.type	.L.str.398,@object      # @.str.398
.L.str.398:
	.asciz	"Idieresissmall"
	.size	.L.str.398, 15

	.type	.L.str.399,@object      # @.str.399
.L.str.399:
	.asciz	"Ethsmall"
	.size	.L.str.399, 9

	.type	.L.str.400,@object      # @.str.400
.L.str.400:
	.asciz	"Ntildesmall"
	.size	.L.str.400, 12

	.type	.L.str.401,@object      # @.str.401
.L.str.401:
	.asciz	"Ogravesmall"
	.size	.L.str.401, 12

	.type	.L.str.402,@object      # @.str.402
.L.str.402:
	.asciz	"Oacutesmall"
	.size	.L.str.402, 12

	.type	.L.str.403,@object      # @.str.403
.L.str.403:
	.asciz	"Ocircumflexsmall"
	.size	.L.str.403, 17

	.type	.L.str.404,@object      # @.str.404
.L.str.404:
	.asciz	"Otildesmall"
	.size	.L.str.404, 12

	.type	.L.str.405,@object      # @.str.405
.L.str.405:
	.asciz	"Odieresissmall"
	.size	.L.str.405, 15

	.type	.L.str.406,@object      # @.str.406
.L.str.406:
	.asciz	"OEsmall"
	.size	.L.str.406, 8

	.type	.L.str.407,@object      # @.str.407
.L.str.407:
	.asciz	"Oslashsmall"
	.size	.L.str.407, 12

	.type	.L.str.408,@object      # @.str.408
.L.str.408:
	.asciz	"Ugravesmall"
	.size	.L.str.408, 12

	.type	.L.str.409,@object      # @.str.409
.L.str.409:
	.asciz	"Uacutesmall"
	.size	.L.str.409, 12

	.type	.L.str.410,@object      # @.str.410
.L.str.410:
	.asciz	"Ucircumflexsmall"
	.size	.L.str.410, 17

	.type	.L.str.411,@object      # @.str.411
.L.str.411:
	.asciz	"Udieresissmall"
	.size	.L.str.411, 15

	.type	.L.str.412,@object      # @.str.412
.L.str.412:
	.asciz	"Yacutesmall"
	.size	.L.str.412, 12

	.type	.L.str.413,@object      # @.str.413
.L.str.413:
	.asciz	"Thornsmall"
	.size	.L.str.413, 11

	.type	.L.str.414,@object      # @.str.414
.L.str.414:
	.asciz	"Ydieresissmall"
	.size	.L.str.414, 15

	.type	.L.str.415,@object      # @.str.415
.L.str.415:
	.asciz	"001.000"
	.size	.L.str.415, 8

	.type	.L.str.416,@object      # @.str.416
.L.str.416:
	.asciz	"001.001"
	.size	.L.str.416, 8

	.type	.L.str.417,@object      # @.str.417
.L.str.417:
	.asciz	"001.002"
	.size	.L.str.417, 8

	.type	.L.str.418,@object      # @.str.418
.L.str.418:
	.asciz	"001.003"
	.size	.L.str.418, 8

	.type	.L.str.419,@object      # @.str.419
.L.str.419:
	.asciz	"Black"
	.size	.L.str.419, 6

	.type	.L.str.420,@object      # @.str.420
.L.str.420:
	.asciz	"Bold"
	.size	.L.str.420, 5

	.type	.L.str.421,@object      # @.str.421
.L.str.421:
	.asciz	"Book"
	.size	.L.str.421, 5

	.type	.L.str.422,@object      # @.str.422
.L.str.422:
	.asciz	"Light"
	.size	.L.str.422, 6

	.type	.L.str.423,@object      # @.str.423
.L.str.423:
	.asciz	"Medium"
	.size	.L.str.423, 7

	.type	.L.str.424,@object      # @.str.424
.L.str.424:
	.asciz	"Regular"
	.size	.L.str.424, 8

	.type	.L.str.425,@object      # @.str.425
.L.str.425:
	.asciz	"Roman"
	.size	.L.str.425, 6

	.type	.L.str.426,@object      # @.str.426
.L.str.426:
	.asciz	"Semibold"
	.size	.L.str.426, 9

	.type	expert_charset,@object  # @expert_charset
	.section	.rodata,"a",@progbits
	.align	16
expert_charset:
	.short	1                       # 0x1
	.short	229                     # 0xe5
	.short	230                     # 0xe6
	.short	231                     # 0xe7
	.short	232                     # 0xe8
	.short	233                     # 0xe9
	.short	234                     # 0xea
	.short	235                     # 0xeb
	.short	236                     # 0xec
	.short	237                     # 0xed
	.short	238                     # 0xee
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	99                      # 0x63
	.short	239                     # 0xef
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	242                     # 0xf2
	.short	243                     # 0xf3
	.short	244                     # 0xf4
	.short	245                     # 0xf5
	.short	246                     # 0xf6
	.short	247                     # 0xf7
	.short	248                     # 0xf8
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	249                     # 0xf9
	.short	250                     # 0xfa
	.short	251                     # 0xfb
	.short	252                     # 0xfc
	.short	253                     # 0xfd
	.short	254                     # 0xfe
	.short	255                     # 0xff
	.short	256                     # 0x100
	.short	257                     # 0x101
	.short	258                     # 0x102
	.short	259                     # 0x103
	.short	260                     # 0x104
	.short	261                     # 0x105
	.short	262                     # 0x106
	.short	263                     # 0x107
	.short	264                     # 0x108
	.short	265                     # 0x109
	.short	266                     # 0x10a
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	267                     # 0x10b
	.short	268                     # 0x10c
	.short	269                     # 0x10d
	.short	270                     # 0x10e
	.short	271                     # 0x10f
	.short	272                     # 0x110
	.short	273                     # 0x111
	.short	274                     # 0x112
	.short	275                     # 0x113
	.short	276                     # 0x114
	.short	277                     # 0x115
	.short	278                     # 0x116
	.short	279                     # 0x117
	.short	280                     # 0x118
	.short	281                     # 0x119
	.short	282                     # 0x11a
	.short	283                     # 0x11b
	.short	284                     # 0x11c
	.short	285                     # 0x11d
	.short	286                     # 0x11e
	.short	287                     # 0x11f
	.short	288                     # 0x120
	.short	289                     # 0x121
	.short	290                     # 0x122
	.short	291                     # 0x123
	.short	292                     # 0x124
	.short	293                     # 0x125
	.short	294                     # 0x126
	.short	295                     # 0x127
	.short	296                     # 0x128
	.short	297                     # 0x129
	.short	298                     # 0x12a
	.short	299                     # 0x12b
	.short	300                     # 0x12c
	.short	301                     # 0x12d
	.short	302                     # 0x12e
	.short	303                     # 0x12f
	.short	304                     # 0x130
	.short	305                     # 0x131
	.short	306                     # 0x132
	.short	307                     # 0x133
	.short	308                     # 0x134
	.short	309                     # 0x135
	.short	310                     # 0x136
	.short	311                     # 0x137
	.short	312                     # 0x138
	.short	313                     # 0x139
	.short	314                     # 0x13a
	.short	315                     # 0x13b
	.short	316                     # 0x13c
	.short	317                     # 0x13d
	.short	318                     # 0x13e
	.short	158                     # 0x9e
	.short	155                     # 0x9b
	.short	163                     # 0xa3
	.short	319                     # 0x13f
	.short	320                     # 0x140
	.short	321                     # 0x141
	.short	322                     # 0x142
	.short	323                     # 0x143
	.short	324                     # 0x144
	.short	325                     # 0x145
	.short	326                     # 0x146
	.short	150                     # 0x96
	.short	164                     # 0xa4
	.short	169                     # 0xa9
	.short	327                     # 0x147
	.short	328                     # 0x148
	.short	329                     # 0x149
	.short	330                     # 0x14a
	.short	331                     # 0x14b
	.short	332                     # 0x14c
	.short	333                     # 0x14d
	.short	334                     # 0x14e
	.short	335                     # 0x14f
	.short	336                     # 0x150
	.short	337                     # 0x151
	.short	338                     # 0x152
	.short	339                     # 0x153
	.short	340                     # 0x154
	.short	341                     # 0x155
	.short	342                     # 0x156
	.short	343                     # 0x157
	.short	344                     # 0x158
	.short	345                     # 0x159
	.short	346                     # 0x15a
	.short	347                     # 0x15b
	.short	348                     # 0x15c
	.short	349                     # 0x15d
	.short	350                     # 0x15e
	.short	351                     # 0x15f
	.short	352                     # 0x160
	.short	353                     # 0x161
	.short	354                     # 0x162
	.short	355                     # 0x163
	.short	356                     # 0x164
	.short	357                     # 0x165
	.short	358                     # 0x166
	.short	359                     # 0x167
	.short	360                     # 0x168
	.short	361                     # 0x169
	.short	362                     # 0x16a
	.short	363                     # 0x16b
	.short	364                     # 0x16c
	.short	365                     # 0x16d
	.short	366                     # 0x16e
	.short	367                     # 0x16f
	.short	368                     # 0x170
	.short	369                     # 0x171
	.short	370                     # 0x172
	.short	371                     # 0x173
	.short	372                     # 0x174
	.short	373                     # 0x175
	.short	374                     # 0x176
	.short	375                     # 0x177
	.short	376                     # 0x178
	.short	377                     # 0x179
	.short	378                     # 0x17a
	.size	expert_charset, 330

	.type	expert_subset_charset,@object # @expert_subset_charset
	.align	16
expert_subset_charset:
	.short	1                       # 0x1
	.short	231                     # 0xe7
	.short	232                     # 0xe8
	.short	235                     # 0xeb
	.short	236                     # 0xec
	.short	237                     # 0xed
	.short	238                     # 0xee
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	99                      # 0x63
	.short	239                     # 0xef
	.short	240                     # 0xf0
	.short	241                     # 0xf1
	.short	242                     # 0xf2
	.short	243                     # 0xf3
	.short	244                     # 0xf4
	.short	245                     # 0xf5
	.short	246                     # 0xf6
	.short	247                     # 0xf7
	.short	248                     # 0xf8
	.short	27                      # 0x1b
	.short	28                      # 0x1c
	.short	249                     # 0xf9
	.short	250                     # 0xfa
	.short	251                     # 0xfb
	.short	253                     # 0xfd
	.short	254                     # 0xfe
	.short	255                     # 0xff
	.short	256                     # 0x100
	.short	257                     # 0x101
	.short	258                     # 0x102
	.short	259                     # 0x103
	.short	260                     # 0x104
	.short	261                     # 0x105
	.short	262                     # 0x106
	.short	263                     # 0x107
	.short	264                     # 0x108
	.short	265                     # 0x109
	.short	266                     # 0x10a
	.short	109                     # 0x6d
	.short	110                     # 0x6e
	.short	267                     # 0x10b
	.short	268                     # 0x10c
	.short	269                     # 0x10d
	.short	270                     # 0x10e
	.short	272                     # 0x110
	.short	300                     # 0x12c
	.short	301                     # 0x12d
	.short	302                     # 0x12e
	.short	305                     # 0x131
	.short	314                     # 0x13a
	.short	315                     # 0x13b
	.short	158                     # 0x9e
	.short	155                     # 0x9b
	.short	163                     # 0xa3
	.short	320                     # 0x140
	.short	321                     # 0x141
	.short	322                     # 0x142
	.short	323                     # 0x143
	.short	324                     # 0x144
	.short	325                     # 0x145
	.short	326                     # 0x146
	.short	150                     # 0x96
	.short	164                     # 0xa4
	.short	169                     # 0xa9
	.short	327                     # 0x147
	.short	328                     # 0x148
	.short	329                     # 0x149
	.short	330                     # 0x14a
	.short	331                     # 0x14b
	.short	332                     # 0x14c
	.short	333                     # 0x14d
	.short	334                     # 0x14e
	.short	335                     # 0x14f
	.short	336                     # 0x150
	.short	337                     # 0x151
	.short	338                     # 0x152
	.short	339                     # 0x153
	.short	340                     # 0x154
	.short	341                     # 0x155
	.short	342                     # 0x156
	.short	343                     # 0x157
	.short	344                     # 0x158
	.short	345                     # 0x159
	.short	346                     # 0x15a
	.size	expert_subset_charset, 172

	.type	.L.str.427,@object      # @.str.427
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.427:
	.asciz	"version"
	.size	.L.str.427, 8

	.type	.L.str.428,@object      # @.str.428
.L.str.428:
	.asciz	"Notice"
	.size	.L.str.428, 7

	.type	.L.str.429,@object      # @.str.429
.L.str.429:
	.asciz	"FullName"
	.size	.L.str.429, 9

	.type	.L.str.430,@object      # @.str.430
.L.str.430:
	.asciz	"FamilyName"
	.size	.L.str.430, 11

	.type	.L.str.431,@object      # @.str.431
.L.str.431:
	.asciz	"Weight"
	.size	.L.str.431, 7

	.type	.L.str.432,@object      # @.str.432
.L.str.432:
	.asciz	"FontBBox"
	.size	.L.str.432, 9

	.type	.L.str.433,@object      # @.str.433
.L.str.433:
	.asciz	"BlueValues"
	.size	.L.str.433, 11

	.type	.L.str.434,@object      # @.str.434
.L.str.434:
	.asciz	"OtherBlues"
	.size	.L.str.434, 11

	.type	.L.str.435,@object      # @.str.435
.L.str.435:
	.asciz	"FamilyBlues"
	.size	.L.str.435, 12

	.type	.L.str.436,@object      # @.str.436
.L.str.436:
	.asciz	"FamilyOtherBlues"
	.size	.L.str.436, 17

	.type	.L.str.437,@object      # @.str.437
.L.str.437:
	.asciz	"StdHW"
	.size	.L.str.437, 6

	.type	.L.str.438,@object      # @.str.438
.L.str.438:
	.asciz	"StdVW"
	.size	.L.str.438, 6

	.type	.L.str.439,@object      # @.str.439
.L.str.439:
	.asciz	"Copyright"
	.size	.L.str.439, 10

	.type	.L.str.440,@object      # @.str.440
.L.str.440:
	.asciz	"isFixedPitch"
	.size	.L.str.440, 13

	.type	.L.str.441,@object      # @.str.441
.L.str.441:
	.asciz	"ItalicAngle"
	.size	.L.str.441, 12

	.type	.L.str.442,@object      # @.str.442
.L.str.442:
	.asciz	"UnderlinePosition"
	.size	.L.str.442, 18

	.type	.L.str.443,@object      # @.str.443
.L.str.443:
	.asciz	"UnderlineThickness"
	.size	.L.str.443, 19

	.type	.L.str.444,@object      # @.str.444
.L.str.444:
	.asciz	"CharstringType"
	.size	.L.str.444, 15

	.type	.L.str.445,@object      # @.str.445
.L.str.445:
	.asciz	"StrokeWidth"
	.size	.L.str.445, 12

	.type	.L.str.446,@object      # @.str.446
.L.str.446:
	.asciz	"BlueScale"
	.size	.L.str.446, 10

	.type	.L.str.447,@object      # @.str.447
.L.str.447:
	.asciz	"BlueShift"
	.size	.L.str.447, 10

	.type	.L.str.448,@object      # @.str.448
.L.str.448:
	.asciz	"BlueFuzz"
	.size	.L.str.448, 9

	.type	.L.str.449,@object      # @.str.449
.L.str.449:
	.asciz	"StemSnapH"
	.size	.L.str.449, 10

	.type	.L.str.450,@object      # @.str.450
.L.str.450:
	.asciz	"StemSnapV"
	.size	.L.str.450, 10

	.type	.L.str.451,@object      # @.str.451
.L.str.451:
	.asciz	"ForceBold"
	.size	.L.str.451, 10

	.type	.L.str.452,@object      # @.str.452
.L.str.452:
	.asciz	"LanguageGroup"
	.size	.L.str.452, 14

	.type	.L.str.453,@object      # @.str.453
.L.str.453:
	.asciz	"ExpansionFactor"
	.size	.L.str.453, 16

	.type	.L.str.454,@object      # @.str.454
.L.str.454:
	.asciz	"SyntheticBase"
	.size	.L.str.454, 14

	.type	.L.str.455,@object      # @.str.455
.L.str.455:
	.asciz	"PostScript"
	.size	.L.str.455, 11

	.type	.L.str.456,@object      # @.str.456
.L.str.456:
	.asciz	"BaseFontName"
	.size	.L.str.456, 13

	.type	.L.str.457,@object      # @.str.457
.L.str.457:
	.asciz	"BaseFontBlend"
	.size	.L.str.457, 14

	.type	.L.str.458,@object      # @.str.458
.L.str.458:
	.asciz	"CIDFontVersion"
	.size	.L.str.458, 15

	.type	.L.str.459,@object      # @.str.459
.L.str.459:
	.asciz	"CIDFontRevision"
	.size	.L.str.459, 16

	.type	.L.str.460,@object      # @.str.460
.L.str.460:
	.asciz	"CIDFontType"
	.size	.L.str.460, 12

	.type	.L.str.461,@object      # @.str.461
.L.str.461:
	.asciz	"UIDBase"
	.size	.L.str.461, 8

	.type	.L.str.462,@object      # @.str.462
.L.str.462:
	.asciz	"FDSelect"
	.size	.L.str.462, 9

	.type	.L.str.463,@object      # @.str.463
.L.str.463:
	.asciz	"FontName"
	.size	.L.str.463, 9

	.type	.L.str.464,@object      # @.str.464
.L.str.464:
	.asciz	"parsecff.default_bbox"
	.size	.L.str.464, 22

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	format0_charset_proc
	.quad	format1_charset_proc
	.quad	format2_charset_proc
	.size	.Lswitch.table, 24

	.type	.Lswitch.table.1,@object # @switch.table.1
	.align	16
.Lswitch.table.1:
	.quad	iso_adobe_charset_proc
	.quad	expert_charset_proc
	.quad	expert_subset_charset_proc
	.size	.Lswitch.table.1, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
