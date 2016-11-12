	.text
	.file	"sjpx_openjpeg.bc"
	.align	16, 0x90
	.type	s_opjd_init,@function
s_opjd_init:                            # @s_opjd_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 128(%rdi)
	movq	$0, 160(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 168(%rdi)
	movq	$0, 184(%rdi)
	movups	%xmm0, 200(%rdi)
	movq	$0, 216(%rdi)
	movq	$0, 232(%rdi)
	movups	%xmm0, 112(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_opjd_init, .Lfunc_end0-s_opjd_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4608992865850220347     # double 1.4019999999999999
.LCPI1_1:
	.quad	-4623501121977801853    # double -0.34412999999999999
.LCPI1_2:
	.quad	-4618764416033718660    # double -0.71414
.LCPI1_3:
	.quad	4610659197712347431     # double 1.772
	.text
	.align	16, 0x90
	.type	s_opjd_process,@function
s_opjd_process:                         # @s_opjd_process
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
	subq	$136, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 192
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
	movl	%ecx, 128(%rsp)         # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rbx), %rsi
	movq	8(%rbx), %rbp
	subq	%rsi, %rbp
	testq	%rbp, %rbp
	jle	.LBB1_17
# BB#1:                                 # %if.then
	movq	168(%r14), %rax
	movq	184(%r14), %rdi
	leaq	(%rdi,%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB1_2
# BB#3:                                 # %if.then.i
	testq	%rax, %rax
	cmoveq	%rbp, %rax
	.align	16, 0x90
.LBB1_4:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r15
	leaq	(%r15,%r15), %rax
	cmpq	%rcx, %r15
	jb	.LBB1_4
# BB#5:                                 # %do.end.i
	movq	8(%r14), %rax
	movq	160(%r14), %rsi
	movq	200(%rax), %rdi
	testq	%rsi, %rsi
	je	.LBB1_6
# BB#7:                                 # %if.else.i
	movl	$.L.str.2, %ecx
	movl	%r15d, %edx
	callq	*16(%rdi)
	jmp	.LBB1_8
.LBB1_2:                                # %entry.if.end.34_crit_edge.i
	movq	160(%r14), %rax
	jmp	.LBB1_10
.LBB1_6:                                # %if.then.13.i
	movl	$1, %edx
	movl	$.L.str.1, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
.LBB1_8:                                # %if.end.i
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB1_196
# BB#9:                                 # %if.end.28.i
	movq	%rax, 160(%r14)
	movq	%r15, 168(%r14)
	movq	184(%r14), %rdi
	movq	(%rbx), %rsi
.LBB1_10:                               # %if.end
	addq	%rax, %rdi
	incq	%rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 184(%r14)
	addq	%rbp, (%rbx)
	cmpq	$0, 112(%r14)
	jne	.LBB1_17
# BB#11:                                # %if.then.4
	movq	160(%r14), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB1_15
# BB#12:                                # %land.lhs.true
	cmpq	$1, 168(%r14)
	je	.LBB1_14
# BB#13:                                # %lor.lhs.false
	movzbl	1(%rax), %eax
	cmpl	$79, %eax
	jne	.LBB1_15
.LBB1_14:                               # %if.then.16
	xorl	%esi, %esi
	jmp	.LBB1_16
.LBB1_15:                               # %if.else
	movl	$2, %esi
.LBB1_16:                               # %if.end.19
	movq	%r14, %rdi
	callq	s_opjd_set_codec_format
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB1_196
.LBB1_17:                               # %if.end.25
	xorl	%r13d, %r13d
	cmpl	$1, 128(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_196
# BB#18:                                # %if.then.28
	movq	%r14, %rbx
	subq	$-128, %rbx
	cmpq	$0, 128(%r14)
	je	.LBB1_20
# BB#19:                                # %if.then.28.if.end.44_crit_edge
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	leaq	144(%r14), %rdx
	leaq	224(%r14), %r10
.LBB1_99:                               # %if.end.44
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%r12, %r13
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movq	8(%r13), %r8
	movq	16(%r13), %rsi
	subq	%r8, %rsi
	movl	(%rdx), %ebx
	movslq	(%r10), %rdi
	movl	%edi, %r11d
	imull	%ebx, %r11d
	movl	%r11d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r11), %ebp
	sarl	$3, %ebp
	leal	7(%r11), %ecx
	xorl	%edx, %edx
	cmpl	$15, %ecx
	jb	.LBB1_101
# BB#100:                               # %cond.true.i
	movslq	%ebp, %r9
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%r9
.LBB1_101:                              # %cond.end.i
	movslq	%ebx, %r15
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	192(%r14), %r9
	movq	200(%r14), %r10
	subq	%r10, %r9
	cmpq	%r9, %rax
	jae	.LBB1_105
# BB#102:                               # %cond.true.5.i
	xorl	%edx, %edx
	cmpl	$15, %ecx
	jb	.LBB1_104
# BB#103:                               # %cond.true.7.i
	movslq	%ebp, %rcx
	xorl	%edx, %edx
	movq	%rsi, %rax
	divq	%rcx
.LBB1_104:                              # %cond.end.11.i
	subq	%rdx, %rsi
	movq	%rsi, %r9
.LBB1_105:                              # %cond.end.18.i
	leaq	(,%r10,8), %rax
	xorl	%edx, %edx
	divq	%r15
	xorl	%edx, %edx
	divq	%rdi
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	movq	24(%rcx), %rsi
	movl	24(%rsi), %edx
	movl	16(%rcx), %ecx
	cmpl	%ecx, %edi
	cmovbl	%edi, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	cmpl	$7, %ebx
	jg	.LBB1_107
# BB#106:                               # %if.then.i.52
	movq	208(%r14), %rax
.LBB1_107:                              # %if.end.i.54
	leaq	1(%r8), %rbp
	movq	%rbp, 8(%r13)
	movl	156(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB1_110
# BB#108:                               # %land.lhs.true.i
	cmpl	$-1, 228(%r14)
	je	.LBB1_109
.LBB1_110:                              # %if.else.i.57
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	sarl	$31, %edi
	shrl	$29, %edi
	leal	(%rdi,%rbx), %r12d
	sarl	$3, %r12d
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	%ebx, %r15d
	subl	%edx, %r15d
	movl	%r15d, 96(%rsp)         # 4-byte Spill
	leaq	1(%r8,%r9), %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 148(%r14)
	je	.LBB1_161
# BB#111:                               # %if.then.55.i
	testl	%ecx, %ecx
	je	.LBB1_112
# BB#197:                               # %if.then.58.i
	movslq	228(%r14), %rcx
	shlq	$6, %rcx
	shlq	$2, %rax
	addq	48(%rsi,%rcx), %rax
	movq	216(%r14), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_116
.LBB1_20:                               # %if.then.31
	movq	120(%r14), %rdi
	leaq	160(%r14), %rsi
	callq	opj_stream_set_user_data
	movq	120(%r14), %rdi
	movq	168(%r14), %rsi
	callq	opj_stream_set_user_data_length
	movq	112(%r14), %rsi
	movq	120(%r14), %rdi
	movq	%rbx, %rdx
	callq	opj_read_header
	testl	%eax, %eax
	je	.LBB1_21
# BB#23:                                # %if.end.i.28
	movq	112(%r14), %rdi
	movq	120(%r14), %rsi
	movq	128(%r14), %rdx
	callq	opj_decode
	testl	%eax, %eax
	je	.LBB1_24
# BB#25:                                # %if.end.9.i
	movq	%rbx, %r11
	movq	(%r11), %r8
	movl	16(%r8), %edi
	movl	$-2, %r13d
	testl	%edi, %edi
	je	.LBB1_196
# BB#26:                                # %if.end.12.i
	movq	24(%r8), %rbp
	movl	8(%rbp), %esi
	movl	%esi, 136(%r14)
	movl	12(%rbp), %r10d
	movl	%r10d, 140(%r14)
	movl	24(%rbp), %r9d
	movl	%r9d, 144(%r14)
	movl	$1, 148(%r14)
	cmpl	$2, %edi
	jb	.LBB1_37
# BB#27:                                # %for.body.preheader.i
	leaq	64(%rbp), %rax
	movl	$1, %edx
	.align	16, 0x90
.LBB1_28:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	24(%rax), %r9d
	jne	.LBB1_196
# BB#29:                                # %if.end.30.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	8(%rax), %ebx
	cmpl	%ebx, %esi
	jae	.LBB1_31
# BB#30:                                # %if.then.38.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	%ebx, 136(%r14)
	movl	%ebx, %esi
.LBB1_31:                               # %if.end.45.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	12(%rax), %ecx
	cmpl	%ecx, %r10d
	jae	.LBB1_33
# BB#32:                                # %if.then.53.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	%ecx, 140(%r14)
	movl	%ecx, %r10d
.LBB1_33:                               # %if.end.60.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	(%rax), %ecx
	cmpl	(%rbp), %ecx
	jne	.LBB1_35
# BB#34:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	4(%rax), %ecx
	cmpl	4(%rbp), %ecx
	je	.LBB1_36
.LBB1_35:                               # %if.then.79.i
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	$0, 148(%r14)
.LBB1_36:                               # %for.inc.i
                                        #   in Loop: Header=BB1_28 Depth=1
	addq	$64, %rax
	incl	%edx
	cmpl	%edi, %edx
	jb	.LBB1_28
.LBB1_37:                               # %for.body.86.lr.ph.i
	movq	%r11, 32(%rsp)          # 8-byte Spill
	leaq	144(%r14), %r11
	addq	$56, %rbp
	movl	$-1, %ebx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_38:                               # %for.body.86.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbp), %ecx
	cmpl	$1, %ecx
	jne	.LBB1_39
# BB#41:                                # %if.then.103.i
                                        #   in Loop: Header=BB1_38 Depth=1
	movl	%edx, %ebx
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_39:                               # %for.body.86.i
                                        #   in Loop: Header=BB1_38 Depth=1
	testw	%cx, %cx
	jne	.LBB1_42
# BB#40:                                # %if.then.93.i
                                        #   in Loop: Header=BB1_38 Depth=1
	incl	%eax
.LBB1_42:                               # %for.inc.106.i
                                        #   in Loop: Header=BB1_38 Depth=1
	incl	%edx
	addq	$64, %rbp
	cmpl	%edi, %edx
	jb	.LBB1_38
# BB#43:                                # %for.end.108.i
	movl	20(%r8), %ecx
	cmpl	$-1, %ecx
	jne	.LBB1_44
# BB#46:                                # %sw.bb.110.i
	cmpl	$2, %eax
	jg	.LBB1_48
# BB#47:                                # %if.then.113.i
	movl	$1, 152(%r14)
	jmp	.LBB1_51
.LBB1_161:                              # %if.else.274.i
	testq	%r9, %r9
	movq	%r9, 8(%rsp)            # 8-byte Spill
	jle	.LBB1_194
# BB#162:                               # %while.body.285.lr.ph.i
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movslq	136(%r14), %rcx
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movslq	40(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-8(,%r12,8), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movq	24(%rsp), %r10          # 8-byte Reload
	jmp	.LBB1_163
	.align	16, 0x90
.LBB1_199:                              # %while.cond.281.backedge.while.body.285_crit_edge.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movl	(%r10), %ecx
	movq	%rbp, %r14
.LBB1_163:                              # %while.body.285.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_185 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_166 Depth 2
                                        #       Child Loop BB1_168 Depth 3
	testb	$7, %cl
	je	.LBB1_164
# BB#180:                               # %if.else.416.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movslq	136(%r14), %r9
	movslq	140(%r14), %rbx
	xorl	%r11d, %r11d
	cmpl	$0, 156(%r14)
	movl	$0, %esi
	je	.LBB1_182
# BB#181:                               # %cond.true.425.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movl	228(%r14), %esi
.LBB1_182:                              # %cond.end.428.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movl	$8, %eax
	xorl	%edx, %edx
	idivl	%ecx
	testl	%eax, %eax
	je	.LBB1_183
# BB#184:                               # %for.body.437.lr.ph.i
                                        #   in Loop: Header=BB1_163 Depth=1
	imulq	%r9, %rbx
	movslq	%esi, %r8
	cltq
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	208(%r14), %r12
	movq	%r14, %rbp
	xorl	%r11d, %r11d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB1_185:                              # %for.body.437.i
                                        #   Parent Loop BB1_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	%cl, %r11d
	cmpq	%rbx, %r12
	jae	.LBB1_190
# BB#186:                               # %land.lhs.true.443.i
                                        #   in Loop: Header=BB1_185 Depth=2
	testq	%rdi, %rdi
	je	.LBB1_188
# BB#187:                               # %land.lhs.true.446.i
                                        #   in Loop: Header=BB1_185 Depth=2
	xorl	%edx, %edx
	movq	%r12, %rax
	divq	%r9
	testq	%rdx, %rdx
	je	.LBB1_189
.LBB1_188:                              # %if.then.453.i
                                        #   in Loop: Header=BB1_185 Depth=2
	movq	128(%rbp), %rax
	movq	232(%rbp), %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	24(%rax), %r10
	movl	%ecx, %r13d
	movq	%rbx, %rcx
	movq	%r8, %r15
	shlq	$6, %r8
	movl	(%r10,%r8), %ebx
	movq	%r9, %rsi
	movl	4(%r10,%r8), %r9d
	xorl	%edx, %edx
	movq	120(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rax
	divq	%r9
	movq	%rsi, %r9
	imulq	%r9, %rax
	movq	128(%rsp), %rsi         # 8-byte Reload
	addq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rbx
	shlq	$32, %rax
	movq	48(%r10,%r8), %rdx
	movq	%rcx, %rbx
	movl	%r13d, %ecx
	sarq	$30, %rax
	addl	(%rdx,%rax), %r11d
	movq	112(%rsp), %rax         # 8-byte Reload
	addl	(%rax,%r15,4), %r11d
	movq	%r15, %r8
	movq	88(%rsp), %r13          # 8-byte Reload
	incq	%r12
	movq	%r12, 208(%rbp)
	incq	%rsi
	cmpq	%r9, %rsi
	setae	%al
	movzbl	%al, %eax
	movl	$0, %edx
	cmovaeq	%rdx, %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	addq	%rax, %r14
	movq	%r14, 120(%rsp)         # 8-byte Spill
.LBB1_189:                              # %for.inc.497.i
                                        #   in Loop: Header=BB1_185 Depth=2
	movl	96(%rsp), %r15d         # 4-byte Reload
	movq	104(%rsp), %rax         # 8-byte Reload
.LBB1_190:                              # %for.inc.497.i
                                        #   in Loop: Header=BB1_185 Depth=2
	incq	%rdi
	cmpq	%rax, %rdi
	jb	.LBB1_185
	jmp	.LBB1_191
	.align	16, 0x90
.LBB1_164:                              # %if.then.290.i
                                        #   in Loop: Header=BB1_163 Depth=1
	cmpl	$0, 156(%r14)
	je	.LBB1_165
# BB#172:                               # %if.then.293.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	movq	32(%rsp), %r11          # 8-byte Reload
	jl	.LBB1_179
# BB#173:                               # %for.body.316.lr.ph.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movl	228(%r14), %ecx
	movslq	%ecx, %rax
	movq	128(%r14), %rdx
	movq	24(%rdx), %rdi
	movslq	136(%r14), %rsi
	shlq	$6, %rax
	movl	(%rdi,%rax), %ebp
	movl	4(%rdi,%rax), %ebx
	xorl	%edx, %edx
	movq	120(%rsp), %rax         # 8-byte Reload
	divq	%rbx
	imulq	%rsi, %rax
	addq	128(%rsp), %rax         # 8-byte Folded Reload
	xorl	%edx, %edx
	divq	%rbp
	movslq	%eax, %rdx
	xorl	%esi, %esi
	movl	52(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_174
	.align	16, 0x90
.LBB1_177:                              # %cond.end.338.for.body.316_crit_edge.i
                                        #   in Loop: Header=BB1_174 Depth=2
	addl	$-8, %eax
	movl	228(%r14), %ecx
	movq	128(%r14), %rdi
	movq	24(%rdi), %rdi
.LBB1_174:                              # %for.body.316.i
                                        #   Parent Loop BB1_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ecx, %rbp
	movq	%rbp, %rcx
	shlq	$6, %rcx
	movq	48(%rdi,%rcx), %rcx
	movl	(%rcx,%rdx,4), %edi
	movb	%r15b, %cl
	shll	%cl, %edi
	movb	%al, %cl
	sarl	%cl, %edi
	testl	%esi, %esi
	movl	$0, %ecx
	jne	.LBB1_176
# BB#175:                               # %cond.true.332.i
                                        #   in Loop: Header=BB1_174 Depth=2
	movq	232(%r14), %rcx
	movl	(%rcx,%rbp,4), %ecx
.LBB1_176:                              # %cond.end.338.i
                                        #   in Loop: Header=BB1_174 Depth=2
	addl	%edi, %ecx
	movq	8(%r13), %rdi
	leaq	1(%rdi), %rbp
	movq	%rbp, 8(%r13)
	movb	%cl, (%rdi)
	incl	%esi
	cmpl	%esi, %r12d
	jg	.LBB1_177
	jmp	.LBB1_179
	.align	16, 0x90
.LBB1_183:                              #   in Loop: Header=BB1_163 Depth=1
	movq	%r14, %rbp
.LBB1_191:                              # %for.end.499.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	1(%rcx), %rax
	movq	%rax, 8(%r13)
	movb	%r11b, (%rcx)
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %r12          # 8-byte Reload
	jmp	.LBB1_192
.LBB1_165:                              # %for.cond.348.preheader.i
                                        #   in Loop: Header=BB1_163 Depth=1
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	movl	$0, %r9d
	movq	32(%rsp), %r11          # 8-byte Reload
	jle	.LBB1_179
	.align	16, 0x90
.LBB1_166:                              # %for.body.351.i
                                        #   Parent Loop BB1_163 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_168 Depth 3
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	jl	.LBB1_178
# BB#167:                               # %for.body.375.lr.ph.i
                                        #   in Loop: Header=BB1_166 Depth=2
	movq	(%r11), %rax
	movq	24(%rax), %rcx
	movslq	136(%r14), %rbp
	movq	%r9, %rdi
	shlq	$6, %rdi
	movl	(%rcx,%rdi), %r8d
	movl	4(%rcx,%rdi), %ebx
	xorl	%edx, %edx
	movq	120(%rsp), %rax         # 8-byte Reload
	divq	%rbx
	imulq	%rbp, %rax
	addq	128(%rsp), %rax         # 8-byte Folded Reload
	xorl	%edx, %edx
	divq	%r8
	movslq	%eax, %rdx
	xorl	%ebx, %ebx
	movl	52(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_168
	.align	16, 0x90
.LBB1_171:                              # %cond.end.395.for.body.375_crit_edge.i
                                        #   in Loop: Header=BB1_168 Depth=3
	addl	$-8, %eax
	movq	(%r11), %rcx
	movq	24(%rcx), %rcx
.LBB1_168:                              # %for.body.375.i
                                        #   Parent Loop BB1_163 Depth=1
                                        #     Parent Loop BB1_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	48(%rcx,%rdi), %rcx
	movl	(%rcx,%rdx,4), %ebp
	movb	%r15b, %cl
	shll	%cl, %ebp
	movb	%al, %cl
	sarl	%cl, %ebp
	testl	%ebx, %ebx
	movl	$0, %ecx
	jne	.LBB1_170
# BB#169:                               # %cond.true.390.i
                                        #   in Loop: Header=BB1_168 Depth=3
	movq	232(%r14), %rcx
	movl	(%rcx,%r9,4), %ecx
.LBB1_170:                              # %cond.end.395.i
                                        #   in Loop: Header=BB1_168 Depth=3
	addl	%ebp, %ecx
	movq	8(%r13), %rbp
	leaq	1(%rbp), %rsi
	movq	%rsi, 8(%r13)
	movb	%cl, (%rbp)
	incl	%ebx
	cmpl	%ebx, %r12d
	jg	.LBB1_171
.LBB1_178:                              # %for.end.403.i
                                        #   in Loop: Header=BB1_166 Depth=2
	incq	%r9
	cmpq	72(%rsp), %r9           # 8-byte Folded Reload
	jl	.LBB1_166
.LBB1_179:                              # %if.end.407.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movq	%r11, 32(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rdx         # 8-byte Reload
	incq	%rdx
	movslq	136(%r14), %rax
	movq	%r14, %rbp
	cmpq	%rax, %rdx
	setae	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	cmovaeq	%rcx, %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
.LBB1_192:                              # %while.cond.281.backedge.i
                                        #   in Loop: Header=BB1_163 Depth=1
	movq	8(%r13), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpq	64(%rsp), %rax          # 8-byte Folded Reload
	jb	.LBB1_199
# BB#193:
	movq	%rbp, %r14
	movq	56(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_194
.LBB1_109:                              # %if.then.50.i
	movl	$255, %esi
	movq	%rbp, %rdi
	movq	%r9, %rdx
	movq	%r9, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	callq	memset
	movq	8(%r13), %rbp
	addq	%rbx, %rbp
	movq	%rbp, 8(%r13)
	jmp	.LBB1_194
.LBB1_21:                               # %if.then.i.27
	movl	$.L.str.3, %edi
	movl	$244, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.8, %edi
	jmp	.LBB1_22
.LBB1_112:                              # %for.cond.preheader.i
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_116
# BB#113:                               # %for.body.lr.ph.i
	shlq	$2, %rax
	movq	48(%rsi), %rcx
	addq	%rax, %rcx
	movq	216(%r14), %rsi
	movq	%rcx, (%rsi)
	movl	$1, %ecx
	movl	$112, %esi
	cmpl	$1, 40(%rsp)            # 4-byte Folded Reload
	jle	.LBB1_116
# BB#114:
	movslq	40(%rsp), %rdi          # 4-byte Folded Reload
	.align	16, 0x90
.LBB1_115:                              # %for.body.for.body_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%r14), %rbp
	movq	216(%r14), %rbx
	movq	24(%rbp), %rbp
	movq	(%rbp,%rsi), %rbp
	addq	%rax, %rbp
	movq	%rbp, (%rbx,%rcx,8)
	incq	%rcx
	addq	$64, %rsi
	cmpq	%rdi, %rcx
	jl	.LBB1_115
.LBB1_116:                              # %if.end.77.i
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$8, %eax
	jne	.LBB1_124
# BB#117:                               # %if.end.77.i
	cmpl	%edx, %eax
	jne	.LBB1_124
# BB#118:                               # %while.cond.preheader.i
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	8(%r13), %rbp
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jae	.LBB1_194
# BB#119:                               # %for.cond.88.preheader.lr.ph.i
	movslq	40(%rsp), %rax          # 4-byte Folded Reload
	.align	16, 0x90
.LBB1_122:                              # %for.cond.88.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_123 Depth 2
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	jle	.LBB1_121
	.align	16, 0x90
.LBB1_123:                              # %for.body.91.i
                                        #   Parent Loop BB1_122 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	216(%r14), %rdx
	movq	(%rdx,%rcx,8), %rsi
	leaq	4(%rsi), %rdi
	movq	%rdi, (%rdx,%rcx,8)
	movq	232(%r14), %rdx
	movl	(%rdx,%rcx,4), %edx
	addl	(%rsi), %edx
	movq	8(%r13), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 8(%r13)
	movb	%dl, (%rsi)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB1_123
# BB#120:                               # %for.cond.88.while.cond.loopexit_crit_edge.i
                                        #   in Loop: Header=BB1_122 Depth=1
	movq	8(%r13), %rbp
.LBB1_121:                              # %while.cond.loopexit.i
                                        #   in Loop: Header=BB1_122 Depth=1
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB1_122
	jmp	.LBB1_194
.LBB1_124:                              # %if.else.104.i
	testb	$7, %al
	movq	%rax, %rdi
	je	.LBB1_125
# BB#137:                               # %if.else.153.i
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movslq	136(%r14), %rax
	movslq	140(%r14), %r9
	imulq	%rax, %r9
	imull	%eax, %r11d
	leal	7(%r11), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%r11,%rax), %eax
	sarl	$3, %eax
	movslq	%eax, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rcx
	leal	(,%rdx,8), %eax
	cltd
	movl	40(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	testl	%ecx, %ecx
	movl	%ecx, %r15d
	js	.LBB1_138
# BB#149:                               # %if.else.153.i
	testl	%edx, %edx
	movl	$0, %r10d
	movq	24(%rsp), %r11          # 8-byte Reload
	je	.LBB1_139
# BB#150:                               # %for.body.175.lr.ph.i
	movslq	%edx, %rax
	xorl	%r10d, %r10d
	xorl	%esi, %esi
	jmp	.LBB1_151
	.align	16, 0x90
.LBB1_157:                              # %for.inc.206.i.for.body.175.i_crit_edge
                                        #   in Loop: Header=BB1_151 Depth=1
	incq	%rax
	movl	(%r11), %edi
.LBB1_151:                              # %for.body.175.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r9, 208(%r14)
	jae	.LBB1_152
# BB#153:                               # %if.then.179.i
                                        #   in Loop: Header=BB1_151 Depth=1
	movq	%rdi, %rcx
	shll	%cl, %r10d
	movq	216(%r14), %rdi
	movq	232(%r14), %rdx
	movq	(%rdi,%rax,8), %rdi
	addl	-4(%rdi), %r10d
	addl	(%rdx,%rax,4), %r10d
	jmp	.LBB1_154
	.align	16, 0x90
.LBB1_152:                              #   in Loop: Header=BB1_151 Depth=1
	movq	%rdi, %rcx
.LBB1_154:                              # %if.end.191.i
                                        #   in Loop: Header=BB1_151 Depth=1
	addl	%ecx, %esi
	cmpl	$8, %esi
	jl	.LBB1_156
# BB#155:                               # %if.then.196.i
                                        #   in Loop: Header=BB1_151 Depth=1
	addl	$-8, %esi
	movl	%r10d, %edx
	movb	%sil, %cl
	sarl	%cl, %edx
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, 8(%r13)
	movb	%dl, (%rcx)
	movl	$1, %edx
	movb	%sil, %cl
	shll	%cl, %edx
	decl	%edx
	andl	%edx, %r10d
.LBB1_156:                              # %for.inc.206.i
                                        #   in Loop: Header=BB1_151 Depth=1
	leal	1(%rax), %ecx
	cmpl	%r15d, %ecx
	jl	.LBB1_157
	jmp	.LBB1_139
.LBB1_24:                               # %if.then.7.i
	movl	$.L.str.3, %edi
	movl	$251, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.9, %edi
.LBB1_22:                               # %cleanup.47
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-2, %r13d
	jmp	.LBB1_196
.LBB1_125:                              # %while.cond.110.preheader.i
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	8(%r13), %rbp
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jae	.LBB1_194
# BB#126:                               # %for.cond.115.preheader.lr.ph.i
	movslq	40(%rsp), %r9           # 4-byte Folded Reload
	leal	-8(,%r12,8), %r8d
	movq	%rdi, %rdx
	.align	16, 0x90
.LBB1_129:                              # %for.cond.115.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_130 Depth 2
                                        #       Child Loop BB1_132 Depth 3
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	movl	$0, %edi
	jle	.LBB1_128
	.align	16, 0x90
.LBB1_130:                              # %for.cond.119.preheader.i
                                        #   Parent Loop BB1_129 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_132 Depth 3
	movq	216(%r14), %rax
	movq	(%rax,%rdi,8), %rcx
	xorl	%esi, %esi
	cmpl	$8, %edx
	jl	.LBB1_198
# BB#131:                               #   in Loop: Header=BB1_130 Depth=2
	movl	%r8d, %eax
	.align	16, 0x90
.LBB1_132:                              # %for.body.122.i
                                        #   Parent Loop BB1_129 Depth=1
                                        #     Parent Loop BB1_130 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %ebx
	movb	%r15b, %cl
	shll	%cl, %ebx
	movb	%al, %cl
	sarl	%cl, %ebx
	testl	%esi, %esi
	movl	$0, %ecx
	jne	.LBB1_134
# BB#133:                               # %cond.true.131.i
                                        #   in Loop: Header=BB1_132 Depth=3
	movq	232(%r14), %rcx
	movl	(%rcx,%rdi,4), %ecx
.LBB1_134:                              # %cond.end.136.i
                                        #   in Loop: Header=BB1_132 Depth=3
	addl	%ebx, %ecx
	movq	8(%r13), %rbp
	leaq	1(%rbp), %rbx
	movq	%rbx, 8(%r13)
	movb	%cl, (%rbp)
	incl	%esi
	movq	216(%r14), %rbp
	movq	(%rbp,%rdi,8), %rcx
	addl	$-8, %eax
	cmpl	%esi, %r12d
	jg	.LBB1_132
# BB#135:                               #   in Loop: Header=BB1_130 Depth=2
	leaq	(%rbp,%rdi,8), %rax
	jmp	.LBB1_136
	.align	16, 0x90
.LBB1_198:                              #   in Loop: Header=BB1_130 Depth=2
	leaq	(%rax,%rdi,8), %rax
.LBB1_136:                              # %for.end.144.i
                                        #   in Loop: Header=BB1_130 Depth=2
	addq	$4, %rcx
	movq	%rcx, (%rax)
	incq	%rdi
	cmpq	%r9, %rdi
	jl	.LBB1_130
# BB#127:                               # %for.cond.115.while.cond.110.loopexit_crit_edge.i
                                        #   in Loop: Header=BB1_129 Depth=1
	movq	8(%r13), %rbp
.LBB1_128:                              # %while.cond.110.loopexit.i
                                        #   in Loop: Header=BB1_129 Depth=1
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB1_129
	jmp	.LBB1_194
.LBB1_44:                               # %for.end.108.i
	cmpl	$2, %ecx
	jne	.LBB1_50
# BB#45:                                # %sw.bb.i
	movl	$1, 152(%r14)
	jmp	.LBB1_51
.LBB1_138:
	xorl	%r10d, %r10d
	movq	24(%rsp), %r11          # 8-byte Reload
.LBB1_139:                              # %while.cond.210.preheader.i
	movq	8(%r13), %rbp
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jae	.LBB1_194
# BB#140:                               # %for.cond.215.preheader.lr.ph.i
	movslq	%r15d, %r8
	.align	16, 0x90
.LBB1_141:                              # %for.cond.215.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_142 Depth 2
	movq	208(%r14), %rax
	testl	%r15d, %r15d
	movl	$0, %edx
	jle	.LBB1_147
	.align	16, 0x90
.LBB1_142:                              # %for.body.218.i
                                        #   Parent Loop BB1_141 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r11), %ecx
	cmpq	%r9, %rax
	jae	.LBB1_144
# BB#143:                               # %if.then.222.i
                                        #   in Loop: Header=BB1_142 Depth=2
	shll	%cl, %r10d
	movq	216(%r14), %rdi
	movq	(%rdi,%rdx,8), %rbx
	leaq	4(%rbx), %rbp
	movq	%rbp, (%rdi,%rdx,8)
	movq	232(%r14), %rdi
	addl	(%rbx), %r10d
	addl	(%rdi,%rdx,4), %r10d
.LBB1_144:                              # %if.end.234.i
                                        #   in Loop: Header=BB1_142 Depth=2
	addl	%esi, %ecx
	cmpl	$8, %ecx
	jl	.LBB1_146
# BB#145:                               # %if.then.239.i
                                        #   in Loop: Header=BB1_142 Depth=2
	addl	$-8, %ecx
	movl	%r10d, %eax
	sarl	%cl, %eax
	movq	8(%r13), %rsi
	leaq	1(%rsi), %rdi
	movq	%rdi, 8(%r13)
	movb	%al, (%rsi)
	movl	$1, %eax
	shll	%cl, %eax
	decl	%eax
	andl	%eax, %r10d
	movq	208(%r14), %rax
.LBB1_146:                              # %for.inc.250.i
                                        #   in Loop: Header=BB1_142 Depth=2
	incq	%rdx
	cmpq	%r8, %rdx
	movl	%ecx, %esi
	jl	.LBB1_142
.LBB1_147:                              # %for.end.252.i
                                        #   in Loop: Header=BB1_141 Depth=1
	incq	%rax
	movq	%rax, 208(%r14)
	testl	%esi, %esi
	je	.LBB1_148
# BB#158:                               # %land.lhs.true.257.i
                                        #   in Loop: Header=BB1_141 Depth=1
	movslq	136(%r14), %rcx
	xorl	%edx, %edx
	divq	%rcx
	testq	%rdx, %rdx
	jne	.LBB1_160
# BB#159:                               # %if.then.264.i
                                        #   in Loop: Header=BB1_141 Depth=1
	movl	$8, %ecx
	subl	%esi, %ecx
	shll	%cl, %r10d
	movq	8(%r13), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%r13)
	movb	%r10b, (%rax)
	xorl	%esi, %esi
	xorl	%r10d, %r10d
	jmp	.LBB1_160
	.align	16, 0x90
.LBB1_148:                              #   in Loop: Header=BB1_141 Depth=1
	xorl	%esi, %esi
.LBB1_160:                              # %while.cond.210.backedge.i
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	8(%r13), %rbp
	cmpq	64(%rsp), %rbp          # 8-byte Folded Reload
	jb	.LBB1_141
.LBB1_194:                              # %process_one_trunk.exit
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	200(%r14), %rax
	movq	%rax, 200(%r14)
	decq	%rbp
	movq	%rbp, 8(%r13)
	movl	$-1, %r13d
	cmpq	192(%r14), %rax
	je	.LBB1_196
# BB#195:                               # %select.mid502
	movl	$1, %r13d
.LBB1_196:                              # %cleanup.47
	movl	%r13d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_48:                               # %if.else.115.i
	cmpl	$4, %eax
	jne	.LBB1_50
# BB#49:                                # %if.then.118.i
	movl	$3, 152(%r14)
	jmp	.LBB1_51
.LBB1_50:                               # %sw.default.i
	movl	$2, 152(%r14)
.LBB1_51:                               # %sw.epilog.i
	movl	156(%r14), %ecx
	cmpl	$1, %ecx
	sbbl	%edx, %edx
	orl	%ebx, %edx
	testl	%ecx, %ecx
	movl	%edx, 228(%r14)
	movl	$1, %edx
	cmovel	%eax, %edx
	movl	%edx, 224(%r14)
	cmpl	$12, %r9d
	jne	.LBB1_53
# BB#52:                                # %if.then.136.i
	movl	$16, (%r11)
	movl	$16, %r9d
.LBB1_53:                               # %if.end.138.i
	movq	%r11, 24(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	imull	%esi, %eax
	imull	%r9d, %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	sarl	$3, %eax
	imull	%r10d, %eax
	cltq
	movq	%rax, 192(%r14)
	movl	20(%r8), %eax
	addl	$-3, %eax
	cmpl	$1, %eax
	ja	.LBB1_83
# BB#54:                                # %if.then.155.i
	movq	24(%r8), %rax
	movl	24(%rax), %ecx
	movl	$-1, %edi
	shll	%cl, %edi
	movl	%edi, 56(%rsp)          # 4-byte Spill
	decl	%ecx
	movl	$1, %edi
	shll	%cl, %edi
	movl	%edi, 64(%rsp)          # 4-byte Spill
	cmpl	$3, %edx
	jne	.LBB1_83
# BB#55:                                # %for.cond.preheader.i.i
	movl	96(%rax), %ebp
	movl	160(%rax), %r15d
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	shll	$2, %esi
	movl	$1, %edx
	movl	$.L.str.12, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	movl	136(%r14), %esi
	shll	$2, %esi
	movl	$1, %edx
	movl	$.L.str.12, %ecx
	callq	*88(%rdi)
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	movl	136(%r14), %esi
	shll	$2, %esi
	movl	$1, %edx
	movl	$.L.str.12, %ecx
	callq	*88(%rdi)
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB1_83
# BB#56:                                # %for.cond.preheader.i.i
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB1_83
# BB#57:                                # %for.cond.preheader.i.i
	cmpq	$0, 80(%rsp)            # 8-byte Folded Reload
	je	.LBB1_83
# BB#58:                                # %for.cond.32.preheader.i.i
	cmpl	$0, 140(%r14)
	movq	32(%rsp), %rdi          # 8-byte Reload
	je	.LBB1_82
# BB#59:                                # %for.cond.37.preheader.lr.ph.i.i
	testl	%ebp, %ebp
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	je	.LBB1_61
# BB#60:                                # %select.mid
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
.LBB1_61:                               # %select.end
	testl	%r15d, %r15d
	je	.LBB1_63
# BB#62:                                # %select.mid505
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
.LBB1_63:                               # %select.end504
	notl	56(%rsp)                # 4-byte Folded Spill
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm7   # xmm7 = mem[0],zero
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r10d, %r10d
.LBB1_64:                               # %for.cond.37.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_73 Depth 2
	movq	(%rdi), %rax
	movq	24(%rax), %rcx
	movl	4(%rcx), %esi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rsi
	testq	%rdx, %rdx
	jne	.LBB1_69
# BB#65:                                # %if.then.48.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	cmpl	$0, 148(%r14)
	je	.LBB1_67
# BB#66:                                # %if.then.48.get_scaled_idx.exit_crit_edge.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%r10, %r15
	movq	%rdi, %rbx
	movl	136(%r14), %edi
	movl	(%rcx), %ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_68
.LBB1_67:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%rdi, %rbx
	xorl	%edx, %edx
	movq	%r10, %rax
	movq	%r10, %r15
	divq	%rsi
	movslq	136(%r14), %rdi
	imulq	%rdi, %rax
	movl	(%rcx), %ebp
	xorl	%edx, %edx
	divq	%rbp
.LBB1_68:                               # %get_scaled_idx.exit.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	48(%rcx), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movslq	%edi, %rax
	shlq	$2, %rax
	movl	%ebp, %ecx
	xorl	%edx, %edx
	divq	%rcx
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	movq	(%rdi), %rax
	movq	24(%rax), %rcx
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	%r15, %r10
.LBB1_69:                               # %for.inc.67.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movl	68(%rcx), %esi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rsi
	testq	%rdx, %rdx
	jne	.LBB1_89
# BB#70:                                # %if.then.48.1.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	cmpl	$0, 148(%r14)
	je	.LBB1_87
# BB#71:                                # %if.then.48.1.get_scaled_idx.exit.1_crit_edge.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%r10, %r15
	movq	%rdi, %rbx
	movl	136(%r14), %edi
	movl	64(%rcx), %ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_88
.LBB1_87:                               # %if.end.i.1.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%rdi, %rbx
	xorl	%edx, %edx
	movq	%r10, %rax
	movq	%r10, %r15
	divq	%rsi
	movslq	136(%r14), %rdi
	imulq	%rdi, %rax
	movl	64(%rcx), %ebp
	xorl	%edx, %edx
	divq	%rbp
.LBB1_88:                               # %get_scaled_idx.exit.1.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	112(%rcx), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movslq	%edi, %rax
	shlq	$2, %rax
	movl	%ebp, %ecx
	xorl	%edx, %edx
	divq	%rcx
	movq	96(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	movq	(%rdi), %rax
	movq	24(%rax), %rcx
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	%r15, %r10
.LBB1_89:                               # %for.inc.67.1.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movl	132(%rcx), %esi
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rsi
	testq	%rdx, %rdx
	jne	.LBB1_94
# BB#90:                                # %if.then.48.2.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	cmpl	$0, 148(%r14)
	je	.LBB1_92
# BB#91:                                # %if.then.48.2.get_scaled_idx.exit.2_crit_edge.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%r10, %r15
	movq	%rdi, %rbx
	movl	136(%r14), %edi
	movl	128(%rcx), %ebp
	movq	128(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_93
.LBB1_92:                               # %if.end.i.2.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	%rdi, %rbx
	xorl	%edx, %edx
	movq	%r10, %rax
	movq	%r10, %r15
	divq	%rsi
	movslq	136(%r14), %rdi
	imulq	%rdi, %rax
	movl	128(%rcx), %ebp
	xorl	%edx, %edx
	divq	%rbp
.LBB1_93:                               # %get_scaled_idx.exit.2.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	176(%rcx), %rcx
	leaq	(%rcx,%rax,4), %rsi
	movslq	%edi, %rax
	shlq	$2, %rax
	movl	%ebp, %ecx
	xorl	%edx, %edx
	divq	%rcx
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
	movq	%rbx, %rdi
	movsd	.LCPI1_0(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI1_1(%rip), %xmm5   # xmm5 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm6   # xmm6 = mem[0],zero
	movsd	.LCPI1_3(%rip), %xmm7   # xmm7 = mem[0],zero
	movq	%r15, %r10
.LBB1_94:                               # %for.inc.67.2.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movl	136(%r14), %ebp
	testl	%ebp, %ebp
	je	.LBB1_81
# BB#72:                                # %for.cond.76.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	movq	(%rdi), %rax
	movq	24(%rax), %r11
	movq	48(%r11), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	112(%r11), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	176(%r11), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB1_73:                               # %for.cond.76.preheader.i.i
                                        #   Parent Loop BB1_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rcx
	movl	(%r11), %r15d
	movl	64(%r11), %esi
	xorl	%edx, %edx
	divq	%r15
	movq	%rax, %rdi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx,%rax,4), %ebx
	movl	128(%r11), %esi
	xorl	%edx, %edx
	movq	%rcx, %rax
	divq	%rsi
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	movl	(%rdx,%rax,4), %eax
	subl	52(%rsp), %ebx          # 4-byte Folded Reload
	subl	64(%rsp), %eax          # 4-byte Folded Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	cvtsi2sdl	(%rdx,%rdi,4), %xmm0
	cvtsi2sdl	%eax, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebx, %xmm2
	movapd	%xmm2, %xmm3
	mulsd	%xmm5, %xmm3
	addsd	%xmm0, %xmm3
	mulsd	%xmm6, %xmm1
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	mulsd	%xmm7, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ebx
	movl	56(%rsp), %r9d          # 4-byte Reload
	cmpl	%r9d, %eax
	movl	%eax, %r8d
	cmoval	%r9d, %r8d
	testl	%eax, %eax
	movl	$0, %eax
	cmovsl	%eax, %r8d
	cmpl	%r9d, %edx
	movl	%edx, %r13d
	cmoval	%r9d, %r13d
	testl	%edx, %edx
	cmovsl	%eax, %r13d
	cmpl	%r9d, %ebx
	movl	%ebx, %edi
	cmoval	%r9d, %edi
	testl	%ebx, %ebx
	cmovsl	%eax, %edi
	cmpl	$0, 148(%r14)
	movq	%rsi, %rax
	jne	.LBB1_75
# BB#74:                                # %if.end.i.15.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movl	4(%r11), %ebx
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rbx
	movslq	%ebp, %rdx
	imulq	%rdx, %rax
	addq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r15
.LBB1_75:                               # %get_scaled_idx.exit17.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%r8d, (%rdx,%rax,4)
	cmpl	$0, 148(%r14)
	movq	%rsi, %rax
	jne	.LBB1_77
# BB#76:                                # %if.end.i.15.1.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movl	64(%r11), %ebp
	movl	68(%r11), %ebx
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rbx
	movslq	136(%r14), %rdx
	imulq	%rdx, %rax
	addq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rbp
.LBB1_77:                               # %get_scaled_idx.exit17.1.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movq	112(%rsp), %rdx         # 8-byte Reload
	movl	%r13d, (%rdx,%rax,4)
	cmpl	$0, 148(%r14)
	jne	.LBB1_79
# BB#78:                                # %if.end.i.15.2.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movl	128(%r11), %esi
	movl	132(%r11), %ebp
	xorl	%edx, %edx
	movq	%r10, %rax
	divq	%rbp
	movslq	136(%r14), %rdx
	imulq	%rdx, %rax
	addq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rsi
.LBB1_79:                               # %get_scaled_idx.exit17.2.i.i
                                        #   in Loop: Header=BB1_73 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%edi, (%rax,%rsi,4)
	leaq	1(%rcx), %rax
	movslq	136(%r14), %rbp
	cmpq	%rbp, %rax
	jb	.LBB1_73
# BB#80:                                #   in Loop: Header=BB1_64 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax,%rcx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
.LBB1_81:                               # %for.inc.178.i.i
                                        #   in Loop: Header=BB1_64 Depth=1
	incq	%r10
	movslq	140(%r14), %rax
	cmpq	%rax, %r10
	jb	.LBB1_64
.LBB1_82:                               # %for.cond.181.preheader.i.i
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	8(%r14), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.12, %edx
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB1_83:                               # %if.end.157.i
	movq	8(%r14), %rax
	movq	128(%r14), %rcx
	movq	200(%rax), %rdi
	movl	16(%rcx), %esi
	shll	$3, %esi
	movl	$1, %edx
	movl	$.L.str.10, %ecx
	callq	*88(%rdi)
	movq	%rax, 216(%r14)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB1_196
# BB#84:                                # %if.end.169.i
	movq	8(%r14), %rax
	movq	128(%r14), %rcx
	movq	200(%rax), %rdi
	movl	16(%rcx), %esi
	shll	$2, %esi
	movl	$1, %edx
	movl	$.L.str.11, %ecx
	callq	*88(%rdi)
	movq	%rax, 232(%r14)
	testq	%rax, %rax
	je	.LBB1_196
# BB#85:                                # %for.cond.186.preheader.i
	leaq	224(%r14), %r10
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %r9
	cmpl	$0, 16(%r9)
	je	.LBB1_86
# BB#95:                                # %for.body.191.lr.ph.i
	movq	24(%r9), %rdi
	addq	$32, %rdi
	xorl	%ebp, %ebp
	movl	$128, %r8d
	movq	24(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB1_96:                               # %for.body.191.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdi)
	movl	$0, %ebx
	je	.LBB1_98
# BB#97:                                # %if.then.197.i
                                        #   in Loop: Header=BB1_96 Depth=1
	movl	(%rdx), %esi
	movl	%esi, %ecx
	decl	%ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	testb	$7, %sil
	cmovel	%r8d, %ebx
.LBB1_98:                               # %for.inc.210.i
                                        #   in Loop: Header=BB1_96 Depth=1
	movl	%ebx, (%rax,%rbp,4)
	incq	%rbp
	addq	$64, %rdi
	cmpl	16(%r9), %ebp
	jb	.LBB1_96
	jmp	.LBB1_99
.LBB1_86:
	movq	24(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB1_99
.Lfunc_end1:
	.size	s_opjd_process, .Lfunc_end1-s_opjd_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_opjd_release,@function
s_opjd_release:                         # @s_opjd_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$0, 112(%rbx)
	je	.LBB2_12
# BB#1:                                 # %if.end
	movq	128(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_3
# BB#2:                                 # %if.then.1
	callq	opj_image_destroy
.LBB2_3:                                # %if.end.3
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	callq	opj_stream_destroy
.LBB2_5:                                # %if.end.7
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_7
# BB#6:                                 # %if.then.10
	callq	opj_destroy_codec
.LBB2_7:                                # %if.end.12
	movq	160(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_9
# BB#8:                                 # %if.then.14
	movq	8(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.13, %edx
	callq	*24(%rdi)
.LBB2_9:                                # %if.end.19
	movq	216(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_11
# BB#10:                                # %if.then.21
	movq	8(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.14, %edx
	callq	*24(%rdi)
.LBB2_11:                               # %if.end.29
	movq	232(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_12
# BB#13:                                # %if.then.31
	movq	8(%rbx), %rax
	movq	200(%rax), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.15, %edx
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB2_12:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	s_opjd_release, .Lfunc_end2-s_opjd_release
	.cfi_endproc

	.align	16, 0x90
	.type	s_opjd_set_defaults,@function
s_opjd_set_defaults:                    # @s_opjd_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$2, 152(%rdi)
	retq
.Lfunc_end3:
	.size	s_opjd_set_defaults, .Lfunc_end3-s_opjd_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_opjd_set_codec_format,@function
s_opjd_set_codec_format:                # @s_opjd_set_codec_format
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	subq	$8264, %rsp             # imm = 0x2048
.Ltmp17:
	.cfi_def_cfa_offset 8288
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	opj_set_default_decoder_parameters
	movl	%ebp, %edi
	callq	opj_create_decompress
	movq	%rax, %rcx
	movq	%rcx, 112(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB4_9
# BB#1:                                 # %if.end
	movq	stderr(%rip), %rdx
	movl	$sjpx_error_callback, %esi
	movq	%rcx, %rdi
	callq	opj_set_error_handler
	movq	112(%rbx), %rdi
	movq	stderr(%rip), %rdx
	movl	$sjpx_info_callback, %esi
	callq	opj_set_info_handler
	movq	112(%rbx), %rdi
	movq	stderr(%rip), %rdx
	movl	$sjpx_warning_callback, %esi
	callq	opj_set_warning_handler
	cmpl	$4, 152(%rbx)
	jne	.LBB4_3
# BB#2:                                 # %if.then.9
	orb	$1, 8256(%rsp)
.LBB4_3:                                # %if.end.10
	movq	112(%rbx), %rdi
	leaq	8(%rsp), %rsi
	callq	opj_setup_decoder
	testl	%eax, %eax
	je	.LBB4_4
# BB#6:                                 # %if.end.15
	movl	$1, %edi
	callq	opj_stream_default_create
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	.LBB4_7
# BB#8:                                 # %if.end.21
	movl	$sjpx_stream_read, %esi
	movq	%rax, %rdi
	callq	opj_stream_set_read_function
	movq	120(%rbx), %rdi
	movl	$sjpx_stream_skip, %esi
	callq	opj_stream_set_skip_function
	movq	120(%rbx), %rdi
	movl	$sjpx_stream_seek, %esi
	callq	opj_stream_set_seek_function
	xorl	%eax, %eax
	jmp	.LBB4_9
.LBB4_4:                                # %if.then.13
	movl	$.L.str.3, %edi
	movl	$138, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.4, %edi
	jmp	.LBB4_5
.LBB4_7:                                # %if.then.19
	movl	$.L.str.3, %edi
	movl	$146, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.5, %edi
.LBB4_5:                                # %cleanup
	xorl	%eax, %eax
	callq	errprintf_nomem
	movl	$-2, %eax
.LBB4_9:                                # %cleanup
	addq	$8264, %rsp             # imm = 0x2048
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	s_opjd_set_codec_format, .Lfunc_end4-s_opjd_set_codec_format
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_error_callback,@function
sjpx_error_callback:                    # @sjpx_error_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$.L.str.3, %edi
	movl	$71, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	popq	%rbx
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end5:
	.size	sjpx_error_callback, .Lfunc_end5-sjpx_error_callback
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_info_callback,@function
sjpx_info_callback:                     # @sjpx_info_callback
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end6:
	.size	sjpx_info_callback, .Lfunc_end6-sjpx_info_callback
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_warning_callback,@function
sjpx_warning_callback:                  # @sjpx_warning_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$.L.str.3, %edi
	movl	$84, %esi
	callq	dprintf_file_and_line
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	popq	%rbx
	jmp	errprintf_nomem         # TAILCALL
.Lfunc_end7:
	.size	sjpx_warning_callback, .Lfunc_end7-sjpx_warning_callback
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_stream_read,@function
sjpx_stream_read:                       # @sjpx_stream_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -24
.Ltmp28:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rcx
	movq	8(%r14), %rbx
	movq	16(%r14), %rsi
	subq	%rsi, %rbx
	movq	$-1, %rax
	je	.LBB8_2
# BB#1:                                 # %if.end.3
	cmpq	%rcx, %rbx
	cmovaq	%rcx, %rbx
	addq	(%r14), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, 16(%r14)
	movq	%rbx, %rax
.LBB8_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end8:
	.size	sjpx_stream_read, .Lfunc_end8-sjpx_stream_read
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_stream_skip,@function
sjpx_stream_skip:                       # @sjpx_stream_skip
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rsi), %rax
	movq	16(%rsi), %rcx
	subq	%rcx, %rax
	cmpq	%rdi, %rax
	cmovaeq	%rdi, %rax
	addq	%rcx, %rax
	movq	%rax, 16(%rsi)
	retq
.Lfunc_end9:
	.size	sjpx_stream_skip, .Lfunc_end9-sjpx_stream_skip
	.cfi_endproc

	.align	16, 0x90
	.type	sjpx_stream_seek,@function
sjpx_stream_seek:                       # @sjpx_stream_seek
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpq	%rdi, 8(%rsi)
	jb	.LBB10_2
# BB#1:                                 # %if.end
	movq	%rdi, 16(%rsi)
	movl	$1, %eax
.LBB10_2:                               # %cleanup
	retq
.Lfunc_end10:
	.size	sjpx_stream_seek, .Lfunc_end10-sjpx_stream_seek
	.cfi_endproc

	.type	st_jpxd_state,@object   # @st_jpxd_state
	.section	.rodata,"a",@progbits
	.align	8
st_jpxd_state:
	.long	240                     # 0xf0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_jpxd_state, 64

	.type	s_jpxd_template,@object # @s_jpxd_template
	.globl	s_jpxd_template
	.align	8
s_jpxd_template:
	.quad	st_jpxd_state
	.quad	s_opjd_init
	.quad	s_opjd_process
	.long	1024                    # 0x400
	.long	1024                    # 0x400
	.quad	s_opjd_release
	.quad	s_opjd_set_defaults
	.quad	0
	.size	s_jpxd_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"JPXDecode filter state"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"s_opjd_accumulate_input(alloc)"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s_opjd_accumulate_input(resize)"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"./base/sjpx_openjpeg.c"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"openjpeg: failed to setup the decoder!\n"
	.size	.L.str.4, 40

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"openjpeg: failed to open a byte stream!\n"
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"openjpeg error: %s"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"openjpeg warning: %s"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"openjpeg: failed to read header\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"openjpeg: failed to decode image!\n"
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"decode_image(pdata)"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"decode_image(sign_comps)"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"s_jpxd_ycc_to_rgb"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"s_opjd_release(sb.data)"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"s_opjd_release(pdata)"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"s_opjd_release(sign_comps)"
	.size	.L.str.15, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
