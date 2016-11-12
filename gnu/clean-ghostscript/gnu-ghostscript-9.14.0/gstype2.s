	.text
	.file	"gstype2.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI0_2:
	.quad	4643211215818981376     # double 256
.LCPI0_3:
	.quad	4746794007244308480     # double 2147483647
.LCPI0_4:
	.quad	-4476578029606273024    # double -2147483648
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
.LCPI0_5:
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.long	1132462080              # float 2.560000e+02
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_6:
	.long	1132462080              # float 256
	.text
	.globl	gs_type2_interpret
	.align	16, 0x90
	.type	gs_type2_interpret,@function
gs_type2_interpret:                     # @gs_type2_interpret
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
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp6:
	.cfi_def_cfa_offset 496
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
	movq	%rdi, %rbp
	movq	9856(%rbp), %rbx
	movl	512(%rbx), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movslq	10976(%rbp), %r14
	movl	10980(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB0_1
# BB#3:                                 # %sw.bb.7
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	gs_type1_finish_init
	movl	$132, %r13d
	addq	9864(%rbp), %r13
	leaq	80(%rbx), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	24(%rbx), %rdi
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movq	64(%rbx), %rbx
	addq	$80, %rbx
	movl	9956(%rbp), %r12d
	movl	9968(%rbp), %r15d
	movq	%r14, 192(%rsp)         # 8-byte Spill
	movl	%r12d, %r14d
	subl	9972(%rbp), %r14d
	subl	9976(%rbp), %r15d
	movl	9980(%rbp), %eax
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movl	9984(%rbp), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	callq	gs_currentaligntopixels
	movl	%eax, 32(%rsp)
	movl	144(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	156(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r14d, (%rsp)
	movq	192(%rsp), %r14         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	160(%rsp), %rdx         # 8-byte Reload
	movq	%rbx, %rcx
	movl	%r12d, %r8d
	movl	%r12d, %r9d
	callq	t1_hinter__set_mapping
	testl	%eax, %eax
	js	.LBB0_152
# BB#4:                                 # %if.end
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	448(%rax), %rdx
	movq	%rbp, %rdi
	movl	9880(%rdi), %ecx
	movq	9856(%rdi), %rax
	movl	32(%rax), %r8d
	movl	$2, %esi
	callq	t1_hinter__set_font_data
	testl	%eax, %eax
	jns	.LBB0_5
	jmp	.LBB0_152
.LBB0_1:                                # %entry
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	cmpl	$-1, %eax
	jne	.LBB0_5
# BB#2:                                 # %sw.bb
	movq	%rbp, %rdi
	movq	9872(%rdi), %rsi
	callq	t1_hinter__init
.LBB0_5:                                # %do.body
	decq	%r14
	leaq	(%r14,%r14,8), %rbx
	movslq	10180(%rbp), %rdx
	testq	%rdx, %rdx
	je	.LBB0_6
# BB#7:                                 # %if.else
	leaq	9988(%rbp), %rsi
	shlq	$2, %rdx
	leaq	240(%rsp), %rdi
	callq	memcpy
	movslq	10180(%rbp), %rax
	leaq	236(%rsp,%rax,4), %rax
	jmp	.LBB0_8
.LBB0_6:                                # %if.then.36
	leaq	236(%rsp), %rax
.LBB0_8:                                # %do.end
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	leaq	10184(%rbp,%rbx,8), %r14
	testq	%rax, %rax
	je	.LBB0_9
# BB#13:                                # %if.end.51
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	32(%rax), %xmm2
	movupd	%xmm2, 10240(%rbp,%rbx,8)
	movupd	%xmm1, 10224(%rbp,%rbx,8)
	movupd	%xmm0, 10208(%rbp,%rbx,8)
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movl	$-10, %eax
	testq	%rcx, %rcx
                                        # implicit-def: ECX
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	jne	.LBB0_14
	jmp	.LBB0_152
.LBB0_9:
	movq	160(%rsp), %r15         # 8-byte Reload
                                        # implicit-def: EAX
.LBB0_10:                               # %cont
	movl	%eax, 156(%rsp)         # 4-byte Spill
	leaq	10184(%rbp), %rcx
	movq	%rbp, %rdx
	movl	$-10, %eax
	cmpq	%rcx, %r14
	jb	.LBB0_152
# BB#11:                                # %lor.lhs.false
	movq	(%r14), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_152
# BB#12:                                # %if.end.75
	movq	%r14, %rdi
	movzwl	16(%rdi), %eax
	movl	%eax, 200(%rsp)         # 4-byte Spill
	movq	168(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB0_21
.LBB0_14:                               # %call.57
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdi
	js	.LBB0_15
# BB#16:                                # %if.then.58
	movl	512(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB0_15
# BB#17:                                # %for.body.preheader
	incl	%eax
	movw	$4330, %bp              # imm = 0x10EA
	movq	192(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB0_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ecx
	addl	%ecx, %ebp
	imull	$-12691, %ebp, %ebp     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %ebp            # imm = 0x58BF
	incq	%rbx
	decl	%eax
	cmpl	$1, %eax
	jg	.LBB0_18
# BB#19:
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	%ebp, 200(%rsp)         # 4-byte Spill
	jmp	.LBB0_20
.LBB0_15:
	movw	$4330, %ax              # imm = 0x10EA
	movl	%eax, 200(%rsp)         # 4-byte Spill
.LBB0_20:                               # %for.cond.77.preheader
	movq	160(%rsp), %r15         # 8-byte Reload
.LBB0_21:                               # %for.cond.77.preheader
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	leaq	236(%rsp), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	leaq	96(%rdi), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	952(%rsi), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	904(%rsi), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	11132(%rdx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	11084(%rdx), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leaq	11088(%rdx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	908(%rsi), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_218:                              # %do.end.1131
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$4, %r11
	movq	%r11, %r15
.LBB0_22:                               # %for.cond.77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_161 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_151 Depth 2
                                        #     Child Loop BB0_91 Depth 2
                                        #     Child Loop BB0_131 Depth 2
                                        #     Child Loop BB0_136 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #       Child Loop BB0_118 Depth 3
                                        #     Child Loop BB0_238 Depth 2
                                        #     Child Loop BB0_201 Depth 2
                                        #     Child Loop BB0_205 Depth 2
                                        #     Child Loop BB0_189 Depth 2
                                        #     Child Loop BB0_68 Depth 2
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_124 Depth 2
	movq	%r15, %r11
	movq	192(%rsp), %rbp         # 8-byte Reload
	movzbl	(%rbp), %r13d
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	js	.LBB0_23
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %eax         # 4-byte Reload
	movzwl	%ax, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorl	%r13d, %ecx
	addl	%eax, %r13d
	imull	$52845, %r13d, %eax     # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movl	%ecx, %r13d
	jmp	.LBB0_25
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %eax         # 4-byte Reload
.LBB0_25:                               # %cond.end
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 200(%rsp)         # 4-byte Spill
	leaq	1(%rbp), %rdx
	cmpl	$32, %r13d
	jl	.LBB0_41
# BB#26:                                # %if.then.90
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$246, %r13d
	jg	.LBB0_29
# BB#27:                                # %do.body.95
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movl	$-10, %eax
	leaq	428(%rsp), %rcx
	cmpq	%rcx, %r11
	jae	.LBB0_152
# BB#28:                                # %do.end.102
                                        #   in Loop: Header=BB0_22 Depth=1
	shll	$8, %r13d
	addl	$-35584, %r13d          # imm = 0xFFFFFFFFFFFF7500
	movl	%r13d, 4(%r11)
	jmp	.LBB0_218
	.align	16, 0x90
.LBB0_41:                               # %if.end.233
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$-10, %eax
	leal	-1(%r13), %ecx
	cmpl	$30, %ecx
	ja	.LBB0_152
# BB#42:                                # %if.end.233
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rdx, 192(%rsp)         # 8-byte Spill
	movl	$1, %r12d
	xorl	%r14d, %r14d
	leaq	236(%rsp), %r15
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_121:                              # %do.body.602
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 10980(%rdi)
	js	.LBB0_261
# BB#122:                               # %for.cond.625.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	244(%rsp), %rax
	cmpq	%r11, %rax
	ja	.LBB0_126
# BB#123:                               #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebp, %ebp
	leaq	244(%rsp), %rbx
	.align	16, 0x90
.LBB0_124:                              # %for.body.629
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	-4(%rbx), %ebp
	movl	(%rbx), %edx
	movq	%rdi, %r14
	movl	%ebp, %esi
	movq	%r11, %r15
	callq	t1_hinter__hstem
	movq	%r15, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#125:                               # %for.inc.638
                                        #   in Loop: Header=BB0_124 Depth=2
	addl	(%rbx), %ebp
	addq	$8, %rbx
	cmpq	%r11, %rbx
	movq	%r14, %rdi
	jbe	.LBB0_124
.LBB0_126:                              # %cleanup.cont.645
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	addq	$4, %r11
	leaq	240(%rsp), %rax
	subq	%rax, %r11
	shrq	$3, %r11
	addl	%r11d, 10996(%rdi)
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_29:                               # %if.else.109
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$-10, %eax
	cmpl	$254, %r13d
	jg	.LBB0_38
# BB#30:                                # %do.body.113
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	428(%rsp), %rcx
	cmpq	%rcx, %r11
	jae	.LBB0_152
# BB#31:                                # %do.end.123
                                        #   in Loop: Header=BB0_22 Depth=1
	movzbl	1(%rbp), %eax
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	movl	%eax, %ecx
	movl	200(%rsp), %edx         # 4-byte Reload
	js	.LBB0_33
# BB#32:                                # %cond.true.125
                                        #   in Loop: Header=BB0_22 Depth=1
	movzwl	%dx, %ecx
	shrl	$8, %ecx
	xorl	%eax, %ecx
.LBB0_33:                               # %cond.end.130
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%r13d, %edx
	shll	$8, %edx
	cmpl	$250, %r13d
	jg	.LBB0_35
# BB#34:                                # %do.end.137
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	$2304, %edx             # imm = 0x900
	andl	$65280, %edx            # imm = 0xFF00
	leal	108(%rcx,%rdx), %ecx
	jmp	.LBB0_36
.LBB0_38:                               # %if.else.176
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$255, %r13d
	jne	.LBB0_152
# BB#39:                                # %for.cond.181.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	movzbl	(%rdx), %ecx
	js	.LBB0_40
# BB#258:                               # %cond.true.187.3
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %edx         # 4-byte Reload
	movzwl	%dx, %edx
	movl	%edx, %esi
	shrl	$8, %esi
	xorl	%ecx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movzbl	2(%rbp), %edx
	movzwl	%cx, %ecx
	movl	%ecx, %edi
	shrl	$8, %edi
	xorl	%edx, %edi
	addl	%ecx, %edx
	imull	$52845, %edx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	shlq	$8, %rsi
	orq	%rsi, %rdi
	movzbl	3(%rbp), %edx
	movzwl	%cx, %esi
	movl	%esi, %ecx
	shrl	$8, %ecx
	xorl	%edx, %ecx
	addl	%esi, %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	shlq	$8, %rdi
	orq	%rdi, %rcx
	movzbl	4(%rbp), %esi
	movzwl	%dx, %edi
	movl	%edi, %edx
	shrl	$8, %edx
	xorl	%esi, %edx
	addl	%edi, %esi
	imull	$52845, %esi, %esi      # imm = 0xCE6D
	addl	$22719, %esi            # imm = 0x58BF
	movl	%esi, 200(%rsp)         # 4-byte Spill
	jmp	.LBB0_259
.LBB0_35:                               # %do.end.150
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	$1280, %edx             # imm = 0x500
	andl	$65280, %edx            # imm = 0xFF00
	leal	108(%rcx,%rdx), %ecx
	negl	%ecx
.LBB0_36:                               # %if.end.161
                                        #   in Loop: Header=BB0_22 Depth=1
	shll	$8, %ecx
	movl	%ecx, 4(%r11)
	addq	$4, %r11
	movq	%r11, %r15
	addq	$2, %rbp
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	js	.LBB0_22
# BB#37:                                # %cond.true.163
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	200(%rsp), %eax         # 4-byte Folded Reload
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movl	%eax, 200(%rsp)         # 4-byte Spill
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	jmp	.LBB0_22
.LBB0_40:                               # %cond.end.201.2
                                        #   in Loop: Header=BB0_22 Depth=1
	shlq	$8, %rcx
	movzbl	2(%rbp), %edx
	orq	%rcx, %rdx
	shlq	$8, %rdx
	movzbl	3(%rbp), %ecx
	orq	%rdx, %rcx
	movzbl	4(%rbp), %edx
.LBB0_259:                              # %cond.end.201.3
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	428(%rsp), %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_152
# BB#260:                               # %cleanup.223.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$5, %rbp
	shlq	$8, %rcx
	orq	%rdx, %rcx
	movl	$2147483648, %eax       # imm = 0x80000000
	xorq	%rax, %rcx
	movabsq	$1097364144128, %rax    # imm = 0xFF80000000
	addq	%rax, %rcx
	shrq	$8, %rcx
	movl	%ecx, 4(%r11)
.LBB0_173:                              # %for.cond.77
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$4, %r11
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_143:                              # %do.body.749
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %r14         # 8-byte Reload
	cmpl	$0, 10980(%r14)
	js	.LBB0_128
# BB#144:                               # %do.end.769
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	244(%rsp), %rax
	cmpq	%r11, %rax
	ja	.LBB0_149
# BB#145:                               #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebp, %ebp
	movq	%rax, %rbx
	.align	16, 0x90
.LBB0_146:                              # %for.body.i.701
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %r15
	addl	-4(%rbx), %ebp
	movl	(%rbx), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	t1_hinter__vstem
	testl	%eax, %eax
	js	.LBB0_147
# BB#148:                               # %for.inc.i.706
                                        #   in Loop: Header=BB0_146 Depth=2
	addl	(%rbx), %ebp
	addq	$8, %rbx
	movq	%r15, %r11
	cmpq	%r11, %rbx
	jbe	.LBB0_146
.LBB0_149:                              # %for.end.i.716
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$4, %r11
	leaq	240(%rsp), %rax
	subq	%rax, %r11
	shrq	$3, %r11
	addl	%r11d, 10996(%r14)
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_127:                              # %do.body.660
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %r14         # 8-byte Reload
	cmpl	$0, 10980(%r14)
	js	.LBB0_128
# BB#129:                               # %do.end.680
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	244(%rsp), %rax
	cmpq	%r11, %rax
	movq	192(%rsp), %r15         # 8-byte Reload
	ja	.LBB0_133
# BB#130:                               #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebp, %ebp
	movq	%rax, %rbx
	.align	16, 0x90
.LBB0_131:                              # %for.body.i.675
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %r12
	addl	-4(%rbx), %ebp
	movl	(%rbx), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	t1_hinter__vstem
	testl	%eax, %eax
	js	.LBB0_134
# BB#132:                               # %for.inc.i.680
                                        #   in Loop: Header=BB0_131 Depth=2
	addl	(%rbx), %ebp
	addq	$8, %rbx
	movq	%r12, %r11
	cmpq	%r11, %rbx
	jbe	.LBB0_131
.LBB0_133:                              # %for.end.i.690
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$4, %r11
	leaq	240(%rsp), %rax
	subq	%rax, %r11
	shrq	$3, %r11
	addl	10996(%r14), %r11d
	movl	%r11d, 10996(%r14)
	jmp	.LBB0_135
.LBB0_48:                               # %do.body.262
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 10980(%rdi)
	js	.LBB0_49
# BB#50:                                # %do.end.276
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %edx
	xorl	%esi, %esi
	jmp	.LBB0_51
.LBB0_55:                               # %for.cond.284.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	244(%rsp), %rax
	cmpq	%r11, %rax
	leaq	236(%rsp), %r15
	movq	%rax, %rbx
	ja	.LBB0_22
	.align	16, 0x90
.LBB0_56:                               # %for.body.288
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbx), %esi
	movl	(%rbx), %edx
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbp
	callq	t1_hinter__rlineto
	movq	%rbp, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#53:                                # %for.cond.284
                                        #   in Loop: Header=BB0_56 Depth=2
	addq	$8, %rbx
	cmpq	%r11, %rbx
	jbe	.LBB0_56
# BB#54:                                #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_57:                               # %sw.bb.302
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$1, %r14d
.LBB0_58:                               # %for.cond.304.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	240(%rsp), %rbp
	cmpq	%r11, %rbp
	leaq	236(%rsp), %r15
	ja	.LBB0_22
	.align	16, 0x90
.LBB0_59:                               # %for.body.307
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, %rbx
	movl	(%rbp), %eax
	testl	%r14d, %r14d
	je	.LBB0_61
# BB#60:                                # %if.then.309
                                        #   in Loop: Header=BB0_59 Depth=2
	xorl	%esi, %esi
	movq	176(%rsp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	jmp	.LBB0_62
	.align	16, 0x90
.LBB0_61:                               # %if.else.312
                                        #   in Loop: Header=BB0_59 Depth=2
	xorl	%edx, %edx
	movq	176(%rsp), %rdi         # 8-byte Reload
	movl	%eax, %esi
.LBB0_62:                               # %if.end.315
                                        #   in Loop: Header=BB0_59 Depth=2
	callq	t1_hinter__rlineto
	testl	%eax, %eax
	movq	%rbx, %r11
	js	.LBB0_152
# BB#63:                                # %for.inc.320
                                        #   in Loop: Header=BB0_59 Depth=2
	testl	%r14d, %r14d
	sete	%al
	movzbl	%al, %r14d
	addq	$4, %rbp
	cmpq	%r11, %rbp
	jbe	.LBB0_59
# BB#64:                                #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_67:                               # %for.cond.326.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	260(%rsp), %rax
	cmpq	%r11, %rax
	leaq	236(%rsp), %r15
	movq	%rax, %rbp
	ja	.LBB0_22
	.align	16, 0x90
.LBB0_68:                               # %for.body.330
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %r8d
	movl	-4(%rbp), %r9d
	movl	(%rbp), %eax
	movl	%eax, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	callq	t1_hinter__rcurveto
	movq	%rbx, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#65:                                # %for.cond.326
                                        #   in Loop: Header=BB0_68 Depth=2
	addq	$24, %rbp
	cmpq	%r11, %rbp
	jbe	.LBB0_68
# BB#66:                                #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_43:                               # %sw.bb.235
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %esi
	movq	%r11, %r15
	sarl	$8, %esi
	movq	168(%rsp), %rbx         # 8-byte Reload
	addl	516(%rbx), %esi
	xorl	%edx, %edx
	jmp	.LBB0_44
.LBB0_175:                              # %sw.bb.962
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	js	.LBB0_177
# BB#176:                               # %cond.true.964
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %edx         # 4-byte Reload
	movzwl	%dx, %edx
	movl	%edx, %esi
	shrl	$8, %esi
	xorl	%ecx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movl	%esi, %ecx
.LBB0_177:                              # %cond.end.978
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$2, %rbp
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	addl	$-3, %ecx
	cmpl	$34, %ecx
	movq	%r11, %r15
	ja	.LBB0_22
# BB#178:                               # %cond.end.978
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r11, %r15
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_179:                              # %sw.bb.981
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r15
	movl	-4(%r11), %eax
	cmpl	$0, (%r11)
	setne	%cl
	movzbl	%cl, %ecx
	shll	$8, %ecx
	testl	%eax, %eax
	cmovel	%eax, %ecx
	movl	%ecx, -4(%r11)
	jmp	.LBB0_22
.LBB0_111:                              # %sw.bb.552
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %r13d
	sarl	$8, %r13d
	testl	%r13d, %r13d
	leaq	236(%rsp), %r15
	jle	.LBB0_22
# BB#112:                               # %for.cond.575.preheader.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	240(%rsp), %rax
	movq	%r11, %rcx
	subq	%rax, %rcx
	movq	176(%rsp), %rax         # 8-byte Reload
	movq	9856(%rax), %r8
	movslq	900(%r8), %r15
	shrq	$2, %rcx
	movslq	%ecx, %rax
	leaq	(,%rax,4), %rcx
	negq	%rcx
	leaq	-4(%r11,%rcx), %rsi
	movslq	%r13d, %rcx
	leaq	-4(%rsi,%rcx,4), %r12
	leaq	-1(%r15), %r10
	movl	%r10d, %r9d
	andl	$1, %r9d
	subq	%rax, %rcx
	leaq	-4(%r11,%rcx,4), %rcx
	leal	-1(%r15), %eax
	movslq	%eax, %r14
	shlq	$2, %r14
	leaq	908(%r8), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_113:                              # %for.cond.575.preheader
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_118 Depth 3
	cmpl	$2, %r15d
	jl	.LBB0_119
# BB#114:                               # %for.body.578.lr.ph
                                        #   in Loop: Header=BB0_113 Depth=2
	testl	%r9d, %r9d
	movl	(%rsi), %ebp
	movl	$1, %r11d
	je	.LBB0_116
# BB#115:                               # %for.body.578.prol
                                        #   in Loop: Header=BB0_113 Depth=2
	cvtsi2ssl	4(%r12), %xmm0
	mulss	908(%r8), %xmm0
	cvttss2si	%xmm0, %edx
	addl	%edx, %ebp
	movl	%ebp, (%rsi)
	movl	$2, %r11d
.LBB0_116:                              # %for.body.578.lr.ph.split
                                        #   in Loop: Header=BB0_113 Depth=2
	cmpl	$2, %r15d
	je	.LBB0_119
# BB#117:                               # %for.body.578.lr.ph.split.split
                                        #   in Loop: Header=BB0_113 Depth=2
	movl	%r15d, %edx
	subl	%r11d, %edx
	leaq	(%rcx,%r11,4), %rdi
	movq	80(%rsp), %rbx          # 8-byte Reload
	leaq	(%rbx,%r11,4), %r11
	.align	16, 0x90
.LBB0_118:                              # %for.body.578
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-4(%rdi), %xmm0
	mulss	-4(%r11), %xmm0
	cvttss2si	%xmm0, %ebx
	addl	%ebp, %ebx
	movl	%ebx, (%rsi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rdi), %xmm0
	mulss	(%r11), %xmm0
	cvttss2si	%xmm0, %ebp
	addl	%ebx, %ebp
	movl	%ebp, (%rsi)
	addq	$8, %rdi
	addq	$8, %r11
	addl	$-2, %edx
	jne	.LBB0_118
.LBB0_119:                              # %for.inc.592
                                        #   in Loop: Header=BB0_113 Depth=2
	incl	%eax
	addq	$4, %rsi
	leaq	(%r12,%r10,4), %r12
	addq	%r14, %rcx
	cmpl	%r13d, %eax
	jne	.LBB0_113
# BB#120:                               #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_85:                               # %do.body.438
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %r15         # 8-byte Reload
	cmpl	$0, 10980(%r15)
	js	.LBB0_86
# BB#87:                                # %do.end.453
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	244(%rsp), %r12
	cmpq	%r12, %r11
	jbe	.LBB0_88
# BB#89:                                # %if.then.458
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-8(%r11), %r14
	movq	%r11, %r13
	cmpq	%r14, %r12
	ja	.LBB0_93
# BB#90:                                #   in Loop: Header=BB0_22 Depth=1
	xorl	%ebp, %ebp
	movq	%r12, %rbx
.LBB0_91:                               # %for.body.i
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	-4(%rbx), %ebp
	movl	(%rbx), %edx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	t1_hinter__vstem
	testl	%eax, %eax
	js	.LBB0_94
# BB#92:                                # %for.inc.i
                                        #   in Loop: Header=BB0_91 Depth=2
	addl	(%rbx), %ebp
	addq	$8, %rbx
	cmpq	%r14, %rbx
	jbe	.LBB0_91
.LBB0_93:                               # %for.end.i
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r13), %rax
	leaq	240(%rsp), %rcx
	subq	%rcx, %rax
	shrq	$3, %rax
	addl	%eax, 10996(%r15)
.LBB0_94:                               # %type2_vstem.exit
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r13), %eax
	movl	%eax, 240(%rsp)
	movl	(%r13), %edx
	movl	%edx, 244(%rsp)
	movq	%r12, %r11
	jmp	.LBB0_95
.LBB0_96:                               # %do.body.472
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %rdi         # 8-byte Reload
	cmpl	$0, 10980(%rdi)
	js	.LBB0_49
# BB#97:                                # %do.end.486
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %esi
	xorl	%edx, %edx
	jmp	.LBB0_51
.LBB0_153:                              # %for.cond.776.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	240(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	leaq	260(%rsp), %rax
	cmpq	%r11, %rax
	movq	%rax, %rbp
	ja	.LBB0_154
	.align	16, 0x90
.LBB0_151:                              # %for.body.780
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %r8d
	movl	-4(%rbp), %r9d
	movl	(%rbp), %eax
	movl	%eax, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	callq	t1_hinter__rcurveto
	movq	%rbx, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#150:                               # %for.cond.776
                                        #   in Loop: Header=BB0_151 Depth=2
	movl	4(%rbp), %esi
	movl	8(%rbp), %edx
	addq	$24, %rbp
	cmpq	%r11, %rbp
	jbe	.LBB0_151
.LBB0_154:                              # %for.end.794
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	t1_hinter__rlineto
	jmp	.LBB0_52
.LBB0_155:                              # %for.cond.800.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	240(%rsp), %rbp
	movq	240(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	leaq	268(%rsp), %rax
	cmpq	%r11, %rax
	ja	.LBB0_158
	.align	16, 0x90
.LBB0_156:                              # %for.body.804
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	callq	t1_hinter__rlineto
	movq	%rbx, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#157:                               # %for.inc.812
                                        #   in Loop: Header=BB0_156 Depth=2
	movl	8(%rbp), %esi
	movl	12(%rbp), %edx
	leaq	8(%rbp), %rax
	addq	$36, %rbp
	cmpq	%r11, %rbp
	movq	%rax, %rbp
	jbe	.LBB0_156
.LBB0_158:                              # %for.end.814
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	8(%rbp), %ecx
	movl	12(%rbp), %r8d
	movl	16(%rbp), %r9d
	movl	20(%rbp), %eax
	movl	%eax, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	t1_hinter__rcurveto
	jmp	.LBB0_52
.LBB0_159:                              # %sw.bb.822
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	4(%r11), %eax
	andq	$4, %rax
	leaq	240(%rsp), %rbp
	leaq	244(%rsp), %rcx
	cmovneq	%rcx, %rbp
	addq	$12, %rbp
	cmpq	%r11, %rbp
	leaq	236(%rsp), %r15
	ja	.LBB0_22
# BB#160:                               # %for.body.843.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%r14d, %r14d
	testq	%rax, %rax
	cmovnel	240(%rsp), %r14d
	.align	16, 0x90
.LBB0_161:                              # %for.body.843
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %esi
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	(%rbp), %eax
	movl	%eax, (%rsp)
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	callq	t1_hinter__rcurveto
	movq	%rbx, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#162:                               # %for.cond.839
                                        #   in Loop: Header=BB0_161 Depth=2
	addq	$16, %rbp
	cmpq	%r11, %rbp
	jbe	.LBB0_161
# BB#163:                               #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_164:                              # %sw.bb.860
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	4(%r11), %eax
	andq	$4, %rax
	leaq	240(%rsp), %rbp
	leaq	244(%rsp), %rcx
	cmovneq	%rcx, %rbp
	addq	$12, %rbp
	cmpq	%r11, %rbp
	leaq	236(%rsp), %r15
	ja	.LBB0_22
# BB#165:                               # %for.body.881.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%edx, %edx
	testq	%rax, %rax
	cmovnel	240(%rsp), %edx
	.align	16, 0x90
.LBB0_166:                              # %for.body.881
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %r8d
	movl	(%rbp), %r9d
	movl	$0, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	movq	%r11, %rbx
	callq	t1_hinter__rcurveto
	movq	%rbx, %r11
	testl	%eax, %eax
	js	.LBB0_152
# BB#167:                               # %for.cond.877
                                        #   in Loop: Header=BB0_166 Depth=2
	addq	$16, %rbp
	xorl	%edx, %edx
	cmpq	%r11, %rbp
	jbe	.LBB0_166
# BB#168:                               #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_169:                              # %sw.bb.898
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	movzbl	1(%rbp), %edx
	movzbl	2(%rbp), %ecx
	js	.LBB0_171
# BB#170:                               # %cond.true.919
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %esi         # 4-byte Reload
	movzwl	%si, %esi
	movl	%esi, %edi
	shrl	$8, %edi
	xorl	%edx, %edi
	addl	%esi, %edx
	imull	$52845, %edx, %edx      # imm = 0xCE6D
	addl	$22719, %edx            # imm = 0x58BF
	movzwl	%dx, %edx
	movl	%edx, %esi
	shrl	$8, %esi
	xorl	%ecx, %esi
	addl	%edx, %ecx
	imull	$52845, %ecx, %ecx      # imm = 0xCE6D
	addl	$22719, %ecx            # imm = 0x58BF
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	movl	%esi, %ecx
.LBB0_171:                              # %cond.end.933
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	428(%rsp), %rsi
	cmpq	%rsi, %r11
	jae	.LBB0_152
# BB#172:                               # %cleanup.950.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$3, %rbp
	shll	$8, %edx
	xorl	$32768, %edx            # imm = 0x8000
	orl	%edx, %ecx
	shll	$8, %ecx
	addl	$-8388608, %ecx         # imm = 0xFFFFFFFFFF800000
	movl	%ecx, 4(%r11)
	jmp	.LBB0_173
.LBB0_174:                              # %sw.bb.954
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %esi
	movq	%r11, %r15
	sarl	$8, %esi
	movq	168(%rsp), %rbx         # 8-byte Reload
	addl	520(%rbx), %esi
	movl	$1, %edx
.LBB0_44:                               # %subr
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rbx, %rdi
	movq	136(%rsp), %rcx         # 8-byte Reload
	callq	*456(%rbx)
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	testl	%eax, %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	jns	.LBB0_46
# BB#45:                                # %if.then.243
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$2, %rbp
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	jmp	.LBB0_22
.LBB0_98:                               # %sw.bb.489
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%r12d, %r12d
.LBB0_99:                               # %for.cond.491.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	252(%rsp), %rax
	cmpq	%r11, %rax
	leaq	236(%rsp), %r15
	leaq	256(%rsp), %rbp
	ja	.LBB0_22
	.align	16, 0x90
.LBB0_100:                              # %for.body.495
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	testl	%r12d, %r12d
	je	.LBB0_104
# BB#101:                               # %if.then.497
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	-4(%rbp), %r9d
	xorl	%esi, %esi
	cmpq	%rbp, %r11
	je	.LBB0_103
# BB#102:                               #   in Loop: Header=BB0_100 Depth=2
	movq	%r11, %r14
	movl	%eax, %edx
	xorl	%edi, %edi
	jmp	.LBB0_107
	.align	16, 0x90
.LBB0_104:                              # %if.else.512
                                        #   in Loop: Header=BB0_100 Depth=2
	xorl	%edx, %edx
	cmpq	%rbp, %r11
	movl	$0, %r9d
	jne	.LBB0_106
# BB#105:                               # %if.then.519
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	(%r11), %r9d
.LBB0_106:                              # %if.end.523
                                        #   in Loop: Header=BB0_100 Depth=2
	movq	%r11, %r14
	movl	-4(%rbp), %edi
	movl	%eax, %esi
	jmp	.LBB0_107
.LBB0_103:                              # %if.then.507
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	(%r11), %edi
	movq	%r11, %r14
	movl	%eax, %edx
.LBB0_107:                              # %if.end.527
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	156(%rsp), %ebx         # 4-byte Reload
	movl	-12(%rbp), %ecx
	movl	-8(%rbp), %r8d
	movl	%edi, (%rsp)
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	t1_hinter__rcurveto
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	js	.LBB0_108
# BB#109:                               # %for.inc.546
                                        #   in Loop: Header=BB0_100 Depth=2
	movl	%ebx, 156(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	sete	%al
	movzbl	%al, %r12d
	leaq	16(%rbp), %rax
	addq	$12, %rbp
	movq	%r14, %r11
	cmpq	%r11, %rbp
	movq	%rax, %rbp
	jbe	.LBB0_100
# BB#110:                               #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_147:                              #   in Loop: Header=BB0_22 Depth=1
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_134:                              # %type2_vstem.exit691.loopexit
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	10996(%r14), %r11d
.LBB0_135:                              # %type2_vstem.exit691
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%eax, %eax
	testl	%r11d, %r11d
	movq	144(%rsp), %rsi         # 8-byte Reload
	movl	200(%rsp), %ebx         # 4-byte Reload
	jle	.LBB0_140
	.align	16, 0x90
.LBB0_136:                              # %for.body.690
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r15), %cl
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	js	.LBB0_138
# BB#137:                               # %cond.true.692
                                        #   in Loop: Header=BB0_136 Depth=2
	movzbl	%cl, %ecx
	movzbl	%bh, %edx  # NOREX
	xorl	%ecx, %edx
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movb	%dl, 224(%rsp,%rcx)
	movzbl	(%r15), %ecx
	addl	%ebx, %ecx
	imull	$-12691, %ecx, %ebx     # imm = 0xFFFFFFFFFFFFCE6D
	addl	$22719, %ebx            # imm = 0x58BF
	jmp	.LBB0_139
	.align	16, 0x90
.LBB0_138:                              # %cond.false.708
                                        #   in Loop: Header=BB0_136 Depth=2
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movb	%cl, 224(%rsp,%rdx)
.LBB0_139:                              # %for.inc.718
                                        #   in Loop: Header=BB0_136 Depth=2
	incq	%r15
	addl	$8, %eax
	cmpl	%r11d, %eax
	jl	.LBB0_136
.LBB0_140:                              # %do.end.724
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r15, (%rsi)
	movw	%bx, 16(%rsi)
	cmpl	$20, %r13d
	je	.LBB0_142
# BB#141:                               # %do.end.736
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	224(%rsp), %rsi
	movq	%r14, %rdi
	callq	t1_hinter__hint_mask
	testl	%eax, %eax
	js	.LBB0_152
.LBB0_142:                              # %cleanup.744.thread
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movl	%ebx, 200(%rsp)         # 4-byte Spill
	leaq	236(%rsp), %r15
	jmp	.LBB0_22
.LBB0_88:                               # %do.end.453.if.end.468_crit_edge
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %edx
.LBB0_95:                               # %if.end.468
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %esi
	movq	%r15, %rdi
.LBB0_51:                               # %cc
                                        #   in Loop: Header=BB0_22 Depth=1
	callq	t1_hinter__rmoveto
.LBB0_52:                               # %cc
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%eax, %eax
	leaq	236(%rsp), %r15
	jns	.LBB0_22
	jmp	.LBB0_152
.LBB0_180:                              # %sw.bb.993
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r15
	movl	(%r11), %eax
	orl	-4(%r11), %eax
	setne	%al
	movzbl	%al, %eax
	shll	$8, %eax
	movl	%eax, -4(%r11)
	jmp	.LBB0_22
.LBB0_181:                              # %sw.bb.1000
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%eax, %eax
	cmpl	$0, (%r11)
	jne	.LBB0_183
# BB#182:                               # %select.mid
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$256, %eax              # imm = 0x100
	jmp	.LBB0_183
.LBB0_184:                              # %sw.bb.1004
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	sarl	$8, %eax
	testl	%eax, %eax
	jle	.LBB0_190
# BB#185:                               # %for.body.1025.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-8(%r11), %ecx
	movl	-4(%r11), %edx
	sarl	$8, %ecx
	movslq	%ecx, %rcx
	sarl	$8, %edx
	movslq	%edx, %rdx
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB0_187
# BB#186:                               # %for.body.1025.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	176(%rsp), %rsi         # 8-byte Reload
	cvtsi2sdl	11084(%rsi,%rdx,4), %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	168(%rsp), %rsi         # 8-byte Reload
	movss	%xmm0, 904(%rsi,%rcx,4)
	movl	$1, %esi
.LBB0_187:                              # %for.body.1025.preheader.split
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, %eax
	je	.LBB0_190
# BB#188:                               # %for.body.1025.preheader.split.split
                                        #   in Loop: Header=BB0_22 Depth=1
	subl	%esi, %eax
	leaq	(%rdx,%rsi), %rdx
	movq	112(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rdx,4), %rdx
	addq	%rsi, %rcx
	movq	104(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rcx,4), %rcx
.LBB0_189:                              # %for.body.1025
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-4(%rdx), %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rcx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rdx), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx)
	addq	$8, %rdx
	addq	$8, %rcx
	addl	$-2, %eax
	jne	.LBB0_189
.LBB0_190:                              # %for.end.1035
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$-16, %r11
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_191:                              # %sw.bb.1037
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	testl	%eax, %eax
	movq	%r11, %r15
	jns	.LBB0_22
# BB#192:                               # %if.then.1040
                                        #   in Loop: Header=BB0_22 Depth=1
	negl	%eax
	jmp	.LBB0_183
.LBB0_211:                              # %sw.bb.1043
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	addl	%eax, -4(%r11)
	jmp	.LBB0_212
.LBB0_193:                              # %sw.bb.1047
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	subl	%eax, -4(%r11)
.LBB0_212:                              # %sw.bb.1100
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$-4, %r11
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_194:                              # %sw.bb.1051
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r15
	cvtsi2sdl	-4(%r11), %xmm0
	cvtsi2sdl	(%r11), %xmm1
	divsd	%xmm1, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -4(%r11)
	jmp	.LBB0_22
.LBB0_195:                              # %sw.bb.1059
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	sarl	$8, %eax
	testl	%eax, %eax
	jle	.LBB0_206
# BB#196:                               # %for.body.1079.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %ecx
	sarl	$8, %ecx
	movslq	%ecx, %r8
	movabsq	$8589934584, %rbp       # imm = 0x1FFFFFFF8
	leal	-1(%rax), %esi
	leaq	1(%rsi), %r9
	xorl	%edi, %edi
	movq	%r9, %rdx
	andq	%rbp, %rdx
	je	.LBB0_203
# BB#197:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	1(%rsi), %rdi
	andq	%rbp, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rcx
	shrq	$3, %rcx
	xorl	%ebx, %ebx
	btq	$3, %rdi
	jb	.LBB0_199
# BB#198:                               # %vector.body.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	168(%rsp), %rdi         # 8-byte Reload
	movups	904(%rdi), %xmm0
	movups	920(%rdi), %xmm1
	movaps	.LCPI0_5(%rip), %xmm2   # xmm2 = [2.560000e+02,2.560000e+02,2.560000e+02,2.560000e+02]
	mulps	%xmm2, %xmm0
	mulps	%xmm2, %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movq	176(%rsp), %rdi         # 8-byte Reload
	movups	%xmm0, 11084(%rdi,%r8,4)
	movupd	%xmm1, 11100(%rdi,%r8,4)
	movl	$8, %ebx
.LBB0_199:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_22 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_202
# BB#200:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_22 Depth=1
	incq	%rsi
	andq	%rbp, %rsi
	subq	%rbx, %rsi
	movq	96(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rbx,4), %rbp
	addq	%r8, %rbx
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rbx,4), %rcx
.LBB0_201:                              # %vector.body
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp), %xmm0
	movups	-32(%rbp), %xmm1
	movaps	.LCPI0_5(%rip), %xmm2   # xmm2 = [2.560000e+02,2.560000e+02,2.560000e+02,2.560000e+02]
	mulps	%xmm2, %xmm0
	mulps	%xmm2, %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	-16(%rbp), %xmm0
	movups	(%rbp), %xmm1
	mulps	%xmm2, %xmm0
	mulps	%xmm2, %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movups	%xmm0, -16(%rcx)
	movupd	%xmm1, (%rcx)
	addq	$64, %rbp
	addq	$64, %rcx
	addq	$-16, %rsi
	jne	.LBB0_201
.LBB0_202:                              #   in Loop: Header=BB0_22 Depth=1
	movq	%rdx, %rdi
.LBB0_203:                              # %middle.block
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpq	%rdi, %r9
	je	.LBB0_206
# BB#204:                               # %for.body.1079.preheader1349
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	(%r8,%rdi), %rcx
	movq	120(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rdi,4), %rdx
	subl	%edi, %eax
.LBB0_205:                              # %for.body.1079
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	(%rdx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_6(%rip), %xmm0
	cvttss2si	%xmm0, %esi
	movl	%esi, (%rcx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%eax
	jne	.LBB0_205
	jmp	.LBB0_206
.LBB0_207:                              # %sw.bb.1090
                                        #   in Loop: Header=BB0_22 Depth=1
	negl	(%r11)
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_208:                              # %sw.bb.1092
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r15
	movl	-4(%r11), %ecx
	movl	$256, %eax              # imm = 0x100
	cmpl	(%r11), %ecx
	je	.LBB0_210
# BB#209:                               # %select.mid1855
                                        #   in Loop: Header=BB0_22 Depth=1
	xorl	%eax, %eax
.LBB0_210:                              # %select.end1854
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, (%r15)
	jmp	.LBB0_22
.LBB0_213:                              # %sw.bb.1102
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %eax
	movl	(%r11), %ecx
	sarl	$8, %ecx
	movslq	%ecx, %rcx
	movq	176(%rsp), %rdx         # 8-byte Reload
	movl	%eax, 11084(%rdx,%rcx,4)
	addq	$-8, %r11
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_214:                              # %sw.bb.1109
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	sarl	$8, %eax
	cltq
	movq	176(%rsp), %rcx         # 8-byte Reload
	movl	11084(%rcx,%rax,4), %eax
	jmp	.LBB0_183
.LBB0_215:                              # %sw.bb.1114
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %eax
	cmpl	(%r11), %eax
	jle	.LBB0_206
# BB#216:                               # %if.then.1118
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-8(%r11), %eax
	movl	%eax, -12(%r11)
.LBB0_206:                              # %for.end.1088
                                        #   in Loop: Header=BB0_22 Depth=1
	addq	$-12, %r11
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_217:                              # %do.body.1124
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	428(%rsp), %rcx
	cmpq	%rcx, %r11
	jb	.LBB0_218
	jmp	.LBB0_152
.LBB0_219:                              # %sw.bb.1133
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r15
	cvtsi2sdl	-4(%r11), %xmm1
	mulsd	.LCPI0_0(%rip), %xmm1
	cvtsi2sdl	(%r11), %xmm0
	mulsd	%xmm1, %xmm0
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ucomisd	.LCPI0_3(%rip), %xmm0
	ja	.LBB0_221
# BB#220:                               # %cond.false.1142
                                        #   in Loop: Header=BB0_22 Depth=1
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	cvttsd2si	%xmm0, %ecx
	movl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	cmovbel	%ecx, %eax
.LBB0_221:                              # %cond.end.1150
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, (%r15)
	jmp	.LBB0_22
.LBB0_222:                              # %sw.bb.1154
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	testl	%eax, %eax
	movq	%r11, %r15
	js	.LBB0_22
# BB#223:                               # %if.then.1157
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r11, %r15
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB0_225
# BB#224:                               # %call.sqrt
                                        #   in Loop: Header=BB0_22 Depth=1
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB0_225:                              # %if.then.1157.split
                                        #   in Loop: Header=BB0_22 Depth=1
	mulsd	.LCPI0_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%r15)
	jmp	.LBB0_22
.LBB0_226:                              # %do.body.1165
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	428(%rsp), %rcx
	cmpq	%rcx, %r11
	jae	.LBB0_152
# BB#227:                               # %do.end.1172
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	movl	%eax, 4(%r11)
	jmp	.LBB0_218
.LBB0_228:                              # %sw.bb.1175
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %eax
	movl	(%r11), %ecx
	movl	%eax, (%r11)
	movl	%ecx, -4(%r11)
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_229:                              # %sw.bb.1179
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, (%r11)
	movl	-4(%r11), %eax
	js	.LBB0_183
# BB#230:                               # %cond.false.1184
                                        #   in Loop: Header=BB0_22 Depth=1
	sarl	$8, %eax
	notl	%eax
	cltq
	movl	(%r11,%rax,4), %eax
.LBB0_183:                              # %select.end
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, (%r11)
	movq	%r11, %r15
	jmp	.LBB0_22
.LBB0_231:                              # %sw.bb.1192
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-4(%r11), %ecx
	sarl	$8, %ecx
	js	.LBB0_152
# BB#232:                               # %lor.lhs.false.1200
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-4(%r11), %r14
	movslq	%ecx, %rsi
	leaq	240(%rsp), %rdx
	movq	%r14, %rdi
	subq	%rdx, %rdi
	sarq	$2, %rdi
	cmpq	%rdi, %rsi
	jg	.LBB0_152
# BB#233:                               # %if.end.1211
                                        #   in Loop: Header=BB0_22 Depth=1
	leaq	-8(%r11), %r15
	testl	%ecx, %ecx
	je	.LBB0_22
# BB#234:                               # %if.end.1215
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %ebp
	sarl	$8, %ebp
	jns	.LBB0_236
# BB#235:                               # %if.then.1218
                                        #   in Loop: Header=BB0_22 Depth=1
	negl	%ebp
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	movl	%ecx, %ebp
	subl	%edx, %ebp
.LBB0_236:                              # %if.end.1221
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%ebp, %ebp
	jle	.LBB0_22
# BB#237:                               # %while.body.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	shlq	$2, %rsi
	subq	%rsi, %r14
	leaq	4(%r14), %r12
	decl	%ecx
	movslq	%ecx, %r13
	shlq	$2, %r13
	incl	%ebp
.LBB0_238:                              # %while.body
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r15), %ebx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove
	movl	%ebx, (%r14)
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB0_238
	jmp	.LBB0_22
.LBB0_239:                              # %sw.bb.1240
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$128, 24(%r11)
	movl	(%r11), %eax
	movl	%eax, 16(%r11)
	movl	$0, 20(%r11)
	movl	-4(%r11), %eax
	movl	%eax, 8(%r11)
	movl	-16(%r11), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	%ecx, 12(%r11)
	movl	-8(%r11), %ecx
	movl	%ecx, (%r11)
	movl	$0, 4(%r11)
	movl	-12(%r11), %ecx
	movl	%ecx, -8(%r11)
	movl	$0, -4(%r11)
	movl	%eax, -12(%r11)
	movl	-20(%r11), %eax
	movl	%eax, -16(%r11)
	movl	$0, -20(%r11)
	leaq	24(%r11), %rax
	movq	%rax, %r11
	jmp	.LBB0_241
.LBB0_240:                              # %sw.bb.1260
                                        #   in Loop: Header=BB0_22 Depth=1
	movslq	(%r11), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	movl	%eax, (%r11)
	jmp	.LBB0_241
.LBB0_253:                              # %sw.bb.1375
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	$128, 16(%r11)
	movl	(%r11), %eax
	movl	%eax, 8(%r11)
	movl	-28(%r11), %eax
	movl	-4(%r11), %ecx
	addl	-20(%r11), %eax
	addl	%ecx, %eax
	negl	%eax
	movl	%eax, 12(%r11)
	movl	-8(%r11), %eax
	movl	%eax, (%r11)
	movl	%ecx, 4(%r11)
	movl	-12(%r11), %eax
	movl	%eax, -8(%r11)
	movl	$0, -4(%r11)
	movl	$0, -12(%r11)
	leaq	16(%r11), %rax
	movq	%rax, %r11
	jmp	.LBB0_241
.LBB0_254:                              # %sw.bb.1393
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	-40(%r11), %xmm0        # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	-32(%r11), %xmm1        # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	paddq	%xmm0, %xmm1
	movq	-24(%r11), %xmm0        # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	paddq	%xmm1, %xmm0
	movq	-16(%r11), %xmm1        # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	paddq	%xmm0, %xmm1
	movq	-8(%r11), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm2      # xmm2 = xmm0[0,1,1,3]
	paddq	%xmm1, %xmm2
	movdqa	%xmm2, %xmm0
	psllq	$32, %xmm0
	pshufd	$237, %xmm0, %xmm1      # xmm1 = xmm0[1,3,2,3]
	psrad	$31, %xmm0
	pshufd	$237, %xmm0, %xmm0      # xmm0 = xmm0[1,3,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pxor	%xmm0, %xmm0
	psubq	%xmm2, %xmm0
	movdqa	%xmm1, %xmm3
	psrad	$31, %xmm3
	pshufd	$237, %xmm3, %xmm3      # xmm3 = xmm3[1,3,2,3]
	psrlq	$31, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	paddq	%xmm1, %xmm2
	pxor	%xmm1, %xmm2
	movd	%xmm2, %eax
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	movd	%xmm1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB0_256
# BB#255:                               #   in Loop: Header=BB0_22 Depth=1
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	jmp	.LBB0_257
.LBB0_256:                              # %if.else.1431
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	(%r11), %eax
	movd	%xmm0, (%r11)
.LBB0_257:                              # %if.end.1434
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 4(%r11)
	movl	$128, 8(%r11)
	addq	$8, %r11
.LBB0_241:                              # %flex
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%r11, 80(%rsp)          # 8-byte Spill
	movl	-40(%r11), %ebp
	movl	-36(%r11), %r12d
	addl	-48(%r11), %ebp
	addl	-32(%r11), %ebp
	addl	-44(%r11), %r12d
	addl	-28(%r11), %r12d
	movl	-24(%r11), %r15d
	movl	-16(%r11), %r13d
	movl	-8(%r11), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	-20(%r11), %r14d
	movl	-12(%r11), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movl	-4(%r11), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	cvtsi2sdl	%ebp, %xmm0
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	%r12d, %xmm1
	mulsd	%xmm2, %xmm1
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	9864(%rbx), %rdi
	addq	$132, %rdi
	leaq	224(%rsp), %rsi
	callq	gs_distance_transform
	movl	$1, %esi
	testl	%eax, %eax
	js	.LBB0_242
# BB#245:                               # %lor.lhs.false.1293
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	%ebp, %r15d
	addl	%r13d, %r15d
	addl	68(%rsp), %r15d         # 4-byte Folded Reload
	addl	%r12d, %r14d
	addl	72(%rsp), %r14d         # 4-byte Folded Reload
	addl	76(%rsp), %r14d         # 4-byte Folded Reload
	cvtsi2sdl	%r15d, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	%xmm2, %xmm1
	movq	9864(%rbx), %rdi
	addq	$132, %rdi
	leaq	208(%rsp), %rsi
	callq	gs_distance_transform
	testl	%eax, %eax
	movl	%r15d, %ebp
	js	.LBB0_246
# BB#247:                               # %if.end.1304
                                        #   in Loop: Header=BB0_22 Depth=1
	movapd	208(%rsp), %xmm0
	xorpd	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	cmpltpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	andnpd	%xmm0, %xmm1
	xorpd	.LCPI0_1(%rip), %xmm0
	andpd	%xmm2, %xmm0
	orpd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	ucomisd	%xmm0, %xmm1
	leaq	232(%rsp), %rax
	leaq	224(%rsp), %rcx
	cmovaq	%rcx, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	callq	fabs
	movq	80(%rsp), %r15          # 8-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%r15), %xmm1
	mulsd	.LCPI0_0(%rip), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_249
# BB#248:                               # %if.then.1337
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	t1_hinter__rlineto
	jmp	.LBB0_252
.LBB0_242:                              #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movq	80(%rsp), %r15          # 8-byte Reload
	jmp	.LBB0_243
.LBB0_246:                              #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movq	80(%rsp), %r15          # 8-byte Reload
	movl	$1, %esi
	jmp	.LBB0_243
.LBB0_249:                              # %if.else.1339
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	-48(%r15), %esi
	movl	-44(%r15), %edx
	movl	-40(%r15), %ecx
	movl	-36(%r15), %r8d
	movl	-32(%r15), %r9d
	movl	-28(%r15), %eax
	movq	%r15, %rbp
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	callq	t1_hinter__rcurveto
	testl	%eax, %eax
	js	.LBB0_250
# BB#251:                               # %if.end.1350
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rbp, %r15
	movl	-24(%r15), %esi
	movl	-20(%r15), %edx
	movl	-16(%r15), %ecx
	movl	-12(%r15), %r8d
	movl	-8(%r15), %r9d
	movl	-4(%r15), %eax
	movl	%eax, (%rsp)
	movq	%rbx, %rdi
	callq	t1_hinter__rcurveto
.LBB0_252:                              # %if.end.1358
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	156(%rsp), %edx         # 4-byte Reload
	leaq	-52(%r15), %rcx
	movl	%eax, %esi
	shrl	$31, %esi
	testl	%eax, %eax
	cmovnsq	%rcx, %r15
	cmovsl	%eax, %edx
	movl	%edx, 156(%rsp)         # 4-byte Spill
	jmp	.LBB0_243
.LBB0_250:                              #   in Loop: Header=BB0_22 Depth=1
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movq	%rbp, %r15
	movl	$1, %esi
.LBB0_243:                              # %cleanup.1441
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%esi, %esi
	movl	$10, %eax
	cmovnel	%esi, %eax
	leaq	236(%rsp), %rcx
	cmoveq	%rcx, %r15
	testl	%eax, %eax
	je	.LBB0_22
# BB#244:                               # %cleanup.1441
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$10, %eax
	movl	156(%rsp), %eax         # 4-byte Reload
	je	.LBB0_22
	jmp	.LBB0_152
.LBB0_108:
	movl	%ebx, %eax
	jmp	.LBB0_152
.LBB0_128:                              # %if.then.664
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	movl	%r11d, %r8d
	shrl	$2, %r8d
	notl	%r8d
	andl	$1, %r8d
	leaq	240(%rsp), %rdx
	movq	%r14, %rdi
	jmp	.LBB0_77
.LBB0_47:                               # %cleanup.1441.thread761
	movq	144(%rsp), %r14         # 8-byte Reload
	leaq	24(%r14), %rdi
	movl	$.L.str, %esi
	movq	%r11, %r15
	callq	gs_glyph_data_free
	addq	$-72, %r14
	movq	176(%rsp), %rbp         # 8-byte Reload
	movl	156(%rsp), %eax         # 4-byte Reload
	jmp	.LBB0_10
.LBB0_69:                               # %sw.bb.345
	leaq	252(%rsp), %rax
	cmpq	%rax, %r11
	movq	176(%rsp), %rbx         # 8-byte Reload
	movl	10980(%rbx), %eax
	jae	.LBB0_70
# BB#74:                                # %do.body.379
	testl	%eax, %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	js	.LBB0_75
# BB#78:                                # %do.end.393
	movq	%r11, %rbp
	cmpl	$0, 11016(%rbx)
	js	.LBB0_79
# BB#81:                                # %if.else.409
	movl	11060(%rbx), %esi
	movl	11064(%rbx), %edx
	addl	11032(%rbx), %esi
	addl	11036(%rbx), %edx
	movq	%rbx, %rdi
	callq	t1_hinter__setcurrentpoint
	movq	%rbx, %rdi
	callq	t1_hinter__end_subglyph
	jmp	.LBB0_82
.LBB0_261:                              # %if.then.606
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	movl	%r11d, %r8d
	shrl	$2, %r8d
	notl	%r8d
	andl	$1, %r8d
	leaq	240(%rsp), %rdx
	jmp	.LBB0_77
.LBB0_49:                               # %if.then.266
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	leaq	240(%rsp), %rdx
	cmpq	%r11, %rdx
	sbbl	%r8d, %r8d
	andl	$1, %r8d
	jmp	.LBB0_77
.LBB0_46:                               # %if.end.245
	addq	$-4, %r15
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movl	200(%rsp), %ecx         # 4-byte Reload
	movw	%cx, 16(%rax)
	movq	96(%rax), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	addq	$72, %rax
	movq	%rax, %r14
	movq	%r15, 160(%rsp)         # 8-byte Spill
	jmp	.LBB0_14
.LBB0_86:                               # %if.then.442
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	movl	%r11d, %r8d
	shrl	$2, %r8d
	notl	%r8d
	andl	$1, %r8d
	leaq	240(%rsp), %rdx
	movq	%r15, %rdi
	jmp	.LBB0_77
.LBB0_70:                               # %do.body.351
	testl	%eax, %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movq	192(%rsp), %rax         # 8-byte Reload
	js	.LBB0_71
# BB#72:                                # %do.end.366
	leaq	240(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%rcx, %r14
	callq	gs_type1_seac
	testl	%eax, %eax
	js	.LBB0_152
# BB#73:                                # %if.end.372
	movq	24(%r14), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	jmp	.LBB0_14
.LBB0_75:                               # %if.then.383
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	leaq	240(%rsp), %rdx
	cmpq	%rdx, %r11
	setae	%al
	movzbl	%al, %r8d
	jmp	.LBB0_76
.LBB0_71:                               # %if.then.355
	movq	%rax, (%rcx)
	movl	200(%rsp), %eax         # 4-byte Reload
	movw	%ax, 16(%rcx)
	leaq	252(%rsp), %rax
	cmpq	%r11, %rax
	sbbl	%r8d, %r8d
	andl	$1, %r8d
	leaq	240(%rsp), %rdx
.LBB0_76:                               # %cleanup.1444
	movq	%rbx, %rdi
.LBB0_77:                               # %cleanup.1444
	movq	%r11, %rsi
	callq	type2_sbw
.LBB0_152:                              # %cleanup.1444
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_79:                               # %if.then.396
	movq	%rbx, %rdi
	callq	t1_hinter__endglyph
	testl	%eax, %eax
	js	.LBB0_152
# BB#80:                                # %if.end.401
	movq	9864(%rbx), %rdi
	movq	9872(%rbx), %rsi
	callq	gx_setcurrentpoint_from_path
.LBB0_82:                               # %if.else.409
	testl	%eax, %eax
	js	.LBB0_152
# BB#83:                                # %if.end.423
	movq	%rbx, %rdi
	callq	gs_type1_endchar
	movq	%rbp, %rcx
	cmpl	$1, %eax
	jne	.LBB0_152
# BB#84:                                # %if.then.427
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movl	$0, 10996(%rbx)
	movslq	10976(%rbx), %rax
	leaq	(%rax,%rax,8), %rax
	leaq	10112(%rbx,%rax,8), %r14
	movq	10136(%rbx,%rax,8), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	jmp	.LBB0_14
.Lfunc_end0:
	.size	gs_type2_interpret, .Lfunc_end0-gs_type2_interpret
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_121
	.quad	.LBB0_152
	.quad	.LBB0_143
	.quad	.LBB0_48
	.quad	.LBB0_55
	.quad	.LBB0_58
	.quad	.LBB0_57
	.quad	.LBB0_67
	.quad	.LBB0_152
	.quad	.LBB0_43
	.quad	.LBB0_47
	.quad	.LBB0_175
	.quad	.LBB0_152
	.quad	.LBB0_69
	.quad	.LBB0_22
	.quad	.LBB0_111
	.quad	.LBB0_152
	.quad	.LBB0_121
	.quad	.LBB0_127
	.quad	.LBB0_127
	.quad	.LBB0_85
	.quad	.LBB0_96
	.quad	.LBB0_143
	.quad	.LBB0_153
	.quad	.LBB0_155
	.quad	.LBB0_159
	.quad	.LBB0_164
	.quad	.LBB0_169
	.quad	.LBB0_174
	.quad	.LBB0_99
	.quad	.LBB0_98
.LJTI0_1:
	.quad	.LBB0_179
	.quad	.LBB0_180
	.quad	.LBB0_181
	.quad	.LBB0_22
	.quad	.LBB0_22
	.quad	.LBB0_184
	.quad	.LBB0_191
	.quad	.LBB0_211
	.quad	.LBB0_193
	.quad	.LBB0_194
	.quad	.LBB0_195
	.quad	.LBB0_207
	.quad	.LBB0_208
	.quad	.LBB0_22
	.quad	.LBB0_22
	.quad	.LBB0_212
	.quad	.LBB0_22
	.quad	.LBB0_213
	.quad	.LBB0_214
	.quad	.LBB0_215
	.quad	.LBB0_217
	.quad	.LBB0_219
	.quad	.LBB0_22
	.quad	.LBB0_222
	.quad	.LBB0_226
	.quad	.LBB0_228
	.quad	.LBB0_229
	.quad	.LBB0_231
	.quad	.LBB0_22
	.quad	.LBB0_22
	.quad	.LBB0_22
	.quad	.LBB0_239
	.quad	.LBB0_240
	.quad	.LBB0_253
	.quad	.LBB0_254

	.text
	.align	16, 0x90
	.type	type2_sbw,@function
type2_sbw:                              # @type2_sbw
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
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testl	%r8d, %r8d
	movq	9856(%rbx), %rax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	540(%rax), %ebp
	addl	(%r14), %ebp
	leaq	4(%r14), %rsi
	movq	%r15, %rdx
	subq	%r14, %rdx
	movq	%r14, %rdi
	callq	memmove
	addq	$-4, %r15
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movl	536(%rax), %ebp
.LBB1_3:                                # %if.end
	xorl	%esi, %esi
	cmpl	$0, 11016(%rbx)
	js	.LBB1_5
# BB#4:
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	jmp	.LBB1_9
.LBB1_5:                                # %if.then.4
	xorl	%r8d, %r8d
	cmpl	$0, 10984(%rbx)
	movl	$0, %esi
	movl	$0, %edx
	je	.LBB1_7
# BB#6:                                 # %if.then.6
	movl	11000(%rbx), %esi
	movl	%esi, 11060(%rbx)
	movl	11004(%rbx), %edx
	movl	%edx, 11064(%rbx)
.LBB1_7:                                # %if.end.16
	cmpl	$0, 10988(%rbx)
	je	.LBB1_9
# BB#8:                                 # %if.then.18
	movl	11008(%rbx), %ebp
	movl	11012(%rbx), %r8d
.LBB1_9:                                # %if.end.23
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	t1_hinter__sbw
	testl	%eax, %eax
	js	.LBB1_12
# BB#10:                                # %if.end.27
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	gs_type1_sbw
	movq	(%r12), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, (%r12)
	movzwl	16(%r12), %ecx
	imull	$27493, %ecx, %ecx      # imm = 0x6B65
	addl	$10149, %ecx            # imm = 0x27A5
	movzbl	-1(%rax), %eax
	subl	%eax, %ecx
	movw	%cx, 16(%r12)
	addq	$4, %r15
	subq	%r14, %r15
	movq	%r15, %rax
	shrq	$2, %rax
	movl	%eax, 10180(%rbx)
	leaq	10184(%rbx), %rax
	subq	%rax, %r12
	shrq	$3, %r12
	imull	$954437177, %r12d, %eax # imm = 0x38E38E39
	incl	%eax
	movl	%eax, 10976(%rbx)
	leaq	9988(%rbx), %rdi
	shlq	$30, %r15
	sarq	$30, %r15
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movl	$1, %eax
	cmpl	$0, 10980(%rbx)
	jns	.LBB1_12
# BB#11:                                # %if.then.56
	movl	$0, 10980(%rbx)
.LBB1_12:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	type2_sbw, .Lfunc_end1-type2_sbw
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_type2_interpret"
	.size	.L.str, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
