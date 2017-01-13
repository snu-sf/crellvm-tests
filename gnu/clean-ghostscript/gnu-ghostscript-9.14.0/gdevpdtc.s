	.text
	.file	"gdevpdtc.bc"
	.globl	process_composite_text
	.align	16, 0x90
	.type	process_composite_text,@function
process_composite_text:                 # @process_composite_text
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
	subq	$1912, %rsp             # imm = 0x778
.Ltmp6:
	.cfi_def_cfa_offset 1968
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
	movl	%edx, 60(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rcx
	movl	(%rcx), %eax
	movl	%eax, %ebp
	andl	$131072, %ebp           # imm = 0x20000
	movq	%rsi, 1896(%rsp)
	je	.LBB0_3
# BB#1:                                 # %if.then
	movq	120(%rcx), %rdi
	leaq	456(%rcx), %rsi
	movq	%rcx, %rbx
	callq	gx_path_current_point
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB0_38
# BB#2:                                 # %if.then.if.end.2_crit_edge
	movq	%rbx, %rcx
	movl	(%rcx), %eax
.LBB0_3:                                # %if.end.2
	movl	$-15, %r12d
	testl	$65596, %eax            # imm = 0x1003C
	jne	.LBB0_38
# BB#4:                                 # %if.end.14
	movl	%ebp, 20(%rsp)          # 4-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 112(%rsp)
	leaq	1264(%rsp), %r15
	movl	$568, %edx              # imm = 0x238
	movq	%r15, %rdi
	movq	%rcx, %rbp
	movq	%rbp, %rsi
	callq	memcpy
	leaq	696(%rsp), %rdi
	movl	$568, %edx              # imm = 0x238
	movq	%r15, %rsi
	callq	memcpy
	leaq	128(%rsp), %rbx
	movl	$568, %edx              # imm = 0x238
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	$0, 320(%rsp)
	movq	$-1, 24(%rsp)           # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$195948557, %eax        # imm = 0xBADF00D
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	104(%rsp), %r12
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB0_5
.LBB0_34:                               # %cleanup.158.thread66
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movslq	1504(%rsp), %rax
	shlq	$4, %rax
	movq	%rdx, %r15
	movq	232(%rax,%r15), %rax
	addq	$80, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %r14
	movl	$1, %r13d
	leaq	128(%rsp), %rbx
.LBB0_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r15, %rbx
	callq	gs_text_enum_copy_dynamic
	xorl	%eax, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_22:                               # %cleanup.thread62
                                        #   in Loop: Header=BB0_6 Depth=2
	leaq	104(%rsp), %r12
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	incq	%r13
	addq	$80, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
.LBB0_6:                                # %for.cond.15
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edx, %edx
	leaq	696(%rsp), %rdi
	movq	%rbx, %rsi
	callq	gs_text_enum_copy_dynamic
	movq	112(%rbp), %rax
	movq	%rbp, %r15
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	movq	%r12, %rsi
	leaq	80(%rsp), %rdx
	callq	*256(%rax)
	movl	%eax, %r12d
	cmpl	$2, %r12d
	jae	.LBB0_7
# BB#15:                                # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	104(%rsp), %rax
	movq	%rax, 1680(%rsp)
	movq	%rbp, %rdi
	callq	gx_current_char
	movslq	%eax, %rsi
	movslq	1504(%rsp), %rcx
	shlq	$4, %rcx
	movq	1512(%rsp,%rcx), %rbx
	movq	%r14, %rdi
	cmpq	%rdi, %rbx
	jne	.LBB0_9
# BB#16:                                # %if.end.22
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	104(%rsp), %rax
	movzbl	%al, %edx
	movl	$-15, %r12d
	cmpq	%rdx, %rax
	jne	.LBB0_38
# BB#17:                                # %if.end.28
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$-28, %r12d
	cmpl	60(%rsp), %r13d         # 4-byte Folded Reload
	jae	.LBB0_38
# BB#18:                                # %if.end.32
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	64(%rsp), %rdx          # 8-byte Reload
	movb	%al, (%rdx,%r13)
	movq	232(%rcx,%rbp), %rcx
	movq	%rbp, %rbx
	movq	%r15, %rbp
	testb	$-128, (%rbp)
	je	.LBB0_22
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpq	%rsi, 56(%rbp)
	je	.LBB0_21
# BB#20:                                # %select.mid
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
.LBB0_21:                               # %select.end
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB0_22
.LBB0_7:                                # %for.cond.15
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdi
	jne	.LBB0_38
# BB#8:                                 # %for.endsplit
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$2, %r12d
	movq	32(%rsp), %rbx          # 8-byte Reload
.LBB0_9:                                # %for.end
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%r13d, 1904(%rsp)
	testl	%r13d, %r13d
	je	.LBB0_29
# BB#10:                                # %if.then.53
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, %r14
	movq	%rsi, %r13
	movl	$0, 368(%rsp)
	movq	%rdi, 320(%rsp)
	movq	%rdi, 376(%rsp)
	movq	%rdi, 192(%r15)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 184(%rsp)
	addq	$80, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movl	$0, 360(%rsp)
	xorl	%edx, %edx
	leaq	128(%rsp), %rdi
	leaq	1896(%rsp), %rsi
	movq	%rbx, %rcx
	leaq	1832(%rsp), %r8
	callq	pdf_process_string_aux
	testl	%eax, %eax
	js	.LBB0_37
# BB#11:                                # %if.end.74
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	364(%rsp), %eax
	movl	%eax, 1500(%rsp)
	movq	360(%rsp), %rax
	cmpl	1904(%rsp), %eax
	jae	.LBB0_23
# BB#12:                                # %if.then.80
                                        #   in Loop: Header=BB0_5 Depth=1
	leal	-1(%rax), %ecx
	movl	%ecx, 360(%rsp)
	testl	%eax, %eax
	movq	%r15, %rbx
	leaq	104(%rsp), %r15
	leaq	72(%rsp), %r12
	je	.LBB0_14
	.align	16, 0x90
.LBB0_13:                               # %while.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	112(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*256(%rax)
	movq	360(%rsp), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, 360(%rsp)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_14:                               # %while.end
                                        #   in Loop: Header=BB0_5 Depth=1
	shrq	$32, %rax
	movq	%rbx, %r15
	movl	$2, %r12d
	jmp	.LBB0_24
.LBB0_23:                               # %if.else
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %edx
	movq	%r15, %rdi
	leaq	696(%rsp), %rsi
	callq	gs_text_enum_copy_dynamic
	movl	364(%rsp), %eax
.LBB0_24:                               # %if.end.88
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, 236(%r15)
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB0_28
# BB#25:                                # %if.then.92
                                        #   in Loop: Header=BB0_5 Depth=1
	testb	$2, 1(%r15)
	movsd	560(%rsp), %xmm0        # xmm0 = mem[0],zero
	jne	.LBB0_26
# BB#27:                                # %if.else.112
                                        #   in Loop: Header=BB0_5 Depth=1
	movhpd	568(%rsp), %xmm0
	addpd	112(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movupd	%xmm0, 432(%r15)
	jmp	.LBB0_28
.LBB0_26:                               # %if.then.97
                                        #   in Loop: Header=BB0_5 Depth=1
	movsd	%xmm0, 112(%rsp)
	movsd	%xmm0, 432(%r15)
	movq	568(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	%rax, 440(%r15)
.LBB0_28:                               # %cleanup.130.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%r15, %rdi
	callq	pdf_text_release_cgp
	movq	%r13, %rsi
	movq	%r14, %rbx
.LBB0_29:                               # %if.end.132
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpl	$2, %r12d
	je	.LBB0_35
# BB#30:                                # %if.end.136
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rbp, %rdx
	movq	104(%rsp), %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	movq	$-1, %rcx
	movq	%r15, %rbp
	testb	$-128, (%rbp)
	leaq	104(%rsp), %r12
	je	.LBB0_34
# BB#31:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB0_5 Depth=1
	cmpq	%rsi, 56(%rbp)
	je	.LBB0_33
# BB#32:                                # %select.mid189
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$-1, %rax
.LBB0_33:                               # %select.end188
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %rcx
	jmp	.LBB0_34
.LBB0_35:                               # %for.end.162
	xorl	%r12d, %r12d
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB0_38
# BB#36:                                # %if.end.165
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	pdf_shift_text_currentpoint
.LBB0_37:                               # %cleanup.167
	movl	%eax, %r12d
.LBB0_38:                               # %cleanup.167
	movl	%r12d, %eax
	addq	$1912, %rsp             # imm = 0x778
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	process_composite_text, .Lfunc_end0-process_composite_text
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4608533498688228557     # double 1.3
.LCPI1_1:
	.quad	4608983858650965606     # double 1.3999999999999999
.LCPI1_2:
	.quad	4609434218613702656     # double 1.5
.LCPI1_3:
	.quad	4571153621781053440     # double 0.00390625
.LCPI1_4:
	.quad	4643211215818981376     # double 256
.LCPI1_5:
	.quad	0                       # double 0
	.text
	.globl	process_cmap_text
	.align	16, 0x90
	.type	process_cmap_text,@function
process_cmap_text:                      # @process_cmap_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$3592, %rsp             # imm = 0xE08
.Ltmp19:
	.cfi_def_cfa_offset 3648
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	%r15, 216(%rsp)         # 8-byte Spill
	movl	$-15, %eax
	testl	$65596, (%r15)          # imm = 0x1003C
	jne	.LBB1_191
# BB#1:                                 # %if.end.6
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movq	88(%r15), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movq	112(%r15), %rbx
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	leaq	3056(%rsp), %rdi
	movl	$448, %edx              # imm = 0x1C0
	movq	%r15, %rsi
	callq	memcpy
	movl	148(%rbx), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	$0, 3048(%rsp)
	movq	3288(%rsp), %rbx
	movl	$1, 3016(%rsp)
	movl	$1, 3020(%rsp)
	movl	$0, 3024(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 432(%r15)
	movq	120(%r15), %rdi
	leaq	456(%r15), %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB1_189
# BB#2:                                 # %do.body.preheader.lr.ph.i
	movq	%rbx, %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rcx, %r12
	shrq	$32, %r12
	leaq	468(%r15), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	472(%r15), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rax         # 8-byte Reload
	leaq	80(%rax), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	$2074996749, %ebx       # imm = 0x7BADF00D
                                        # implicit-def: R14D
	movl	$0, 156(%rsp)           # 4-byte Folded Spill
	movl	$0, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	movl	$0, 244(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_92:                               # %do.end.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	264(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r13d
	subl	196(%rsp), %r13d        # 4-byte Folded Reload
	jbe	.LBB1_93
# BB#94:                                # %if.then.397.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	216(%rsp), %r15         # 8-byte Reload
	movl	(%r15), %edx
	xorl	%ecx, %ecx
	testb	$1, %dh
	je	.LBB1_97
# BB#95:                                # %cond.false.402.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	64(%r15), %rax
	movl	$2, %ecx
	cmpq	72(%r15), %rax
	je	.LBB1_97
# BB#96:                                # %select.mid200
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$1, %ecx
.LBB1_97:                               # %cond.end.408.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rsi
	cmovneq	208(%rsp), %rsi         # 8-byte Folded Reload
	testq	%rax, %rax
	cmovneq	%rax, %rsi
	testq	%rsi, %rsi
	je	.LBB1_101
# BB#98:                                # %land.lhs.true.417.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	128(%rsi), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_101
# BB#99:                                # %if.then.425.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	8(%r15), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	192(%r15), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rsi, 192(%r15)
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	orl	$8, %eax
	movl	%eax, (%r15)
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 8(%r15)
	movl	16(%r15), %eax
	subl	232(%r15), %eax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 3000(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	%eax, 3008(%rsp)
	movq	%r15, %rdi
	leaq	3000(%rsp), %rsi
	movl	%edx, %ebp
	leaq	3048(%rsp), %rdx
	callq	pdf_obtain_font_resource_unencoded
	testl	%eax, %eax
	js	.LBB1_192
# BB#100:                               # %cleanup.470.thread.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	3064(%rsp), %rdi
	movq	3000(%rsp), %rsi
	movl	3008(%rsp), %edx
	callq	memcpy
	movq	3064(%rsp), %rax
	movq	%rax, 3000(%rsp)
	movq	3048(%rsp), %rax
	movq	%rax, 2928(%rsp)
	movl	%ebp, (%r15)
	movq	248(%rsp), %rsi         # 8-byte Reload
.LBB1_101:                              # %if.end.475.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 192(%r15)
	movl	$-10, %eax
	movl	$1, %edi
	testq	%rcx, %rcx
	movq	%rcx, %rdx
	je	.LBB1_102
# BB#103:                               # %if.end.475.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	3048(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB1_104
# BB#105:                               # %if.end.481.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movq	%rdx, %rdi
	addq	$80, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	leaq	2872(%rsp), %rdx
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB1_106
# BB#107:                               # %if.end.487.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	3048(%rsp), %rsi
	cmpl	$3, 72(%rsi)
	je	.LBB1_109
# BB#108:                               # %lor.lhs.false.491.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	2928(%rsp), %rax
	movl	72(%rax), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_110
.LBB1_109:                              # %if.then.499.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, 2896(%rsp)
	movq	256(%rsp), %rcx         # 8-byte Reload
.LBB1_153:                              # %if.end.521.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movl	148(%rcx), %esi
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	pdf_set_text_wmode
	movq	2896(%rsp), %rdx
	leaq	2936(%rsp), %rdi
	movq	%r15, %rsi
	leaq	2872(%rsp), %rcx
	callq	pdf_update_text_state
	testl	%eax, %eax
	js	.LBB1_106
# BB#154:                               # %if.end.527.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	80(%r15), %rax
	movq	%rax, 2864(%rsp)
	movups	64(%r15), %xmm0
	movaps	%xmm0, 2848(%rsp)
	movupd	(%r15), %xmm0
	movupd	16(%r15), %xmm1
	movupd	32(%r15), %xmm2
	movupd	48(%r15), %xmm3
	movapd	%xmm3, 2832(%rsp)
	movapd	%xmm2, 2816(%rsp)
	movapd	%xmm1, 2800(%rsp)
	movapd	%xmm0, 2784(%rsp)
	movq	248(%rsp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB1_157
# BB#155:                               # %land.lhs.true.530.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	128(%rdx), %eax
	decl	%eax
	cmpl	$2, %eax
	jb	.LBB1_157
# BB#156:                               # %if.then.538.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	196(%rsp), %eax         # 4-byte Reload
	addq	3064(%rsp), %rax
	movq	%rax, 3000(%rsp)
	movl	%r13d, 3008(%rsp)
.LBB1_157:                              # %if.end.546.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testb	$1, 1(%r15)
	movq	160(%rsp), %rbp         # 8-byte Reload
	je	.LBB1_162
# BB#158:                               # %if.then.551.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	64(%r15), %rax
	testq	%rax, %rax
	je	.LBB1_160
# BB#159:                               # %if.then.556.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	imull	%ebp, %ecx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 64(%r15)
.LBB1_160:                              # %if.end.562.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	72(%r15), %rax
	testq	%rax, %rax
	je	.LBB1_162
# BB#161:                               # %if.then.567.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	imull	%ebp, %ecx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 72(%r15)
.LBB1_162:                              # %if.end.574.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$0, 236(%r15)
	testq	%rdx, %rdx
	je	.LBB1_169
# BB#163:                               # %land.lhs.true.577.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	128(%rdx), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_169
# BB#164:                               # %if.then.585.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %r13
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movq	112(%r13), %rbp
	movq	2896(%rsp), %rdi
	movq	%rdx, %r15
	movq	3000(%rsp), %rsi
	movl	3008(%rsp), %edx
	callq	adjust_first_last_char
	movq	%r15, 112(%r13)
	movl	3288(%rsp), %eax
	subl	196(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r15, %r13
	leaq	2936(%rsp), %rdx
	leaq	3000(%rsp), %rcx
	leaq	2912(%rsp), %r8
	movq	184(%rsp), %r9          # 8-byte Reload
	callq	process_text_modify_width
	testl	%eax, %eax
	js	.LBB1_165
# BB#166:                               # %if.end.596.i
                                        #   in Loop: Header=BB1_3 Depth=1
	xorl	%ecx, %ecx
	testl	%ebx, %ebx
	je	.LBB1_168
# BB#167:                               # %if.then.598.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	224(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	184(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, (%rdx)
	movl	$1, %ecx
	movq	136(%rsp), %r13         # 8-byte Reload
.LBB1_168:                              # %cleanup.605.thread.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	216(%rsp), %r15         # 8-byte Reload
	movq	%rbp, 112(%r15)
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movl	240(%rsp), %ebx         # 4-byte Reload
	movq	160(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB1_170
	.align	16, 0x90
.LBB1_93:                               #   in Loop: Header=BB1_3 Depth=1
	movq	216(%rsp), %r15         # 8-byte Reload
	movl	240(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB1_186
.LBB1_102:                              #   in Loop: Header=BB1_3 Depth=1
	movl	240(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB1_185
.LBB1_104:                              #   in Loop: Header=BB1_3 Depth=1
	movl	240(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB1_185
.LBB1_192:                              # %cleanup.470.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 192(%r15)
	orl	%ebp, (%r15)
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%r15)
	movl	$1, %edi
	movl	240(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB1_184
.LBB1_169:                              # %if.else.608.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rdx, %r13
	movl	3288(%rsp), %eax
	subl	196(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 8(%rsp)
	movl	$1, (%rsp)
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	leaq	2936(%rsp), %rdx
	leaq	3000(%rsp), %rcx
	leaq	2912(%rsp), %r8
	callq	process_text_modify_width
	movl	240(%rsp), %ebx         # 4-byte Reload
.LBB1_170:                              # %if.end.612.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testb	$1, 1(%r15)
	movq	%r13, %rsi
	movl	$1, %edi
	je	.LBB1_175
# BB#171:                               # %if.then.617.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	64(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB1_173
# BB#172:                               # %if.then.622.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	imull	%ebp, %edx
	shlq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 64(%r15)
.LBB1_173:                              # %if.end.628.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	72(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB1_175
# BB#174:                               # %if.then.633.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	128(%rsp), %rdx         # 8-byte Reload
	imull	%ebp, %edx
	shlq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 72(%r15)
.LBB1_175:                              # %if.end.641.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	2864(%rsp), %rcx
	movq	%rcx, 80(%r15)
	movaps	2848(%rsp), %xmm0
	movups	%xmm0, 64(%r15)
	movapd	2784(%rsp), %xmm0
	movapd	2800(%rsp), %xmm1
	movapd	2816(%rsp), %xmm2
	movapd	2832(%rsp), %xmm3
	movupd	%xmm3, 48(%r15)
	movupd	%xmm2, 32(%r15)
	movupd	%xmm1, 16(%r15)
	movupd	%xmm0, (%r15)
	movl	$0, 468(%r15)
	testl	%eax, %eax
	js	.LBB1_176
# BB#177:                               # %if.end.649.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	movl	%eax, 232(%r15)
	movl	%r12d, 236(%r15)
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 9528(%rax)
	je	.LBB1_183
# BB#178:                               # %if.then.653.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	256(%rsp), %rax         # 8-byte Reload
	movsd	376(%rax), %xmm1        # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	392(%rax), %xmm1
	jne	.LBB1_180
	jp	.LBB1_180
# BB#179:                               #   in Loop: Header=BB1_3 Depth=1
	xorpd	%xmm1, %xmm1
	jmp	.LBB1_182
.LBB1_110:                              # %if.else.500.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	440(%rax), %rcx
	addq	$16, %rcx
	movq	232(%rsp), %rdi         # 8-byte Reload
	movl	180(%rsp), %edx         # 4-byte Reload
	leaq	2896(%rsp), %r8
	callq	pdf_obtain_parent_type0_font_resource
	testl	%eax, %eax
	js	.LBB1_106
# BB#111:                               # %if.end.508.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	2896(%rsp), %rax
	cmpb	$0, 184(%rax)
	movq	256(%rsp), %rcx         # 8-byte Reload
	jne	.LBB1_153
# BB#112:                               # %if.then.512.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%r15, 216(%rsp)         # 8-byte Spill
	movq	440(%rcx), %rcx
	movq	232(%rsp), %rax         # 8-byte Reload
	movsd	9368(%rax), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$39, %ebp
	ja	.LBB1_115
# BB#113:                               # %cond.false.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$18, %ebp
	ja	.LBB1_115
# BB#114:                               # %cond.false.4.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movsd	.LCPI1_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$0, %ebp
	movl	$12, %eax
	cmovaq	%rax, %rbp
.LBB1_115:                              # %cond.end.8.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	shlq	$3, %rbp
	movl	$standard_cmap_names, %eax
	addq	%rax, %rbp
	movq	$0, 272(%rsp)
	movl	$-1, %eax
	je	.LBB1_193
# BB#116:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%r13d, 88(%rsp)         # 4-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	184(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	(%rbp), %r15
	movl	24(%rcx), %r13d
	movq	%rcx, 208(%rsp)         # 8-byte Spill
.LBB1_117:                              # %for.body.i.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	callq	strlen
	cmpq	%rax, %r13
	jne	.LBB1_119
# BB#118:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB1_117 Depth=2
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rsi
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB1_122
.LBB1_119:                              # %for.inc.i.i
                                        #   in Loop: Header=BB1_117 Depth=2
	movq	8(%rbp), %r15
	addq	$8, %rbp
	testq	%r15, %r15
	jne	.LBB1_117
	jmp	.LBB1_120
.LBB1_176:                              # %if.then.646.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	196(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 232(%r15)
	movl	%ebp, 236(%r15)
	jmp	.LBB1_185
.LBB1_180:                              # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movsd	384(%rax), %xmm1        # xmm1 = mem[0],zero
	ucomisd	400(%rax), %xmm1
	xorpd	%xmm1, %xmm1
	jne	.LBB1_181
	jnp	.LBB1_182
.LBB1_181:                              # %if.then.10.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	104(%r15), %rax
	movups	132(%rax), %xmm0
	movaps	%xmm0, 3568(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	456(%r15), %xmm0
	movsd	.LCPI1_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 3584(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	460(%r15), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 3588(%rsp)
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	3568(%rsp), %r13
	movq	%r13, %rsi
	movq	%r13, %rdx
	callq	gs_matrix_multiply
	movq	256(%rsp), %rbx         # 8-byte Reload
	movsd	376(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	384(%rbx), %xmm1        # xmm1 = mem[0],zero
	movq	%r13, %rdi
	leaq	3552(%rsp), %rsi
	callq	gs_point_transform
	movsd	376(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rbx), %xmm1        # xmm1 = mem[0],zero
	movq	%r13, %rdi
	leaq	3536(%rsp), %rsi
	callq	gs_point_transform
	movsd	384(%rbx), %xmm1        # xmm1 = mem[0],zero
	movsd	392(%rbx), %xmm0        # xmm0 = mem[0],zero
	movq	%r13, %rdi
	leaq	3520(%rsp), %rsi
	callq	gs_point_transform
	movsd	392(%rbx), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rbx), %xmm1        # xmm1 = mem[0],zero
	movq	%r13, %rdi
	leaq	3504(%rsp), %rsi
	callq	gs_point_transform
	movsd	3560(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	3544(%rsp), %xmm2       # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	minsd	%xmm2, %xmm1
	movsd	3528(%rsp), %xmm3       # xmm3 = mem[0],zero
	movapd	%xmm2, %xmm4
	minsd	%xmm3, %xmm4
	minsd	%xmm4, %xmm1
	maxsd	%xmm2, %xmm0
	maxsd	%xmm3, %xmm2
	maxsd	%xmm2, %xmm0
.LBB1_182:                              # %estimate_fontbbox.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	456(%r15), %xmm2
	mulsd	.LCPI1_3(%rip), %xmm2
	movsd	2912(%rsp), %xmm3       # xmm3 = mem[0],zero
	addsd	%xmm2, %xmm3
	movsd	.LCPI1_4(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	mulsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	mulsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %edx
	subl	%ecx, %edx
	movl	%edx, 208(%rsp)         # 4-byte Spill
	mulsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %ebp
	subl	%eax, %ebp
	movl	%ebp, 160(%rsp)         # 4-byte Spill
	movq	232(%rsp), %rbx         # 8-byte Reload
	incl	9776(%rbx)
	movq	136(%r15), %rsi
	leaq	928(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	gx_make_clip_device_on_stack
	movq	%rbx, %rdi
	callq	gx_device_black
	movq	%rax, 280(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 272(%rsp)
	movl	$0, 632(%rsp)
	leaq	272(%rsp), %r13
	movq	%r13, 8(%rsp)
	movl	%ebp, %r8d
	movl	%r8d, (%rsp)
	movl	$252, 16(%rsp)
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	180(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %esi
	movl	196(%rsp), %edx         # 4-byte Reload
	movl	208(%rsp), %r9d         # 4-byte Reload
	callq	gx_default_fill_triangle
	movq	%r13, 8(%rsp)
	movl	160(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$252, 16(%rsp)
	xorl	%r8d, %r8d
	leaq	928(%rsp), %rdi
	movl	%ebp, %esi
	movl	196(%rsp), %edx         # 4-byte Reload
	movl	208(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %r9d
	callq	gx_default_fill_triangle
	decl	9776(%rbx)
	movl	240(%rsp), %ebx         # 4-byte Reload
.LBB1_183:                              # %if.end.716.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	leaq	2912(%rsp), %rsi
	callq	pdf_shift_text_currentpoint
	movl	%eax, %edi
	shrl	$31, %edi
	testl	%eax, %eax
	cmovsl	%eax, %r14d
	movl	%r14d, %eax
.LBB1_184:                              # %cleanup.722.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	248(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB1_185
.LBB1_165:                              #   in Loop: Header=BB1_3 Depth=1
	movq	216(%rsp), %r15         # 8-byte Reload
	movl	240(%rsp), %ebx         # 4-byte Reload
	movq	%r13, %rsi
	movl	$1, %edi
	jmp	.LBB1_185
.LBB1_122:                              # %for.end.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testq	%r15, %r15
	je	.LBB1_120
# BB#123:                               #   in Loop: Header=BB1_3 Depth=1
	xorl	%esi, %esi
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	88(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB1_131
.LBB1_120:                              # %if.end.25.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	180(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %esi
	callq	gs_cmap_is_identity
	testl	%eax, %eax
	setne	%sil
	movl	88(%rsp), %r13d         # 4-byte Reload
	jne	.LBB1_121
# BB#124:                               # %if.end.25.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	(%rbp), %rax
	testq	%rax, %rax
	movq	232(%rsp), %rcx         # 8-byte Reload
	jne	.LBB1_125
# BB#126:                               # %if.then.30.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movslq	%r15d, %rdx
	movq	208(%rsp), %rbp         # 8-byte Reload
	addq	8(%rbp), %rdx
	movl	$9, %esi
	movq	%rcx, %rdi
	callq	pdf_find_resource_by_gs_id
	movq	%rax, 272(%rsp)
	testq	%rax, %rax
	je	.LBB1_128
# BB#127:                               #   in Loop: Header=BB1_3 Depth=1
	xorl	%esi, %esi
	movq	%rbp, %rdx
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_130
.LBB1_121:                              #   in Loop: Header=BB1_3 Depth=1
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	208(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_131
.LBB1_125:                              #   in Loop: Header=BB1_3 Depth=1
	movq	208(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB1_131
.LBB1_128:                              # %if.then.35.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	leaq	272(%rsp), %rdx
	movl	%r15d, %ecx
	callq	pdf_cmap_alloc
	testl	%eax, %eax
	movq	%rbp, %rdx
	movq	80(%rsp), %rbp          # 8-byte Reload
	js	.LBB1_193
# BB#129:                               #   in Loop: Header=BB1_3 Depth=1
	xorl	%esi, %esi
.LBB1_130:                              # %if.end.42.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	232(%rsp), %rcx         # 8-byte Reload
.LBB1_131:                              # %if.end.42.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$0, 76(%rdx)
	je	.LBB1_142
# BB#132:                               # %if.then.44.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%esi, 180(%rsp)         # 4-byte Spill
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rdi, %rbp
	leaq	928(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_cmap_ranges_enum_init
	movq	%r15, %rdi
	callq	gs_cmap_enum_next_range
	testl	%eax, %eax
	jne	.LBB1_141
# BB#133:                               # %if.then.44.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$2, 936(%rsp)
	jne	.LBB1_141
# BB#134:                               # %land.lhs.true.52.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	leaq	928(%rsp), %rdi
	callq	gs_cmap_enum_next_range
	cmpl	$1, %eax
	jne	.LBB1_141
# BB#135:                               # %if.then.56.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movslq	72(%rbp), %rdx
	movq	232(%rsp), %r8          # 8-byte Reload
	cmpq	$0, 28632(%r8,%rdx,8)
	je	.LBB1_137
# BB#136:                               #   in Loop: Header=BB1_3 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB1_140
.LBB1_137:                              # %if.then.58.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	24(%r8), %rcx
	movl	$2, %esi
	leaq	3568(%rsp), %rdi
	movq	%r8, %r15
	callq	gs_cmap_create_char_identity
	testl	%eax, %eax
	js	.LBB1_193
# BB#138:                               # %if.end.64.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	3568(%rsp), %rsi
	movl	$2, (%rsi)
	movl	$1, 80(%rsi)
	movslq	72(%rbp), %rax
	leaq	28632(%r15,%rax,8), %rdx
	movl	$-1, %ecx
	movq	%r15, %rdi
	callq	pdf_cmap_alloc
	testl	%eax, %eax
	js	.LBB1_193
# BB#139:                               # %cleanup.thread72.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	72(%rbp), %edx
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%r15, %r8
.LBB1_140:                              # %if.end.74.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movslq	%edx, %rax
	movq	28632(%r8,%rax,8), %rax
	movq	%rax, 144(%rcx)
.LBB1_141:                              # %cleanup.80.thread.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rbp, %rdx
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	180(%rsp), %esi         # 4-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
.LBB1_142:                              # %if.end.83.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, 272(%rsp)
	setne	%al
	orb	%sil, %al
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.LBB1_150
# BB#143:                               # %if.then.86.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%esi, 180(%rsp)         # 4-byte Spill
	movl	24(%rdx), %r15d
	movq	%rdx, %rbp
	movq	1728(%rcx), %rdi
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movl	$.L.str.1, %edx
	movl	%r15d, %esi
	callq	*136(%rdi)
	movq	%rbp, %rcx
	movq	%rax, %rbp
	movl	$-25, %eax
	testq	%rbp, %rbp
	je	.LBB1_193
# BB#144:                               # %if.end.95.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rcx), %rsi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	movq	%r15, 88(%rsp)          # 8-byte Spill
	callq	memcpy
	movl	180(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB1_148
# BB#145:                               # %if.then.101.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 72(%rax)
	movq	%rax, %r15
	movl	$.L.str.2, %esi
	jne	.LBB1_147
# BB#146:                               # %select.mid275
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$.L.str.3, %esi
.LBB1_147:                              # %select.end274
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	strcpy
	jmp	.LBB1_149
.LBB1_150:                              # %if.else.125.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	(%rbp), %rdx
	movl	$-10, %eax
	testq	%rdx, %rdx
	je	.LBB1_193
# BB#151:                               # %if.end.128.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	gs_sprintf
	movq	(%rbp), %rax
	movq	96(%rsp), %r15          # 8-byte Reload
	movq	%rax, 216(%r15)
	movq	(%rbp), %rdi
	callq	strlen
	movq	%r15, %rsi
	movq	208(%rsp), %rdx         # 8-byte Reload
	movl	%eax, 224(%rsi)
	movl	$1, 236(%rsi)
	movq	256(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB1_152
.LBB1_193:                              # %attach_cmap_resource.exit.thread.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	216(%rsp), %r15         # 8-byte Reload
.LBB1_106:                              #   in Loop: Header=BB1_3 Depth=1
	movl	240(%rsp), %ebx         # 4-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	movl	$1, %edi
.LBB1_185:                              # %cleanup.722.i
                                        #   in Loop: Header=BB1_3 Depth=1
	testl	%edi, %edi
	movq	%rsi, %rcx
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movl	%eax, %r14d
	jne	.LBB1_189
.LBB1_186:                              # %if.end.728.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, %rdi
	callq	pdf_text_release_cgp
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	orl	244(%rsp), %ecx         # 4-byte Folded Reload
	jne	.LBB1_187
# BB#188:                               # %cleanup.735.thread378.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	2928(%rsp), %rax
	movq	%rax, 3048(%rsp)
	movq	120(%r15), %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	gx_path_current_point
	testl	%eax, %eax
	movq	264(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 196(%rsp)         # 4-byte Spill
	jns	.LBB1_3
	jmp	.LBB1_189
.LBB1_148:                              # %if.else.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	208(%rsp), %r15         # 8-byte Reload
	movq	272(%rsp), %rdi
	callq	pdf_resource_id
	movq	%rax, %rcx
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rdx
	callq	gs_sprintf
.LBB1_149:                              # %cleanup.121.thread.i.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, 216(%rsi)
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, 224(%rsi)
	movq	256(%rsp), %rcx         # 8-byte Reload
	movq	%r15, %rdx
.LBB1_152:                              # %attach_cmap_resource.exit.i
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	72(%rdx), %eax
	movl	%eax, 240(%rsi)
	movq	216(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_153
	.align	16, 0x90
.LBB1_3:                                # %do.body.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_117 Depth 2
	movq	%r12, 160(%rsp)         # 8-byte Spill
	movl	%ebx, 180(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	$2074996749, 240(%rsp)  # 4-byte Folded Spill
                                        # imm = 0x7BADF00D
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	%r14d, %r15d
	jmp	.LBB1_4
.LBB1_60:                               # %land.lhs.true.263.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%eax, %eax
	movq	248(%rsp), %r14         # 8-byte Reload
	jne	.LBB1_79
# BB#61:                                # %land.lhs.true.263.if.then.265_crit_edge.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rdi
.LBB1_62:                               # %if.then.265.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rdx
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movq	104(%rsp), %r9          # 8-byte Reload
	jne	.LBB1_64
# BB#63:                                # %select.mid172
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%r9d, %r9d
.LBB1_64:                               # %select.end171
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	116(%rsp), %esi         # 4-byte Reload
	movq	%r14, %rcx
	leaq	928(%rsp), %r8
	callq	pdf_glyph_widths
	movl	$1, %r13d
	testl	%eax, %eax
	js	.LBB1_65
# BB#66:                                # %if.end.279.i
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$3, %eax
	jne	.LBB1_68
# BB#67:                                # %if.then.282.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rax
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 424(%rcx)
	movq	%r14, 192(%rcx)
	movq	%r14, 248(%rsp)         # 8-byte Spill
	movl	$3, 156(%rsp)           # 4-byte Folded Spill
	jmp	.LBB1_85
.LBB1_68:                               # %if.then.288.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rdi
	movl	120(%rdi), %eax
	cmpq	%rax, %rbp
	jbe	.LBB1_70
# BB#69:                                #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, 248(%rsp)         # 8-byte Spill
	movl	$-28, %r15d
	jmp	.LBB1_86
.LBB1_70:                               # %if.end.293.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	928(%rsp), %rax
	movq	3552(%rsp), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	3536(%rsp), %rax
	testq	%rax, %rax
	je	.LBB1_72
# BB#71:                                # %if.then.298.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	952(%rsp), %rcx
	movq	%rbp, %rdx
	shlq	$4, %rdx
	movq	%rcx, (%rax,%rdx)
	movq	960(%rsp), %rcx
	movq	%rcx, 8(%rax,%rdx)
.LBB1_72:                               # %if.end.313.i
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	movq	968(%rsp), %rax
	movq	2872(%rsp), %rcx
	movq	%rax, (%rcx,%rbp,8)
	je	.LBB1_77
# BB#73:                                # %if.then.315.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rdx
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movq	104(%rsp), %r9          # 8-byte Reload
	jne	.LBB1_75
# BB#74:                                # %select.mid189
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%r9d, %r9d
.LBB1_75:                               # %select.end188
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%esi, %esi
	movq	%r14, %rcx
	leaq	928(%rsp), %r8
	callq	pdf_glyph_widths
	testl	%eax, %eax
	js	.LBB1_65
# BB#76:                                # %if.end.328.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	928(%rsp), %rax
	movq	3520(%rsp), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	2928(%rsp), %rdi
.LBB1_77:                               # %if.end.332.i
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpq	$0, 184(%rdi)
	je	.LBB1_79
# BB#78:                                # %if.then.336.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rsi
	movq	%r14, %rdi
	callq	*720(%r14)
	movq	2928(%rsp), %rcx
	movq	184(%rcx), %rcx
	movw	%ax, (%rcx,%rbp,2)
.LBB1_79:                               # %if.end.346.i
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	je	.LBB1_81
# BB#80:                                # %if.then.348.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	movq	%rbp, %rcx
	shrq	$3, %rcx
	movq	2928(%rsp), %rdx
	movq	224(%rdx), %rdx
	movzbl	(%rdx,%rcx), %esi
	orl	%eax, %esi
	movb	%sil, (%rdx,%rcx)
.LBB1_81:                               # %cleanup.360.thread371.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rsi
	jmp	.LBB1_82
.LBB1_65:                               #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, 248(%rsp)         # 8-byte Spill
	movl	%eax, %r15d
	jmp	.LBB1_86
	.align	16, 0x90
.LBB1_4:                                # %do.body.i
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	3288(%rsp), %r12
	movq	%r12, 264(%rsp)         # 8-byte Spill
	shrq	$32, %r12
	leaq	3056(%rsp), %rdi
	leaq	272(%rsp), %rsi
	leaq	2784(%rsp), %rdx
	movq	256(%rsp), %rax         # 8-byte Reload
	callq	*256(%rax)
	movl	%eax, %r14d
	xorl	%ebx, %ebx
	cmpl	$2, %r14d
	jne	.LBB1_6
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	movl	$4, %r13d
	movl	$1, 244(%rsp)           # 4-byte Folded Spill
.LBB1_86:                               # %cleanup.381.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r15d, %r14d
	jmp	.LBB1_87
	.align	16, 0x90
.LBB1_6:                                # %if.end.10.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$1, %r13d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#7:                                 # %if.end.13.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movslq	3296(%rsp), %rax
	shlq	$4, %rax
	movq	3304(%rsp,%rax), %rdx
	movl	3296(%rsp,%rax), %eax
	movl	%eax, 240(%rsp)         # 4-byte Spill
	incl	3292(%rsp)
	movq	2784(%rsp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB1_9
# BB#8:                                 # %if.then.25.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$2147483648, %eax       # imm = 0x80000000
	movq	%rax, 2784(%rsp)
	movl	$2147483648, %eax       # imm = 0x80000000
.LBB1_9:                                # %if.end.26.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	128(%rdx), %ecx
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movl	$-15, %r14d
	decl	%ecx
	cmpl	$10, %ecx
	ja	.LBB1_87
# BB#10:                                # %if.end.26.i
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	-2147483648(%rax), %rbp
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_11:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$2147483648, %ecx       # imm = 0x80000000
	cmpq	%rcx, %rax
	jne	.LBB1_13
# BB#12:                                # %if.then.29.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	272(%rsp), %rsi
	xorl	%edx, %edx
	movq	248(%rsp), %rdi         # 8-byte Reload
	callq	*200(%rdi)
	movq	%rax, 2784(%rsp)
.LBB1_13:                               # %if.end.32.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	224(%rsp), %rdx         # 8-byte Reload
	movslq	%edx, %rdx
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx,%rdx,8)
	incl	%edx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	jmp	.LBB1_20
.LBB1_14:                               # %sw.bb.36.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%rax, 3040(%rsp)
	movq	%rbp, 3032(%rsp)
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	leaq	2928(%rsp), %rdx
	leaq	3016(%rsp), %rcx
	callq	pdf_obtain_cidfont_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB1_20
	jmp	.LBB1_87
.LBB1_15:                               # %sw.bb.46.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	$0, 928(%rsp)
	movl	$0, 936(%rsp)
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%rdi)
	leaq	928(%rsp), %rsi
	leaq	2928(%rsp), %rdx
	callq	pdf_obtain_font_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#16:                                # %if.end.50.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rdi
	movq	2784(%rsp), %rsi
	callq	pdf_find_glyph
	cmpq	$-1, %rax
	jne	.LBB1_19
# BB#17:                                # %if.then.53.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	leaq	2928(%rsp), %rdx
	callq	pdf_make_font3_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#18:                                # %if.end.57.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rdx
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	callq	pdf_attach_font_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	movl	$0, %eax
	js	.LBB1_87
.LBB1_19:                               # %cleanup.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%rax, %rbp
.LBB1_20:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	2908(%rsp), %rax
	movq	%rax, (%rsp)
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	leaq	2928(%rsp), %rdx
	leaq	3568(%rsp), %rcx
	leaq	2872(%rsp), %r8
	leaq	2896(%rsp), %r9
	callq	pdf_attached_font_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#21:                                # %if.end.66.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	264(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	jbe	.LBB1_23
# BB#22:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30560(%rax)
	jne	.LBB1_85
.LBB1_23:                               # %if.end.69.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	248(%rsp), %r14         # 8-byte Reload
	movl	128(%r14), %eax
	cmpl	$3, %eax
	jne	.LBB1_28
# BB#24:                                # %land.lhs.true.72.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	264(%rsp), %rcx         # 8-byte Reload
	cmpl	%eax, %ecx
	ja	.LBB1_26
# BB#25:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 30560(%rax)
	jne	.LBB1_30
.LBB1_26:                               # %land.lhs.true.76.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%rbp, %rax
	shrq	$3, %rax
	movq	2928(%rsp), %rcx
	movq	296(%rcx), %rcx
	movzbl	(%rcx,%rax), %eax
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	testl	%edx, %eax
	jne	.LBB1_30
# BB#27:                                # %if.then.82.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	%r14, 192(%rax)
	movl	$-21, %r14d
	jmp	.LBB1_87
.LBB1_28:                               # %if.end.84.i
                                        #   in Loop: Header=BB1_4 Depth=2
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_30
# BB#29:                                # %if.then.92.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	208(%rsp), %rdx         # 8-byte Reload
	cmpq	%rdx, %r14
	setne	%al
	testq	%rdx, %rdx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %ebx
	movq	136(%rsp), %rax         # 8-byte Reload
	cmovneq	%r14, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%r14, %rax
	cmovneq	%rdx, %rax
	movq	224(%rsp), %rcx         # 8-byte Reload
	subl	%ebx, %ecx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	%rax, %r14
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	3048(%rsp), %rax
	cmpq	%rax, 2928(%rsp)
	setne	%cl
	testq	%rax, %rax
	setne	%al
	andb	%cl, %al
	movzbl	%al, %ebx
.LBB1_31:                               # %if.end.107.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%ebx, %ebx
	jne	.LBB1_33
# BB#32:                                # %if.then.109.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rax
	movq	%rax, 3048(%rsp)
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	%r14, 208(%rsp)         # 8-byte Spill
.LBB1_33:                               # %if.end.110.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	128(%r14), %eax
	decl	%eax
	cmpl	$2, %eax
	jb	.LBB1_83
# BB#34:                                # %if.then.118.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, 248(%rsp)         # 8-byte Spill
	movq	2928(%rsp), %rsi
	movq	104(%rsi), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leal	1(%rbp), %edx
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	pdf_resize_resource_arrays
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#35:                                # %if.end.124.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	128(%rax), %eax
	orl	$2, %eax
	cmpl	$11, %eax
	jne	.LBB1_37
# BB#36:                                # %if.then.132.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movslq	2908(%rsp), %rax
	cmpq	%rax, %rbp
	movl	$0, %eax
	cmovaeq	%rax, %rbp
.LBB1_37:                               # %if.end.138.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movslq	2896(%rsp), %rax
	movl	$-28, %r14d
	cmpq	%rax, %rbp
	jae	.LBB1_87
# BB#38:                                # %lor.lhs.false.142.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movslq	2908(%rsp), %rax
	cmpq	%rax, %rbp
	jae	.LBB1_87
# BB#39:                                # %if.end.147.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rsi
	movl	72(%rsi), %eax
	decl	%eax
	cmpl	$3, %eax
	jae	.LBB1_41
# BB#40:                                #   in Loop: Header=BB1_4 Depth=2
	movq	248(%rsp), %r14         # 8-byte Reload
.LBB1_82:                               # %if.end.364.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	shrq	$3, %rbp
	movq	136(%rsi), %rcx
	movzbl	(%rcx,%rbp), %edx
	orl	%eax, %edx
	movb	%dl, (%rcx,%rbp)
.LBB1_83:                               # %if.end.374.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%r14, 248(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB1_86
# BB#84:                                # %if.then.377.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	3288(%rsp), %r12
	movq	%r12, 264(%rsp)         # 8-byte Spill
	shrq	$32, %r12
.LBB1_85:                               # %cleanup.381.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$4, %r13d
	jmp	.LBB1_86
.LBB1_41:                               # %if.else.160.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	232(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movl	116(%rsp), %edx         # 4-byte Reload
	leaq	3552(%rsp), %rcx
	leaq	3520(%rsp), %r8
	leaq	3536(%rsp), %r9
	callq	pdf_obtain_cidfont_widths_arrays
	movl	%eax, %r14d
	movl	$1, %r13d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#42:                                # %if.end.165.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rsi
	movq	256(%rsp), %rax         # 8-byte Reload
	movq	440(%rax), %rcx
	addq	$16, %rcx
	movq	%rbp, %rdi
	movl	240(%rsp), %edx         # 4-byte Reload
	leaq	3504(%rsp), %r8
	callq	pdf_obtain_parent_type0_font_resource
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#43:                                # %if.end.171.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	248(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	callq	pdf_is_CID_font
	testl	%eax, %eax
	je	.LBB1_47
# BB#44:                                # %if.then.174.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rsi
	movl	$-1, %edx
	movq	%r14, %rdi
	callq	*208(%r14)
	cmpq	$-1, %rax
	je	.LBB1_46
# BB#45:                                # %if.then.179.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	3504(%rsp), %rdx
	movq	272(%rsp), %r8
	movl	$2147483648, %eax       # imm = 0x80000000
	leaq	(%r8,%rax), %rcx
	xorl	%r9d, %r9d
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	jmp	.LBB1_48
.LBB1_47:                               # %if.else.187.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	3504(%rsp), %rdx
	movq	2784(%rsp), %rcx
	xorl	%r9d, %r9d
	movq	232(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	96(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_48
.LBB1_46:                               # %if.else.182.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	112(%rax), %rsi
	movq	3504(%rsp), %rdx
	movq	272(%rsp), %r8
	movl	$2147483648, %eax       # imm = 0x80000000
	leaq	(%r8,%rax), %rcx
	xorl	%r9d, %r9d
	movq	232(%rsp), %rdi         # 8-byte Reload
.LBB1_48:                               # %if.end.189.i
                                        #   in Loop: Header=BB1_4 Depth=2
	callq	pdf_add_ToUnicode
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB1_87
# BB#49:                                # %if.end.193.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rdx         # 8-byte Reload
	callq	pdf_font_used_glyph
	movl	%eax, %r14d
	cmpl	$-15, %r14d
	jne	.LBB1_56
# BB#50:                                # %if.then.197.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %r13
	shrq	$3, %r13
	movq	2928(%rsp), %rdi
	movq	136(%rdi), %rax
	movzbl	(%rax,%r13), %eax
	andb	$7, %cl
	movl	$128, %r14d
	shrl	%cl, %r14d
	testl	%r14d, %eax
	jne	.LBB1_52
# BB#51:                                # %if.then.206.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	324(%rax), %rsi
	movl	372(%rax), %eax
	cmpl	$47, %eax
	movl	$47, %ecx
	cmoval	%ecx, %eax
	movslq	%eax, %rbp
	leaq	928(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, 928(%rsp,%rbp)
	movq	232(%rsp), %rbp         # 8-byte Reload
	movq	24(%rbp), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	callq	gs_program_name
	movq	%rax, 88(%rsp)          # 8-byte Spill
	callq	gs_revision_number
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	24(%rbp), %rdi
	movl	2784(%rsp), %ecx
	movl	$2147483648, %eax       # imm = 0x80000000
	addl	%eax, %ecx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	928(%rsp), %r8
	callq	errprintf
	movq	2928(%rsp), %rax
	movq	136(%rax), %rax
	movzbl	(%rax,%r13), %ecx
	orl	%r14d, %ecx
	movb	%cl, (%rax,%r13)
	movq	2928(%rsp), %rdi
.LBB1_52:                               # %if.end.237.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	128(%rdi), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	.LCPI1_5, %xmm0
	movl	$0, %ebp
	movq	248(%rsp), %r14         # 8-byte Reload
	jne	.LBB1_79
	jp	.LBB1_79
# BB#53:                                # %if.then.241.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2784(%rsp), %rdx
	movq	144(%rsp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movq	104(%rsp), %r9          # 8-byte Reload
	jne	.LBB1_55
# BB#54:                                # %select.mid
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%r9d, %r9d
.LBB1_55:                               # %select.end
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	116(%rsp), %esi         # 4-byte Reload
	movq	%r14, %rcx
	leaq	928(%rsp), %r8
	callq	pdf_glyph_widths
	movl	%eax, %r14d
	movl	$1, %eax
	xorl	%ebp, %ebp
	jmp	.LBB1_57
.LBB1_56:                               # %if.else.250.i
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%eax, %eax
	testl	%r14d, %r14d
	movq	96(%rsp), %rbp          # 8-byte Reload
	js	.LBB1_87
.LBB1_57:                               # %if.end.255.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%r14d, %r14d
	je	.LBB1_60
# BB#58:                                # %lor.lhs.false.258.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%eax, %eax
	movq	248(%rsp), %r14         # 8-byte Reload
	jne	.LBB1_79
# BB#59:                                # %lor.lhs.false.258.i
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	2928(%rsp), %rdi
	movq	128(%rdi), %rax
	movsd	(%rax,%rbp,8), %xmm0    # xmm0 = mem[0],zero
	ucomisd	.LCPI1_5, %xmm0
	jne	.LBB1_79
	jnp	.LBB1_62
	jmp	.LBB1_79
	.align	16, 0x90
.LBB1_87:                               # %cleanup.381.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%r13d, %r13d
	jne	.LBB1_88
# BB#91:                                # %do.cond.i
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%ebx, %ebx
	movl	%r14d, %r15d
	je	.LBB1_4
	jmp	.LBB1_92
	.align	16, 0x90
.LBB1_88:                               # %cleanup.381.i
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpl	$4, %r13d
	je	.LBB1_92
# BB#89:                                # %cleanup.735.i
	movl	%r14d, %eax
	movq	144(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_190
.LBB1_189:                              # %cleanup.735.thread.i
	addq	$468, %r15              # imm = 0x1D4
.LBB1_190:                              # %scan_cmap_text.exit
	cmpl	$3, %eax
	sete	%dl
	movzbl	%dl, %edx
	movl	%edx, (%r15)
.LBB1_191:                              # %cleanup
	addq	$3592, %rsp             # imm = 0xE08
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_187:                              # %cleanup.735.thread379.i
	movq	264(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 232(%r15)
	movl	%r12d, 236(%r15)
	movq	144(%rsp), %r15         # 8-byte Reload
	jmp	.LBB1_190
.Lfunc_end1:
	.size	process_cmap_text, .Lfunc_end1-process_cmap_text
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_15
	.quad	.LBB1_87
	.quad	.LBB1_87
	.quad	.LBB1_87
	.quad	.LBB1_87
	.quad	.LBB1_87
	.quad	.LBB1_14
	.quad	.LBB1_87
	.quad	.LBB1_14

	.text
	.globl	process_cid_text
	.align	16, 0x90
	.type	process_cid_text,@function
process_cid_text:                       # @process_cid_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp32:
	.cfi_def_cfa_offset 352
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	(%r12), %r13d
	movq	192(%r12), %r8
	movq	$0, 24(%rsp)
	testb	$8, %r13b
	jne	.LBB2_1
# BB#2:                                 # %if.else
	testb	$32, %r13b
	jne	.LBB2_3
# BB#4:                                 # %if.else.11
	movl	$-15, %eax
	testb	$1, %r13b
	je	.LBB2_22
# BB#5:                                 # %if.then.14
	leaq	200(%r12), %rcx
	jmp	.LBB2_6
.LBB2_1:                                # %if.then
	movq	8(%r12), %rcx
	movl	16(%r12), %esi
	subl	232(%r12), %esi
	jmp	.LBB2_7
.LBB2_3:                                # %if.then.8
	leaq	8(%r12), %rcx
.LBB2_6:                                # %if.end.17
	movl	$1, %esi
.LBB2_7:                                # %if.end.17
	leal	(%rsi,%rsi), %edi
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	$-28, %eax
	cmpl	%edx, %edi
	ja	.LBB2_22
# BB#8:                                 # %for.cond.preheader
	xorl	%edx, %edx
	testl	%esi, %esi
	movq	%r8, %rax
	je	.LBB2_13
# BB#9:
	movq	$-2147483648, %rdi      # imm = 0xFFFFFFFF80000000
	.align	16, 0x90
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rbx
	addq	%rdi, %rbx
	movl	$-15, %eax
	cmpq	$65535, %rbx            # imm = 0xFFFF
	ja	.LBB2_22
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	%r14, %rax
	movb	%bh, (%rax,%rdx,2)  # NOREX
	movb	%bl, 1(%rax,%rdx,2)
	incq	%rdx
	cmpl	%esi, %edx
	jb	.LBB2_10
# BB#12:
	movq	%r8, %rax
	.align	16, 0x90
.LBB2_13:                               # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	64(%rbp), %rax
	cmpq	%rbp, %rax
	jne	.LBB2_13
# BB#14:                                # %for.end.37
	leaq	80(%rbp), %rdi
	movq	%r8, %rbx
	leaq	40(%rsp), %r15
	movq	%r15, %rsi
	callq	gs_matrix_invert
	leaq	80(%rbx), %rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%r15, %rdi
	movq	%r15, %rdx
	callq	gs_matrix_multiply
	leaq	32(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	pdf_obtain_font_resource
	testl	%eax, %eax
	js	.LBB2_22
# BB#15:                                # %if.end.44
	movq	32(%rsp), %rax
	movq	200(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB2_17
# BB#16:                                # %if.then.47
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	24(%rbp), %rdi
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	gs_find_font_by_id
	movq	%rax, %rsi
	movq	%rsi, 24(%rsp)
	jmp	.LBB2_18
.LBB2_17:                               # %if.end.53thread-pre-split
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	24(%rsp), %rsi
.LBB2_18:                               # %if.end.53
	testq	%rsi, %rsi
	jne	.LBB2_21
# BB#19:                                # %if.then.56
	movl	148(%rbp), %edx
	movq	16(%rbp), %r8
	leaq	24(%rsp), %rdi
	leaq	40(%rsp), %rcx
	movq	%rbp, %rsi
	callq	gs_font_type0_from_cidfont
	testl	%eax, %eax
	js	.LBB2_22
# BB#20:                                # %if.end.61
	movq	24(%rsp), %rsi
	movq	56(%rsi), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 200(%rcx)
.LBB2_21:                               # %if.end.65
	movups	96(%r12), %xmm0
	movaps	%xmm0, 272(%rsp)
	movups	80(%r12), %xmm0
	movaps	%xmm0, 256(%rsp)
	movups	64(%r12), %xmm0
	movaps	%xmm0, 240(%rsp)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movaps	%xmm3, 224(%rsp)
	movaps	%xmm2, 208(%rsp)
	movaps	%xmm1, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movq	112(%r12), %r15
	movl	232(%r12), %ebx
	movups	328(%r12), %xmm0
	movups	%xmm0, 156(%rsp)
	movups	316(%r12), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	300(%r12), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	236(%r12), %xmm0
	movups	252(%r12), %xmm1
	movups	268(%r12), %xmm2
	movups	284(%r12), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movq	%rsi, 112(%r12)
	movq	%rsi, 192(%r12)
	andl	$-64, %r13d
	orl	$2, %r13d
	movl	%r13d, (%r12)
	movq	%r14, 8(%r12)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 16(%r12)
	movl	$0, 232(%r12)
	movq	%r12, %rdi
	callq	gs_type0_init_fstack
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	process_cmap_text
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 192(%r12)
	movq	%r15, 112(%r12)
	movq	256(%rsp), %rcx
	movq	%rcx, 80(%r12)
	movaps	240(%rsp), %xmm0
	movups	%xmm0, 64(%r12)
	movaps	176(%rsp), %xmm0
	movaps	192(%rsp), %xmm1
	movaps	208(%rsp), %xmm2
	movaps	224(%rsp), %xmm3
	movups	%xmm3, 48(%r12)
	movups	%xmm2, 32(%r12)
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movl	232(%r12), %ecx
	shrl	%ecx
	addl	%ebx, %ecx
	movl	%ecx, 232(%r12)
	movq	164(%rsp), %rcx
	movq	%rcx, 336(%r12)
	movups	148(%rsp), %xmm0
	movups	%xmm0, 320(%r12)
	movups	132(%rsp), %xmm0
	movups	%xmm0, 304(%r12)
	movups	68(%rsp), %xmm0
	movups	84(%rsp), %xmm1
	movups	100(%rsp), %xmm2
	movups	116(%rsp), %xmm3
	movups	%xmm3, 288(%r12)
	movups	%xmm2, 272(%r12)
	movups	%xmm1, 256(%r12)
	movups	%xmm0, 240(%r12)
.LBB2_22:                               # %cleanup.88
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	process_cid_text, .Lfunc_end2-process_cid_text
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Missing glyph CID=%d, glyph=%04x in the font %s . The output PDF may fail with some viewers.\n"
	.size	.L.str, 94

	.type	standard_cmap_names,@object # @standard_cmap_names
	.section	.rodata,"a",@progbits
	.align	16
standard_cmap_names:
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
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
	.quad	0
	.size	standard_cmap_names, 520

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pdf_font_resource_t(CMapName)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/Identity-V"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/Identity-H"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%ld 0 R"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/%s"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"UniGB-UTF16-H"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"UniGB-UTF16-V"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GBKp-EUC-H"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GBKp-EUC-V"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"HKscs-B5-H"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"HKscs-B5-V"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"UniCNS-UTF16-H"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"UniCNS-UTF16-V"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"UniJIS-UTF16-H"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"UniJIS-UTF16-V"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"UniKS-UTF16-H"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UniKS-UTF16-V"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GBK2K-H"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GBK2K-V"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GBpc-EUC-V"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"GBK-EUC-H"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"GBK-EUC-V"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"UniGB-UCS2-H"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UniGB-UCS2-V"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ETenms-B5-H"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ETenms-B5-V"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UniCNS-UCS2-H"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UniCNS-UCS2-V"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"90msp-RKSJ-H"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"90msp-RKSJ-V"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"EUC-H"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"EUC-V"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UniJIS-UCS2-H"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"UniJIS-UCS2-V"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"UniJIS-UCS2-HW-H"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"UniJIS-UCS2-HW-V"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"KSCms-UHC-HW-H"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"KSCms-UHC-HW-V"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"UniKS-UCS2-H"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"UniKS-UCS2-V"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"GB-EUC-H"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"GB-EUC-V"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"GBpc-EUC-HB5pc-H"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"B5pc-V"
	.size	.L.str.44, 7

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"ETen-B5-H"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"ETen-B5-V"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"CNS-EUC-H"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"CNS-EUC-V"
	.size	.L.str.48, 10

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"83pv-RKSJ-H"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"90ms-RKSJ-H"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"90ms-RKSJ-V"
	.size	.L.str.51, 12

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"90pv-RKSJ-H"
	.size	.L.str.52, 12

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Add-RKSJ-H"
	.size	.L.str.53, 11

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Add-RKSJ-V"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Ext-RKSJ-H"
	.size	.L.str.55, 11

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Ext-RKSJ-V"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"H"
	.size	.L.str.57, 2

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"V"
	.size	.L.str.58, 2

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"KSC-EUC-H"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"KSC-EUC-V"
	.size	.L.str.60, 10

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"KSCms-UHC-H"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"KSCms-UHC-V"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"KSCpc-EUC-H"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Identity-H"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Identity-V"
	.size	.L.str.65, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
