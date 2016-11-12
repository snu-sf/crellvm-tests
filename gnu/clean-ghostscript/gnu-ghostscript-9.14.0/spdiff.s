	.text
	.file	"spdiff.bc"
	.align	16, 0x90
	.type	s_PDiffE_init,@function
s_PDiffE_init:                          # @s_PDiffE_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movslq	112(%rdi), %rcx
	movzbl	s_PDiffE_init.cb_values(%rcx), %edx
	imull	%eax, %ecx
	imull	116(%rdi), %ecx
	leal	7(%rcx), %esi
	sarl	$3, %esi
	movl	%esi, 120(%rdi)
	negl	%ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	addl	$255, %esi
	movb	%sil, 124(%rdi)
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	cmovgl	%ecx, %eax
	addl	%edx, %eax
	movl	%eax, 128(%rdi)
	movl	$0, 132(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_PDiffE_init, .Lfunc_end0-s_PDiffE_init
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.align	16, 0x90
	.type	s_PDiff_process,@function
s_PDiff_process:                        # @s_PDiff_process
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
	subq	$280, %rsp              # imm = 0x118
.Ltmp6:
	.cfi_def_cfa_offset 336
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
	movl	%ecx, 204(%rsp)         # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	%rsi, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movb	124(%r14), %al
	movb	%al, 191(%rsp)          # 1-byte Spill
	movl	108(%r14), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	112(%r14), %edx
	imull	%ecx, %edx
	sarl	$3, %edx
	movl	%edx, 228(%rsp)         # 4-byte Spill
	notb	%al
	movb	%al, 159(%rsp)          # 1-byte Spill
	movl	$8, %eax
	movl	$8, %edx
	subl	%ecx, %edx
	movl	%edx, 124(%rsp)         # 4-byte Spill
	movl	%ecx, %edx
	andl	$7, %edx
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movl	$8, %edi
	subl	%edx, %edi
	movl	%edi, 92(%rsp)          # 4-byte Spill
	leal	(%rcx,%rcx), %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	andl	$6, %edx
	movl	%edx, 104(%rsp)         # 4-byte Spill
	subl	%edx, %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leal	-1(%rcx), %eax
	leaq	2(%rax,%rax), %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	leaq	136(%r14,%rax,4), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	incq	%rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	movq	%rax, %rdi
	andq	%rdx, %rdi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	leaq	4(%rdx), %rdx
	andq	%rax, %rdx
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rax, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	(%rsi), %r13
	movq	8(%rbx), %rbp
	leaq	136(%r14), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	136(%r14), %r15d
	leaq	140(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leal	1(%rcx), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	leaq	(%rdx,%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	156(%r14), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	152(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, 224(%rsp)           # 4-byte Folded Spill
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_365:                              # %if.then.1966
                                        #   in Loop: Header=BB1_1 Depth=1
	testb	%dl, %dl
	je	.LBB1_367
# BB#366:                               # %if.then.1970
                                        #   in Loop: Header=BB1_1 Depth=1
	movb	(%rbp), %al
	andb	159(%rsp), %al          # 1-byte Folded Reload
	movb	(%r13), %cl
	andb	%dl, %cl
	orb	%al, %cl
	movb	%cl, (%rbp)
.LBB1_367:                              # %if.end.1980
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	216(%rsp), %rax         # 8-byte Reload
	cmpq	8(%rax), %r13
	jae	.LBB1_369
# BB#368:                               # %land.lhs.true.1984
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	16(%rbx), %rbp
	jb	.LBB1_1
	jmp	.LBB1_369
	.align	16, 0x90
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_62:                               # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	cmpl	$7, %edi
	jg	.LBB1_67
# BB#63:                                # %if.then.27
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_64
# BB#65:                                # %for.body.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_66:                               # %for.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	movl	124(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %eax
	movl	%r15d, %esi
	movb	%dil, %cl
	shrl	%cl, %esi
	orl	%eax, %esi
	xorl	%r15d, %esi
	movb	%sil, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_66
	jmp	.LBB1_364
.LBB1_208:                              # %sw.bb.1206
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	movq	72(%rsp), %r12          # 8-byte Reload
	cmpl	%r12d, %r8d
	movq	136(%rsp), %r11         # 8-byte Reload
	jl	.LBB1_227
	.align	16, 0x90
.LBB1_209:                              # %for.cond.1213.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_216 Depth 3
                                        #       Child Loop BB1_223 Depth 3
	testl	%r12d, %r12d
	jle	.LBB1_225
# BB#210:                               # %for.body.1216.lr.ph
                                        #   in Loop: Header=BB1_209 Depth=2
	movb	%bl, 175(%rsp)          # 1-byte Spill
	xorl	%esi, %esi
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rcx
	movq	232(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	je	.LBB1_218
# BB#211:                               # %vector.memcheck2288
                                        #   in Loop: Header=BB1_209 Depth=2
	leaq	1(%rbx), %rax
	leaq	(%rbx,%r11), %rcx
	movq	%rbx, %r15
	leaq	1(%r13), %rsi
	leaq	(%r13,%r11), %rdi
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpq	%rbp, %rax
	setbe	%r10b
	movq	208(%rsp), %rbx         # 8-byte Reload
	cmpq	%rcx, %rbx
	setbe	%dl
	cmpq	%rdi, %rax
	setbe	%al
	cmpq	%rcx, %rsi
	setbe	%r9b
	cmpq	%rdi, %rbx
	setbe	%cl
	cmpq	%rbp, %rsi
	setbe	%dil
	xorl	%esi, %esi
	testb	%dl, %r10b
	jne	.LBB1_212
# BB#213:                               # %vector.memcheck2288
                                        #   in Loop: Header=BB1_209 Depth=2
	andb	%r9b, %al
	jne	.LBB1_212
# BB#214:                               # %vector.memcheck2288
                                        #   in Loop: Header=BB1_209 Depth=2
	andb	%dil, %cl
	movq	%r13, %rcx
	movq	%r15, %rbx
	movq	%rbx, %rdx
	jne	.LBB1_218
# BB#215:                               # %vector.body2256.preheader
                                        #   in Loop: Header=BB1_209 Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rcx
	leaq	(%rbx,%rax), %rdx
	leaq	5(%rbx), %rsi
	leaq	5(%r13), %rdi
	movq	%rax, %rbp
	movq	80(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB1_216:                              # %vector.body2256
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	-16(%rax), %xmm3
	movdqu	(%rax), %xmm4
	psubd	%xmm3, %xmm1
	psubd	%xmm4, %xmm2
	movdqa	.LCPI1_0(%rip), %xmm3   # xmm3 = [255,255,255,255]
	pand	%xmm3, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm1
	movd	%xmm1, -4(%rsi)
	pand	%xmm3, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rsi)
	movd	-4(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rdi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$32, %rax
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$-8, %rbp
	jne	.LBB1_216
# BB#217:                               #   in Loop: Header=BB1_209 Depth=2
	movq	160(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_218
.LBB1_212:                              #   in Loop: Header=BB1_209 Depth=2
	movq	%r13, %rcx
	movq	%r15, %rbx
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB1_218:                              # %middle.block2257
                                        #   in Loop: Header=BB1_209 Depth=2
	cmpq	%rsi, %r11
	je	.LBB1_224
# BB#219:                               # %for.body.1216.preheader
                                        #   in Loop: Header=BB1_209 Depth=2
	movl	%esi, %eax
	orl	$1, %eax
	movl	100(%rsp), %edi         # 4-byte Reload
	subl	%eax, %edi
	testb	$1, %dil
	je	.LBB1_221
# BB#220:                               # %for.body.1216.prol
                                        #   in Loop: Header=BB1_209 Depth=2
	movzbl	1(%rcx), %edi
	movq	208(%rsp), %rbp         # 8-byte Reload
	subl	(%rbp,%rsi,4), %edi
	movb	%dil, 1(%rdx)
	incq	%rdx
	movzbl	1(%rcx), %edi
	leaq	1(%rcx), %rcx
	movl	%edi, (%rbp,%rsi,4)
	orq	$1, %rsi
.LBB1_221:                              # %for.body.1216.preheader.split
                                        #   in Loop: Header=BB1_209 Depth=2
	cmpl	%eax, %r12d
	je	.LBB1_224
# BB#222:                               # %for.body.1216.preheader.split.split
                                        #   in Loop: Header=BB1_209 Depth=2
	movl	%r12d, %eax
	subl	%esi, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rsi
	addq	$2, %rcx
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_223:                              # %for.body.1216
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rcx), %edi
	subl	-4(%rsi), %edi
	movb	%dil, -1(%rdx)
	movzbl	-1(%rcx), %edi
	movl	%edi, -4(%rsi)
	movzbl	(%rcx), %edi
	subl	(%rsi), %edi
	movb	%dil, (%rdx)
	movzbl	(%rcx), %edi
	movl	%edi, (%rsi)
	addq	$8, %rsi
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB1_223
.LBB1_224:                              # %for.cond.1213.for.inc.1232_crit_edge
                                        #   in Loop: Header=BB1_209 Depth=2
	addq	%r11, %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
	movb	175(%rsp), %bl          # 1-byte Reload
.LBB1_225:                              # %for.inc.1232
                                        #   in Loop: Header=BB1_209 Depth=2
	subl	%r12d, %r8d
	cmpl	%r12d, %r8d
	jge	.LBB1_209
# BB#226:                               # %for.cond.1209.for.end.1234_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	jmp	.LBB1_227
.LBB1_306:                              # %sw.bb.1520
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	168(%rsp), %r8d         # 4-byte Folded Reload
	movq	72(%rsp), %r10          # 8-byte Reload
	jl	.LBB1_313
	.align	16, 0x90
.LBB1_307:                              # %for.cond.1528.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_309 Depth 3
	testl	%r10d, %r10d
	jle	.LBB1_311
# BB#308:                               # %for.body.1531.lr.ph
                                        #   in Loop: Header=BB1_307 Depth=2
	leaq	2(%r13), %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %r9
	addq	$2, %rbx
	movl	%r10d, %edx
	movq	208(%rsp), %rsi         # 8-byte Reload
	.align	16, 0x90
.LBB1_309:                              # %for.body.1531
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rcx), %edi
	shll	$8, %edi
	movzbl	(%rcx), %ebp
	orl	%edi, %ebp
	movl	%ebp, %eax
	subl	(%rsi), %eax
	movb	%ah, -1(%rbx)  # NOREX
	movb	%al, (%rbx)
	movl	%ebp, (%rsi)
	addq	$4, %rsi
	addq	$2, %rcx
	addq	$2, %rbx
	decl	%edx
	jne	.LBB1_309
# BB#310:                               # %for.cond.1528.for.inc.1554_crit_edge
                                        #   in Loop: Header=BB1_307 Depth=2
	addq	176(%rsp), %r13         # 8-byte Folded Reload
	movq	%r9, %rbx
.LBB1_311:                              # %for.inc.1554
                                        #   in Loop: Header=BB1_307 Depth=2
	movl	168(%rsp), %eax         # 4-byte Reload
	subl	%eax, %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_307
# BB#312:                               # %for.cond.1523.for.end.1557_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	jmp	.LBB1_313
.LBB1_246:                              # %sw.bb.1261
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	movq	72(%rsp), %r12          # 8-byte Reload
	cmpl	%r12d, %r8d
	movq	136(%rsp), %r11         # 8-byte Reload
	jl	.LBB1_265
	.align	16, 0x90
.LBB1_247:                              # %for.cond.1268.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_254 Depth 3
                                        #       Child Loop BB1_261 Depth 3
	testl	%r12d, %r12d
	jle	.LBB1_263
# BB#248:                               # %for.body.1271.lr.ph
                                        #   in Loop: Header=BB1_247 Depth=2
	movb	%bl, 175(%rsp)          # 1-byte Spill
	xorl	%esi, %esi
	cmpq	$0, 160(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rcx
	movq	232(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	je	.LBB1_256
# BB#249:                               # %vector.memcheck2472
                                        #   in Loop: Header=BB1_247 Depth=2
	leaq	1(%rbx), %rcx
	leaq	(%rbx,%r11), %rsi
	movq	%rbx, %r15
	leaq	1(%r13), %rdi
	leaq	(%r13,%r11), %rbp
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpq	%rsi, %rax
	setbe	%r10b
	movq	128(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbx, %rcx
	setbe	%dl
	cmpq	%rbp, %rax
	setbe	%al
	cmpq	%rbx, %rdi
	setbe	%r9b
	cmpq	%rbp, %rcx
	setbe	%cl
	cmpq	%rsi, %rdi
	setbe	%dil
	xorl	%esi, %esi
	testb	%dl, %r10b
	jne	.LBB1_250
# BB#251:                               # %vector.memcheck2472
                                        #   in Loop: Header=BB1_247 Depth=2
	andb	%r9b, %al
	jne	.LBB1_250
# BB#252:                               # %vector.memcheck2472
                                        #   in Loop: Header=BB1_247 Depth=2
	andb	%dil, %cl
	movq	%r13, %rcx
	movq	%r15, %rbx
	movq	%rbx, %rdx
	jne	.LBB1_256
# BB#253:                               # %vector.body2440.preheader
                                        #   in Loop: Header=BB1_247 Depth=2
	movq	160(%rsp), %rdi         # 8-byte Reload
	leaq	(%r13,%rdi), %rcx
	leaq	(%rbx,%rdi), %rdx
	leaq	5(%rbx), %rax
	leaq	5(%r13), %rsi
	movq	80(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB1_254:                              # %vector.body2440
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movd	-4(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movd	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm2, %xmm2
	punpcklbw	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movdqu	-16(%rbp), %xmm2
	movdqu	(%rbp), %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rbp)
	movdqu	%xmm3, (%rbp)
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [255,255,255,255]
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -4(%rax)
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%rax)
	addq	$32, %rbp
	addq	$8, %rax
	addq	$8, %rsi
	addq	$-8, %rdi
	jne	.LBB1_254
# BB#255:                               #   in Loop: Header=BB1_247 Depth=2
	movq	160(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_256
.LBB1_250:                              #   in Loop: Header=BB1_247 Depth=2
	movq	%r13, %rcx
	movq	%r15, %rbx
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB1_256:                              # %middle.block2441
                                        #   in Loop: Header=BB1_247 Depth=2
	cmpq	%rsi, %r11
	je	.LBB1_262
# BB#257:                               # %for.body.1271.preheader
                                        #   in Loop: Header=BB1_247 Depth=2
	movl	%esi, %eax
	orl	$1, %eax
	movl	100(%rsp), %edi         # 4-byte Reload
	subl	%eax, %edi
	testb	$1, %dil
	je	.LBB1_259
# BB#258:                               # %for.body.1271.prol
                                        #   in Loop: Header=BB1_247 Depth=2
	movzbl	1(%rcx), %edi
	incq	%rcx
	movq	208(%rsp), %rbp         # 8-byte Reload
	addl	(%rbp,%rsi,4), %edi
	movl	%edi, (%rbp,%rsi,4)
	movb	%dil, 1(%rdx)
	incq	%rdx
	orq	$1, %rsi
.LBB1_259:                              # %for.body.1271.preheader.split
                                        #   in Loop: Header=BB1_247 Depth=2
	cmpl	%eax, %r12d
	je	.LBB1_262
# BB#260:                               # %for.body.1271.preheader.split.split
                                        #   in Loop: Header=BB1_247 Depth=2
	movl	%r12d, %eax
	subl	%esi, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rsi
	addq	$2, %rcx
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_261:                              # %for.body.1271
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rcx), %edi
	addl	-4(%rsi), %edi
	movl	%edi, -4(%rsi)
	movb	%dil, -1(%rdx)
	movzbl	(%rcx), %edi
	addl	(%rsi), %edi
	movl	%edi, (%rsi)
	movb	%dil, (%rdx)
	addq	$8, %rsi
	addq	$2, %rcx
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB1_261
.LBB1_262:                              # %for.cond.1268.for.inc.1283_crit_edge
                                        #   in Loop: Header=BB1_247 Depth=2
	addq	%r11, %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
	movb	175(%rsp), %bl          # 1-byte Reload
.LBB1_263:                              # %for.inc.1283
                                        #   in Loop: Header=BB1_247 Depth=2
	subl	%r12d, %r8d
	cmpl	%r12d, %r8d
	jge	.LBB1_247
# BB#264:                               # %for.cond.1264.for.end.1285_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	jmp	.LBB1_265
.LBB1_332:                              # %sw.bb.1584
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	168(%rsp), %r8d         # 4-byte Folded Reload
	movq	72(%rsp), %r11          # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_333:                              # %for.cond.1592.preheader
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_340 Depth 3
                                        #       Child Loop BB1_344 Depth 3
	testl	%r11d, %r11d
	movq	136(%rsp), %r15         # 8-byte Reload
	jle	.LBB1_346
# BB#334:                               # %for.body.1595.lr.ph
                                        #   in Loop: Header=BB1_333 Depth=2
	xorl	%eax, %eax
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	movq	%r13, %rcx
	movq	%rbx, %rdx
	je	.LBB1_342
# BB#335:                               # %vector.memcheck2656
                                        #   in Loop: Header=BB1_333 Depth=2
	leaq	1(%rbx), %rax
	movq	176(%rsp), %rcx         # 8-byte Reload
	leaq	(%rbx,%rcx), %rdi
	leaq	1(%r13), %rbp
	leaq	(%r13,%rcx), %rdx
	movq	208(%rsp), %rcx         # 8-byte Reload
	cmpq	%rdi, %rcx
	setbe	%r9b
	movq	128(%rsp), %rsi         # 8-byte Reload
	cmpq	%rsi, %rax
	setbe	%r10b
	cmpq	%rdx, %rcx
	setbe	%cl
	cmpq	%rsi, %rbp
	setbe	%sil
	cmpq	%rdx, %rax
	setbe	%dl
	cmpq	%rdi, %rbp
	setbe	%dil
	xorl	%eax, %eax
	testb	%r10b, %r9b
	jne	.LBB1_336
# BB#337:                               # %vector.memcheck2656
                                        #   in Loop: Header=BB1_333 Depth=2
	andb	%sil, %cl
	jne	.LBB1_336
# BB#338:                               # %vector.memcheck2656
                                        #   in Loop: Header=BB1_333 Depth=2
	andb	%dil, %dl
	movq	%r13, %rcx
	movq	%rbx, %rdx
	jne	.LBB1_342
# BB#339:                               # %vector.body2624.preheader
                                        #   in Loop: Header=BB1_333 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%r13,%rax), %rcx
	leaq	(%rbx,%rax), %rdx
	leaq	8(%rbx), %rsi
	movq	%rbx, %r9
	leaq	8(%r13), %rdi
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB1_340:                              # %vector.body2624
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_333 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-7(%rdi), %ebx
	pinsrw	$0, %ebx, %xmm0
	movzbl	-5(%rdi), %ebx
	pinsrw	$2, %ebx, %xmm0
	movzbl	-3(%rdi), %ebx
	pinsrw	$4, %ebx, %xmm0
	movzbl	-1(%rdi), %ebx
	pinsrw	$6, %ebx, %xmm0
	movdqa	.LCPI1_0(%rip), %xmm1   # xmm1 = [255,255,255,255]
	pand	%xmm1, %xmm0
	pslld	$8, %xmm0
	movzbl	-6(%rdi), %ebx
	pinsrw	$0, %ebx, %xmm2
	movzbl	-4(%rdi), %ebx
	pinsrw	$2, %ebx, %xmm2
	movzbl	-2(%rdi), %ebx
	pinsrw	$4, %ebx, %xmm2
	movzbl	(%rdi), %ebx
	pinsrw	$6, %ebx, %xmm2
	pand	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movdqu	(%rax), %xmm0
	paddd	%xmm2, %xmm0
	movdqu	%xmm0, (%rax)
	psrld	$8, %xmm0
	movdqa	%xmm0, 240(%rsp)
	movb	240(%rsp), %bl
	movb	%bl, -7(%rsi)
	movb	244(%rsp), %bl
	movb	%bl, -5(%rsi)
	movb	248(%rsp), %bl
	movb	%bl, -3(%rsi)
	movb	252(%rsp), %bl
	movb	%bl, -1(%rsi)
	movdqu	(%rax), %xmm0
	movdqa	%xmm0, 256(%rsp)
	movb	256(%rsp), %bl
	movb	%bl, -6(%rsi)
	movb	260(%rsp), %bl
	movb	%bl, -4(%rsi)
	movb	264(%rsp), %bl
	movb	%bl, -2(%rsi)
	movb	268(%rsp), %bl
	movb	%bl, (%rsi)
	addq	$16, %rax
	addq	$8, %rsi
	addq	$8, %rdi
	addq	$-4, %rbp
	jne	.LBB1_340
# BB#341:                               #   in Loop: Header=BB1_333 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%r9, %rbx
	jmp	.LBB1_342
.LBB1_336:                              #   in Loop: Header=BB1_333 Depth=2
	movq	%r13, %rcx
	movq	%rbx, %rdx
	.align	16, 0x90
.LBB1_342:                              # %middle.block2625
                                        #   in Loop: Header=BB1_333 Depth=2
	movq	%rbx, %rbp
	cmpq	%rax, %r15
	je	.LBB1_345
# BB#343:                               # %for.body.1595.preheader
                                        #   in Loop: Header=BB1_333 Depth=2
	movq	208(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rax,4), %rsi
	movl	%r11d, %edi
	subl	%eax, %edi
	addq	$2, %rcx
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_344:                              # %for.body.1595
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_333 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1(%rcx), %eax
	shll	$8, %eax
	movzbl	(%rcx), %ebx
	orl	%eax, %ebx
	addl	(%rsi), %ebx
	movl	%ebx, (%rsi)
	movb	%bh, -1(%rdx)  # NOREX
	movb	(%rsi), %al
	movb	%al, (%rdx)
	addq	$4, %rsi
	addq	$2, %rcx
	addq	$2, %rdx
	decl	%edi
	jne	.LBB1_344
.LBB1_345:                              # %for.cond.1592.for.inc.1621_crit_edge
                                        #   in Loop: Header=BB1_333 Depth=2
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	%rbp, %rbx
	addq	%rax, %rbx
	addq	%rax, %r13
.LBB1_346:                              # %for.inc.1621
                                        #   in Loop: Header=BB1_333 Depth=2
	movl	168(%rsp), %eax         # 4-byte Reload
	subl	%eax, %r8d
	cmpl	%eax, %r8d
	jge	.LBB1_333
	jmp	.LBB1_81
.LBB1_60:                               # %for.cond.123.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_61
# BB#82:                                # %for.body.126.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_83:                               # %for.body.126
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	shll	$7, %eax
	movl	%r15d, %ecx
	shrl	%ecx
	orl	%eax, %ecx
	xorl	%r15d, %ecx
	movb	%cl, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_83
	jmp	.LBB1_364
.LBB1_58:                               # %for.cond.141.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_59
# BB#84:                                # %for.body.144.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_85:                               # %for.body.144
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	shll	$5, %eax
	movl	%r15d, %ecx
	shrl	$3, %ecx
	orl	%eax, %ecx
	xorl	%r15d, %ecx
	movb	%cl, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_85
	jmp	.LBB1_364
.LBB1_56:                               # %for.cond.159.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_57
# BB#86:                                # %for.body.162.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_87:                               # %for.body.162
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	shll	$4, %eax
	movl	%r15d, %ecx
	shrl	$4, %ecx
	orl	%eax, %ecx
	xorl	%r15d, %ecx
	movb	%cl, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_87
	jmp	.LBB1_364
.LBB1_114:                              # %sw.bb.392
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	96(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_121
# BB#115:                               # %if.then.395
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_116:                              # %for.body.405
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_118 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %r10d
	cmovlel	%r8d, %r10d
	testl	%r10d, %r10d
	movl	108(%rsp), %r11d        # 4-byte Reload
	movl	104(%rsp), %eax         # 4-byte Reload
	jle	.LBB1_120
# BB#117:                               # %for.body.415.lr.ph
                                        #   in Loop: Header=BB1_116 Depth=2
	movslq	%r10d, %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_118:                              # %for.body.415
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movb	%r11b, %cl
	shll	%cl, %r15d
	movl	140(%r14,%rsi,4), %edi
	movb	%al, %cl
	shrl	%cl, %edi
	orl	%r15d, %edi
	movzbl	1(%r13,%rsi), %ebp
	movl	%ebp, %ecx
	notl	%ecx
	andl	%edi, %ecx
	andl	$85, %ecx
	addl	%ecx, %ecx
	xorl	%ebp, %edi
	xorl	%ecx, %edi
	movb	%dil, 1(%rbx,%rsi)
	movl	140(%r14,%rsi,4), %r15d
	movzbl	1(%r13,%rsi), %ecx
	movl	%ecx, 140(%r14,%rsi,4)
	leaq	1(%rsi), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB1_118
# BB#119:                               #   in Loop: Header=BB1_116 Depth=2
	leaq	1(%r13,%rsi), %r13
	leaq	1(%rbx,%rsi), %rbx
.LBB1_120:                              # %for.inc.445
                                        #   in Loop: Header=BB1_116 Depth=2
	subl	%r10d, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_116
	jmp	.LBB1_364
.LBB1_46:                               # %for.cond.501.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_47
# BB#127:                               # %for.body.504.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_128:                              # %for.body.504
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$6, %eax
	movzbl	1(%r13), %r15d
	incq	%r13
	movl	%r15d, %ecx
	shrl	$2, %ecx
	orl	%eax, %ecx
	movl	%r15d, %eax
	notl	%eax
	andl	%ecx, %eax
	andl	$85, %eax
	addl	%eax, %eax
	xorl	%r15d, %ecx
	xorl	%eax, %ecx
	movb	%cl, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_128
	jmp	.LBB1_364
.LBB1_44:                               # %for.cond.525.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_45
# BB#129:                               # %for.body.528.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_130:                              # %for.body.528
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$4, %eax
	movzbl	1(%r13), %r15d
	incq	%r13
	movl	%r15d, %ecx
	shrl	$4, %ecx
	orl	%eax, %ecx
	movl	%r15d, %eax
	notl	%eax
	andl	%ecx, %eax
	andl	$85, %eax
	addl	%eax, %eax
	xorl	%r15d, %ecx
	xorl	%eax, %ecx
	movb	%cl, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_130
	jmp	.LBB1_364
.LBB1_42:                               # %for.cond.549.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_43
# BB#131:                               # %for.body.552.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_132:                              # %for.body.552
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$2, %eax
	movzbl	1(%r13), %r15d
	incq	%r13
	movl	%r15d, %ecx
	shrl	$6, %ecx
	orl	%eax, %ecx
	movl	%r15d, %eax
	notl	%eax
	andl	%ecx, %eax
	andl	$85, %eax
	addl	%eax, %eax
	xorl	%r15d, %ecx
	xorl	%eax, %ecx
	movb	%cl, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_132
	jmp	.LBB1_364
.LBB1_40:                               # %for.cond.573.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_41
# BB#133:                               # %for.body.576.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_134:                              # %for.body.576
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	movl	%r15d, %ecx
	notl	%ecx
	andl	%eax, %ecx
	andl	$85, %ecx
	addl	%ecx, %ecx
	xorl	%r15d, %eax
	xorl	%ecx, %eax
	movb	%al, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_134
	jmp	.LBB1_364
.LBB1_30:                               # %for.cond.927.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_31
# BB#169:                               # %for.body.930.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	movl	%r15d, %eax
	.align	16, 0x90
.LBB1_170:                              # %for.body.930
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %r15d
	incq	%r13
	shll	$4, %eax
	movl	%r15d, %ecx
	subl	%eax, %ecx
	andl	$240, %ecx
	movl	%r15d, %eax
	shrl	$4, %eax
	movl	%r15d, %esi
	subl	%eax, %esi
	andl	$15, %esi
	orl	%ecx, %esi
	movb	%sil, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	movl	%r15d, %eax
	jg	.LBB1_170
	jmp	.LBB1_364
.LBB1_171:                              # %sw.bb.948
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	testl	%r8d, %r8d
	jle	.LBB1_172
# BB#173:                               # %for.body.954.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_174:                              # %for.body.954
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %eax
	movl	%ecx, %r15d
	movl	%edx, %r8d
	movzbl	1(%r13), %ecx
	incq	%r13
	shll	$4, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	andl	$240, %edx
	movl	%r15d, %eax
	shrl	$4, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	andl	$15, %esi
	orl	%edx, %esi
	movb	%sil, 1(%rbx)
	incq	%rbx
	leal	-1(%r8), %edx
	cmpl	$1, %edx
	jg	.LBB1_174
# BB#175:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-2, %r8d
	jmp	.LBB1_176
.LBB1_177:                              # %sw.bb.973
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebp
	cmpl	$2, %r8d
	jl	.LBB1_181
# BB#178:                               # %for.body.980.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-2, %r11d
	andl	$-2, %r11d
	addq	$2, %r13
	movq	232(%rsp), %rbx         # 8-byte Reload
	leaq	2(%rbx), %rax
	movq	%r13, %rcx
	.align	16, 0x90
.LBB1_179:                              # %for.body.980
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %esi
	movl	%ebp, %edi
	movzbl	-1(%rcx), %r15d
	movl	%r15d, %edx
	subl	%esi, %edx
	andl	$15, %edx
	movl	%r15d, %ebp
	andl	$240, %ebp
	orl	%edx, %ebp
	andl	$240, %esi
	subl	%esi, %ebp
	movb	%bpl, -1(%rax)
	movzbl	(%rcx), %ebp
	movl	%ebp, %esi
	subl	%edi, %esi
	andl	$15, %esi
	movl	%ebp, %edx
	andl	$240, %edx
	orl	%esi, %edx
	andl	$240, %edi
	subl	%edi, %edx
	movb	%dl, (%rax)
	addl	$-2, %r8d
	addq	$2, %rcx
	addq	$2, %rax
	cmpl	$1, %r8d
	jg	.LBB1_179
# BB#180:                               # %for.cond.977.for.end.1007_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbx,%r11), %rbx
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
.LBB1_181:                              # %for.end.1007
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%ebp, (%rax)
.LBB1_156:                              # %enc4
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_157
# BB#163:                               # %do.body.877
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_164:                              # %for.body.883
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_166 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %r10d
	cmovlel	%r8d, %r10d
	testl	%r10d, %r10d
	jle	.LBB1_168
# BB#165:                               # %for.body.893.lr.ph
                                        #   in Loop: Header=BB1_164 Depth=2
	movslq	%r10d, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_166:                              # %for.body.893
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %eax
	movl	136(%r14,%rdx,4), %edi
	movl	%eax, %esi
	subl	%edi, %esi
	andl	$15, %esi
	movl	%eax, %ebp
	andl	$240, %ebp
	orl	%esi, %ebp
	andl	$240, %edi
	subl	%edi, %ebp
	movb	%bpl, 1(%rbx,%rdx)
	movl	%eax, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_166
# BB#167:                               #   in Loop: Header=BB1_164 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_168:                              # %for.inc.918
                                        #   in Loop: Header=BB1_164 Depth=2
	subl	%r10d, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_164
	jmp	.LBB1_81
.LBB1_157:                              # %for.cond.827.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_158:                              # %for.body.830
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_160 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_162
# BB#159:                               # %for.body.840.lr.ph
                                        #   in Loop: Header=BB1_158 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_160:                              # %for.body.840
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	shll	$4, %r15d
	movl	140(%r14,%rdx,4), %esi
	shrl	$4, %esi
	orl	%esi, %r15d
	movzbl	1(%r13,%rdx), %edi
	movl	%edi, %ebp
	subl	%esi, %ebp
	andl	$15, %ebp
	andl	$240, %edi
	orl	%ebp, %edi
	andl	$240, %r15d
	subl	%r15d, %edi
	movb	%dil, 1(%rbx,%rdx)
	movl	140(%r14,%rdx,4), %r15d
	movzbl	1(%r13,%rdx), %esi
	movl	%esi, 140(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_160
# BB#161:                               #   in Loop: Header=BB1_158 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_162:                              # %for.inc.871
                                        #   in Loop: Header=BB1_158 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_158
	jmp	.LBB1_364
.LBB1_26:                               # %for.cond.1309.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_27
# BB#286:                               # %for.body.1312.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_287:                              # %for.body.1312
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	subl	%r15d, %eax
	movb	%al, 1(%rbx)
	incq	%rbx
	movzbl	1(%r13), %r15d
	leaq	1(%r13), %r13
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_287
	jmp	.LBB1_364
.LBB1_290:                              # %sw.bb.1340
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	4(%rdx), %eax
	movl	8(%rdx), %ecx
	movq	%rdx, %rsi
	cmpl	$3, %r8d
	movq	232(%rsp), %rdi         # 8-byte Reload
	jl	.LBB1_292
	.align	16, 0x90
.LBB1_291:                              # %for.body.1349
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %edx
	subl	%r15d, %edx
	movb	%dl, 1(%rdi)
	movzbl	1(%r13), %r15d
	movzbl	2(%r13), %edx
	subl	%eax, %edx
	movb	%dl, 2(%rdi)
	movzbl	2(%r13), %eax
	movzbl	3(%r13), %edx
	subl	%ecx, %edx
	movb	%dl, 3(%rdi)
	leaq	3(%rdi), %rdi
	movzbl	3(%r13), %ecx
	leaq	3(%r13), %r13
	addl	$-3, %r8d
	cmpl	$2, %r8d
	jg	.LBB1_291
.LBB1_292:                              # %for.end.1375
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	movl	%r15d, (%rsi)
	movl	%eax, 4(%rsi)
	movl	%ecx, 8(%rsi)
	movq	136(%rsp), %r11         # 8-byte Reload
	jmp	.LBB1_227
.LBB1_296:                              # %sw.bb.1419
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %r10d
	movl	8(%rax), %r9d
	movl	12(%rax), %edx
	movq	%rax, %rdi
	cmpl	$4, %r8d
	jl	.LBB1_300
# BB#297:                               # %for.body.1431.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-4, %r11d
	andl	$-4, %r11d
	addq	$4, %r13
	movq	232(%rsp), %rcx         # 8-byte Reload
	leaq	4(%rcx), %rax
	movq	%rcx, %rbp
	movq	%r13, %rcx
	.align	16, 0x90
.LBB1_298:                              # %for.body.1431
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rcx), %esi
	subl	%r15d, %esi
	movb	%sil, -3(%rax)
	movzbl	-3(%rcx), %r15d
	movzbl	-2(%rcx), %esi
	subl	%r10d, %esi
	movb	%sil, -2(%rax)
	movzbl	-2(%rcx), %r10d
	movzbl	-1(%rcx), %esi
	subl	%r9d, %esi
	movb	%sil, -1(%rax)
	movzbl	-1(%rcx), %r9d
	movzbl	(%rcx), %esi
	subl	%edx, %esi
	movb	%sil, (%rax)
	movzbl	(%rcx), %edx
	addl	$-4, %r8d
	addq	$4, %rcx
	addq	$4, %rax
	cmpl	$3, %r8d
	jg	.LBB1_298
# BB#299:                               # %for.cond.1428.for.end.1464_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	4(%rbp,%r11), %rbp
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
.LBB1_300:                              # %for.end.1464
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	movl	%r15d, (%rdi)
	movl	%r10d, 4(%rdi)
	movl	%r9d, 8(%rdi)
	movl	%edx, 12(%rdi)
.LBB1_227:                              # %enc8
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_266
# BB#228:                               # %enc8
                                        #   in Loop: Header=BB1_1 Depth=1
	xorb	$1, %bl
	testb	$1, %bl
	je	.LBB1_266
# BB#229:                               # %for.body.1244.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	%r8d, %r10
	movzbl	1(%r13), %eax
	subl	%r15d, %eax
	movq	232(%rsp), %rbx         # 8-byte Reload
	movb	%al, 1(%rbx)
	movzbl	1(%r13), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	cmpl	$1, %r8d
	je	.LBB1_285
# BB#230:                               # %for.body.1244.for.body.1244_crit_edge.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13), %rdx
	leaq	1(%rbx), %rsi
	leal	-2(%r8), %edi
	leaq	1(%rdi), %r12
	leaq	2(%rdi), %rbp
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rcx, %r12
	movq	%r12, %rax
	orq	$1, %rax
	movl	$1, %ecx
	cmpq	$1, %rax
	je	.LBB1_240
# BB#231:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r10, 24(%rsp)          # 8-byte Spill
	leaq	2(%rbx), %r9
	leaq	2(%rbx,%rdi), %rbp
	leaq	140(%r14,%rdi,4), %r11
	leaq	2(%r13), %r10
	leaq	2(%r13,%rdi), %rcx
	cmpq	%r11, %r9
	setbe	175(%rsp)               # 1-byte Folded Spill
	movq	144(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbp, %rbx
	setbe	39(%rsp)                # 1-byte Folded Spill
	cmpq	%rcx, %r9
	setbe	%r9b
	cmpq	%rbp, %r10
	setbe	%bpl
	cmpq	%rcx, %rbx
	setbe	%al
	cmpq	%r11, %r10
	setbe	%r11b
	movl	$1, %ecx
	movb	39(%rsp), %bl           # 1-byte Reload
	testb	175(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB1_232
# BB#233:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%bpl, %r9b
	jne	.LBB1_232
# BB#234:                               # %vector.memcheck
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%r11b, %al
	movq	232(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_238
# BB#235:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r12, %rsi
	addq	%r12, %rdx
	leaq	6(%r13), %rcx
	leaq	6(%rbx), %rbp
	incq	%rdi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB1_236:                              # %vector.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rax), %xmm1
	movdqu	(%rax), %xmm2
	movd	-4(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm1, %xmm3
	psubd	%xmm2, %xmm4
	movdqa	.LCPI1_0(%rip), %xmm1   # xmm1 = [255,255,255,255]
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, -4(%rbp)
	pand	%xmm1, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rbp)
	movd	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$32, %rax
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$-8, %rdi
	jne	.LBB1_236
# BB#237:                               #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB1_238:                              # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	jmp	.LBB1_239
.LBB1_15:                               # %for.cond.1628.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$2, %r8d
	jl	.LBB1_16
# BB#17:                                # %for.body.1631.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-2, %r11d
	andl	$-2, %r11d
	leaq	2(%r13), %rbp
	subl	%r13d, %r10d
	cmpl	%r12d, %r10d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	cmpl	%r10d, %edx
	cmovgl	%r10d, %edx
	addl	$-2, %edx
	movl	%edx, %esi
	shrl	%esi
	btl	$1, %edx
	jb	.LBB1_18
# BB#19:                                # %for.body.1631.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbx), %rcx
	movzbl	1(%r13), %edi
	shll	$8, %edi
	movzbl	2(%r13), %edx
	orl	%edi, %edx
	movl	%edx, %eax
	subl	%r15d, %eax
	movb	%ah, 1(%rbx)  # NOREX
	movb	%al, 2(%rbx)
	addl	$-2, %r8d
	movq	%rbp, %r13
	movl	%edx, %r15d
	jmp	.LBB1_20
.LBB1_347:                              # %sw.bb.1674
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	4(%rdx), %ecx
	movl	8(%rdx), %eax
	movq	%rdx, %r10
	cmpl	$6, %r8d
	movq	232(%rsp), %rbp         # 8-byte Reload
	jl	.LBB1_349
	.align	16, 0x90
.LBB1_348:                              # %for.body.1684
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %esi
	shll	$8, %esi
	movzbl	2(%r13), %edx
	orl	%esi, %edx
	movl	%edx, %ebx
	subl	%r15d, %ebx
	movb	%bh, 1(%rbp)  # NOREX
	movb	%bl, 2(%rbp)
	movzbl	3(%r13), %esi
	shll	$8, %esi
	movzbl	4(%r13), %edi
	orl	%esi, %edi
	movl	%edi, %ebx
	subl	%ecx, %ebx
	movb	%bh, 3(%rbp)  # NOREX
	movb	%bl, 4(%rbp)
	movzbl	5(%r13), %ecx
	shll	$8, %ecx
	movzbl	6(%r13), %esi
	leaq	6(%r13), %r13
	orl	%ecx, %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	movb	%ch, 5(%rbp)  # NOREX
	movb	%cl, 6(%rbp)
	leaq	6(%rbp), %rbp
	addl	$-6, %r8d
	cmpl	$5, %r8d
	movl	%esi, %eax
	movl	%edi, %ecx
	movl	%edx, %r15d
	jg	.LBB1_348
.LBB1_349:                              # %for.end.1728
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rbp, %rbx
	movq	%r10, %rbp
	movl	%r15d, (%rbp)
	movl	%ecx, 4(%rbp)
	movl	%eax, 8(%rbp)
	jmp	.LBB1_313
.LBB1_353:                              # %sw.bb.1799
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %edx
	movl	8(%rax), %edi
	movl	12(%rax), %esi
	cmpl	$8, %r8d
	jl	.LBB1_354
# BB#355:                               # %for.body.1812.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-8, %r11d
	andl	$-8, %r11d
	addq	$8, %r13
	movq	232(%rsp), %rax         # 8-byte Reload
	leaq	8(%rax), %rcx
	movq	%rax, %r12
	movq	%r13, %rbp
	.align	16, 0x90
.LBB1_356:                              # %for.body.1812
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ebx
	movl	%edx, %eax
	movl	%edi, %r10d
	movl	%esi, %r9d
	movzbl	-7(%rbp), %edx
	shll	$8, %edx
	movzbl	-6(%rbp), %r15d
	orl	%edx, %r15d
	movl	%r15d, %edx
	subl	%ebx, %edx
	movb	%dh, -7(%rcx)  # NOREX
	movb	%dl, -6(%rcx)
	movzbl	-5(%rbp), %esi
	shll	$8, %esi
	movzbl	-4(%rbp), %edx
	orl	%esi, %edx
	movl	%edx, %ebx
	subl	%eax, %ebx
	movb	%bh, -5(%rcx)  # NOREX
	movb	%bl, -4(%rcx)
	movzbl	-3(%rbp), %eax
	shll	$8, %eax
	movzbl	-2(%rbp), %edi
	orl	%eax, %edi
	movl	%edi, %eax
	subl	%r10d, %eax
	movb	%ah, -3(%rcx)  # NOREX
	movb	%al, -2(%rcx)
	movzbl	-1(%rbp), %eax
	shll	$8, %eax
	movzbl	(%rbp), %esi
	orl	%eax, %esi
	movl	%esi, %eax
	subl	%r9d, %eax
	movb	%ah, -1(%rcx)  # NOREX
	movb	%al, (%rcx)
	addl	$-8, %r8d
	addq	$8, %rbp
	addq	$8, %rcx
	cmpl	$7, %r8d
	jg	.LBB1_356
# BB#357:                               # %for.cond.1809.for.end.1869_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rbx
	leaq	8(%rbx,%r11), %rbx
	addq	%r11, %r13
	jmp	.LBB1_358
.LBB1_88:                               # %sw.bb.176
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	cmpl	$7, %edi
	jg	.LBB1_93
# BB#89:                                # %if.then.179
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_90
# BB#91:                                # %for.body.185.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_92:                               # %for.body.185
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	movl	124(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %r15d
	movzbl	%r15b, %esi
	xorl	%eax, %esi
	movl	%esi, %eax
	movb	%dil, %cl
	shrl	%cl, %eax
	xorl	%esi, %eax
	movb	%al, 1(%rbx)
	leaq	1(%rbx), %rbx
	movzbl	%al, %r15d
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_92
	jmp	.LBB1_364
.LBB1_54:                               # %for.cond.295.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_55
# BB#106:                               # %for.body.298.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_107:                              # %for.body.298
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	andl	$1, %r15d
	shll	$7, %r15d
	xorl	%eax, %r15d
	movl	%r15d, %eax
	shrl	%eax
	xorl	%r15d, %eax
	movl	%eax, %ecx
	shrl	$2, %ecx
	xorl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$4, %eax
	xorl	%ecx, %eax
	movb	%al, 1(%rbx)
	leaq	1(%rbx), %rbx
	movzbl	%al, %r15d
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_107
	jmp	.LBB1_364
.LBB1_52:                               # %for.cond.325.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_53
# BB#108:                               # %for.body.328.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_109:                              # %for.body.328
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	andl	$3, %r15d
	shll	$6, %r15d
	xorl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$2, %eax
	xorl	%r15d, %eax
	movl	%eax, %r15d
	shrl	$4, %r15d
	xorl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_109
	jmp	.LBB1_364
.LBB1_50:                               # %for.cond.350.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_51
# BB#110:                               # %for.body.353.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_111:                              # %for.body.353
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	andl	$7, %r15d
	shll	$5, %r15d
	xorl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$3, %eax
	xorl	%r15d, %eax
	shrl	$6, %r15d
	xorl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_111
	jmp	.LBB1_364
.LBB1_48:                               # %for.cond.373.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_49
# BB#112:                               # %for.body.376.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_113:                              # %for.body.376
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	andl	$15, %r15d
	shll	$4, %r15d
	xorl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$4, %eax
	xorl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_113
	jmp	.LBB1_364
.LBB1_135:                              # %sw.bb.592
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	96(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_142
# BB#136:                               # %if.then.595
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_137:                              # %for.body.605
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_139 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %r10d
	cmovlel	%r8d, %r10d
	testl	%r10d, %r10d
	movl	108(%rsp), %r11d        # 4-byte Reload
	movl	104(%rsp), %eax         # 4-byte Reload
	jle	.LBB1_141
# BB#138:                               # %for.body.615.lr.ph
                                        #   in Loop: Header=BB1_137 Depth=2
	movslq	%r10d, %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_139:                              # %for.body.615
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movl	%r15d, %edi
	movb	%r11b, %cl
	shll	%cl, %edi
	movl	140(%r14,%rsi,4), %r15d
	movl	%r15d, %ebp
	movb	%al, %cl
	shrl	%cl, %ebp
	orl	%edi, %ebp
	movzbl	1(%r13,%rsi), %ecx
	movl	%ecx, %edi
	andl	%ebp, %edi
	andl	$85, %edi
	addl	%edi, %edi
	xorl	%ecx, %ebp
	xorl	%edi, %ebp
	movb	%bpl, 1(%rbx,%rsi)
	movzbl	%bpl, %ecx
	movl	%ecx, 140(%r14,%rsi,4)
	leaq	1(%rsi), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB1_139
# BB#140:                               #   in Loop: Header=BB1_137 Depth=2
	leaq	1(%r13,%rsi), %r13
	leaq	1(%rbx,%rsi), %rbx
.LBB1_141:                              # %for.inc.645
                                        #   in Loop: Header=BB1_137 Depth=2
	subl	%r10d, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_137
	jmp	.LBB1_364
.LBB1_38:                               # %for.cond.700.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_39
# BB#148:                               # %for.body.703.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_149:                              # %for.body.703
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	shll	$6, %r15d
	addl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$2, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	andl	%r15d, %eax
	addl	%eax, %eax
	andl	$42, %eax
	movzbl	%r15b, %esi
	xorl	%ecx, %esi
	xorl	%esi, %eax
	movl	%eax, %ecx
	shrl	$4, %ecx
	andl	%ecx, %esi
	andl	$85, %esi
	addl	%esi, %esi
	xorl	%eax, %ecx
	xorl	%esi, %ecx
	movb	%cl, 1(%rbx)
	leaq	1(%rbx), %rbx
	movzbl	%cl, %r15d
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_149
	jmp	.LBB1_364
.LBB1_36:                               # %for.cond.738.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_37
# BB#150:                               # %for.body.741.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_151:                              # %for.body.741
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	shll	$4, %r15d
	movl	%eax, %ecx
	andl	%r15d, %ecx
	andl	$80, %ecx
	addl	%ecx, %ecx
	movzbl	%r15b, %esi
	xorl	%eax, %esi
	xorl	%ecx, %esi
	movl	%esi, %r15d
	shrl	$4, %r15d
	andl	%r15d, %eax
	addl	%eax, %eax
	andl	$10, %eax
	xorl	%esi, %r15d
	xorl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_151
	jmp	.LBB1_364
.LBB1_34:                               # %for.cond.771.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_35
# BB#152:                               # %for.body.774.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_153:                              # %for.body.774
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	shll	$2, %r15d
	movl	%eax, %ecx
	andl	%r15d, %ecx
	andl	$84, %ecx
	addl	%ecx, %ecx
	movzbl	%r15b, %esi
	xorl	%eax, %esi
	xorl	%ecx, %esi
	movl	%esi, %r15d
	shrl	$6, %r15d
	andl	%r15d, %eax
	addl	%eax, %eax
	andl	$2, %eax
	xorl	%esi, %r15d
	xorl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_153
	jmp	.LBB1_364
.LBB1_32:                               # %for.cond.804.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_33
# BB#154:                               # %for.body.807.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_155:                              # %for.body.807
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	movl	%eax, %ecx
	andl	%r15d, %ecx
	andl	$85, %ecx
	addl	%ecx, %ecx
	xorl	%r15d, %eax
	xorl	%ecx, %eax
	movb	%al, 1(%rbx)
	incq	%rbx
	movzbl	%al, %r15d
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_155
	jmp	.LBB1_364
.LBB1_28:                               # %for.cond.1115.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_29
# BB#195:                               # %for.body.1118.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_196:                              # %for.body.1118
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	shll	$4, %r15d
	addl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$4, %eax
	addl	%r15d, %eax
	andl	$15, %eax
	andl	$240, %r15d
	orl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_196
	jmp	.LBB1_364
.LBB1_197:                              # %sw.bb.1138
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testl	%r8d, %r8d
	jle	.LBB1_198
# BB#199:                               # %for.body.1145.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_200:                              # %for.body.1145
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %ecx
	movl	%eax, %r15d
	movl	%edx, %r8d
	shll	$4, %ecx
	shrl	$4, %eax
	addl	%ecx, %eax
	movzbl	1(%r13), %ecx
	incq	%r13
	leal	(%rcx,%rax), %edx
	andl	$15, %edx
	andl	$240, %ecx
	orl	%edx, %ecx
	andl	$240, %eax
	addl	%ecx, %eax
	movb	%al, 1(%rbx)
	leaq	1(%rbx), %rbx
	movzbl	%al, %eax
	leal	-1(%r8), %edx
	cmpl	$1, %edx
	jg	.LBB1_200
# BB#201:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-2, %r8d
	jmp	.LBB1_202
.LBB1_203:                              # %sw.bb.1169
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	cmpl	$2, %r8d
	jl	.LBB1_207
# BB#204:                               # %for.body.1176.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-2, %r11d
	andl	$-2, %r11d
	addq	$2, %r13
	movq	232(%rsp), %rbp         # 8-byte Reload
	leaq	2(%rbp), %rax
	movq	%r13, %rcx
	.align	16, 0x90
.LBB1_205:                              # %for.body.1176
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rcx), %esi
	leal	(%rsi,%r15), %edi
	andl	$15, %edi
	andl	$240, %r15d
	orl	%edi, %r15d
	andl	$240, %esi
	addl	%r15d, %esi
	movb	%sil, -1(%rax)
	movzbl	%sil, %r15d
	movzbl	(%rcx), %esi
	leal	(%rsi,%rdx), %edi
	andl	$15, %edi
	andl	$240, %edx
	orl	%edi, %edx
	andl	$240, %esi
	addl	%edx, %esi
	movb	%sil, (%rax)
	movzbl	%sil, %edx
	addl	$-2, %r8d
	addq	$2, %rcx
	addq	$2, %rax
	cmpl	$1, %r8d
	jg	.LBB1_205
# BB#206:                               # %for.cond.1173.for.end.1203_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbp,%r11), %rbp
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
.LBB1_207:                              # %for.end.1203
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%edx, (%rax)
.LBB1_182:                              # %dec4
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_183
# BB#189:                               # %do.body.1065
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_190:                              # %for.body.1071
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_192 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_194
# BB#191:                               # %for.body.1081.lr.ph
                                        #   in Loop: Header=BB1_190 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_192:                              # %for.body.1081
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_190 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %esi
	movl	136(%r14,%rdx,4), %edi
	leal	(%rsi,%rdi), %ebp
	andl	$15, %ebp
	andl	$240, %esi
	orl	%ebp, %esi
	andl	$240, %edi
	addl	%esi, %edi
	movb	%dil, 1(%rbx,%rdx)
	movzbl	%dil, %esi
	movl	%esi, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_192
# BB#193:                               #   in Loop: Header=BB1_190 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_194:                              # %for.inc.1106
                                        #   in Loop: Header=BB1_190 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_190
	jmp	.LBB1_81
.LBB1_183:                              # %for.cond.1015.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_184:                              # %for.body.1018
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_186 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_188
# BB#185:                               # %for.body.1028.lr.ph
                                        #   in Loop: Header=BB1_184 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_186:                              # %for.body.1028
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_184 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movl	%r15d, %esi
	shll	$4, %esi
	movl	140(%r14,%rdx,4), %r15d
	movl	%r15d, %edi
	shrl	$4, %edi
	orl	%edi, %esi
	movzbl	1(%r13,%rdx), %ebp
	leal	(%rdi,%rbp), %edi
	andl	$15, %edi
	andl	$240, %ebp
	orl	%edi, %ebp
	andl	$240, %esi
	addl	%ebp, %esi
	movb	%sil, 1(%rbx,%rdx)
	movzbl	%sil, %esi
	movl	%esi, 140(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_186
# BB#187:                               #   in Loop: Header=BB1_184 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_188:                              # %for.inc.1059
                                        #   in Loop: Header=BB1_184 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_184
	jmp	.LBB1_364
.LBB1_24:                               # %for.cond.1326.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_25
# BB#288:                               # %for.body.1329.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	notl	%r12d
	subl	%r13d, %r10d
	notl	%r10d
	cmpl	%r10d, %r12d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	notl	%edx
	cmpl	%edx, %r10d
	cmovgel	%r10d, %edx
	negl	%edx
	.align	16, 0x90
.LBB1_289:                              # %for.body.1329
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %eax
	incq	%r13
	addl	%eax, %r15d
	movb	%r15b, 1(%rbx)
	incq	%rbx
	movl	%edx, %r8d
	leal	-1(%rdx), %eax
	addl	$-2, %r8d
	cmpl	$1, %eax
	movl	%eax, %edx
	jg	.LBB1_289
	jmp	.LBB1_364
.LBB1_293:                              # %sw.bb.1382
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	4(%rdx), %ecx
	movl	8(%rdx), %eax
	movq	%rdx, %rsi
	cmpl	$3, %r8d
	movq	232(%rsp), %rdi         # 8-byte Reload
	jl	.LBB1_295
	.align	16, 0x90
.LBB1_294:                              # %for.body.1392
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %edx
	addl	%edx, %r15d
	movb	%r15b, 1(%rdi)
	movzbl	2(%r13), %edx
	addl	%edx, %ecx
	movb	%cl, 2(%rdi)
	movzbl	3(%r13), %edx
	leaq	3(%r13), %r13
	addl	%edx, %eax
	movb	%al, 3(%rdi)
	leaq	3(%rdi), %rdi
	addl	$-3, %r8d
	cmpl	$2, %r8d
	jg	.LBB1_294
.LBB1_295:                              # %for.end.1412
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rdi, 232(%rsp)         # 8-byte Spill
	movl	%r15d, (%rsi)
	movl	%ecx, 4(%rsi)
	movl	%eax, 8(%rsi)
	movq	136(%rsp), %r11         # 8-byte Reload
	jmp	.LBB1_265
.LBB1_301:                              # %sw.bb.1473
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %r9d
	movl	8(%rax), %edi
	movl	12(%rax), %edx
	movq	%rax, %rbp
	cmpl	$4, %r8d
	jl	.LBB1_305
# BB#302:                               # %for.body.1486.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-4, %r11d
	andl	$-4, %r11d
	addq	$4, %r13
	movq	232(%rsp), %rcx         # 8-byte Reload
	leaq	4(%rcx), %rax
	movq	%rcx, %r10
	movq	%r13, %rcx
	.align	16, 0x90
.LBB1_303:                              # %for.body.1486
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rcx), %esi
	addl	%esi, %r15d
	movb	%r15b, -3(%rax)
	movzbl	-2(%rcx), %esi
	addl	%esi, %r9d
	movb	%r9b, -2(%rax)
	movzbl	-1(%rcx), %esi
	addl	%esi, %edi
	movb	%dil, -1(%rax)
	movzbl	(%rcx), %esi
	addl	%esi, %edx
	movb	%dl, (%rax)
	addl	$-4, %r8d
	addq	$4, %rcx
	addq	$4, %rax
	cmpl	$3, %r8d
	jg	.LBB1_303
# BB#304:                               # %for.cond.1483.for.end.1511_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	4(%r10,%r11), %r10
	movq	%r10, 232(%rsp)         # 8-byte Spill
	addq	%r11, %r13
.LBB1_305:                              # %for.end.1511
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	movl	%r15d, (%rbp)
	movl	%r9d, 4(%rbp)
	movl	%edi, 8(%rbp)
	movl	%edx, 12(%rbp)
.LBB1_265:                              # %dec8
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%r8d, %r8d
	jle	.LBB1_266
# BB#267:                               # %dec8
                                        #   in Loop: Header=BB1_1 Depth=1
	xorb	$1, %bl
	testb	$1, %bl
	je	.LBB1_266
# BB#268:                               # %for.body.1295.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	%r8d, %r10
	movzbl	1(%r13), %eax
	leal	(%rax,%r15), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	232(%rsp), %rbx         # 8-byte Reload
	movb	%al, 1(%rbx)
	cmpl	$1, %r8d
	je	.LBB1_285
# BB#269:                               # %for.body.1295.for.body.1295_crit_edge.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13), %rdx
	leaq	1(%rbx), %rsi
	leal	-2(%r8), %edi
	leaq	1(%rdi), %r9
	leaq	2(%rdi), %rbp
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rcx, %r9
	movq	%r9, %rax
	orq	$1, %rax
	movl	$1, %ecx
	cmpq	$1, %rax
	je	.LBB1_279
# BB#270:                               # %vector.memcheck2381
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r10, 24(%rsp)          # 8-byte Spill
	leaq	140(%r14,%rdi,4), %rcx
	leaq	2(%rbx), %r12
	leaq	2(%rbx,%rdi), %r11
	leaq	2(%r13), %r10
	leaq	2(%r13,%rdi), %rbp
	movq	144(%rsp), %rbx         # 8-byte Reload
	cmpq	%r11, %rbx
	setbe	175(%rsp)               # 1-byte Folded Spill
	cmpq	%rcx, %r12
	setbe	39(%rsp)                # 1-byte Folded Spill
	cmpq	%rbp, %rbx
	setbe	%al
	cmpq	%rcx, %r10
	setbe	8(%rsp)                 # 1-byte Folded Spill
	cmpq	%rbp, %r12
	setbe	%r12b
	cmpq	%r11, %r10
	setbe	%bpl
	movl	$1, %ecx
	movb	39(%rsp), %bl           # 1-byte Reload
	testb	175(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB1_271
# BB#272:                               # %vector.memcheck2381
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	8(%rsp), %al            # 1-byte Folded Reload
	jne	.LBB1_271
# BB#273:                               # %vector.memcheck2381
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%bpl, %r12b
	movq	232(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_277
# BB#274:                               # %vector.body2349.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r9, %rsi
	addq	%r9, %rdx
	leaq	6(%r13), %rcx
	leaq	6(%rbx), %rbp
	incq	%rdi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB1_275:                              # %vector.body2349
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	movd	-4(%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm3           # xmm3 = mem[0],zero,zero,zero
	pxor	%xmm4, %xmm4
	punpcklbw	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklwd	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	punpcklbw	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3],xmm3[4],xmm4[4],xmm3[5],xmm4[5],xmm3[6],xmm4[6],xmm3[7],xmm4[7]
	punpcklwd	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rax)
	movdqu	%xmm3, (%rax)
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [255,255,255,255]
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, -4(%rbp)
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, (%rbp)
	addq	$32, %rax
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$-8, %rdi
	jne	.LBB1_275
# BB#276:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
.LBB1_277:                              # %middle.block2350
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	jmp	.LBB1_278
.LBB1_266:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, 136(%rsp)         # 8-byte Spill
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_6:                                # %for.cond.1651.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$2, %r8d
	jl	.LBB1_7
# BB#8:                                 # %for.body.1654.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-2, %r11d
	andl	$-2, %r11d
	leaq	2(%r13), %rdi
	subl	%r13d, %r10d
	cmpl	%r12d, %r10d
	cmoval	%r12d, %r10d
	movq	232(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	cmpl	%r10d, %edx
	cmovgl	%r10d, %edx
	addl	$-2, %edx
	movl	%edx, %esi
	shrl	%esi
	btl	$1, %edx
	jb	.LBB1_9
# BB#10:                                # %for.body.1654.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbx), %rcx
	movzbl	1(%r13), %eax
	shll	$8, %eax
	movzbl	2(%r13), %edx
	orl	%eax, %edx
	addl	%r15d, %edx
	movzwl	%dx, %r15d
	movb	%dh, 1(%rbx)  # NOREX
	movb	%dl, 2(%rbx)
	addl	$-2, %r8d
	movq	%rdi, %r13
	jmp	.LBB1_11
.LBB1_350:                              # %sw.bb.1735
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	movl	8(%rax), %edx
	movq	%rax, %rdi
	cmpl	$6, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_352
	.align	16, 0x90
.LBB1_351:                              # %for.body.1745
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%r13), %esi
	shll	$8, %esi
	movzbl	2(%r13), %eax
	orl	%esi, %eax
	addl	%r15d, %eax
	movzwl	%ax, %r15d
	movb	%ah, 1(%rbx)  # NOREX
	movb	%al, 2(%rbx)
	movzbl	3(%r13), %esi
	shll	$8, %esi
	movzbl	4(%r13), %eax
	orl	%esi, %eax
	addl	%ecx, %eax
	movzwl	%ax, %ecx
	movb	%ah, 3(%rbx)  # NOREX
	movb	%al, 4(%rbx)
	movzbl	5(%r13), %esi
	shll	$8, %esi
	movzbl	6(%r13), %eax
	orl	%esi, %eax
	addl	%edx, %eax
	movb	%ah, 5(%rbx)  # NOREX
	movb	%al, 6(%rbx)
	leaq	6(%rbx), %rbx
	leaq	6(%r13), %r13
	movzwl	%ax, %edx
	addl	$-6, %r8d
	cmpl	$5, %r8d
	jg	.LBB1_351
.LBB1_352:                              # %for.end.1792
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r15d, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%edx, 8(%rdi)
	jmp	.LBB1_364
.LBB1_359:                              # %sw.bb.1878
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rsi         # 8-byte Reload
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %edi
	movl	8(%rax), %edx
	movl	12(%rax), %r9d
	movq	%rax, %rbx
	cmpl	$8, %r8d
	jl	.LBB1_363
# BB#360:                               # %for.body.1891.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r12d, %r11d
	cmoval	%r12d, %r11d
	cmpl	%r11d, %ecx
	cmovlel	%ecx, %r11d
	addl	$-8, %r11d
	andl	$-8, %r11d
	addq	$8, %r13
	leaq	8(%rsi), %rcx
	movq	%rsi, %r10
	movq	%r13, %rsi
	.align	16, 0x90
.LBB1_361:                              # %for.body.1891
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rsi), %ebp
	shll	$8, %ebp
	movzbl	-6(%rsi), %eax
	orl	%ebp, %eax
	addl	%r15d, %eax
	movzwl	%ax, %r15d
	movb	%ah, -7(%rcx)  # NOREX
	movb	%al, -6(%rcx)
	movzbl	-5(%rsi), %ebp
	shll	$8, %ebp
	movzbl	-4(%rsi), %eax
	orl	%ebp, %eax
	addl	%edi, %eax
	movzwl	%ax, %edi
	movb	%ah, -5(%rcx)  # NOREX
	movb	%al, -4(%rcx)
	movzbl	-3(%rsi), %ebp
	shll	$8, %ebp
	movzbl	-2(%rsi), %eax
	orl	%ebp, %eax
	addl	%edx, %eax
	movzwl	%ax, %edx
	movb	%ah, -3(%rcx)  # NOREX
	movb	%al, -2(%rcx)
	movzbl	-1(%rsi), %ebp
	shll	$8, %ebp
	movzbl	(%rsi), %eax
	orl	%ebp, %eax
	addl	%r9d, %eax
	movzwl	%ax, %r9d
	movb	%ah, -1(%rcx)  # NOREX
	movb	%al, (%rcx)
	addl	$-8, %r8d
	addq	$8, %rsi
	addq	$8, %rcx
	cmpl	$7, %r8d
	jg	.LBB1_361
# BB#362:                               # %for.cond.1888.for.end.1952_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	8(%r10,%r11), %r10
	movq	%r10, %rsi
	addq	%r11, %r13
.LBB1_363:                              # %for.end.1952
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r15d, (%rbx)
	movl	%edi, 4(%rbx)
	movl	%edx, 8(%rbx)
	movl	%r9d, 12(%rbx)
	movq	%rsi, %rbx
	jmp	.LBB1_364
.LBB1_67:                               # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	96(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_75
# BB#68:                                # %if.then.39
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_69:                               # %for.body.46
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_72 Depth 3
	movq	%rbx, %rsi
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %r10d
	cmovlel	%r8d, %r10d
	testl	%r10d, %r10d
	movl	96(%rsp), %ebp          # 4-byte Reload
	movl	92(%rsp), %ebx          # 4-byte Reload
	jle	.LBB1_70
# BB#71:                                # %for.body.56.lr.ph
                                        #   in Loop: Header=BB1_69 Depth=2
	movslq	%r10d, %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rax
	.align	16, 0x90
.LBB1_72:                               # %for.body.56
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movb	%bl, %cl
	shll	%cl, %r15d
	movl	140(%r14,%rsi,4), %edi
	movb	%bpl, %cl
	shrl	%cl, %edi
	orl	%r15d, %edi
	movzbl	1(%r13,%rsi), %ecx
	xorl	%edi, %ecx
	movb	%cl, 1(%rax,%rsi)
	movl	140(%r14,%rsi,4), %r15d
	movzbl	1(%r13,%rsi), %ecx
	movl	%ecx, 140(%r14,%rsi,4)
	leaq	1(%rsi), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB1_72
# BB#73:                                #   in Loop: Header=BB1_69 Depth=2
	leaq	1(%r13,%rsi), %r13
	leaq	1(%rax,%rsi), %rax
	movq	%rax, %rbx
	jmp	.LBB1_74
	.align	16, 0x90
.LBB1_70:                               #   in Loop: Header=BB1_69 Depth=2
	movq	%rsi, %rbx
.LBB1_74:                               # %for.inc.77
                                        #   in Loop: Header=BB1_69 Depth=2
	subl	%r10d, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_69
	jmp	.LBB1_364
.LBB1_16:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_354:                              #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_358:                              # %for.end.1869
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	movl	%edx, 4(%rax)
	movl	%edi, 8(%rax)
	movl	%esi, 12(%rax)
.LBB1_313:                              # %enc16
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 224(%rsp)           # 4-byte Folded Reload
	sete	%al
	cmpl	$0, 204(%rsp)           # 4-byte Folded Reload
	setne	%cl
	testl	%r8d, %r8d
	jle	.LBB1_364
# BB#314:                               # %enc16
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%al, %cl
	je	.LBB1_364
# BB#315:                               # %for.body.1567.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	%r8d, %r10
	movzbl	1(%r13), %eax
	subl	%r15d, %eax
	movb	%al, 1(%rbx)
	movzbl	1(%r13), %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	cmpl	$1, %r8d
	je	.LBB1_331
# BB#316:                               # %for.body.1567.for.body.1567_crit_edge.lr.ph
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	1(%r13), %rdx
	leaq	1(%rbx), %rsi
	leal	-2(%r8), %edi
	leaq	1(%rdi), %r12
	leaq	2(%rdi), %rbp
	movabsq	$8589934584, %rcx       # imm = 0x1FFFFFFF8
	andq	%rcx, %r12
	movq	%r12, %rax
	orq	$1, %rax
	movl	$1, %ecx
	cmpq	$1, %rax
	je	.LBB1_325
# BB#317:                               # %vector.memcheck2563
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%r10, 24(%rsp)          # 8-byte Spill
	leaq	2(%rbx), %r9
	leaq	2(%rbx,%rdi), %rbp
	movq	%rbx, 232(%rsp)         # 8-byte Spill
	leaq	140(%r14,%rdi,4), %r11
	leaq	2(%r13), %r10
	leaq	2(%r13,%rdi), %rcx
	cmpq	%r11, %r9
	setbe	175(%rsp)               # 1-byte Folded Spill
	movq	144(%rsp), %rbx         # 8-byte Reload
	cmpq	%rbp, %rbx
	setbe	39(%rsp)                # 1-byte Folded Spill
	cmpq	%rcx, %r9
	setbe	%r9b
	cmpq	%rbp, %r10
	setbe	%bpl
	cmpq	%rcx, %rbx
	setbe	%al
	cmpq	%r11, %r10
	setbe	%r11b
	movl	$1, %ecx
	movb	39(%rsp), %bl           # 1-byte Reload
	testb	175(%rsp), %bl          # 1-byte Folded Reload
	jne	.LBB1_318
# BB#319:                               # %vector.memcheck2563
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%bpl, %r9b
	jne	.LBB1_318
# BB#320:                               # %vector.memcheck2563
                                        #   in Loop: Header=BB1_1 Depth=1
	andb	%r11b, %al
	movq	232(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_324
# BB#321:                               # %vector.body2531.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r12, %rsi
	addq	%r12, %rdx
	leaq	6(%r13), %rcx
	leaq	6(%rbx), %rbp
	incq	%rdi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rdi
	movq	40(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB1_322:                              # %vector.body2531
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-16(%rax), %xmm1
	movdqu	(%rax), %xmm2
	movd	-4(%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm4           # xmm4 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklbw	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3],xmm4[4],xmm0[4],xmm4[5],xmm0[5],xmm4[6],xmm0[6],xmm4[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4    # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	psubd	%xmm1, %xmm3
	psubd	%xmm2, %xmm4
	movdqa	.LCPI1_0(%rip), %xmm1   # xmm1 = [255,255,255,255]
	pand	%xmm1, %xmm3
	packuswb	%xmm3, %xmm3
	packuswb	%xmm3, %xmm3
	movd	%xmm3, -4(%rbp)
	pand	%xmm1, %xmm4
	packuswb	%xmm4, %xmm4
	packuswb	%xmm4, %xmm4
	movd	%xmm4, (%rbp)
	movd	-4(%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movd	(%rcx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	punpcklwd	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$32, %rax
	addq	$8, %rcx
	addq	$8, %rbp
	addq	$-8, %rdi
	jne	.LBB1_322
# BB#323:                               #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rsp), %rcx           # 8-byte Reload
	jmp	.LBB1_324
.LBB1_93:                               # %if.else.201
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	96(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_100
# BB#94:                                # %if.then.204
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_95:                               # %for.body.213
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_97 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %r10d
	cmovlel	%r8d, %r10d
	testl	%r10d, %r10d
	movl	96(%rsp), %r11d         # 4-byte Reload
	movl	92(%rsp), %eax          # 4-byte Reload
	jle	.LBB1_99
# BB#96:                                # %for.body.223.lr.ph
                                        #   in Loop: Header=BB1_95 Depth=2
	movslq	%r10d, %rdx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB1_97:                               # %for.body.223
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rsi
	movl	%r15d, %edi
	movb	%al, %cl
	shll	%cl, %edi
	movl	140(%r14,%rsi,4), %r15d
	movl	%r15d, %ebp
	movb	%r11b, %cl
	shrl	%cl, %ebp
	orl	%edi, %ebp
	movzbl	1(%r13,%rsi), %ecx
	xorl	%ebp, %ecx
	movb	%cl, 1(%rbx,%rsi)
	movzbl	%cl, %ecx
	movl	%ecx, 140(%r14,%rsi,4)
	leaq	1(%rsi), %rcx
	cmpq	%rdx, %rcx
	jl	.LBB1_97
# BB#98:                                #   in Loop: Header=BB1_95 Depth=2
	leaq	1(%r13,%rsi), %r13
	leaq	1(%rbx,%rsi), %rbx
.LBB1_99:                               # %for.inc.247
                                        #   in Loop: Header=BB1_95 Depth=2
	subl	%r10d, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_95
	jmp	.LBB1_364
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_64:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_61:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_57:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_121:                              # %do.body.451
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_122:                              # %for.body.457
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_124 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_126
# BB#123:                               # %for.body.467.lr.ph
                                        #   in Loop: Header=BB1_122 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_124:                              # %for.body.467
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_122 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %esi
	movl	%esi, %edi
	notl	%edi
	movl	136(%r14,%rdx,4), %ebp
	andl	%ebp, %edi
	andl	$85, %edi
	addl	%edi, %edi
	xorl	%esi, %ebp
	xorl	%edi, %ebp
	movb	%bpl, 1(%rbx,%rdx)
	movl	%esi, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_124
# BB#125:                               #   in Loop: Header=BB1_122 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_126:                              # %for.inc.492
                                        #   in Loop: Header=BB1_122 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_122
	jmp	.LBB1_81
.LBB1_47:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_45:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_43:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_41:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_31:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_172:                              #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_176:                              # %for.end.970
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB1_364
.LBB1_27:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_55:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_53:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_51:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_49:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_142:                              # %do.body.651
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_143:                              # %for.body.657
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_145 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_147
# BB#144:                               # %for.body.667.lr.ph
                                        #   in Loop: Header=BB1_143 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_145:                              # %for.body.667
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_143 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %ebp
	movl	136(%r14,%rdx,4), %edi
	movl	%ebp, %esi
	andl	%edi, %esi
	andl	$85, %esi
	addl	%esi, %esi
	xorl	%ebp, %edi
	xorl	%esi, %edi
	movb	%dil, 1(%rbx,%rdx)
	movzbl	%dil, %esi
	movl	%esi, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_145
# BB#146:                               #   in Loop: Header=BB1_143 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_147:                              # %for.inc.691
                                        #   in Loop: Header=BB1_143 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_143
	jmp	.LBB1_81
.LBB1_39:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_37:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_35:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_29:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_198:                              #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_202:                              # %for.end.1166
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB1_364
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_75:                               # %do.body.81
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_76:                               # %for.body.87
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_78 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_80
# BB#77:                                # %for.body.97.lr.ph
                                        #   in Loop: Header=BB1_76 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_78:                               # %for.body.97
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %esi
	movl	136(%r14,%rdx,4), %edi
	xorl	%esi, %edi
	movb	%dil, 1(%rbx,%rdx)
	movl	%esi, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_78
# BB#79:                                #   in Loop: Header=BB1_76 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_80:                               # %for.inc.113
                                        #   in Loop: Header=BB1_76 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_76
	jmp	.LBB1_81
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rcx
                                        # implicit-def: EDX
.LBB1_20:                               # %for.body.1631.lr.ph.split
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%esi, %esi
	je	.LBB1_23
# BB#21:                                # %for.body.1631.lr.ph.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %r13
	addq	$4, %rcx
	movl	%r15d, %edx
	.align	16, 0x90
.LBB1_22:                               # %for.body.1631
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r13), %eax
	shll	$8, %eax
	movzbl	-2(%r13), %esi
	orl	%eax, %esi
	movl	%esi, %eax
	subl	%edx, %eax
	movb	%ah, -3(%rcx)  # NOREX
	movb	%al, -2(%rcx)
	movzbl	-1(%r13), %eax
	shll	$8, %eax
	movzbl	(%r13), %edx
	orl	%eax, %edx
	movl	%edx, %eax
	subl	%esi, %eax
	movb	%ah, -1(%rcx)  # NOREX
	movb	%al, (%rcx)
	addl	$-4, %r8d
	addq	$4, %r13
	addq	$4, %rcx
	cmpl	$1, %r8d
	jg	.LBB1_22
.LBB1_23:                               # %for.cond.1628.sw.epilog.loopexit1116_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbx,%r11), %rbx
	addq	%r11, %rbp
	movl	%edx, %r15d
	movq	%rbp, %r13
	jmp	.LBB1_364
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rcx
.LBB1_11:                               # %for.body.1654.lr.ph.split
                                        #   in Loop: Header=BB1_1 Depth=1
	testl	%esi, %esi
	je	.LBB1_14
# BB#12:                                # %for.body.1654.lr.ph.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %r13
	addq	$4, %rcx
	.align	16, 0x90
.LBB1_13:                               # %for.body.1654
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%r13), %eax
	shll	$8, %eax
	movzbl	-2(%r13), %edx
	orl	%eax, %edx
	addl	%r15d, %edx
	movzwl	%dx, %eax
	movb	%dh, -3(%rcx)  # NOREX
	movb	%dl, -2(%rcx)
	movzbl	-1(%r13), %esi
	shll	$8, %esi
	movzbl	(%r13), %ebp
	orl	%esi, %ebp
	leal	(%rax,%rbp), %eax
	addl	%edx, %ebp
	movzwl	%bp, %r15d
	movb	%ah, -1(%rcx)  # NOREX
	movb	%al, (%rcx)
	addl	$-4, %r8d
	addq	$4, %r13
	addq	$4, %rcx
	cmpl	$1, %r8d
	jg	.LBB1_13
.LBB1_14:                               # %for.cond.1651.sw.epilog.loopexit1117_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	leaq	2(%rbx,%r11), %rbx
	addq	%r11, %rdi
	movq	%rdi, %r13
	jmp	.LBB1_364
.LBB1_90:                               #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_364
.LBB1_100:                              # %do.body.253
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	cmpl	%r9d, %r8d
	movq	232(%rsp), %rbx         # 8-byte Reload
	jl	.LBB1_364
	.align	16, 0x90
.LBB1_101:                              # %for.body.259
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_103 Depth 3
	movl	228(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovlel	%r8d, %eax
	testl	%eax, %eax
	jle	.LBB1_105
# BB#102:                               # %for.body.269.lr.ph
                                        #   in Loop: Header=BB1_101 Depth=2
	movslq	%eax, %rcx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB1_103:                              # %for.body.269
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rsi, %rdx
	movzbl	1(%r13,%rdx), %esi
	xorl	136(%r14,%rdx,4), %esi
	movb	%sil, 1(%rbx,%rdx)
	movzbl	%sil, %esi
	movl	%esi, 136(%r14,%rdx,4)
	leaq	1(%rdx), %rsi
	cmpq	%rcx, %rsi
	jl	.LBB1_103
# BB#104:                               #   in Loop: Header=BB1_101 Depth=2
	leaq	1(%r13,%rdx), %r13
	leaq	1(%rbx,%rdx), %rbx
.LBB1_105:                              # %for.inc.285
                                        #   in Loop: Header=BB1_101 Depth=2
	subl	%eax, %r8d
	cmpl	%r9d, %r8d
	jge	.LBB1_101
.LBB1_81:                               # %for.cond.84.for.end.115_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r15d
	jmp	.LBB1_364
.LBB1_232:                              #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_239:                              # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB1_240:                              # %middle.block
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rcx, %rbp
	je	.LBB1_285
# BB#241:                               # %for.body.1244.for.body.1244_crit_edge.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%r8), %edi
	leal	1(%rcx), %r9d
	subl	%r9d, %edi
	testb	$1, %dil
	je	.LBB1_243
# BB#242:                               # %for.body.1244.for.body.1244_crit_edge.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	1(%rdx), %edi
	movq	208(%rsp), %rax         # 8-byte Reload
	subl	(%rax,%rcx,4), %edi
	movb	%dil, 1(%rsi)
	incq	%rsi
	movzbl	1(%rdx), %edi
	leaq	1(%rdx), %rdx
	movl	%edi, (%rax,%rcx,4)
	incq	%rcx
.LBB1_243:                              # %for.body.1244.for.body.1244_crit_edge.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	je	.LBB1_285
# BB#244:                               # %for.body.1244.for.body.1244_crit_edge.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r8d, %eax
	subl	%ecx, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_245:                              # %for.body.1244.for.body.1244_crit_edge
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdx), %edi
	subl	-4(%rcx), %edi
	movb	%dil, -1(%rsi)
	movzbl	-1(%rdx), %edi
	movl	%edi, -4(%rcx)
	movzbl	(%rdx), %edi
	subl	(%rcx), %edi
	movb	%dil, (%rsi)
	movzbl	(%rdx), %edi
	movl	%edi, (%rcx)
	addq	$8, %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB1_245
	jmp	.LBB1_285
.LBB1_271:                              #   in Loop: Header=BB1_1 Depth=1
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_278:                              # %middle.block2350
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB1_279:                              # %middle.block2350
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rcx, %rbp
	je	.LBB1_285
# BB#280:                               # %for.body.1295.for.body.1295_crit_edge.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%r8), %edi
	leal	1(%rcx), %r9d
	subl	%r9d, %edi
	testb	$1, %dil
	je	.LBB1_282
# BB#281:                               # %for.body.1295.for.body.1295_crit_edge.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	1(%rdx), %edi
	incq	%rdx
	movq	208(%rsp), %rax         # 8-byte Reload
	addl	(%rax,%rcx,4), %edi
	movl	%edi, (%rax,%rcx,4)
	movb	%dil, 1(%rsi)
	incq	%rsi
	incq	%rcx
.LBB1_282:                              # %for.body.1295.for.body.1295_crit_edge.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	je	.LBB1_285
# BB#283:                               # %for.body.1295.for.body.1295_crit_edge.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r8d, %eax
	subl	%ecx, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_284:                              # %for.body.1295.for.body.1295_crit_edge
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdx), %edi
	addl	-4(%rcx), %edi
	movl	%edi, -4(%rcx)
	movb	%dil, -1(%rsi)
	movzbl	(%rdx), %edi
	addl	(%rcx), %edi
	movl	%edi, (%rcx)
	movb	%dil, (%rsi)
	addq	$8, %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB1_284
.LBB1_285:                              # %for.cond.1292.sw.epilog.loopexit1112_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, 136(%rsp)         # 8-byte Spill
.LBB1_331:                              # %for.cond.1564.sw.epilog.loopexit1115_crit_edge
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r10, %rbx
	addq	%r10, %r13
	jmp	.LBB1_364
.LBB1_318:                              #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_324:                              # %middle.block2532
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	24(%rsp), %r10          # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB1_325:                              # %middle.block2532
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rcx, %rbp
	je	.LBB1_331
# BB#326:                               # %for.body.1567.for.body.1567_crit_edge.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	leal	1(%r8), %edi
	leal	1(%rcx), %r9d
	subl	%r9d, %edi
	testb	$1, %dil
	je	.LBB1_328
# BB#327:                               # %for.body.1567.for.body.1567_crit_edge.prol
                                        #   in Loop: Header=BB1_1 Depth=1
	movzbl	1(%rdx), %edi
	movq	208(%rsp), %rax         # 8-byte Reload
	subl	(%rax,%rcx,4), %edi
	movb	%dil, 1(%rsi)
	incq	%rsi
	movzbl	1(%rdx), %edi
	leaq	1(%rdx), %rdx
	movl	%edi, (%rax,%rcx,4)
	incq	%rcx
.LBB1_328:                              # %for.body.1567.for.body.1567_crit_edge.preheader.split
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	%r9d, %r8d
	je	.LBB1_331
# BB#329:                               # %for.body.1567.for.body.1567_crit_edge.preheader.split.split
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%r8d, %eax
	subl	%ecx, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	.align	16, 0x90
.LBB1_330:                              # %for.body.1567.for.body.1567_crit_edge
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdx), %edi
	subl	-4(%rcx), %edi
	movb	%dil, -1(%rsi)
	movzbl	-1(%rdx), %edi
	movl	%edi, -4(%rcx)
	movzbl	(%rdx), %edi
	subl	(%rcx), %edi
	movb	%dil, (%rsi)
	movzbl	(%rdx), %edi
	movl	%edi, (%rcx)
	addq	$8, %rcx
	addq	$2, %rsi
	addq	$2, %rdx
	addl	$-2, %eax
	jne	.LBB1_330
	jmp	.LBB1_331
	.align	16, 0x90
.LBB1_1:                                # %row
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_361 Depth 2
                                        #     Child Loop BB1_351 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_333 Depth 2
                                        #       Child Loop BB1_340 Depth 3
                                        #       Child Loop BB1_344 Depth 3
                                        #     Child Loop BB1_303 Depth 2
                                        #     Child Loop BB1_294 Depth 2
                                        #     Child Loop BB1_289 Depth 2
                                        #     Child Loop BB1_247 Depth 2
                                        #       Child Loop BB1_254 Depth 3
                                        #       Child Loop BB1_261 Depth 3
                                        #     Child Loop BB1_275 Depth 2
                                        #     Child Loop BB1_284 Depth 2
                                        #     Child Loop BB1_205 Depth 2
                                        #     Child Loop BB1_200 Depth 2
                                        #     Child Loop BB1_196 Depth 2
                                        #     Child Loop BB1_184 Depth 2
                                        #       Child Loop BB1_186 Depth 3
                                        #     Child Loop BB1_190 Depth 2
                                        #       Child Loop BB1_192 Depth 3
                                        #     Child Loop BB1_155 Depth 2
                                        #     Child Loop BB1_153 Depth 2
                                        #     Child Loop BB1_151 Depth 2
                                        #     Child Loop BB1_149 Depth 2
                                        #     Child Loop BB1_137 Depth 2
                                        #       Child Loop BB1_139 Depth 3
                                        #     Child Loop BB1_143 Depth 2
                                        #       Child Loop BB1_145 Depth 3
                                        #     Child Loop BB1_113 Depth 2
                                        #     Child Loop BB1_111 Depth 2
                                        #     Child Loop BB1_109 Depth 2
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_95 Depth 2
                                        #       Child Loop BB1_97 Depth 3
                                        #     Child Loop BB1_101 Depth 2
                                        #       Child Loop BB1_103 Depth 3
                                        #     Child Loop BB1_92 Depth 2
                                        #     Child Loop BB1_356 Depth 2
                                        #     Child Loop BB1_348 Depth 2
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_307 Depth 2
                                        #       Child Loop BB1_309 Depth 3
                                        #     Child Loop BB1_322 Depth 2
                                        #     Child Loop BB1_330 Depth 2
                                        #     Child Loop BB1_298 Depth 2
                                        #     Child Loop BB1_291 Depth 2
                                        #     Child Loop BB1_287 Depth 2
                                        #     Child Loop BB1_209 Depth 2
                                        #       Child Loop BB1_216 Depth 3
                                        #       Child Loop BB1_223 Depth 3
                                        #     Child Loop BB1_236 Depth 2
                                        #     Child Loop BB1_245 Depth 2
                                        #     Child Loop BB1_179 Depth 2
                                        #     Child Loop BB1_174 Depth 2
                                        #     Child Loop BB1_170 Depth 2
                                        #     Child Loop BB1_158 Depth 2
                                        #       Child Loop BB1_160 Depth 3
                                        #     Child Loop BB1_164 Depth 2
                                        #       Child Loop BB1_166 Depth 3
                                        #     Child Loop BB1_134 Depth 2
                                        #     Child Loop BB1_132 Depth 2
                                        #     Child Loop BB1_130 Depth 2
                                        #     Child Loop BB1_128 Depth 2
                                        #     Child Loop BB1_116 Depth 2
                                        #       Child Loop BB1_118 Depth 3
                                        #     Child Loop BB1_122 Depth 2
                                        #       Child Loop BB1_124 Depth 3
                                        #     Child Loop BB1_87 Depth 2
                                        #     Child Loop BB1_85 Depth 2
                                        #     Child Loop BB1_83 Depth 2
                                        #     Child Loop BB1_69 Depth 2
                                        #       Child Loop BB1_72 Depth 3
                                        #     Child Loop BB1_76 Depth 2
                                        #       Child Loop BB1_78 Depth 3
                                        #     Child Loop BB1_66 Depth 2
	movl	132(%r14), %r12d
	testl	%r12d, %r12d
	jne	.LBB1_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	120(%r14), %eax
	movl	%eax, 132(%r14)
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movl	$236, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	callq	memset
	movl	132(%r14), %r12d
.LBB1_3:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 204(%rsp)           # 4-byte Folded Reload
	sete	%al
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %r10
	movl	%r10d, %r11d
	subl	%r13d, %r11d
	movq	16(%rbx), %rdx
	movl	%edx, %ecx
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	subl	%ebp, %ecx
	cmpl	%r11d, %r12d
	movl	%r11d, %r8d
	cmovbl	%r12d, %r8d
	cmpl	%r8d, %ecx
	movl	224(%rsp), %esi         # 4-byte Reload
	movl	$1, %edi
	cmovll	%edi, %esi
	movl	%esi, 224(%rsp)         # 4-byte Spill
	cmovlel	%ecx, %r8d
	testl	%esi, %esi
	setne	%bl
	orb	%al, %bl
	movl	$1, %r9d
	cmovnel	228(%rsp), %r9d         # 4-byte Folded Reload
	movl	%r12d, %eax
	subl	%r8d, %eax
	movl	%eax, 132(%r14)
	movl	128(%r14), %eax
	cmpq	$49, %rax
	jbe	.LBB1_5
# BB#4:                                 #   in Loop: Header=BB1_1 Depth=1
	movq	232(%rsp), %rbx         # 8-byte Reload
.LBB1_364:                              # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rbp
	addl	132(%r14), %r8d
	movl	%r8d, 132(%r14)
	movq	192(%rsp), %rbx         # 8-byte Reload
	movb	191(%rsp), %dl          # 1-byte Reload
	je	.LBB1_365
.LBB1_369:                              # %if.end.1990
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%r15d, (%rax)
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	%r13, (%rax)
	movq	%rbp, 8(%rbx)
	movl	224(%rsp), %eax         # 4-byte Reload
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	s_PDiff_process, .Lfunc_end1-s_PDiff_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_62
	.quad	.LBB1_60
	.quad	.LBB1_62
	.quad	.LBB1_58
	.quad	.LBB1_56
	.quad	.LBB1_114
	.quad	.LBB1_46
	.quad	.LBB1_44
	.quad	.LBB1_42
	.quad	.LBB1_40
	.quad	.LBB1_156
	.quad	.LBB1_30
	.quad	.LBB1_156
	.quad	.LBB1_171
	.quad	.LBB1_177
	.quad	.LBB1_208
	.quad	.LBB1_26
	.quad	.LBB1_208
	.quad	.LBB1_290
	.quad	.LBB1_296
	.quad	.LBB1_306
	.quad	.LBB1_15
	.quad	.LBB1_306
	.quad	.LBB1_347
	.quad	.LBB1_353
	.quad	.LBB1_88
	.quad	.LBB1_54
	.quad	.LBB1_52
	.quad	.LBB1_50
	.quad	.LBB1_48
	.quad	.LBB1_135
	.quad	.LBB1_38
	.quad	.LBB1_36
	.quad	.LBB1_34
	.quad	.LBB1_32
	.quad	.LBB1_182
	.quad	.LBB1_28
	.quad	.LBB1_182
	.quad	.LBB1_197
	.quad	.LBB1_203
	.quad	.LBB1_246
	.quad	.LBB1_24
	.quad	.LBB1_246
	.quad	.LBB1_293
	.quad	.LBB1_301
	.quad	.LBB1_332
	.quad	.LBB1_6
	.quad	.LBB1_332
	.quad	.LBB1_350
	.quad	.LBB1_359

	.text
	.align	16, 0x90
	.type	s_PDiff_set_defaults,@function
s_PDiff_set_defaults:                   # @s_PDiff_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movabsq	$34359738369, %rax      # imm = 0x800000001
	movq	%rax, 108(%rdi)
	movl	$1, 116(%rdi)
	retq
.Lfunc_end2:
	.size	s_PDiff_set_defaults, .Lfunc_end2-s_PDiff_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	s_PDiff_reinit,@function
s_PDiff_reinit:                         # @s_PDiff_reinit
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, 132(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	s_PDiff_reinit, .Lfunc_end3-s_PDiff_reinit
	.cfi_endproc

	.align	16, 0x90
	.type	s_PDiffD_init,@function
s_PDiffD_init:                          # @s_PDiffD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	movslq	112(%rdi), %rcx
	movzbl	s_PDiffE_init.cb_values(%rcx), %edx
	imull	%eax, %ecx
	imull	116(%rdi), %ecx
	leal	7(%rcx), %esi
	sarl	$3, %esi
	movl	%esi, 120(%rdi)
	negl	%ecx
	andb	$7, %cl
	movl	$1, %esi
	shll	%cl, %esi
	addl	$255, %esi
	movb	%sil, 124(%rdi)
	xorl	%ecx, %ecx
	cmpl	$4, %eax
	cmovgl	%ecx, %eax
	movl	$0, 132(%rdi)
	leal	25(%rdx,%rax), %eax
	movl	%eax, 128(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	s_PDiffD_init, .Lfunc_end4-s_PDiffD_init
	.cfi_endproc

	.type	st_PDiff_state,@object  # @st_PDiff_state
	.section	.rodata,"a",@progbits
	.align	8
st_PDiff_state:
	.long	376                     # 0x178
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_PDiff_state, 64

	.type	s_PDiffE_template,@object # @s_PDiffE_template
	.globl	s_PDiffE_template
	.align	8
s_PDiffE_template:
	.quad	st_PDiff_state
	.quad	s_PDiffE_init
	.quad	s_PDiff_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_PDiff_set_defaults
	.quad	s_PDiff_reinit
	.size	s_PDiffE_template, 56

	.type	s_PDiffD_template,@object # @s_PDiffD_template
	.globl	s_PDiffD_template
	.align	8
s_PDiffD_template:
	.quad	st_PDiff_state
	.quad	s_PDiffD_init
	.quad	s_PDiff_process
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	0
	.quad	s_PDiff_set_defaults
	.quad	s_PDiff_reinit
	.size	s_PDiffD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"PixelDifferenceEncode/Decode state"
	.size	.L.str, 35

	.type	s_PDiffE_init.cb_values,@object # @s_PDiffE_init.cb_values
	.section	.rodata,"a",@progbits
	.align	16
s_PDiffE_init.cb_values:
	.ascii	"\000\000\005\000\n\000\000\000\017\000\000\000\000\000\000\000\024"
	.size	s_PDiffE_init.cb_values, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
