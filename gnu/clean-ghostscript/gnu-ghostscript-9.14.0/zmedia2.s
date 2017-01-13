	.text
	.file	"zmedia2.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1593835520              # float 9.22337203E+18
.LCPI0_1:
	.long	981668463               # float 0.00100000005
	.text
	.align	16, 0x90
	.type	zmatchmedia,@function
zmatchmedia:                            # @zmatchmedia
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
	subq	$328, %rsp              # imm = 0x148
.Ltmp6:
	.cfi_def_cfa_offset 384
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
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	leaq	-32(%rbx), %r15
	movl	$1593835520, 320(%rsp)  # imm = 0x5F000000
	movzbl	-31(%rbx), %ecx
	cmpl	$14, %ecx
	jne	.LBB0_3
# BB#1:                                 # %if.then
	movq	632(%r14), %rcx
	addq	$48, %rcx
	movl	$-17, %eax
	cmpq	%rcx, %rbx
	jb	.LBB0_83
# BB#2:                                 # %if.end
	movw	$3584, -48(%rbx)        # imm = 0xE00
	movw	$1, -24(%rbx)
	movw	$256, -32(%rbx)         # imm = 0x100
	movq	%r15, 624(%r14)
.LBB0_82:                               # %cleanup.393
	xorl	%eax, %eax
	jmp	.LBB0_83
.LBB0_3:                                # %if.end.21
	leaq	-48(%rbx), %r12
	movzbl	1(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB0_4
# BB#5:                                 # %do.body
	movq	-40(%rbx), %rdx
	movl	$-7, %eax
	testb	$32, (%rdx)
	je	.LBB0_83
# BB#6:                                 # %do.end
	movzbl	%cl, %ecx
	cmpl	$2, %ecx
	jne	.LBB0_7
# BB#8:                                 # %do.body.45
	movq	-24(%rbx), %rcx
	testb	$32, (%rcx)
	je	.LBB0_83
# BB#9:                                 # %do.end.57
	leaq	-16(%rbx), %r13
	movzbl	1(%r13), %ecx
	cmpl	$2, %ecx
	jne	.LBB0_10
# BB#11:                                # %do.body.67
	movq	-8(%rbx), %rcx
	testb	$32, (%rcx)
	je	.LBB0_83
# BB#12:                                # %do.body.80
	movzbl	1(%rbx), %ecx
	cmpl	$4, %ecx
	jne	.LBB0_13
# BB#14:                                # %do.body.92
	testb	$32, (%rbx)
	je	.LBB0_83
# BB#15:                                # %do.end.101
	leaq	268(%rsp), %r9
	movl	$.L.str.3, %esi
	xorl	%edx, %edx
	movl	$32767, %ecx            # imm = 0x7FFF
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	callq	dict_int_null_param
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_16
# BB#17:                                # %sw.bb
	movl	$-1, 268(%rsp)
	jmp	.LBB0_18
.LBB0_4:                                # %if.then.28
	movq	%r12, %rdi
	callq	check_type_failed
	jmp	.LBB0_83
.LBB0_7:                                # %if.then.42
	movq	%r15, %rdi
	callq	check_type_failed
	jmp	.LBB0_83
.LBB0_10:                               # %if.then.64
	movq	%r13, %rdi
	callq	check_type_failed
	jmp	.LBB0_83
.LBB0_13:                               # %if.then.87
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB0_83:                               # %cleanup.393
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_16:                               # %do.end.101
	testl	%eax, %eax
	jne	.LBB0_83
.LBB0_18:                               # %sw.epilog
	leaq	264(%rsp), %r9
	movl	$.L.str.4, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	callq	dict_int_null_param
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_19
# BB#20:                                # %sw.bb.106
	movl	$-1, 264(%rsp)
	jmp	.LBB0_21
.LBB0_19:                               # %sw.epilog
	testl	%eax, %eax
	jne	.LBB0_83
.LBB0_21:                               # %sw.epilog.108
	leaq	260(%rsp), %rcx
	movl	$.L.str.5, %esi
	xorl	%edx, %edx
	movq	%r12, %rdi
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB0_83
# BB#22:                                # %if.end.113
	leaq	324(%rsp), %r9
	movl	$.L.str.6, %esi
	xorl	%edx, %edx
	movl	$7, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	dict_int_param
	testl	%eax, %eax
	js	.LBB0_83
# BB#23:                                # %if.end.118
	leaq	272(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	dict_find_string
	testl	%eax, %eax
	jle	.LBB0_27
# BB#24:                                # %do.body.123
	movq	272(%rsp), %rcx
	movl	$-20, %eax
	movzbl	1(%rcx), %edx
	cmpl	$4, %edx
	jne	.LBB0_83
# BB#25:                                # %do.body.134
	testb	$32, (%rcx)
	movl	$-7, %eax
	je	.LBB0_83
# BB#26:                                # %do.body.134.if.end.148_crit_edge
	movl	4(%rcx), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	jmp	.LBB0_28
.LBB0_27:                               # %if.else
	movq	$0, 288(%rsp)
	movw	$1120, 280(%rsp)        # imm = 0x460
	movl	$0, 284(%rsp)
	leaq	280(%rsp), %rax
	movq	%rax, 272(%rsp)
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
.LBB0_28:                               # %if.end.148
	movq	%r15, %rdi
	callq	dict_first
	leaq	224(%rsp), %rdx
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	dict_next
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB0_76
# BB#29:                                # %for.body.lr.ph.lr.ph
	movb	$14, %al
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movb	$14, %al
	movl	%eax, 84(%rsp)          # 4-byte Spill
.LBB0_30:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_70 Depth 2
	movzbl	241(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB0_33
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	248(%rsp), %rax
	testb	$32, (%rax)
	je	.LBB0_33
# BB#32:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB0_30 Depth=1
	movzbl	225(%rsp), %eax
	cmpl	$11, %eax
	je	.LBB0_34
.LBB0_33:                               # %for.cond.backedge
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	%r15, %rdi
	movl	%ecx, %esi
	leaq	224(%rsp), %rdx
	callq	dict_next
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jns	.LBB0_30
	jmp	.LBB0_75
.LBB0_34:                               # %if.then.177
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	%ebp, 56(%rsp)          # 4-byte Spill
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	$.L.str.8, %esi
	xorl	%edx, %edx
	leaq	240(%rsp), %rdi
	leaq	220(%rsp), %rcx
	callq	dict_bool_param
	testl	%eax, %eax
	js	.LBB0_83
# BB#35:                                # %for.cond.184.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 4(%rbx)
	je	.LBB0_56
.LBB0_36:                               # %for.body.189
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	8(%r14), %rdi
	movl	%eax, %edx
	movq	%rbx, %rsi
	leaq	200(%rsp), %rbp
	movq	%rbp, %rcx
	callq	array_get
	leaq	240(%rsp), %rdi
	movq	%rbp, %rsi
	leaq	168(%rsp), %rdx
	callq	dict_find
	movl	$22, %ecx
	testl	%eax, %eax
	jle	.LBB0_51
# BB#37:                                # %if.end.198
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	%r12, %rdi
	leaq	200(%rsp), %rsi
	leaq	176(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB0_39
# BB#38:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	176(%rsp), %rax
	movzbl	1(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB0_41
.LBB0_39:                               # %if.then.208
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$22, %ecx
	cmpl	$0, 220(%rsp)
	je	.LBB0_51
# BB#40:                                # %select.mid
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$23, %ecx
	jmp	.LBB0_51
.LBB0_41:                               # %if.end.212
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	%r13, %rdi
	leaq	200(%rsp), %rsi
	leaq	160(%rsp), %rdx
	callq	dict_find
	testl	%eax, %eax
	jle	.LBB0_44
# BB#42:                                # %do.body.217
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	160(%rsp), %rax
	movl	$1, %ecx
	movzbl	1(%rax), %edx
	cmpl	$11, %edx
	jne	.LBB0_51
# BB#43:                                # %do.end.227
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	8(%rax), %ebp
	jmp	.LBB0_45
.LBB0_44:                               # %if.else.230
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	324(%rsp), %ebp
.LBB0_45:                               # %if.end.231
                                        #   in Loop: Header=BB0_36 Depth=2
	movzbl	201(%rsp), %eax
	cmpl	$13, %eax
	jne	.LBB0_49
# BB#46:                                # %land.lhs.true.238
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	8(%r14), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rdi
	leaq	200(%rsp), %rsi
	leaq	184(%rsp), %rdx
	callq	names_string_ref
	cmpl	$8, 188(%rsp)
	jne	.LBB0_49
# BB#47:                                # %land.rhs
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	192(%rsp), %rdi
	movl	$.L.str.9, %esi
	movl	$8, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB0_48
.LBB0_49:                               # %if.else.257
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	8(%r14), %rdi
	movq	176(%rsp), %rsi
	movq	168(%rsp), %rdx
	callq	obj_eq
	movl	$23, %ecx
	testl	%eax, %eax
	jne	.LBB0_50
	jmp	.LBB0_51
.LBB0_48:                               # %if.then.248
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	8(%r14), %rdi
	movq	176(%rsp), %rsi
	movq	168(%rsp), %rdx
	movl	264(%rsp), %r8d
	leaq	120(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, (%rsp)
	movl	%ebp, %ecx
	leaq	320(%rsp), %r9
	callq	zmatch_page_size
	movl	$23, %ecx
	testl	%eax, %eax
	jle	.LBB0_51
.LBB0_50:                               # %if.end.264
                                        #   in Loop: Header=BB0_36 Depth=2
	xorl	%ecx, %ecx
.LBB0_51:                               # %cleanup.265
                                        #   in Loop: Header=BB0_36 Depth=2
	testl	%ecx, %ecx
	je	.LBB0_55
# BB#52:                                # %cleanup.265
                                        #   in Loop: Header=BB0_36 Depth=2
	cmpl	$22, %ecx
	jne	.LBB0_53
.LBB0_55:                               # %for.inc
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	112(%rsp), %eax         # 4-byte Reload
	incl	%eax
	cmpl	4(%rbx), %eax
	jb	.LBB0_36
.LBB0_56:                               # %for.end
                                        #   in Loop: Header=BB0_30 Depth=1
	movslq	268(%rsp), %rcx
	testq	%rcx, %rcx
	movb	$1, %al
	js	.LBB0_58
# BB#57:                                # %lor.rhs
                                        #   in Loop: Header=BB0_30 Depth=1
	cmpq	%rcx, 232(%rsp)
	sete	%al
.LBB0_58:                               # %lor.end
                                        #   in Loop: Header=BB0_30 Depth=1
	testb	%al, %al
	xorps	%xmm0, %xmm0
	jne	.LBB0_60
# BB#59:                                # %lor.end
                                        #   in Loop: Header=BB0_30 Depth=1
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
.LBB0_60:                               # %lor.end
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	104(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB0_62
# BB#61:                                # %if.then.288
                                        #   in Loop: Header=BB0_30 Depth=1
	movzwl	224(%rsp), %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	shrl	$8, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	226(%rsp), %rax
	movq	%rax, %rcx
	movw	4(%rcx), %ax
	movw	%ax, 300(%rsp)
	movl	(%rcx), %eax
	movl	%eax, 296(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB0_62:                               # %if.end.291
                                        #   in Loop: Header=BB0_30 Depth=1
	addss	320(%rsp), %xmm0
	movss	60(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jb	.LBB0_68
# BB#63:                                # %if.then.294
                                        #   in Loop: Header=BB0_30 Depth=1
	jbe	.LBB0_65
# BB#64:                                # %if.then.294.if.then.315_crit_edge
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	232(%rsp), %rax
	jmp	.LBB0_67
.LBB0_53:                               # %cleanup.265
                                        #   in Loop: Header=BB0_30 Depth=1
	cmpl	$23, %ecx
	je	.LBB0_74
	jmp	.LBB0_54
.LBB0_65:                               # %lor.lhs.false.298
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	104(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	cmpl	$11, %eax
	jne	.LBB0_68
# BB#66:                                # %land.lhs.true.306
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	232(%rsp), %rax
	movb	$11, %cl
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	cmpq	%rax, 72(%rsp)          # 8-byte Folded Reload
	jle	.LBB0_68
.LBB0_67:                               # %if.then.315
                                        #   in Loop: Header=BB0_30 Depth=1
	movzwl	224(%rsp), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	shrl	$8, %ecx
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	leaq	226(%rsp), %rcx
	movq	%rcx, %rdx
	movw	4(%rdx), %cx
	movw	%cx, 300(%rsp)
	movl	(%rdx), %ecx
	movl	%ecx, 296(%rsp)
	movb	$14, %cl
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
.LBB0_68:                               # %if.end.320
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	je	.LBB0_74
# BB#69:                                # %for.body.324.preheader
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
.LBB0_70:                               # %for.body.324
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	8(%r14), %rdi
	movq	272(%rsp), %rsi
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rbp
	movq	%rbp, %rdx
	leaq	136(%rsp), %rax
	movq	%rax, %rcx
	callq	array_get
	movq	8(%r14), %rdi
	leaq	224(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	obj_eq
	testl	%eax, %eax
	jne	.LBB0_71
# BB#72:                                # %cleanup.338
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	112(%rsp), %rdx         # 8-byte Reload
	decq	%rdx
	movl	%edx, %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	jne	.LBB0_70
# BB#73:                                # %cleanup.342.thread.loopexit
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jmp	.LBB0_74
.LBB0_71:                               # %cleanup.338.thread
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movzwl	224(%rsp), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	shrl	$8, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	leaq	226(%rsp), %rax
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	6(%rcx), %rcx
	movq	%rcx, 310(%rsp)
	movq	%rax, 304(%rsp)
.LBB0_74:                               # %cleanup.342.thread
                                        #   in Loop: Header=BB0_30 Depth=1
	movq	%r15, %rdi
	movl	52(%rsp), %esi          # 4-byte Reload
	leaq	224(%rsp), %rdx
	callq	dict_next
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	56(%rsp), %ebp          # 4-byte Reload
	jns	.LBB0_30
.LBB0_75:                               # %for.end.348
	movl	104(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB0_77
.LBB0_76:                               # %if.then.356
	movw	$0, -40(%rbx)
	movw	$256, -48(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	addq	$-48, %rax
	jmp	.LBB0_81
.LBB0_77:                               # %if.else.367
	movl	84(%rsp), %ecx          # 4-byte Reload
	movzbl	%cl, %ecx
	cmpl	$14, %ecx
	jne	.LBB0_79
# BB#78:                                # %if.then.375
	shll	$8, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movw	%cx, -48(%rbx)
	movw	300(%rsp), %ax
	movw	%ax, -42(%rbx)
	movl	296(%rsp), %eax
	movl	%eax, -46(%rbx)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, -40(%rbx)
	jmp	.LBB0_80
.LBB0_79:                               # %if.else.378
	shll	$8, %ecx
	movzbl	%bpl, %eax
	orl	%ecx, %eax
	movw	%ax, -48(%rbx)
	movq	304(%rsp), %rax
	movq	310(%rsp), %rcx
	movq	%rcx, -40(%rbx)
	movq	%rax, -46(%rbx)
.LBB0_80:                               # %if.end.381
	movw	$1, -24(%rbx)
	movw	$256, -32(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	addq	$-32, %rax
.LBB0_81:                               # %if.end.392
	movq	%rax, 624(%r14)
	jmp	.LBB0_82
.LBB0_54:                               # %cleanup.342
	movl	$-20, %eax
	jmp	.LBB0_83
.Lfunc_end0:
	.size	zmatchmedia, .Lfunc_end0-zmatchmedia
	.cfi_endproc

	.align	16, 0x90
	.type	zmatchpagesize,@function
zmatchpagesize:                         # @zmatchpagesize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 96
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	624(%r14), %rbx
	movl	$1593835520, 36(%rsp)   # imm = 0x5F000000
	movzbl	-47(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_1
# BB#3:                                 # %if.end
	movzbl	-31(%rbx), %eax
	cmpl	$11, %eax
	jne	.LBB1_4
# BB#6:                                 # %if.end.21
	movq	-24(%rbx), %r8
	movl	$-15, %eax
	cmpq	$3, %r8
	ja	.LBB1_16
	jmp	.LBB1_7
.LBB1_1:                                # %if.then
	addq	$-48, %rbx
	jmp	.LBB1_2
.LBB1_4:                                # %if.end
	movl	$-1, %r8d
	movzbl	%al, %eax
	cmpl	$14, %eax
	jne	.LBB1_5
.LBB1_7:                                # %if.end.31
	movzbl	-15(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB1_8
# BB#9:                                 # %if.end.42
	movq	8(%r14), %rdi
	leaq	-80(%rbx), %r15
	leaq	-64(%rbx), %rdx
	movl	-40(%rbx), %ecx
	leaq	16(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	36(%rsp), %r9
	movq	%r15, %rsi
	callq	zmatch_page_size
	cmpl	$1, %eax
	jne	.LBB1_10
# BB#12:                                # %sw.bb.63
	leaq	8(%r14), %rdx
	leaq	40(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	write_matrix_in
	testl	%eax, %eax
	jns	.LBB1_14
# BB#13:                                # %land.lhs.true
	movzbl	1(%rbx), %ecx
	cmpl	$14, %ecx
	jne	.LBB1_16
.LBB1_14:                               # %if.end.75
	movups	(%rbx), %xmm0
	movups	%xmm0, (%r15)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -56(%rbx)
	movw	$4096, -64(%rbx)        # imm = 0x1000
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbx)
	movw	$4096, -48(%rbx)        # imm = 0x1000
	movw	$1, -24(%rbx)
	movw	$256, -32(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	addq	$-32, %rax
	jmp	.LBB1_15
.LBB1_5:                                # %if.then.18
	addq	$-32, %rbx
	jmp	.LBB1_2
.LBB1_8:                                # %if.then.39
	addq	$-16, %rbx
.LBB1_2:                                # %cleanup
	movq	%rbx, %rdi
	callq	check_type_failed
.LBB1_16:                               # %cleanup
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_10:                               # %if.end.42
	testl	%eax, %eax
	jne	.LBB1_16
# BB#11:                                # %sw.bb
	movw	$0, -72(%rbx)
	movw	$256, -80(%rbx)         # imm = 0x100
	movq	624(%r14), %rax
	addq	$-80, %rax
.LBB1_15:                               # %sw.epilog
	movq	%rax, 624(%r14)
	xorl	%eax, %eax
	jmp	.LBB1_16
.Lfunc_end1:
	.size	zmatchpagesize, .Lfunc_end1-zmatchpagesize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	-4606056518893174784    # double -5
.LCPI2_1:
	.quad	4617315517961601024     # double 5
.LCPI2_3:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI2_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	zmatch_page_size,@function
zmatch_page_size:                       # @zmatch_page_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp26:
	.cfi_def_cfa_offset 368
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	192(%rsp), %rcx
	movl	$1, %edx
	callq	array_get
	testl	%eax, %eax
	js	.LBB2_76
# BB#1:                                 # %if.end
	movl	4(%rbp), %r13d
	leaq	224(%rsp), %r14
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	array_get
	testl	%eax, %eax
	js	.LBB2_76
# BB#2:                                 # %if.end.5
	movl	4(%r15), %r12d
	movl	$-15, %eax
	cmpl	$4, %r12d
	je	.LBB2_4
# BB#3:                                 # %if.end.5
	cmpl	$2, %r12d
	jne	.LBB2_76
.LBB2_4:                                # %land.lhs.true
	cmpl	$2, %r13d
	je	.LBB2_6
# BB#5:                                 # %land.lhs.true
	cmpl	%r12d, %r13d
	jne	.LBB2_76
.LBB2_6:                                # %if.end.14
	leaq	176(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	array_get
	leaq	208(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	array_get
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	callq	array_get
	movl	$2, %eax
	xorl	%edx, %edx
	divl	%r12d
	leaq	240(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	array_get
	movl	$3, %eax
	xorl	%edx, %edx
	divl	%r12d
	leaq	256(%rsp), %rbp
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	callq	array_get
	leaq	128(%rsp), %rdx
	movl	$6, %esi
	movq	%rbp, %rdi
	callq	num_params
	testl	%eax, %eax
	js	.LBB2_76
# BB#7:                                 # %if.end.26
	movq	128(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	136(%rsp), %rbp
	movq	%rbp, 120(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 80(%rsp)
	movq	152(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	160(%rsp), %rsi
	movq	%rsi, 96(%rsp)
	movq	168(%rsp), %rdi
	movq	%rdi, 104(%rsp)
	movd	%rax, %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	movl	$-15, %eax
	jae	.LBB2_76
# BB#8:                                 # %if.end.26
	movd	%rbp, %xmm5
	ucomisd	%xmm5, %xmm0
	jae	.LBB2_76
# BB#9:                                 # %if.end.i
	movq	376(%rsp), %r14
	movq	368(%rsp), %r15
	movq	64(%rsp), %rbp          # 8-byte Reload
	cmpl	$7, %ebp
	jne	.LBB2_11
# BB#10:                                # %if.then.3.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	movq	%r15, %rdi
	callq	gs_make_identity
	movupd	112(%rsp), %xmm0
	movupd	%xmm0, (%r14)
	jmp	.LBB2_75
.LBB2_11:                               # %if.else.i
	movd	%rcx, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movd	%rsi, %xmm6
	movd	%rdx, %xmm3
	movd	%rdi, %xmm8
	movapd	%xmm2, %xmm4
	subsd	%xmm0, %xmm4
	xorl	%eax, %eax
	ucomisd	.LCPI2_0(%rip), %xmm4
	movapd	%xmm5, %xmm7
	subsd	%xmm3, %xmm7
	jb	.LBB2_12
# BB#13:                                # %if.else.i
	movapd	%xmm2, %xmm1
	subsd	%xmm6, %xmm1
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	48(%rsp), %rbx          # 8-byte Reload
	jb	.LBB2_14
# BB#15:                                # %if.else.i
	movsd	%xmm6, 32(%rsp)         # 8-byte Spill
	ucomisd	.LCPI2_0(%rip), %xmm7
	jb	.LBB2_17
# BB#16:                                # %land.rhs.i
	movapd	%xmm5, %xmm1
	subsd	%xmm8, %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	jmp	.LBB2_17
.LBB2_12:
	movsd	%xmm6, 32(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB2_17
.LBB2_14:
	movsd	%xmm6, 32(%rsp)         # 8-byte Spill
.LBB2_17:                               # %land.end.i
	movapd	%xmm2, %xmm0
	subsd	%xmm3, %xmm0
	ucomisd	.LCPI2_0(%rip), %xmm0
	jae	.LBB2_22
# BB#18:
	movsd	%xmm8, 48(%rsp)         # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB2_19
.LBB2_22:                               # %land.lhs.true.22.i
	movapd	%xmm5, %xmm0
	subsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	xorl	%ecx, %ecx
	ucomisd	.LCPI2_0(%rip), %xmm0
	jb	.LBB2_23
# BB#24:                                # %land.lhs.true.22.i
	movsd	%xmm4, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movapd	%xmm2, %xmm1
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	subsd	%xmm8, %xmm1
	movsd	%xmm8, 48(%rsp)         # 8-byte Spill
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB2_19
# BB#25:                                # %land.end.37.i
	movapd	%xmm5, %xmm1
	subsd	32(%rsp), %xmm1         # 8-byte Folded Reload
	ucomisd	%xmm1, %xmm0
	setae	%cl
	movb	%al, %dl
	andb	%cl, %dl
	movzbl	%dl, %edx
	cmpl	$1, %edx
	jne	.LBB2_19
# BB#26:                                # %if.then.41.i
	movsd	%xmm7, 64(%rsp)         # 8-byte Spill
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovsl	%eax, %ebx
	leaq	112(%rsp), %rdi
	leaq	80(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movl	%ebx, %r8d
	callq	make_adjustment_matrix
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	40(%rsp), %xmm1         # 8-byte Folded Reload
	ja	.LBB2_28
# BB#27:                                # %if.then.41.i
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	8(%rsp), %xmm0          # 8-byte Folded Reload
	ja	.LBB2_28
# BB#29:                                # %if.else.55.i
	subsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	16(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	fabs
	movsd	16(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	addsd	(%rsp), %xmm0           # 8-byte Folded Reload
	jmp	.LBB2_34
.LBB2_23:
	movsd	%xmm8, 48(%rsp)         # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
.LBB2_19:                               # %if.else.71.i
	movsd	%xmm5, 16(%rsp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB2_35
# BB#20:                                # %if.then.73.i
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovsl	%eax, %ebx
	leal	1(%rbx), %r8d
	andl	$2, %r8d
	leaq	112(%rsp), %rdi
	leaq	80(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	callq	make_adjustment_matrix
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	callq	fabs
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_30
	jp	.LBB2_30
	jmp	.LBB2_21
.LBB2_30:                               # %lor.rhs.i
	testb	$1, %bl
	je	.LBB2_32
# BB#31:
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB2_33
.LBB2_35:                               # %if.else.107.i
	testb	%cl, %cl
	je	.LBB2_39
# BB#36:                                # %if.then.109.i
	testl	%ebx, %ebx
	movl	$1, %ebp
	cmovnsl	%ebx, %ebp
	movl	%ebp, %r8d
	orl	$1, %r8d
	leaq	112(%rsp), %rdi
	leaq	80(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	callq	make_adjustment_matrix
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	callq	fabs
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	callq	fabs
	addsd	64(%rsp), %xmm0         # 8-byte Folded Reload
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	jne	.LBB2_37
	jnp	.LBB2_21
.LBB2_37:                               # %lor.rhs.138.i
	testb	$1, %bpl
	jne	.LBB2_38
.LBB2_32:                               # %lor.rhs.i
	xorps	%xmm1, %xmm1
	jmp	.LBB2_33
.LBB2_21:
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB2_33:                               # %lor.rhs.i
	movsd	16(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	addsd	%xmm1, %xmm0
.LBB2_34:                               # %if.end.249.i
	cvtsd2ss	%xmm0, %xmm0
	movq	56(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
.LBB2_67:                               # %if.end.249.i
	xorps	%xmm0, %xmm0
	ucomiss	(%r15), %xmm0
	movapd	%xmm5, %xmm0
	jne	.LBB2_70
# BB#68:                                # %if.end.249.i
	movapd	%xmm5, %xmm0
	jp	.LBB2_70
# BB#69:                                # %if.end.249.i
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB2_70:                               # %if.end.249.i
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	32(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	jne	.LBB2_71
# BB#72:                                # %if.end.249.i
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jp	.LBB2_74
# BB#73:                                # %if.end.249.i
	movapd	%xmm5, %xmm2
	jmp	.LBB2_74
.LBB2_71:
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB2_74:                               # %if.end.249.i
	minsd	%xmm2, %xmm6
	movsd	40(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	cmpltsd	%xmm5, %xmm2
	movapd	%xmm2, %xmm1
	andnpd	%xmm6, %xmm1
	andpd	%xmm5, %xmm2
	orpd	%xmm1, %xmm2
	movsd	%xmm2, (%r14)
	minsd	%xmm0, %xmm4
	cmpltsd	%xmm3, %xmm0
	movapd	%xmm0, %xmm1
	andnpd	%xmm4, %xmm1
	andpd	%xmm3, %xmm0
	orpd	%xmm1, %xmm0
	movsd	%xmm0, 8(%r14)
.LBB2_75:                               # %match_page_size.exit
	movl	$1, %eax
.LBB2_76:                               # %cleanup.42
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_39:                               # %if.else.146.i
	testl	%ebx, %ebx
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jns	.LBB2_41
# BB#40:                                # %cond.false.151.i
	ucomisd	%xmm2, %xmm3
	seta	%al
	ucomisd	%xmm0, %xmm1
	seta	%cl
	xorb	%al, %cl
	movzbl	%cl, %ebx
.LBB2_41:                               # %cond.end.160.i
	cmpl	$13, %ebp
	jne	.LBB2_45
# BB#42:                                # %cond.end.194.i.thread
	movq	%rbx, %r8
	mulsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	xorl	%ecx, %ecx
.LBB2_43:                               # %sw.bb.i
	movl	$1, %eax
.LBB2_44:                               # %sw.bb.204.i
	movq	56(%rsp), %rdx          # 8-byte Reload
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm1
	unpcklps	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	cvtps2pd	%xmm1, %xmm0
	andpd	.LCPI2_2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm1, %xmm0
	movl	%eax, %edx
	movl	$0, %eax
	jb	.LBB2_58
	jmp	.LBB2_76
.LBB2_45:                               # %cond.false.165.i
	testb	$1, %bl
	jne	.LBB2_46
# BB#49:                                # %cond.false.180.i
	ucomisd	%xmm2, %xmm0
	jae	.LBB2_51
# BB#50:
	xorl	%ecx, %ecx
	jmp	.LBB2_53
.LBB2_28:                               # %if.then.54.i
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	$981668463, (%rax)      # imm = 0x3A83126F
	jmp	.LBB2_66
.LBB2_46:                               # %cond.true.168.i
	ucomisd	%xmm2, %xmm1
	jae	.LBB2_48
# BB#47:
	xorl	%ecx, %ecx
	jmp	.LBB2_53
.LBB2_38:
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	jmp	.LBB2_33
.LBB2_51:                               # %land.rhs.185.i
	ucomisd	%xmm3, %xmm1
	jmp	.LBB2_52
.LBB2_48:                               # %land.rhs.173.i
	ucomisd	%xmm3, %xmm0
.LBB2_52:                               # %cond.end.194.i
	setae	%cl
.LBB2_53:                               # %cond.end.194.i
	xorl	%eax, %eax
	addl	$-3, %ebp
	cmpl	$10, %ebp
	ja	.LBB2_76
# BB#54:                                # %cond.end.194.i
	movq	%rbx, %r8
	movzbl	%cl, %ecx
	mulsd	%xmm1, %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm3, %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	xorl	%edx, %edx
	jmpq	*.LJTI2_0(,%rbp,8)
.LBB2_55:                               # %sw.bb.213.i
	movl	$1, %edx
.LBB2_56:                               # %sw.bb.214.i
	testl	%ecx, %ecx
	je	.LBB2_76
# BB#57:                                # %lor.lhs.false.216.i
	movq	56(%rsp), %rsi          # 8-byte Reload
	ucomiss	(%rsi), %xmm4
	jae	.LBB2_76
.LBB2_58:                               # %sw.epilog.i
	movaps	%xmm4, 64(%rsp)         # 16-byte Spill
	testl	%edx, %edx
	je	.LBB2_60
# BB#59:                                # %if.then.222.i
	xorl	$1, %ecx
	leaq	112(%rsp), %rdi
	leaq	80(%rsp), %rsi
	jmp	.LBB2_65
.LBB2_60:                               # %if.else.224.i
	movl	%r8d, %eax
	andl	$1, %eax
	movapd	%xmm2, %xmm0
	je	.LBB2_62
# BB#61:                                # %if.else.224.i
	movapd	%xmm3, %xmm0
.LBB2_62:                               # %if.else.224.i
	testl	%eax, %eax
	movapd	%xmm3, %xmm1
	je	.LBB2_64
# BB#63:                                # %if.else.224.i
	movapd	%xmm2, %xmm1
.LBB2_64:                               # %if.else.224.i
	movsd	%xmm0, 280(%rsp)
	movsd	%xmm1, 288(%rsp)
	movupd	280(%rsp), %xmm0
	movupd	%xmm0, 296(%rsp)
	leaq	112(%rsp), %rdi
	leaq	280(%rsp), %rsi
	xorl	%ecx, %ecx
.LBB2_65:                               # %cleanup.i
	movq	%r15, %rdx
	callq	make_adjustment_matrix
	movaps	64(%rsp), %xmm0         # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	callq	fabs
	cvtsd2ss	%xmm0, %xmm0
	movq	56(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax)
.LBB2_66:                               # %if.end.249.i
	movsd	16(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	jmp	.LBB2_67
.Lfunc_end2:
	.size	zmatch_page_size, .Lfunc_end2-zmatch_page_size
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_43
	.quad	.LBB2_55
	.quad	.LBB2_44
	.quad	.LBB2_56
	.quad	.LBB2_76
	.quad	.LBB2_76
	.quad	.LBB2_76
	.quad	.LBB2_76
	.quad	.LBB2_76
	.quad	.LBB2_76
	.quad	.LBB2_43

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4602678819172646912     # double 0.5
.LCPI3_1:
	.quad	4636033603912859648     # double 90
.LCPI3_2:
	.quad	-4620693217682128896    # double -0.5
	.text
	.align	16, 0x90
	.type	make_adjustment_matrix,@function
make_adjustment_matrix:                 # @make_adjustment_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 80
.Ltmp38:
	.cfi_offset %rbx, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movsd	(%r14), %xmm4           # xmm4 = mem[0],zero
	movsd	8(%r14), %xmm2          # xmm2 = mem[0],zero
	movsd	(%rsi), %xmm3           # xmm3 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movl	%ebp, %eax
	andl	$1, %eax
	movapd	%xmm2, %xmm5
	je	.LBB3_2
# BB#1:                                 # %entry
	movapd	%xmm4, %xmm5
.LBB3_2:                                # %entry
	testl	%eax, %eax
	je	.LBB3_4
# BB#3:                                 # %entry
	movapd	%xmm2, %xmm4
.LBB3_4:                                # %entry
	ucomisd	%xmm3, %xmm1
	jbe	.LBB3_5
# BB#6:                                 # %if.then.5
	ucomisd	%xmm4, %xmm3
	ja	.LBB3_9
# BB#7:                                 # %if.else
	ucomisd	%xmm4, %xmm1
	movapd	%xmm1, %xmm3
	jbe	.LBB3_9
# BB#8:                                 # %if.then.13
	movapd	%xmm4, %xmm3
	jmp	.LBB3_9
.LBB3_5:
	movapd	%xmm1, %xmm3
.LBB3_9:                                # %if.end.16
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB3_10
# BB#11:                                # %if.then.20
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	ucomisd	%xmm5, %xmm2
	ja	.LBB3_14
# BB#12:                                # %if.else.27
	ucomisd	%xmm5, %xmm0
	movapd	%xmm0, %xmm2
	jbe	.LBB3_14
# BB#13:                                # %if.then.29
	movapd	%xmm5, %xmm2
	jmp	.LBB3_14
.LBB3_10:
	movsd	%xmm4, 8(%rsp)          # 8-byte Spill
	movapd	%xmm0, %xmm2
.LBB3_14:                               # %if.end.32
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm5, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm3, %xmm0
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	mulsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm1
	movq	%rbx, %rdi
	callq	gs_make_translation
	testl	%ebp, %ebp
	je	.LBB3_16
# BB#15:                                # %if.then.35
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	mulsd	.LCPI3_1(%rip), %xmm0
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	callq	gs_matrix_rotate
.LBB3_16:                               # %if.end.37
	testl	%r15d, %r15d
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	je	.LBB3_18
# BB#17:                                # %if.then.39
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	minsd	%xmm2, %xmm0
	movq	%rbx, %rdi
	movapd	%xmm0, %xmm1
	movq	%rbx, %rsi
	callq	gs_matrix_scale
.LBB3_18:                               # %if.end.45
	movsd	.LCPI3_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	8(%r14), %xmm1
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gs_matrix_translate     # TAILCALL
.Lfunc_end3:
	.size	make_adjustment_matrix, .Lfunc_end3-make_adjustment_matrix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"level2dict"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"4.matchmedia"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"6.matchpagesize"
	.size	.L.str.2, 16

	.type	zmedia2_l2_op_defs,@object # @zmedia2_l2_op_defs
	.section	.rodata,"a",@progbits
	.globl	zmedia2_l2_op_defs
	.align	16
zmedia2_l2_op_defs:
	.quad	.L.str
	.quad	0
	.quad	.L.str.1
	.quad	zmatchmedia
	.quad	.L.str.2
	.quad	zmatchpagesize
	.zero	16
	.size	zmedia2_l2_op_defs, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"MediaPosition"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Orientation"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"RollFedMedia"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"PolicyNotFound"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Priority"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"MatchAll"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"PageSize"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
